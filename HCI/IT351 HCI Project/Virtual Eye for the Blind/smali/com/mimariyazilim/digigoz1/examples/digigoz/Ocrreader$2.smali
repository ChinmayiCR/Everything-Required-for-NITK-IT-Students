.class Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2;
.super Ljava/lang/Object;
.source "Ocrreader.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;


# direct methods
.method constructor <init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 97
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;

    iget-object p1, p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->builder:Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;

    const v0, 0x7f0e000a

    invoke-virtual {p2, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 101
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;

    iget-object p1, p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->builder:Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;

    const v0, 0x7f0e0002

    invoke-virtual {p2, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2$1;

    invoke-direct {v0, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2$1;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2;)V

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 116
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;

    iget-object p1, p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->builder:Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;

    const v0, 0x7f0e0003

    invoke-virtual {p2, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2$2;

    invoke-direct {v0, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2$2;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2;)V

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 124
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;

    iget-object p1, p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->builder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
