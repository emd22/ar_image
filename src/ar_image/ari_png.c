#include <ar_image/ari_png.h>
#include <ar_image/ar_image.h>

#include <libspng/spng.h>

#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <stdio.h>

static ari_pixel_format_t convert_pfmt(int pfmt) {
    switch (pfmt) {
        case SPNG_COLOR_TYPE_GRAYSCALE: return ARI_GRAY;
        case SPNG_COLOR_TYPE_GRAYSCALE_ALPHA: return ARI_UNSUPPORTED;
        case SPNG_COLOR_TYPE_TRUECOLOR: return ARI_RGB;
        case SPNG_COLOR_TYPE_TRUECOLOR_ALPHA: return ARI_RGBA;
        // colour tables are unsupported currently
        case SPNG_COLOR_TYPE_INDEXED: return ARI_UNSUPPORTED;
    }
    return ARI_UNKNOWN;
}

ari_error_t ari_png_load(FILE *fp, ari_png_t *png, ari_pixel_format_t pfmt) {
    png->data = NULL;
    (void)pfmt;

    spng_ctx *context = spng_ctx_new(0);
    if (context == NULL)
        return ARI_ALLOC_ERROR;
    
    spng_set_crc_action(context, SPNG_CRC_USE, SPNG_CRC_USE);
    spng_set_png_file(context, fp);
    
    // read info header
    struct spng_ihdr info_header;
    int res;
    res = spng_get_ihdr(context, &info_header);
    
    // copy data to our struct
    png->pixel_format = convert_pfmt(info_header.color_type);
    png->width = info_header.width;
    png->height = info_header.height;
    png->pitch = 0;
    
    // load image data 
    size_t data_size;
    const int buffer_pfmt = SPNG_FMT_RGBA8;
    res = spng_decoded_image_size(context, buffer_pfmt, &data_size);
    if (res) goto on_error;
    
    png->data = malloc(data_size);
    if (png->data == NULL) goto on_error;
    
    res = spng_decode_image(context, png->data, data_size, SPNG_FMT_RGBA8, 0);
    if (res) goto on_error;
    
    spng_ctx_free(context);
    return ARI_SUCCESS;
on_error:;
    spng_ctx_free(context);
    free(png->data);
    return ARI_READ_ERROR;
}

ari_error_t ari_png_save(FILE *outfp, ari_png_t *png, ari_pixel_format_t pfmt) {
    (void)pfmt;
    (void)png;
    (void)outfp;
    return ARI_WRITE_ERROR;
}

void ari_png_destroy(ari_png_t *png) {
    free(png->data);
    png->width = 0;
    png->height = 0;
    png->pixel_format = ARI_UNKNOWN;
}

#if 0

#define PNG_SIG_BYTES 4

static bool check_png(FILE *fp) {
    uint8_t buf[PNG_SIG_BYTES];
    if (fread(buf, 1, PNG_SIG_BYTES, fp) != PNG_SIG_BYTES)
      return false;
      
    return (!png_sig_cmp(buf, 0, PNG_SIG_BYTES));
}

static ari_pixel_format_t convert_pfmt(int pfmt) {
    switch (pfmt) {
        case PNG_COLOR_TYPE_GRAY:       return ARI_GRAY;
        case PNG_COLOR_TYPE_PALETTE:    return ARI_UNSUPPORTED;
        case PNG_COLOR_TYPE_RGB:        return ARI_RGB;
        case PNG_COLOR_TYPE_RGB_ALPHA:  return ARI_RGBA;
        case PNG_COLOR_TYPE_GRAY_ALPHA: return ARI_UNSUPPORTED;
        default: return ARI_UNKNOWN;
    }
    return ARI_UNKNOWN;
}

static void read_info(ari_png_t *png, png_structp read_struct, png_infop info_struct) {
    png->width  = png_get_image_width(read_struct, info_struct);
    png->height = png_get_image_height(read_struct, info_struct);
    //png->bit_depth = png_get_bit_depth(read_struct, info_struct);
    png->channels = png_get_channels(read_struct, info_struct);
    png->pixel_format = convert_pfmt(png_get_color_type(read_struct, info_struct));
}

ari_error_t ari_png_load(FILE *fp, ari_png_t *png, ari_pixel_format_t pfmt) {
    if (!check_png(fp))
        return ARI_SIGNATURE_ERROR;
    
    png_structp read_struct;    
    read_struct = png_create_read_struct(PNG_LIBPNG_VER_STRING, NULL, NULL, NULL);
    
    if (read_struct == NULL)
        return ARI_READ_ERROR;
    
    png_infop info_struct = png_create_info_struct(read_struct);
    
    if (info_struct == NULL) {
        png_destroy_read_struct(&read_struct, NULL, NULL);
        return ARI_READ_ERROR;
    }
    
    if (setjmp(png_jmpbuf(read_struct))) {
        //An error occured, so clean up what we have allocated so far...
        png_destroy_read_struct(&read_struct, &info_struct, NULL);

        printf("Error occurred during loading");

        //Make sure you return here. libPNG will jump to here if something
        //goes wrong, and if you continue with your normal code, you might
        //End up with an infinite loop.
        return image; // Do your own error handling here.
    }
    png_init_io(read_struct, fp);
    // skip ahead if signature has already been read
    png_set_sig_bytes(read_struct, sig_read);
    png_read_info(read_struct, info_struct);
    
    read_png_info(&image);
    read_info(png, read_struct, info_struct);
    read_png_expand_to_rgb(&image);
    
    image.png_rows = malloc(sizeof(png_bytep)*image.height);
    unsigned i;
    for (i = 0; i < image.height; i++) {
        image.png_rows[i] = malloc(png_get_rowbytes(read_struct, info_struct));
    }
    
    png_read_image(read_struct, image.png_rows);
    return image;
    
}
#endif
