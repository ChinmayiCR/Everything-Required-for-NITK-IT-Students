.class Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraConnectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;
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

    .line 103
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method
