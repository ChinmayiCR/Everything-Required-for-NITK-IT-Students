.class Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$7$1;
.super Ljava/lang/Object;
.source "Ocrreader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$7;->receiveDetections(Lcom/google/android/gms/vision/Detector$Detections;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$7;

.field final synthetic val$items:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$7;Landroid/util/SparseArray;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$7$1;->this$1:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$7;

    iput-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$7$1;->val$items:Landroid/util/SparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 233
    :goto_0
    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$7$1;->val$items:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 236
    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$7$1;->val$items:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/vision/text/TextBlock;

    .line 237
    invoke-virtual {v2}, Lcom/google/android/gms/vision/text/TextBlock;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 238
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$7$1;->this$1:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$7;

    iget-object v1, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$7;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;

    iget-object v1, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
