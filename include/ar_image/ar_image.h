#ifndef F3DIMG_H
#define F3DIMG_H

#include <ar_image/ari_def.h>

typedef struct {
    int x;
} ari_jpeg_t;

typedef struct {
    /*
    png_structp png_read_struct;
    png_infop   png_info_struct;
    png_bytep  *png_rows;*/
    int x;
} ari_png_t;

typedef struct {
    union {
        ari_png_t png;
        ari_jpeg_t jpeg;
    } image;
    
    uint32_t width;      // image width
    uint32_t height;     // image height
    uint8_t  bpp;
    ari_pixel_format_t pixel_format;
    
    uint8_t *data;
    unsigned long data_size;
} ari_image_t;

#endif
