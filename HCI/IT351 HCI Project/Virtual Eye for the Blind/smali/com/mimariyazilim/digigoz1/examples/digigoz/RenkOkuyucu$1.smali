.class Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "RenkOkuyucu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;
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

    .line 86
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;

    iget-object v0, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 95
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 96
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0

    .line 100
    iget-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;

    iget-object p2, p2, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 101
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 102
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 103
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;

    invoke-virtual {p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->finish()V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;

    iget-object v0, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 89
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;

    iput-object p1, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 90
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;

    invoke-virtual {p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->createCameraPreviewSession()V

    return-void
.end method
