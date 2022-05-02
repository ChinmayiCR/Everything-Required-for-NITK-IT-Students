.class Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$7;
.super Ljava/lang/Object;
.source "Ocrreader.java"

# interfaces
.implements Lcom/google/android/gms/vision/Detector$Processor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/vision/Detector$Processor<",
        "Lcom/google/android/gms/vision/text/TextBlock;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;


# direct methods
.method constructor <init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$7;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receiveDetections(Lcom/google/android/gms/vision/Detector$Detections;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Detector$Detections<",
            "Lcom/google/android/gms/vision/text/TextBlock;",
            ">;)V"
        }
    .end annotation

    .line 223
    invoke-virtual {p1}, Lcom/google/android/gms/vision/Detector$Detections;->getDetectedItems()Landroid/util/SparseArray;

    move-result-object p1

    .line 224
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$7;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;

    iget-object v0, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->textView:Landroid/widget/TextView;

    new-instance v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$7$1;

    invoke-direct {v1, p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$7$1;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$7;Landroid/util/SparseArray;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$7;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;

    iget-object p1, p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$7;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;

    invoke-virtual {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method
