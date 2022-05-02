.class Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2$1;
.super Ljava/lang/Object;
.source "DetectorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;


# direct methods
.method constructor <init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2$1;->this$1:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 240
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2$1;->this$1:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;

    iget-object v0, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2$1;->this$1:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;

    iget-object v2, v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

    iget v2, v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->previewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2$1;->this$1:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;

    iget-object v3, v3, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

    iget v3, v3, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->previewHeight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->showFrameInfo(Ljava/lang/String;)V

    .line 241
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2$1;->this$1:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;

    iget-object v3, v3, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

    iget v3, v3, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->previewHeight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "DETECTORACT\u0130V\u0130TY"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2$1;->this$1:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;

    iget-object v4, v4, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

    iget v4, v4, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->previewWidth:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2$1;->this$1:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;

    iget-object v0, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2$1;->this$1:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;

    iget-object v3, v3, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

    invoke-static {v3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->access$500(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2$1;->this$1:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;

    iget-object v2, v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

    invoke-static {v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->access$500(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->showCropInfo(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2$1;->this$1:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;

    iget-object v0, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2$1;->this$1:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;

    iget-object v2, v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

    invoke-static {v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->access$400(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->showInference(Ljava/lang/String;)V

    return-void
.end method
