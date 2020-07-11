#ifndef F3DIMG_H
#define F3DIMG_H

#include <ar_image/ari_def.h>

typedef struct {
    ari_image_type_t type;
    uint32_t width, height;
    uint8_t channels;
    
    ari_pixel_format_t pixel_format;
    uint8_t *data;
} ari_image_t;

#endif
