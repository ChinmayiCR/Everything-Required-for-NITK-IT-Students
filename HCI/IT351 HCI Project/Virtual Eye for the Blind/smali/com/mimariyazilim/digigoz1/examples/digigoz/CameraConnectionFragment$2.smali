.class Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$2;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
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

    .line 140
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;

    invoke-static {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->access$000(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 152
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 153
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->access$102(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0

    .line 158
    iget-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;

    invoke-static {p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->access$000(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;)Ljava/util/concurrent/Semaphore;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 159
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 160
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->access$102(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 161
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;

    invoke-virtual {p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;

    invoke-static {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->access$000(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 145
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;

    invoke-static {v0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->access$102(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 146
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;

    invoke-static {p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->access$200(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;)V

    return-void
.end method
