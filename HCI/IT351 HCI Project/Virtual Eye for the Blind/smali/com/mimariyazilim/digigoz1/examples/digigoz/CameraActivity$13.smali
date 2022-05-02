.class Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$13;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->setFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;


# direct methods
.method constructor <init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;)V
    .locals 0

    .line 1018
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$13;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewSizeChosen(Landroid/util/Size;I)V
    .locals 2

    .line 1021
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$13;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->previewHeight:I

    .line 1022
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$13;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->previewWidth:I

    .line 1023
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$13;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    invoke-virtual {v0, p1, p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->onPreviewSizeChosen(Landroid/util/Size;I)V

    return-void
.end method
