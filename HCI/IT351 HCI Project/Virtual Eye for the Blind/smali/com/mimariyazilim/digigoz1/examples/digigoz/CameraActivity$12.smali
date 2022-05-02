.class Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$12;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->onImageAvailable(Landroid/media/ImageReader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

.field final synthetic val$image:Landroid/media/Image;


# direct methods
.method constructor <init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;Landroid/media/Image;)V
    .locals 0

    .line 845
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$12;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    iput-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$12;->val$image:Landroid/media/Image;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 848
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$12;->val$image:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 849
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$12;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->access$302(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;Z)Z

    return-void
.end method
