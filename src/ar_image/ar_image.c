#include <ar_image/ari_jpeg.h>
#include <ar_image/ari_png.h>

#include <ar_image/ar_image.h>

#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <ctype.h>

static int casestrcmp(const char *sa, const char *sb) {
    int cmpv;
    unsigned char *a, *b;
    a = (unsigned char *)sa;
    b = (unsigned char *)sb;
    while (*a) {
        cmpv = tolower(*(a++))-tolower(*(b++));
        if (cmpv) return cmpv;
    }
    return 0;
}

static ari_image_type_t get_type(char *path) {
    int size = strlen(path);
    char ext[32];
    char *extp = ext;
    char *temp = path+size;
    /* Move backwards in path to find the last '.' */
    while (*(--temp) != '.' && (temp != path));
    /* Copy extension to ext */
    while ((*(extp++) = *(++temp)) && (extp-ext < 31));
    *(++extp) = 0; /* Null terminate ext */
    
    if ((!casestrcmp(ext, "jpg")) || (!casestrcmp(ext, "jpeg"))) {
        return ARI_TYPE_JPEG;
    }
    if (!casestrcmp(ext, "png")) {
        return ARI_TYPE_PNG;
    }
    return ARI_TYPE_UNKNOWN;
} 

ari_error_t ar_image_load(const char *path, ari_image_t *image, ari_image_type_t type) {
    if (type == ARI_TYPE_AUTO)
        type = get_type((char *)path);

    FILE *fp = fopen(path, "rb");
    if (fp == NULL) {
        printf("File does not exist!\n");
        return ARI_FILE_MISSING;
    }
    
    image->type = type;
    if (type == ARI_TYPE_JPEG) {
        ari_jpeg_t jpeg;
        ari_error_t err;
        err = ari_jpeg_load(fp, &jpeg, ARI_RGBA);
        if (err) {
            fclose(fp);
            return err;
        }
        image->pixel_format = jpeg.pixel_format;
        image->width        = jpeg.width;
        image->height       = jpeg.height;
        image->data         = jpeg.data;
    }
    else if (type == ARI_TYPE_PNG) {
        ari_png_t png;
        ari_error_t err;
        err = ari_png_load(fp, &png, ARI_RGBA);
        if (err) {
            fclose(fp);
            return err;
        }
        image->pixel_format = png.pixel_format;
        image->width        = png.width;
        image->height       = png.height;
        image->data         = png.data;
    }
    fclose(fp);
    return ARI_SUCCESS;
}

void ar_image_destroy(ari_image_t *image) {
    free(image->data);
    image->pixel_format = ARI_UNKNOWN;
}

int main() {
    const char *typestr[] = {"Auto", "JPEG", "PNG"};
    ari_image_t image;
    ar_image_load("../test.png", &image, ARI_TYPE_AUTO);
    printf("Loaded %s image %dx%d\n", typestr[image.type], image.width, image.height);
    ar_image_destroy(&image);
    
    return 0;
}
