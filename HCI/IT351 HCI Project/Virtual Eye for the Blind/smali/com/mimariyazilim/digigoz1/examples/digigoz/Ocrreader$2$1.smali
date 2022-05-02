.class Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2$1;
.super Ljava/lang/Object;
.source "Ocrreader.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2;


# direct methods
.method constructor <init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2$1;->this$1:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 105
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2$1;->this$1:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2;

    iget-object p1, p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;

    const-string p2, "clipboard"

    invoke-virtual {p1, p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 106
    sget-object p2, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->kopyalanacakYazi:Ljava/lang/String;

    const-string v0, "label"

    invoke-static {v0, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    .line 107
    invoke-virtual {p1, p2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 109
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2$1;->this$1:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2;

    iget-object p1, p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;

    invoke-virtual {p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2$1;->this$1:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2;

    iget-object p2, p2, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;

    const v0, 0x7f0e0009

    .line 110
    invoke-virtual {p2, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 109
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
