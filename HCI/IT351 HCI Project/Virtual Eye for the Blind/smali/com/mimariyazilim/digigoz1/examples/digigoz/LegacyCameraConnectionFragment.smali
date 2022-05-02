.class public Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;
.super Landroid/app/Fragment;
.source "LegacyCameraConnectionFragment.java"


# static fields
.field private static final LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

.field private static final ORIENTATIONS:Landroid/util/SparseIntArray;


# instance fields
.field private backgroundThread:Landroid/os/HandlerThread;

.field private camera:Landroid/hardware/Camera;

.field private desiredSize:Landroid/util/Size;

.field private imageListener:Landroid/hardware/Camera$PreviewCallback;

.field private layout:I

.field private final surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private textureView:Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    invoke-direct {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;-><init>()V

    sput-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    .line 46
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->ORIENTATIONS:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    const/16 v2, 0x5a

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v2, 0x1

    .line 50
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v1, 0x2

    const/16 v2, 0x10e

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v1, 0x3

    const/16 v2, 0xb4

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera$PreviewCallback;ILandroid/util/Size;)V
    .locals 1

    .line 124
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 66
    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment$1;

    invoke-direct {v0, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment$1;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;)V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 125
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->imageListener:Landroid/hardware/Camera$PreviewCallback;

    .line 126
    iput p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->layout:I

    .line 127
    iput-object p3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->desiredSize:Landroid/util/Size;

    return-void
.end method

.method static synthetic access$000(Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;)I
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->getCameraId()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;)Landroid/hardware/Camera;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->camera:Landroid/hardware/Camera;

    return-object p0
.end method

.method static synthetic access$102(Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->camera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;)Landroid/util/Size;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->desiredSize:Landroid/util/Size;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;)Landroid/hardware/Camera$PreviewCallback;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->imageListener:Landroid/hardware/Camera$PreviewCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;)Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->textureView:Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;

    return-object p0
.end method

.method private getCameraId()I
    .locals 3

    .line 212
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v1, 0x0

    .line 213
    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 214
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 215
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private startBackgroundThread()V
    .locals 2

    .line 187
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->backgroundThread:Landroid/os/HandlerThread;

    .line 188
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method private stopBackgroundThread()V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->backgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->backgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->backgroundThread:Landroid/os/HandlerThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 198
    sget-object v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

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

    .line 143
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 133
    iget p3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 0

    .line 178
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->stopCamera()V

    .line 179
    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->stopBackgroundThread()V

    .line 180
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 148
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 149
    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->startBackgroundThread()V

    .line 158
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->textureView:Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;

    invoke-virtual {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->textureView:Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    const p2, 0x7f0800da

    .line 138
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;

    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->textureView:Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;

    return-void
.end method

.method protected stopCamera()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 205
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->camera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 206
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 207
    iput-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->camera:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method
