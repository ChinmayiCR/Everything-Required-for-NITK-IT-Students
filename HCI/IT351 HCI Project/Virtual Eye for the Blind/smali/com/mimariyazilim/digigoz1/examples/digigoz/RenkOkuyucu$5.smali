.class Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$5;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "RenkOkuyucu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->createCameraPreviewSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;


# direct methods
.method constructor <init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 622
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;

    const-string v0, "Failed"

    invoke-virtual {p1, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    .line 608
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;

    iget-object v0, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;

    iput-object p1, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 611
    :try_start_0
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;

    iget-object p1, p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 613
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;

    iget-object v0, p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iput-object v0, p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 614
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;

    iget-object p1, p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;

    iget-object v0, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    const/4 v1, 0x0

    check-cast v1, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;

    iget-object v2, v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 616
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
