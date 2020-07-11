#include <ar_image/ari_jpeg.h>
#include <ar_image/ari_def.h>

#include <stdio.h>

#include <libjpeg-turbo/turbojpeg.h>

ari_error_t ari_jpeg_load(FILE *fp, ari_jpeg_t *jpeg, ari_pixel_format_t pfmt) {
    fseek(fp, 0, SEEK_END);
    unsigned long jpeg_size = ftell(fp);
    rewind(fp);

    uint8_t *jpegbuf;
    tjhandle tj_instance = NULL;
    
    jpegbuf = tjAlloc(jpeg_size);
    if (jpegbuf == NULL)
        return ARI_ALLOC_ERROR;
    
    if (fread(jpegbuf, jpeg_size, 1, fp) < 1)
        return ARI_READ_ERROR;
        
    tj_instance = tjInitDecompress();
    if (tj_instance == NULL)
        return ARI_READ_ERROR;
    
    int in_subsamp, in_colourspace;
    tjDecompressHeader3(tj_instance, jpegbuf, jpeg_size, &jpeg->width, &jpeg->height, &in_subsamp, &in_colourspace);
    
    printf("Colourspace: %d\n", in_colourspace);
    
    jpeg->channels = tjPixelSize[pfmt];
    jpeg->data = tjAlloc(jpeg->width * jpeg->height * jpeg->channels);
    jpeg->pitch = 0;
    
    tjDecompress2(tj_instance, jpegbuf, jpeg_size, jpeg->data, jpeg->width, 0, jpeg->height, pfmt, 0);
    
    tjFree(jpegbuf);
    tjDestroy(tj_instance);
    
    return ARI_SUCCESS;
}

ari_error_t ari_jpeg_save(FILE *outfp, ari_jpeg_t *jpeg, ari_pixel_format_t pfmt, int subsamp, int quality, int flags) {
    tjhandle instance = tjInitCompress();
    if (instance == NULL)
        return ARI_ALLOC_ERROR;
    
    uint8_t *data_new = NULL;
    unsigned long new_size;
    
    tjCompress2(instance, jpeg->data, jpeg->width, jpeg->pitch, jpeg->height, pfmt, &data_new, &new_size, subsamp, quality, flags);
    
    if (fwrite(data_new, new_size, 1, outfp) < 1)
        return ARI_WRITE_ERROR;
    
    tjDestroy(instance);    
    return ARI_SUCCESS;
}

void ari_jpeg_destroy(ari_jpeg_t *jpeg) {
    if (jpeg->data)
        tjFree(jpeg->data);
    
    jpeg->width = 0;
    jpeg->height = 0;
}
