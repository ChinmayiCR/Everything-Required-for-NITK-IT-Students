.class Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$3;
.super Ljava/lang/Object;
.source "CameraConnectionFragment.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


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

    .line 172
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$3;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 176
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$3;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;

    invoke-static {p1, p2, p3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->access$300(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 182
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$3;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;

    invoke-static {p1, p2, p3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->access$400(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
