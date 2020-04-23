#include <libpng/png.h>
#include <libjpeg-turbo/turbojpeg.h>

#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

#define PNG_BYTES_TO_CHECK 4

enum {
    F3DI_TYPE_NONE,
    F3DI_TYPE_PNG,
    F3DI_TYPE_JPEG,
};

typedef struct {
    png_structp png_read_struct;
    png_infop png_info_struct;
    png_bytep *png_rows;
    
    uint32_t width; // image width
    uint32_t height; // image height
    uint32_t bit_depth; // bits per channel
    uint32_t channels; // number of channels
    uint32_t color_type; // colour type (RGB, palette, etc.)
    
    uint8_t *data;
} f3di_image_t;

bool check_if_png(FILE *fp) {
   uint8_t buf[PNG_BYTES_TO_CHECK];

   /* Read in some of the signature bytes. */
   if (fread(buf, 1, PNG_BYTES_TO_CHECK, fp) != PNG_BYTES_TO_CHECK)
      return false;

   /* Compare the first PNG_BYTES_TO_CHECK bytes of the signature.
    * Return nonzero (true) if they match.
    */
   return (!png_sig_cmp(buf, 0, PNG_BYTES_TO_CHECK));
}

void read_png_expand_to_rgb(f3di_image_t *image) {
    switch (image->color_type) {
        case PNG_COLOR_MASK_PALETTE:
            png_set_palette_to_rgb(image->png_read_struct);
            image->channels = 3;
            break;
        case PNG_COLOR_TYPE_GRAY:
            if (image->bit_depth < 8)
                png_set_expand_gray_1_2_4_to_8(image->png_read_struct);
            image->bit_depth = 8;
            break;
    }
    // if the image has transparency set, convert to a full alpha channel
    if (png_get_valid(image->png_read_struct, image->png_info_struct, PNG_INFO_tRNS)) {
        png_set_tRNS_to_alpha(image->png_read_struct);
        image->channels++;
    }
    if (image->bit_depth == 16) {
        png_set_strip_16(image->png_read_struct);
    }
    png_read_update_info(image->png_read_struct, image->png_info_struct);
}

void read_png_info(f3di_image_t *image) {
    image->width  = png_get_image_width(image->png_read_struct, image->png_info_struct);
    image->height = png_get_image_height(image->png_read_struct, image->png_info_struct);
    image->bit_depth = png_get_bit_depth(image->png_read_struct, image->png_info_struct);
    image->channels = png_get_channels(image->png_read_struct, image->png_info_struct);
    image->color_type = png_get_color_type(image->png_read_struct, image->png_info_struct);
}

f3di_image_t read_png(FILE *fp, int sig_read) {
    f3di_image_t image;
    memset(&image, 0, sizeof(f3di_image_t));
    image.png_read_struct = png_create_read_struct(PNG_LIBPNG_VER_STRING, NULL, NULL, NULL);
    
    if (image.png_read_struct == NULL) {
        printf("Read struct == NULL\n");
        return image;   
    }
    
    image.png_info_struct = png_create_info_struct(image.png_read_struct);
    
    if (image.png_info_struct == NULL) {
        printf("Info struct == NULL\n");
        png_destroy_read_struct(&image.png_read_struct, NULL, NULL);
        return image;
    }
    if (setjmp(png_jmpbuf(image.png_read_struct))) {
        //An error occured, so clean up what we have allocated so far...
        png_destroy_read_struct(&image.png_read_struct, &image.png_info_struct, (png_infopp)0);

        printf("Error occurred during loading");

        //Make sure you return here. libPNG will jump to here if something
        //goes wrong, and if you continue with your normal code, you might
        //End up with an infinite loop.
        return image; // Do your own error handling here.
    }
    png_init_io(image.png_read_struct, fp);
    // skip ahead if signature has already been read
    png_set_sig_bytes(image.png_read_struct, sig_read);
    png_read_info(image.png_read_struct, image.png_info_struct);
    
    read_png_info(&image);
    read_png_expand_to_rgb(&image);
    
    image.png_rows = malloc(sizeof(png_bytep)*image.height);
    unsigned i;
    for (i = 0; i < image.height; i++) {
        image.png_rows[i] = malloc(png_get_rowbytes(image.png_read_struct, image.png_info_struct));
    }
    
    png_read_image(image.png_read_struct, image.png_rows);
    return image;
}

int f3di_check_type(FILE *fp) {
    if (check_if_png(fp))
        return F3DI_TYPE_PNG;
    return F3DI_TYPE_NONE;
}

int main() {
    FILE *fp = fopen("../test.png", "rb");
    if (fp == NULL) {
        printf("could not load image\n");
        return 1;
    }
    f3di_image_t image;
    image = read_png(fp, 0);
    printf("image.width = %d\nimage.height = %d\nimage.bit_depth = %d\nimage.channels = %d\n", image.width, image.height, image.bit_depth, image.channels);
    
    return 0;
}
