.class public Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;
.super Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;
.source "DetectorActivity.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$DetectorMode;
    }
.end annotation


# static fields
.field private static final DESIRED_PREVIEW_SIZE:Landroid/util/Size;

.field private static final LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

.field private static final MAINTAIN_ASPECT:Z = false

.field private static final MINIMUM_CONFIDENCE_TF_OD_API:F = 0.5f

.field private static final MODE:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$DetectorMode;

.field private static final SAVE_PREVIEW_BITMAP:Z = false

.field private static final TEXT_SIZE_DIP:F = 10.0f

.field private static final TF_OD_API_INPUT_SIZE:I = 0x12c

.field private static final TF_OD_API_IS_QUANTIZED:Z = true

.field private static final TF_OD_API_LABELS_FILE:Ljava/lang/String; = "file:///android_asset/labelmap.txt"

.field private static final TF_OD_API_MODEL_FILE:Ljava/lang/String; = "detect.tflite"

.field public static restart2:Landroid/content/Intent;


# instance fields
.field private borderedText:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;

.field private computingDetection:Z

.field private cropCopyBitmap:Landroid/graphics/Bitmap;

.field private cropToFrameTransform:Landroid/graphics/Matrix;

.field private croppedBitmap:Landroid/graphics/Bitmap;

.field private detector:Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier;

.field private frameToCropTransform:Landroid/graphics/Matrix;

.field private lastProcessingTimeMs:J

.field private luminanceCopy:[B

.field private rgbFrameBitmap:Landroid/graphics/Bitmap;

.field private sensorOrientation:Ljava/lang/Integer;

.field private timestamp:J

.field private tracker:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;

.field trackingOverlay:Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/OverlayView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    invoke-direct {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;-><init>()V

    sput-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    .line 59
    sget-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$DetectorMode;->TF_OD_API:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$DetectorMode;

    sput-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->MODE:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$DetectorMode;

    .line 63
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->DESIRED_PREVIEW_SIZE:Landroid/util/Size;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->rgbFrameBitmap:Landroid/graphics/Bitmap;

    .line 73
    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->croppedBitmap:Landroid/graphics/Bitmap;

    .line 74
    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->cropCopyBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->computingDetection:Z

    const-wide/16 v0, 0x0

    .line 78
    iput-wide v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->timestamp:J

    return-void
.end method

.method static synthetic access$000(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;)Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->tracker:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;

    return-object p0
.end method

.method static synthetic access$100()Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;
    .locals 1

    .line 51
    sget-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;)Landroid/graphics/Bitmap;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->croppedBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;)Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->detector:Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->lastProcessingTimeMs:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;J)J
    .locals 0

    .line 51
    iput-wide p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->lastProcessingTimeMs:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;)Landroid/graphics/Bitmap;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->cropCopyBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$502(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->cropCopyBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$600()Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$DetectorMode;
    .locals 1

    .line 51
    sget-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->MODE:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$DetectorMode;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;)Landroid/graphics/Matrix;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->cropToFrameTransform:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$800(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;)[B
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->luminanceCopy:[B

    return-object p0
.end method

.method static synthetic access$902(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->computingDetection:Z

    return p1
.end method


# virtual methods
.method protected getDesiredPreviewFrameSize()Landroid/util/Size;
    .locals 1

    .line 258
    sget-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->DESIRED_PREVIEW_SIZE:Landroid/util/Size;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b0020

    return v0
.end method

.method public synthetic lambda$setNumThreads$1$DetectorActivity(I)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->detector:Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier;

    invoke-interface {v0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier;->setNumThreads(I)V

    return-void
.end method

.method public synthetic lambda$setUseNNAPI$0$DetectorActivity(Z)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->detector:Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier;

    invoke-interface {v0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier;->setUseNNAPI(Z)V

    return-void
.end method

.method public onPreviewSizeChosen(Landroid/util/Size;I)V
    .locals 9

    .line 94
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->restart2:Landroid/content/Intent;

    .line 97
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x41200000    # 10.0f

    .line 96
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 98
    new-instance v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;

    invoke-direct {v2, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;-><init>(F)V

    iput-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->borderedText:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;

    .line 99
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v2, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 101
    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;

    invoke-direct {v0, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->tracker:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;

    const/4 v0, 0x0

    .line 108
    :try_start_0
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "detect.tflite"

    const-string v4, "file:///android_asset/labelmap.txt"

    const/16 v5, 0x12c

    .line 107
    invoke-static {v2, v3, v4, v5, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/TFLiteObjectDetectionAPIModel;->create(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier;

    move-result-object v2

    iput-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->detector:Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 115
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 116
    sget-object v3, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "Exception initializing classifier!"

    invoke-virtual {v3, v2, v5, v4}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Classifier could not be initialized"

    .line 118
    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 120
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 121
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->finish()V

    :goto_0
    const/16 v6, 0x12c

    .line 124
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->previewWidth:I

    .line 125
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->previewHeight:I

    .line 127
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->getScreenOrientation()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->sensorOrientation:Ljava/lang/Integer;

    .line 128
    sget-object p2, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const-string p1, "Camera orientation relative to screen canvas: %d"

    invoke-virtual {p2, p1, v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 130
    iget v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->previewWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    iget v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->previewHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "Initializing at size %dx%d"

    invoke-virtual {p2, v0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iget p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->previewWidth:I

    iget p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->previewHeight:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->rgbFrameBitmap:Landroid/graphics/Bitmap;

    .line 132
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->croppedBitmap:Landroid/graphics/Bitmap;

    .line 134
    iget v3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->previewWidth:I

    iget v4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->previewHeight:I

    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->sensorOrientation:Ljava/lang/Integer;

    .line 138
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    move v5, v6

    .line 135
    invoke-static/range {v3 .. v8}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/ImageUtils;->getTransformationMatrix(IIIIIZ)Landroid/graphics/Matrix;

    move-result-object p1

    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->frameToCropTransform:Landroid/graphics/Matrix;

    .line 140
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->cropToFrameTransform:Landroid/graphics/Matrix;

    .line 141
    iget-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->frameToCropTransform:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    const p1, 0x7f0800e4

    .line 143
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/OverlayView;

    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->trackingOverlay:Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/OverlayView;

    .line 144
    new-instance p2, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$1;

    invoke-direct {p2, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$1;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;)V

    invoke-virtual {p1, p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/OverlayView;->addCallback(Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/OverlayView$DrawCallback;)V

    return-void
.end method

.method protected processImage()V
    .locals 20

    move-object/from16 v0, p0

    .line 158
    iget-wide v1, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->timestamp:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->timestamp:J

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->getLuminance()[B

    move-result-object v11

    .line 161
    iget-object v3, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->tracker:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;

    iget v4, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->previewWidth:I

    iget v5, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->previewHeight:I

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->getLuminanceStride()I

    move-result v6

    iget-object v7, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->sensorOrientation:Ljava/lang/Integer;

    .line 165
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-wide v9, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->timestamp:J

    move-object v8, v11

    .line 161
    invoke-virtual/range {v3 .. v10}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->onFrame(IIII[BJ)V

    .line 168
    iget-object v3, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->trackingOverlay:Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/OverlayView;

    invoke-virtual {v3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/OverlayView;->postInvalidate()V

    .line 171
    iget-boolean v3, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->computingDetection:Z

    if-eqz v3, :cond_0

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->readyForNextImage()V

    return-void

    :cond_0
    const/4 v3, 0x1

    .line 175
    iput-boolean v3, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->computingDetection:Z

    .line 176
    sget-object v3, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preparing image "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " for detection in bg thread."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iget-object v12, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->rgbFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->getRgbBytes()[I

    move-result-object v13

    const/4 v14, 0x0

    iget v15, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->previewWidth:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget v3, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->previewWidth:I

    iget v4, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->previewHeight:I

    move/from16 v18, v3

    move/from16 v19, v4

    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 180
    iget-object v3, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->luminanceCopy:[B

    if-nez v3, :cond_1

    .line 181
    array-length v3, v11

    new-array v3, v3, [B

    iput-object v3, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->luminanceCopy:[B

    .line 183
    :cond_1
    iget-object v3, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->luminanceCopy:[B

    array-length v4, v11

    invoke-static {v11, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->readyForNextImage()V

    .line 186
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->croppedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 187
    iget-object v4, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->rgbFrameBitmap:Landroid/graphics/Bitmap;

    iget-object v5, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->frameToCropTransform:Landroid/graphics/Matrix;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 193
    new-instance v3, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;

    invoke-direct {v3, v0, v1, v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;J)V

    invoke-virtual {v0, v3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->runInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setNumThreads(I)V
    .locals 1

    .line 274
    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/-$$Lambda$DetectorActivity$ZmTJUK7WWg1S_GTix8HwwHX7fIk;

    invoke-direct {v0, p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/-$$Lambda$DetectorActivity$ZmTJUK7WWg1S_GTix8HwwHX7fIk;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;I)V

    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->runInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setUseNNAPI(Z)V
    .locals 1

    .line 269
    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/-$$Lambda$DetectorActivity$g9566mJ3de6M5rRby1C-mtIjXJE;

    invoke-direct {v0, p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/-$$Lambda$DetectorActivity$g9566mJ3de6M5rRby1C-mtIjXJE;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->runInBackground(Ljava/lang/Runnable;)V

    return-void
.end method
