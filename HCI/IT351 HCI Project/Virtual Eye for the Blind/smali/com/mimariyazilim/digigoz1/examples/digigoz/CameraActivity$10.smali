.class Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$10;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->onPreviewFrame([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

.field final synthetic val$bytes:[B

.field final synthetic val$camera:Landroid/hardware/Camera;


# direct methods
.method constructor <init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;Landroid/hardware/Camera;[B)V
    .locals 0

    .line 788
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$10;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    iput-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$10;->val$camera:Landroid/hardware/Camera;

    iput-object p3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$10;->val$bytes:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 791
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$10;->val$camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$10;->val$bytes:[B

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 792
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$10;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->access$302(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;Z)Z

    return-void
.end method
