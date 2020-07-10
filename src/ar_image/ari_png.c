#include <ar_image/ari_png.h>
#include <ar_image/ar_image.h>

typedef int blah_t;

#if 0
#include <libpng/png.h>

#include <stdio.h>

#define PNG_BYTES_TO_CHECK 4

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

static void read_png_info(ari_image_t *image) {
    image->width  = png_get_image_width(image->png_read_struct, image->png_info_struct);
    image->height = png_get_image_height(image->png_read_struct, image->png_info_struct);
    image->bit_depth = png_get_bit_depth(image->png_read_struct, image->png_info_struct);
    image->channels = png_get_channels(image->png_read_struct, image->png_info_struct);
    image->color_type = png_get_color_type(image->png_read_struct, image->png_info_struct);
}

ari_image_t ari_png_load(FILE *fp, int sig_read) {
    ari_image_t image;
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
#endif
