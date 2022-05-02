.class Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$11;
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

.field final synthetic val$uvPixelStride:I

.field final synthetic val$uvRowStride:I


# direct methods
.method constructor <init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;II)V
    .locals 0

    .line 828
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$11;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    iput p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$11;->val$uvRowStride:I

    iput p3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$11;->val$uvPixelStride:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 831
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$11;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    .line 832
    invoke-static {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->access$400(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;)[[B

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$11;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    .line 833
    invoke-static {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->access$400(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;)[[B

    move-result-object v0

    const/4 v1, 0x1

    aget-object v3, v0, v1

    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$11;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    .line 834
    invoke-static {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->access$400(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;)[[B

    move-result-object v0

    const/4 v1, 0x2

    aget-object v4, v0, v1

    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$11;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    iget v5, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->previewWidth:I

    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$11;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    iget v6, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->previewHeight:I

    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$11;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    .line 837
    invoke-static {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->access$500(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;)I

    move-result v7

    iget v8, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$11;->val$uvRowStride:I

    iget v9, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$11;->val$uvPixelStride:I

    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$11;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    .line 840
    invoke-static {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->access$200(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;)[I

    move-result-object v10

    .line 831
    invoke-static/range {v2 .. v10}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/ImageUtils;->convertYUV420ToARGB8888([B[B[BIIIII[I)V

    return-void
.end method
