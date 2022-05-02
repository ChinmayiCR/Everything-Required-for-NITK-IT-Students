.class public Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "RenkOkuyucu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$CompareSizesByArea;
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z = false

.field private static final MAX_PREVIEW_HEIGHT:I = 0x811

.field private static final MAX_PREVIEW_WIDTH:I = 0x438

.field private static final REQUEST_CAMERA_PERMISSION:I = 0x1

.field public static YukariKaydirmaSayaci:I

.field public static asagiKaydirma:I


# instance fields
.field button:Landroid/widget/Button;

.field gestureDetector:Landroid/view/GestureDetector;

.field public mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field public mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraId:Ljava/lang/String;

.field public mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field public mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mImageReader:Landroid/media/ImageReader;

.field public mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

.field public mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mPreviewSize:Landroid/util/Size;

.field private final mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mTextureView:Landroid/view/TextureView;

.field objeTanımaGecisButton:Landroid/widget/Button;

.field renkOkuButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 70
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 86
    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$1;

    invoke-direct {v0, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$1;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;)V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 106
    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$2;

    invoke-direct {v0, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$2;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;)V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    return-void
.end method

.method private static chooseOptimalSize([Landroid/util/Size;IIIILandroid/util/Size;)Landroid/util/Size;
    .locals 9

    .line 672
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 673
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 674
    invoke-virtual {p5}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 675
    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result p5

    .line 676
    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, p0, v5

    .line 677
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-gt v7, p3, :cond_2

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    if-gt v7, p4, :cond_2

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v8

    mul-int/2addr v8, p5

    div-int/2addr v8, v2

    if-ne v7, v8, :cond_2

    .line 678
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-lt v7, p1, :cond_1

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    if-ge v7, p2, :cond_0

    goto :goto_1

    .line 681
    :cond_0
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 679
    :cond_1
    :goto_1
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 685
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 686
    new-instance p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$CompareSizesByArea;

    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$CompareSizesByArea;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    return-object p0

    .line 688
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 689
    new-instance p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$CompareSizesByArea;

    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$CompareSizesByArea;-><init>()V

    invoke-static {v1, p0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    return-object p0

    :cond_5
    const-string p1, "Camera2"

    const-string p2, "Couldn\'t find any suitable preview size"

    .line 691
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    aget-object p0, p0, v4

    return-object p0
.end method

.method private closeCamera()V
    .locals 3

    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 549
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 551
    iput-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    .line 554
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 555
    iput-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 557
    :cond_1
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    .line 558
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 559
    iput-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mImageReader:Landroid/media/ImageReader;

    .line 561
    :cond_2
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 565
    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 566
    throw v0

    :catch_0
    move-exception v0

    .line 563
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Interrupted while trying to lock camera closing."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private requestCameraPermission()V
    .locals 3

    const-string v0, "android.permission.CAMERA"

    .line 631
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 632
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "R string request permission"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$7;

    invoke-direct {v1, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$7;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;)V

    const-string v2, "17039370"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$6;

    invoke-direct {v1, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$6;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;)V

    const-string v2, "17039360"

    .line 636
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 640
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    goto :goto_0

    .line 642
    :cond_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private setUpCameraOutputs(II)V
    .locals 12

    const-string v0, "camera"

    .line 571
    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 573
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 574
    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    .line 575
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_0

    .line 576
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_3

    .line 577
    :cond_0
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz v5, :cond_3

    const/16 v0, 0x100

    .line 579
    invoke-virtual {v5, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$CompareSizesByArea;

    invoke-direct {v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$CompareSizesByArea;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/util/Size;

    .line 580
    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mImageReader:Landroid/media/ImageReader;

    const/4 v1, 0x0

    .line 581
    check-cast v1, Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 582
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 583
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 584
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 585
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 586
    const-class v2, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v5, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v6

    const/16 v2, 0x438

    if-le v1, v2, :cond_1

    move v9, v2

    goto :goto_1

    :cond_1
    move v9, v1

    :goto_1
    const/16 v1, 0x811

    if-le v0, v1, :cond_2

    move v10, v1

    goto :goto_2

    :cond_2
    move v10, v0

    :goto_2
    move v7, p1

    move v8, p2

    invoke-static/range {v6 .. v11}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->chooseOptimalSize([Landroid/util/Size;IIIILandroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mPreviewSize:Landroid/util/Size;

    .line 587
    iput-object v4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mCameraId:Ljava/lang/String;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 593
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :catch_1
    :cond_4
    return-void
.end method

.method private startBackgroundThread()V
    .locals 2

    .line 655
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 656
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 657
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mBackgroundHandler:Landroid/os/Handler;

    return-void
.end method

.method private stopBackgroundThread()V
    .locals 1

    .line 661
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 663
    :try_start_0
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    const/4 v0, 0x0

    .line 664
    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 665
    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 667
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public RenkOku2()V
    .locals 12

    .line 198
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 202
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 204
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GEN\u0130SL\u0130K UZUNLUK "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v3, 0x2

    .line 207
    div-int/2addr v1, v3

    .line 208
    div-int/2addr v2, v3

    .line 288
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    .line 289
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-float v6, v6

    .line 290
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v2, v4, v1

    if-lez v2, :cond_0

    move v1, v4

    :cond_0
    cmpl-float v2, v6, v1

    if-lez v2, :cond_1

    move v1, v6

    :cond_1
    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    move v1, v0

    :cond_2
    const/high16 v2, 0x43fa0000    # 500.0f

    cmpg-float v7, v4, v2

    if-gez v7, :cond_3

    move v2, v4

    :cond_3
    cmpg-float v7, v6, v2

    if-gez v7, :cond_4

    move v2, v6

    :cond_4
    cmpg-float v7, v0, v2

    if-gez v7, :cond_5

    move v2, v0

    :cond_5
    sub-float v2, v1, v2

    const/4 v7, 0x0

    cmpl-float v8, v2, v7

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x0

    if-nez v8, :cond_7

    :cond_6
    move v0, v10

    goto :goto_2

    :cond_7
    cmpl-float v8, v1, v4

    const/high16 v11, 0x42700000    # 60.0f

    if-nez v8, :cond_8

    int-to-float v4, v10

    sub-float/2addr v6, v0

    div-float/2addr v6, v2

    const/high16 v0, 0x40c00000    # 6.0f

    rem-float/2addr v6, v0

    mul-float/2addr v6, v11

    add-float/2addr v4, v6

    float-to-int v0, v4

    if-gez v0, :cond_a

    :goto_0
    add-int/lit16 v0, v0, 0x168

    goto :goto_2

    :cond_8
    cmpl-float v8, v1, v6

    if-nez v8, :cond_9

    int-to-float v6, v10

    sub-float/2addr v0, v4

    div-float/2addr v0, v2

    add-float/2addr v0, v9

    mul-float/2addr v0, v11

    add-float/2addr v6, v0

    float-to-int v0, v6

    if-gez v0, :cond_a

    :goto_1
    goto :goto_0

    :cond_9
    cmpl-float v0, v1, v0

    if-nez v0, :cond_6

    int-to-float v0, v10

    sub-float/2addr v4, v6

    div-float/2addr v4, v2

    const/high16 v6, 0x40800000    # 4.0f

    add-float/2addr v4, v6

    mul-float/2addr v4, v11

    add-float/2addr v0, v4

    float-to-int v0, v0

    if-gez v0, :cond_a

    goto :goto_1

    :cond_a
    :goto_2
    cmpl-float v4, v1, v7

    const/high16 v6, 0x42c80000    # 100.0f

    if-nez v4, :cond_b

    move v2, v10

    goto :goto_3

    :cond_b
    int-to-float v4, v10

    div-float/2addr v2, v1

    mul-float/2addr v2, v6

    add-float/2addr v4, v2

    float-to-int v2, v4

    :goto_3
    int-to-float v4, v10

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v1, v7

    mul-float/2addr v1, v6

    add-float/2addr v4, v1

    float-to-int v1, v4

    int-to-float v0, v0

    int-to-float v4, v3

    div-float/2addr v0, v4

    .line 349
    div-int/2addr v2, v3

    .line 350
    div-int/2addr v1, v3

    mul-float/2addr v9, v0

    float-to-int v0, v0

    mul-int/2addr v0, v3

    .line 353
    invoke-virtual {p0, v0, v2, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->renkAyirici(III)Ljava/lang/String;

    move-result-object v0

    .line 355
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "renk "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 356
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "H S V "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 358
    sget-object v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    return-void
.end method

.method public configureTransform(II)V
    .locals 9

    .line 697
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mPreviewSize:Landroid/util/Size;

    if-eqz v0, :cond_3

    .line 698
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 699
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    int-to-float p2, p2

    .line 702
    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 703
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v4, v3, v3, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 704
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    .line 705
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v6, v0, :cond_1

    const/4 v6, 0x3

    if-ne v6, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ne v7, v0, :cond_2

    const/high16 p1, 0x43340000    # 180.0f

    .line 713
    invoke-virtual {v1, p1, v3, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_1

    .line 707
    :cond_1
    :goto_0
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    sub-float v6, v3, v6

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    sub-float v8, v5, v8

    invoke-virtual {v4, v6, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 708
    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v2, v4, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 709
    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p2, v2

    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 710
    invoke-virtual {v1, p1, p1, v3, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    sub-int/2addr v0, v7

    mul-int/lit8 v0, v0, 0x5a

    int-to-float p1, v0

    .line 711
    invoke-virtual {v1, p1, v3, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 715
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    :cond_3
    return-void
.end method

.method public createCameraPreviewSession()V
    .locals 5

    .line 601
    :try_start_0
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 602
    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 603
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 604
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 605
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 606
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/Surface;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$5;

    invoke-direct {v2, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$5;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;)V

    const/4 v3, 0x0

    check-cast v3, Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 626
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 p1, 0x0

    .line 130
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001e

    .line 131
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->setContentView(I)V

    const p1, 0x7f0800da

    .line 132
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mTextureView:Landroid/view/TextureView;

    const/4 p1, 0x0

    .line 135
    sput p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->asagiKaydirma:I

    .line 136
    sput p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->YukariKaydirmaSayaci:I

    const p1, 0x7f08009f

    .line 138
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->renkOkuButton:Landroid/widget/Button;

    const p1, 0x7f08009e

    .line 139
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->objeTanımaGecisButton:Landroid/widget/Button;

    .line 163
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->renkOkuButton:Landroid/widget/Button;

    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$3;

    invoke-direct {v0, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$3;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->objeTanımaGecisButton:Landroid/widget/Button;

    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$4;

    invoke-direct {v0, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$4;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 518
    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->closeCamera()V

    .line 519
    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->stopBackgroundThread()V

    .line 520
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 648
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0

    .line 649
    :cond_0
    array-length p1, p3

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 650
    aget p1, p3, p1

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 504
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 505
    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->startBackgroundThread()V

    .line 506
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->openCamera(II)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 510
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mTextureView:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :goto_0
    return-void
.end method

.method public openCamera(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const-string v0, "android.permission.CAMERA"

    .line 525
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->requestCameraPermission()V

    return-void

    .line 529
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->setUpCameraOutputs(II)V

    .line 530
    invoke-virtual {p0, p1, p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->configureTransform(II)V

    const-string p1, "camera"

    .line 531
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    .line 534
    :try_start_0
    iget-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v0, 0x9c4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 535
    iget-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mCameraId:Ljava/lang/String;

    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, v0, v1}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    return-void

    .line 538
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Time out waiting to lock camera opening."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 542
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Interrupted while trying to lock camera opening."

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 540
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    return-void
.end method

.method public renkAyirici(III)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    .line 391
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "there is someting wrong, please contact me."

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_0
    const/16 v0, 0x10

    const v1, 0x7f0e0045

    const/16 v2, 0x14

    const/16 v3, 0xa

    if-ltz p1, :cond_1

    if-le p1, v0, :cond_2

    :cond_1
    const/16 v4, 0x159

    if-lt p1, v4, :cond_4

    const/16 v4, 0x168

    if-gt p1, v4, :cond_4

    :cond_2
    const p1, 0x7f0e004d

    .line 395
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-gt p3, v3, :cond_3

    .line 397
    invoke-virtual {p0, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_3
    if-ge p2, v2, :cond_17

    .line 399
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_4
    if-le p1, v0, :cond_7

    const/16 v0, 0x24

    if-gt p1, v0, :cond_7

    const p1, 0x7f0e004b

    .line 404
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-le p3, v2, :cond_5

    const/16 v0, 0x1b

    if-gt p2, v0, :cond_6

    :cond_5
    const p1, 0x7f0e0047

    .line 406
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_6
    move-object v0, p1

    if-gt p3, v3, :cond_17

    .line 409
    invoke-virtual {p0, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_7
    const/16 v0, 0x25

    const v4, 0x7f0e0049

    if-lt p1, v0, :cond_a

    const/16 v0, 0x4b

    if-gt p1, v0, :cond_a

    const p1, 0x7f0e004e

    .line 416
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-gt p2, v2, :cond_8

    .line 418
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_8
    if-gt p2, v3, :cond_9

    .line 421
    invoke-virtual {p0, v4}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    :cond_9
    if-gt p3, v3, :cond_17

    .line 424
    invoke-virtual {p0, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_a
    const/16 v0, 0x4c

    if-lt p1, v0, :cond_d

    const/16 v0, 0x96

    if-gt p1, v0, :cond_d

    const p1, 0x7f0e004a

    .line 430
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-gt p2, v3, :cond_b

    .line 432
    invoke-virtual {p0, v4}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v0, p1

    goto :goto_1

    :cond_b
    if-gt p2, v2, :cond_c

    .line 434
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_c
    :goto_1
    if-gt p3, v3, :cond_17

    .line 437
    invoke-virtual {p0, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_d
    const/16 v0, 0x97

    if-lt p1, v0, :cond_10

    const/16 v0, 0xd2

    if-gt p1, v0, :cond_10

    const p1, 0x7f0e0048

    .line 443
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-gt p2, v3, :cond_e

    .line 445
    invoke-virtual {p0, v4}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    move-object v0, p1

    goto :goto_3

    :cond_e
    if-gt p2, v2, :cond_f

    .line 447
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_f
    :goto_3
    if-gt p3, v3, :cond_17

    .line 450
    invoke-virtual {p0, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_10
    const/16 v0, 0xd3

    if-lt p1, v0, :cond_13

    const/16 v0, 0x10e

    if-gt p1, v0, :cond_13

    const p1, 0x7f0e0046

    .line 455
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-gt p2, v3, :cond_11

    .line 457
    invoke-virtual {p0, v4}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_11
    if-gt p2, v2, :cond_12

    .line 459
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_12
    if-gt p3, v3, :cond_17

    .line 462
    invoke-virtual {p0, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_13
    const/16 v0, 0x10f

    if-lt p1, v0, :cond_16

    const/16 v0, 0x158

    if-gt p1, v0, :cond_16

    const p1, 0x7f0e004c

    .line 468
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-gt p2, v3, :cond_14

    .line 470
    invoke-virtual {p0, v4}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_4
    move-object v0, p1

    goto :goto_5

    :cond_14
    if-gt p2, v2, :cond_15

    .line 472
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_15
    :goto_5
    if-gt p3, v3, :cond_17

    .line 475
    invoke-virtual {p0, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_16
    :goto_6
    const-string v0, "HATALI"

    :cond_17
    :goto_7
    return-object v0
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 0

    .line 730
    new-instance p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$8;

    invoke-direct {p1, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$8;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;)V

    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
