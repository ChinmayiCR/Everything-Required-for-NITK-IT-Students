.class Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$2;
.super Ljava/lang/Object;
.source "RenkOkuyucu.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


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

    .line 106
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 116
    :try_start_0
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;

    invoke-virtual {p1, p2, p3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->openCamera(II)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 118
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 123
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;

    invoke-virtual {p1, p2, p3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->configureTransform(II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
