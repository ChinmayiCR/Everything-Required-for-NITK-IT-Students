.class Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$4;
.super Ljava/lang/Object;
.source "RenkOkuyucu.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->onCreate(Landroid/os/Bundle;)V
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

    .line 174
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$4;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 178
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 179
    sget-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    iget-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$4;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;

    const v0, 0x7f0e006a

    invoke-virtual {p2, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroid/os/Bundle;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 180
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$4;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;

    invoke-virtual {p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->finish()V

    const-string p1, "AramaEkrani"

    .line 181
    sput-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->Ekranadi:Ljava/lang/String;

    .line 182
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$4;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;

    .line 183
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
