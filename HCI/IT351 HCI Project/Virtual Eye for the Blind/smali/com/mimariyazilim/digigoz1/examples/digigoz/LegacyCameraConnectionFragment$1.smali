.class Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment$1;
.super Ljava/lang/Object;
.source "LegacyCameraConnectionFragment.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;


# direct methods
.method constructor <init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 6

    const-string p2, "continuous-picture"

    .line 72
    iget-object p3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;

    invoke-static {p3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->access$000(Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;)I

    move-result p3

    .line 73
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;

    invoke-static {p3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->access$102(Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 76
    :try_start_0
    iget-object p3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;

    invoke-static {p3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->access$100(Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;)Landroid/hardware/Camera;

    move-result-object p3

    invoke-virtual {p3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p3

    .line 77
    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p3, p2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 82
    :cond_0
    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p2

    .line 83
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/util/Size;

    const/4 v1, 0x0

    .line 85
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    add-int/lit8 v3, v1, 0x1

    .line 86
    new-instance v4, Landroid/util/Size;

    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v4, v5, v2}, Landroid/util/Size;-><init>(II)V

    aput-object v4, v0, v1

    move v1, v3

    goto :goto_0

    .line 88
    :cond_1
    iget-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;

    .line 90
    invoke-static {p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->access$200(Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;)Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;

    invoke-static {v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->access$200(Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 89
    invoke-static {v0, p2, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->chooseOptimalSize([Landroid/util/Size;II)Landroid/util/Size;

    move-result-object p2

    .line 91
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {p3, v0, p2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 92
    iget-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;

    invoke-static {p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->access$100(Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;)Landroid/hardware/Camera;

    move-result-object p2

    const/16 v0, 0x5a

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 93
    iget-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;

    invoke-static {p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->access$100(Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;)Landroid/hardware/Camera;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 94
    iget-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;

    invoke-static {p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->access$100(Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;)Landroid/hardware/Camera;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 96
    :catch_0
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;

    invoke-static {p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->access$100(Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;)Landroid/hardware/Camera;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera;->release()V

    .line 99
    :goto_1
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;

    invoke-static {p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->access$100(Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;)Landroid/hardware/Camera;

    move-result-object p1

    iget-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;

    invoke-static {p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->access$300(Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 100
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;

    invoke-static {p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->access$100(Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;)Landroid/hardware/Camera;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p1

    .line 101
    iget-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;

    invoke-static {p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->access$100(Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;)Landroid/hardware/Camera;

    move-result-object p2

    iget p3, p1, Landroid/hardware/Camera$Size;->height:I

    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    invoke-static {p3, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/ImageUtils;->getYUVByteSize(II)I

    move-result p3

    new-array p3, p3, [B

    invoke-virtual {p2, p3}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 103
    iget-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;

    invoke-static {p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->access$400(Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;)Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;

    move-result-object p2

    iget p3, p1, Landroid/hardware/Camera$Size;->height:I

    iget p1, p1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p2, p3, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;->setAspectRatio(II)V

    .line 105
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;

    invoke-static {p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;->access$100(Lcom/mimariyazilim/digigoz1/examples/digigoz/LegacyCameraConnectionFragment;)Landroid/hardware/Camera;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
