.class public Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;
.super Ljava/lang/Object;
.source "TFLiteObjectDetectionAPIModel.java"

# interfaces
.implements Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier;


# static fields
.field private static final IMAGE_MEAN:F = 128.0f

.field private static final IMAGE_STD:F = 128.0f

.field private static final LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

.field private static final NUM_DETECTIONS:I = 0xa

.field private static final NUM_THREADS:I = 0x4


# instance fields
.field private imgData:Ljava/nio/ByteBuffer;

.field private inputSize:I

.field private intValues:[I

.field private isModelQuantized:Z

.field private labels:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private numDetections:[F

.field private outputClasses:[[F

.field private outputLocations:[[[F

.field private outputScores:[[F

.field private tfLite:Lorg/tensorflow/lite/Interpreter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    invoke-direct {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;-><init>()V

    sput-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->labels:Ljava/util/Vector;

    return-void
.end method

.method public static create(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    const-class v0, F

    new-instance v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;

    invoke-direct {v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;-><init>()V

    const-string v2, "file:///android_asset/"

    .line 109
    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    aget-object p2, p2, v2

    .line 110
    invoke-virtual {p0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    .line 112
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 114
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 115
    sget-object v4, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, p2, v5}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iget-object v4, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->labels:Ljava/util/Vector;

    invoke-virtual {v4, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 120
    iput p3, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->inputSize:I

    .line 123
    :try_start_0
    new-instance p2, Lorg/tensorflow/lite/Interpreter;

    invoke-static {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->loadModelFile(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/nio/MappedByteBuffer;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/tensorflow/lite/Interpreter;-><init>(Ljava/nio/MappedByteBuffer;)V

    iput-object p2, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->tfLite:Lorg/tensorflow/lite/Interpreter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    iput-boolean p4, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->isModelQuantized:Z

    const/4 p0, 0x4

    if-eqz p4, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, p0

    .line 136
    :goto_1
    iget p2, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->inputSize:I

    mul-int/lit8 p3, p2, 0x1

    mul-int/2addr p3, p2

    const/4 p2, 0x3

    mul-int/2addr p3, p2

    mul-int/2addr p3, p1

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->imgData:Ljava/nio/ByteBuffer;

    .line 137
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 138
    iget p1, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->inputSize:I

    mul-int/2addr p1, p1

    new-array p1, p1, [I

    iput-object p1, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->intValues:[I

    .line 140
    iget-object p1, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->tfLite:Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {p1, p0}, Lorg/tensorflow/lite/Interpreter;->setNumThreads(I)V

    new-array p0, p2, [I

    .line 141
    fill-array-data p0, :array_0

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[[F

    iput-object p0, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->outputLocations:[[[F

    const/4 p0, 0x2

    new-array p1, p0, [I

    .line 142
    fill-array-data p1, :array_1

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[F

    iput-object p1, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->outputClasses:[[F

    new-array p0, p0, [I

    .line 143
    fill-array-data p0, :array_2

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[F

    iput-object p0, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->outputScores:[[F

    new-array p0, v2, [F

    .line 144
    iput-object p0, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->numDetections:[F

    return-object v1

    :catch_0
    move-exception p0

    .line 125
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    nop

    :array_0
    .array-data 4
        0x1
        0xa
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x1
        0xa
    .end array-data

    :array_2
    .array-data 4
        0x1
        0xa
    .end array-data
.end method

.method private static loadModelFile(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/nio/MappedByteBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    .line 83
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 84
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 85
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    .line 86
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v5

    .line 87
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public enableStatLogging(Z)V
    .locals 0

    return-void
.end method

.method public getStatString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public recognizeImage(Landroid/graphics/Bitmap;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/List<",
            "Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;",
            ">;"
        }
    .end annotation

    .line 151
    const-class v0, F

    const-string v1, "recognizeImage"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v1, "preprocessBitmap"

    .line 153
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 156
    iget-object v3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->intValues:[I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 158
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->imgData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 p1, 0x0

    move v1, p1

    .line 159
    :goto_0
    iget v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->inputSize:I

    if-ge v1, v2, :cond_2

    move v2, p1

    .line 160
    :goto_1
    iget v3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->inputSize:I

    if-ge v2, v3, :cond_1

    .line 161
    iget-object v4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->intValues:[I

    mul-int/2addr v3, v1

    add-int/2addr v3, v2

    aget v3, v4, v3

    .line 162
    iget-boolean v4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->isModelQuantized:Z

    if-eqz v4, :cond_0

    .line 164
    iget-object v4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->imgData:Ljava/nio/ByteBuffer;

    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 165
    iget-object v4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->imgData:Ljava/nio/ByteBuffer;

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 166
    iget-object v4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->imgData:Ljava/nio/ByteBuffer;

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 168
    :cond_0
    iget-object v4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->imgData:Ljava/nio/ByteBuffer;

    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    const/high16 v6, 0x43000000    # 128.0f

    sub-float/2addr v5, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 169
    iget-object v4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->imgData:Ljava/nio/ByteBuffer;

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    sub-float/2addr v5, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 170
    iget-object v4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->imgData:Ljava/nio/ByteBuffer;

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    sub-float/2addr v3, v6

    div-float/2addr v3, v6

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v1, "feed"

    .line 177
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 178
    fill-array-data v2, :array_0

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[[F

    iput-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->outputLocations:[[[F

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 179
    fill-array-data v3, :array_1

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    iput-object v3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->outputClasses:[[F

    new-array v3, v2, [I

    .line 180
    fill-array-data v3, :array_2

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->outputScores:[[F

    const/4 v0, 0x1

    new-array v3, v0, [F

    .line 181
    iput-object v3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->numDetections:[F

    new-array v3, v0, [Ljava/lang/Object;

    .line 183
    iget-object v4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->imgData:Ljava/nio/ByteBuffer;

    aput-object v4, v3, p1

    .line 184
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 185
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->outputLocations:[[[F

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->outputClasses:[[F

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->outputScores:[[F

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->numDetections:[F

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v5, "run"

    .line 192
    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 193
    iget-object v5, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->tfLite:Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {v5, v3, v4}, Lorg/tensorflow/lite/Interpreter;->runForMultipleInputsOutputs([Ljava/lang/Object;Ljava/util/Map;)V

    .line 194
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 198
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v5, p1

    :goto_3
    if-ge v5, v4, :cond_3

    .line 200
    new-instance v6, Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->outputLocations:[[[F

    aget-object v8, v7, p1

    aget-object v8, v8, v5

    aget v8, v8, v0

    iget v9, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->inputSize:I

    int-to-float v10, v9

    mul-float/2addr v8, v10

    aget-object v10, v7, p1

    aget-object v10, v10, v5

    aget v10, v10, p1

    int-to-float v11, v9

    mul-float/2addr v10, v11

    aget-object v11, v7, p1

    aget-object v11, v11, v5

    aget v11, v11, v1

    int-to-float v12, v9

    mul-float/2addr v11, v12

    aget-object v7, v7, p1

    aget-object v7, v7, v5

    aget v7, v7, v2

    int-to-float v9, v9

    mul-float/2addr v7, v9

    invoke-direct {v6, v8, v10, v11, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 210
    new-instance v7, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->labels:Ljava/util/Vector;

    iget-object v10, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->outputClasses:[[F

    aget-object v10, v10, p1

    aget v10, v10, v5

    float-to-int v10, v10

    add-int/2addr v10, v0

    .line 213
    invoke-virtual {v9, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v10, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->outputScores:[[F

    aget-object v10, v10, p1

    aget v10, v10, v5

    .line 214
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10, v6}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Landroid/graphics/RectF;)V

    .line 210
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 217
    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v3

    :array_0
    .array-data 4
        0x1
        0xa
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x1
        0xa
    .end array-data

    :array_2
    .array-data 4
        0x1
        0xa
    .end array-data
.end method

.method public setNumThreads(I)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->tfLite:Lorg/tensorflow/lite/Interpreter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/Interpreter;->setNumThreads(I)V

    :cond_0
    return-void
.end method

.method public setUseNNAPI(Z)V
    .locals 0

    return-void
.end method
