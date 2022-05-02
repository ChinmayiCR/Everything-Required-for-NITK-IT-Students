.class public Lcom/mimariyazilim/digigoz1/examples/digigoz/env/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field private static final LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

.field static final kMaxChannelValue:I = 0x3ffff

.field private static useNativeConversion:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    invoke-direct {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;-><init>()V

    sput-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/ImageUtils;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    const/4 v0, 0x0

    .line 33
    sput-boolean v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/ImageUtils;->useNativeConversion:Z

    :try_start_0
    const-string v1, "tensorflow_demo"

    .line 37
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    sget-object v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/ImageUtils;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Native library not found, native RGB -> YUV conversion may be unavailable."

    invoke-virtual {v1, v2, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static YUV2RGB(III)I
    .locals 3

    add-int/lit8 p0, p0, -0x10

    const/4 v0, 0x0

    if-gez p0, :cond_0

    move p0, v0

    :cond_0
    add-int/lit8 p1, p1, -0x80

    add-int/lit8 p2, p2, -0x80

    mul-int/lit16 p0, p0, 0x4a8

    mul-int/lit16 v1, p2, 0x662

    add-int/2addr v1, p0

    mul-int/lit16 p2, p2, 0x341

    sub-int p2, p0, p2

    mul-int/lit16 v2, p1, 0x190

    sub-int/2addr p2, v2

    mul-int/lit16 p1, p1, 0x812

    add-int/2addr p0, p1

    const p1, 0x3ffff

    if-le v1, p1, :cond_1

    move v1, p1

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    move v1, v0

    :cond_2
    :goto_0
    if-le p2, p1, :cond_3

    move p2, p1

    goto :goto_1

    :cond_3
    if-gez p2, :cond_4

    move p2, v0

    :cond_4
    :goto_1
    if-le p0, p1, :cond_5

    move v0, p1

    goto :goto_2

    :cond_5
    if-gez p0, :cond_6

    goto :goto_2

    :cond_6
    move v0, p0

    :goto_2
    const/high16 p0, -0x1000000

    shl-int/lit8 p1, v1, 0x6

    const/high16 v1, 0xff0000

    and-int/2addr p1, v1

    or-int/2addr p0, p1

    shr-int/lit8 p1, p2, 0x2

    const p2, 0xff00

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    shr-int/lit8 p1, v0, 0xa

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method private static native convertARGB8888ToYUV420SP([I[BII)V
.end method

.method private static native convertRGB565ToYUV420SP([B[BII)V
.end method

.method public static convertYUV420SPToARGB8888([BII[I)V
    .locals 10

    .line 99
    sget-boolean v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/ImageUtils;->useNativeConversion:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 101
    :try_start_0
    invoke-static {p0, p3, p1, p2, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/ImageUtils;->convertYUV420SPToARGB8888([B[IIIZ)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 104
    :catch_0
    sget-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/ImageUtils;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Native YUV420SP -> RGB implementation not found, falling back to Java implementation"

    invoke-virtual {v0, v3, v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    sput-boolean v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/ImageUtils;->useNativeConversion:Z

    :cond_0
    mul-int v0, p1, p2

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p2, :cond_3

    shr-int/lit8 v4, v2, 0x1

    mul-int/2addr v4, p1

    add-int/2addr v4, v0

    move v5, v1

    move v6, v5

    move v7, v6

    :goto_1
    if-ge v5, p1, :cond_2

    .line 118
    aget-byte v8, p0, v3

    and-int/lit16 v8, v8, 0xff

    and-int/lit8 v9, v5, 0x1

    if-nez v9, :cond_1

    add-int/lit8 v6, v4, 0x1

    .line 120
    aget-byte v4, p0, v4

    and-int/lit16 v7, v4, 0xff

    add-int/lit8 v4, v6, 0x1

    .line 121
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    .line 124
    :cond_1
    invoke-static {v8, v6, v7}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/ImageUtils;->YUV2RGB(III)I

    move-result v8

    aput v8, p3, v3

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static native convertYUV420SPToARGB8888([B[IIIZ)V
.end method

.method private static native convertYUV420SPToRGB565([B[BII)V
.end method

.method public static convertYUV420ToARGB8888([B[B[BIIIII[I)V
    .locals 12

    .line 163
    sget-boolean v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/ImageUtils;->useNativeConversion:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v11, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p8

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    .line 165
    :try_start_0
    invoke-static/range {v2 .. v11}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/ImageUtils;->convertYUV420ToARGB8888([B[B[B[IIIIIIZ)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 169
    :catch_0
    sget-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/ImageUtils;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Native YUV420 -> RGB implementation not found, falling back to Java implementation"

    invoke-virtual {v0, v3, v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    sput-boolean v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/ImageUtils;->useNativeConversion:Z

    :cond_0
    move/from16 v0, p4

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    mul-int v4, p5, v2

    shr-int/lit8 v5, v2, 0x1

    mul-int v5, v5, p6

    move v6, p3

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_1

    shr-int/lit8 v8, v7, 0x1

    mul-int v8, v8, p7

    add-int/2addr v8, v5

    add-int/lit8 v9, v3, 0x1

    add-int v10, v4, v7

    .line 183
    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    aget-byte v11, p1, v8

    and-int/lit16 v11, v11, 0xff

    aget-byte v8, p2, v8

    and-int/lit16 v8, v8, 0xff

    invoke-static {v10, v11, v8}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/ImageUtils;->YUV2RGB(III)I

    move-result v8

    aput v8, p8, v3

    add-int/lit8 v7, v7, 0x1

    move v3, v9

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static native convertYUV420ToARGB8888([B[B[B[IIIIIIZ)V
.end method

.method public static getTransformationMatrix(IIIIIZ)Landroid/graphics/Matrix;
    .locals 7

    .line 286
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p4, :cond_1

    .line 289
    rem-int/lit8 v4, p4, 0x5a

    if-eqz v4, :cond_0

    .line 290
    sget-object v4, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/ImageUtils;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "Rotation of %d % 90 != 0"

    invoke-virtual {v4, v6, v5}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    neg-int v4, p0

    int-to-float v4, v4

    div-float/2addr v4, v3

    neg-int v5, p1

    int-to-float v5, v5

    div-float/2addr v5, v3

    .line 294
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    int-to-float v4, p4

    .line 297
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 302
    :cond_1
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x5a

    rem-int/lit16 v4, v4, 0xb4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    move v2, p1

    goto :goto_1

    :cond_3
    move v2, p0

    :goto_1
    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move p0, p1

    :goto_2
    if-ne v2, p2, :cond_5

    if-eq p0, p3, :cond_7

    :cond_5
    int-to-float p1, p2

    int-to-float v1, v2

    div-float/2addr p1, v1

    int-to-float v1, p3

    int-to-float p0, p0

    div-float/2addr v1, p0

    if-eqz p5, :cond_6

    .line 315
    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 316
    invoke-virtual {v0, p0, p0}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_3

    .line 319
    :cond_6
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_7
    :goto_3
    if-eqz p4, :cond_8

    int-to-float p0, p2

    div-float/2addr p0, v3

    int-to-float p1, p3

    div-float/2addr p1, v3

    .line 325
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_8
    return-object v0
.end method

.method public static getYUVByteSize(II)I
    .locals 1

    mul-int v0, p0, p1

    add-int/lit8 p0, p0, 0x1

    .line 53
    div-int/lit8 p0, p0, 0x2

    add-int/lit8 p1, p1, 0x1

    div-int/lit8 p1, p1, 0x2

    mul-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "preview.png"

    .line 64
    invoke-static {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/ImageUtils;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 6

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tensorflow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    sget-object v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/ImageUtils;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const-string v3, "Saving %dx%d bitmap to %s."

    invoke-virtual {v1, v3, v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v4, [Ljava/lang/Object;

    const-string v3, "Make dir failed"

    .line 80
    invoke-virtual {v1, v3, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 89
    :cond_1
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 90
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x63

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 91
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 92
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 94
    sget-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/ImageUtils;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Exception!"

    invoke-virtual {p1, p0, v1, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
