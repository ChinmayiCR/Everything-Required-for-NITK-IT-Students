.class Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$9;
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


# direct methods
.method constructor <init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;[B)V
    .locals 0

    .line 780
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$9;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    iput-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$9;->val$bytes:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 783
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$9;->val$bytes:[B

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$9;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    iget v1, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->previewWidth:I

    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$9;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    iget v2, v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->previewHeight:I

    iget-object v3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$9;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    invoke-static {v3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->access$200(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;)[I

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/ImageUtils;->convertYUV420SPToARGB8888([BII[I)V

    return-void
.end method
