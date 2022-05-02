.class public Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;
.super Landroid/app/Fragment;
.source "CameraConnectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ErrorDialog;,
        Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$CompareSizesByArea;,
        Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ConnectionCallback;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final FRAGMENT_DIALOG:Ljava/lang/String; = "dialog"

.field private static final LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

.field private static final MINIMUM_PREVIEW_SIZE:I = 0x140

.field private static final ORIENTATIONS:Landroid/util/SparseIntArray;


# instance fields
.field private backgroundHandler:Landroid/os/Handler;

.field private backgroundThread:Landroid/os/HandlerThread;

.field private final cameraConnectionCallback:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ConnectionCallback;

.field private cameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private cameraId:Ljava/lang/String;

.field private final cameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field private final captureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private captureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private final imageListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final inputSize:Landroid/util/Size;

.field private final layout:I

.field private previewReader:Landroid/media/ImageReader;

.field private previewRequest:Landroid/hardware/camera2/CaptureRequest;

.field private previewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private previewSize:Landroid/util/Size;

.field private sensorOrientation:Ljava/lang/Integer;

.field private final stateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private textureView:Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 72
    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    invoke-direct {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;-><init>()V

    sput-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    .line 81
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->ORIENTATIONS:Landroid/util/SparseIntArray;

    const/16 v1, 0x5a

    const/4 v2, 0x0

    .line 86
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v1, 0x1

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v1, 0x2

    const/16 v2, 0x10e

    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v1, 0x3

    const/16 v2, 0xb4

    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method private constructor <init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ConnectionCallback;Landroid/media/ImageReader$OnImageAvailableListener;ILandroid/util/Size;)V
    .locals 2

    .line 198
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 93
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->cameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 102
    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$1;

    invoke-direct {v0, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$1;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;)V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->captureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 139
    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$2;

    invoke-direct {v0, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$2;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;)V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->stateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 171
    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$3;

    invoke-direct {v0, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$3;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;)V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 199
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->cameraConnectionCallback:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ConnectionCallback;

    .line 200
    iput-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->imageListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 201
    iput p3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->layout:I

    .line 202
    iput-object p4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->inputSize:Landroid/util/Size;

    return-void
.end method

.method static synthetic access$000(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->cameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic access$1000()Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;
    .locals 1

    .line 69
    sget-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->createCameraPreviewSession()V

    return-void
.end method

.method static synthetic access$300(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;II)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->openCamera(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;II)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->configureTransform(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static synthetic access$502(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->previewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static synthetic access$700(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->previewRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object p0
.end method

.method static synthetic access$702(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->previewRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object p1
.end method

.method static synthetic access$800(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->captureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object p0
.end method

.method static synthetic access$900(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;)Landroid/os/Handler;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->backgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method protected static chooseOptimalSize([Landroid/util/Size;II)Landroid/util/Size;
    .locals 9

    .line 215
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x140

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 216
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p1, p2}, Landroid/util/Size;-><init>(II)V

    .line 220
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 221
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 222
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v6, p0, v4

    .line 223
    invoke-virtual {v6, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x1

    .line 228
    :cond_0
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    if-lt v7, v0, :cond_1

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-lt v7, v0, :cond_1

    .line 229
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 231
    :cond_1
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 235
    :cond_2
    sget-object v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Desired size: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", min size: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Valid preview sizes: ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-static {v4, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v8}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Rejected preview sizes: ["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p2, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_3

    new-array p0, v3, [Ljava/lang/Object;

    const-string p1, "Exact size match found."

    .line 240
    invoke-virtual {v2, p1, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 245
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_4

    .line 246
    new-instance p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$CompareSizesByArea;

    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$CompareSizesByArea;-><init>()V

    invoke-static {p1, p0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    .line 247
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Chosen size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_4
    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "Couldn\'t find any suitable preview size"

    .line 250
    invoke-virtual {v2, p2, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    aget-object p0, p0, v3

    return-object p0
.end method

.method private closeCamera()V
    .locals 3

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->cameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 396
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 398
    iput-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    .line 401
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 402
    iput-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->previewReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    .line 405
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 406
    iput-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->previewReader:Landroid/media/ImageReader;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->cameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 409
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Interrupted while trying to lock camera closing."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    :goto_0
    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->cameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 412
    throw v0
.end method

.method private configureTransform(II)V
    .locals 9

    .line 512
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 513
    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->textureView:Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->previewSize:Landroid/util/Size;

    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 516
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 517
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 518
    new-instance v2, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 519
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->previewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->previewSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v4, v3, v3, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 520
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    .line 521
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v6, v0, :cond_2

    const/4 v6, 0x3

    if-ne v6, v0, :cond_1

    goto :goto_0

    :cond_1
    if-ne v7, v0, :cond_3

    const/high16 p1, 0x43340000    # 180.0f

    .line 532
    invoke-virtual {v1, p1, v3, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_1

    .line 523
    :cond_2
    :goto_0
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    sub-float v6, v3, v6

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    sub-float v8, v5, v8

    invoke-virtual {v4, v6, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 524
    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v2, v4, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 525
    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->previewSize:Landroid/util/Size;

    .line 527
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p2, v2

    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->previewSize:Landroid/util/Size;

    .line 528
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    .line 526
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 529
    invoke-virtual {v1, p1, p1, v3, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    sub-int/2addr v0, v7

    mul-int/lit8 v0, v0, 0x5a

    int-to-float p1, v0

    .line 530
    invoke-virtual {v1, p1, v3, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 534
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->textureView:Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;

    invoke-virtual {p1, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;->setTransform(Landroid/graphics/Matrix;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private createCameraPreviewSession()V
    .locals 7

    const/4 v0, 0x0

    .line 437
    :try_start_0
    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->textureView:Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;

    invoke-virtual {v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 441
    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->previewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->previewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 444
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 447
    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->previewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 448
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 450
    sget-object v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opening camera preview: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->previewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->previewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->previewSize:Landroid/util/Size;

    .line 455
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->previewSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    const/16 v5, 0x23

    const/4 v6, 0x2

    .line 454
    invoke-static {v1, v4, v5, v6}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->previewReader:Landroid/media/ImageReader;

    .line 457
    iget-object v4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->imageListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v5, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->backgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v5}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 458
    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->previewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->previewReader:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 461
    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    new-array v4, v6, [Landroid/view/Surface;

    aput-object v2, v4, v0

    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->previewReader:Landroid/media/ImageReader;

    .line 462
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$5;

    invoke-direct {v3, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$5;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;)V

    const/4 v4, 0x0

    .line 461
    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 499
    sget-object v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Exception!"

    invoke-virtual {v2, v1, v3, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static newInstance(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ConnectionCallback;Landroid/media/ImageReader$OnImageAvailableListener;ILandroid/util/Size;)Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;
    .locals 1

    .line 260
    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ConnectionCallback;Landroid/media/ImageReader$OnImageAvailableListener;ILandroid/util/Size;)V

    return-object v0
.end method

.method private openCamera(II)V
    .locals 3

    .line 376
    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->setUpCameraOutputs()V

    .line 377
    invoke-direct {p0, p1, p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->configureTransform(II)V

    .line 378
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "camera"

    .line 379
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    .line 381
    :try_start_0
    iget-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->cameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v0, 0x9c4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 384
    iget-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->cameraId:Ljava/lang/String;

    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->stateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->backgroundHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, v0, v1}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 382
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Time out waiting to lock camera opening."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 388
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Interrupted while trying to lock camera opening."

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 386
    sget-object p2, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Exception!"

    invoke-virtual {p2, p1, v1, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private setUpCameraOutputs()V
    .locals 4

    .line 332
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "camera"

    .line 333
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->cameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 337
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 338
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 340
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->sensorOrientation:Ljava/lang/Integer;

    .line 345
    const-class v0, Landroid/graphics/SurfaceTexture;

    .line 347
    invoke-virtual {v1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v0

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->inputSize:Landroid/util/Size;

    .line 348
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->inputSize:Landroid/util/Size;

    .line 349
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 346
    invoke-static {v0, v1, v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->chooseOptimalSize([Landroid/util/Size;II)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->previewSize:Landroid/util/Size;

    .line 352
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 354
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->textureView:Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->previewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->previewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;->setAspectRatio(II)V

    goto :goto_0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->textureView:Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->previewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->previewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;->setAspectRatio(II)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const v0, 0x7f0e0042

    .line 365
    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ErrorDialog;->newInstance(Ljava/lang/String;)Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ErrorDialog;

    move-result-object v1

    .line 366
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v1, v2, v3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ErrorDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 367
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    .line 359
    sget-object v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Exception!"

    invoke-virtual {v1, v0, v3, v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    :goto_0
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->cameraConnectionCallback:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ConnectionCallback;

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->previewSize:Landroid/util/Size;

    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->sensorOrientation:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ConnectionCallback;->onPreviewSizeChosen(Landroid/util/Size;I)V

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2

    .line 269
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    new-instance v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$4;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private startBackgroundThread()V
    .locals 2

    .line 417
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImageListener"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->backgroundThread:Landroid/os/HandlerThread;

    .line 418
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 419
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->backgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->backgroundHandler:Landroid/os/Handler;

    return-void
.end method

.method private stopBackgroundThread()V
    .locals 4

    .line 424
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->backgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->backgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    const/4 v0, 0x0

    .line 427
    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->backgroundThread:Landroid/os/HandlerThread;

    .line 428
    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->backgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 430
    sget-object v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Exception!"

    invoke-virtual {v1, v0, v3, v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 297
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 284
    iget p3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 0

    .line 321
    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->closeCamera()V

    .line 322
    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->stopBackgroundThread()V

    .line 323
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 304
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 305
    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->startBackgroundThread()V

    .line 312
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->textureView:Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;

    invoke-virtual {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->textureView:Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;

    invoke-virtual {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->textureView:Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;

    invoke-virtual {v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->openCamera(II)V

    goto :goto_0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->textureView:Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    const p2, 0x7f0800da

    .line 290
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;

    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->textureView:Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;

    return-void
.end method

.method public setCamera(Ljava/lang/String;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->cameraId:Ljava/lang/String;

    return-void
.end method
