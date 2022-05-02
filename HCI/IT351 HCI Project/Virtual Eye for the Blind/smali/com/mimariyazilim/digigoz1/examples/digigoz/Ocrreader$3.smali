.class Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$3;
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

    .line 131
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$3;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 134
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$3;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;

    invoke-virtual {p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->OkumaButon()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
