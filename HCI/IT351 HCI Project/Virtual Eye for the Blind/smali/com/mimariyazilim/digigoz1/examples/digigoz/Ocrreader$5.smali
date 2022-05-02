.class Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$5;
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

    .line 153
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 156
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 158
    sget-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    iget-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;

    const v0, 0x7f0e0072

    invoke-virtual {p2, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 159
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;

    invoke-virtual {p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->finish()V

    const-string p1, "RenkOkumaEkrani"

    .line 160
    sput-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->Ekranadi:Ljava/lang/String;

    .line 161
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;

    invoke-virtual {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
