.class Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$5;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CameraConnectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->createCameraPreviewSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;


# direct methods
.method constructor <init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 494
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;

    const-string v0, "Failed"

    invoke-static {p1, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->access$1100(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    .line 468
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;

    invoke-static {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->access$100(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;

    invoke-static {v0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->access$502(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 476
    :try_start_0
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;

    invoke-static {p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->access$600(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x4

    .line 478
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 476
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 480
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;

    invoke-static {p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->access$600(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    .line 481
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 480
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 484
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;

    invoke-static {p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->access$600(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->access$702(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;

    .line 485
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;

    invoke-static {p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->access$500(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p1

    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;

    .line 486
    invoke-static {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->access$700(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;

    invoke-static {v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->access$800(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;

    invoke-static {v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->access$900(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;)Landroid/os/Handler;

    move-result-object v2

    .line 485
    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 488
    invoke-static {}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->access$1000()Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Exception!"

    invoke-virtual {v0, p1, v2, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
