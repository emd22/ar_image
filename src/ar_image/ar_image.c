#include <ar_image/ari_jpeg.h>

#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
/*
int f3di_check_type(FILE *fp) {
    if (check_if_png(fp))
        return F3DI_TYPE_PNG;
    return F3DI_TYPE_NONE;
}

ari_status_t ari_load(const char *path, ari_image_t *image, ari_type_t type) {
    FILE *fp = fopen(path, "rb");
    if (fp == NULL)
        return ARI_FILE_MISSING;
    
    return ARI_SUCCESS;
}*/

int main() {
    FILE *fp = fopen("../happy_dog.jpg", "rb");
    if (fp == NULL) {
        printf("could not load image\n");
        return 1;
    }
    //f3di_image_t image;
    //image = read_png(fp, 0);
    //printf("image.width = %d\nimage.height = %d\nimage.bit_depth = %d\nimage.channels = %d\n", image.width, image.height, image.bit_depth, image.channels);
    
    ari_jpeg_t jpeg;
    ari_jpeg_load(fp, &jpeg, ARI_RGBA);
    printf("Loaded JPEG %dx%d, %d\n", jpeg.width, jpeg.height, jpeg.pixel_size);
    
    FILE *out = fopen("../dog2.jpg", "wb");

    ari_error_t stat;
    stat = ari_jpeg_save(out, &jpeg, ARI_RGBA, ARI_SAMP_411, 50, 0);
    if (stat != ARI_SUCCESS) {
        printf("error: %d\n", stat);
    }
    
    ari_jpeg_destroy(&jpeg);
    
    fclose(out);
    fclose(fp);
    
    return 0;
}
