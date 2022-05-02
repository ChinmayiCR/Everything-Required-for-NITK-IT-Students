.class Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$4;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;


# direct methods
.method constructor <init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$4;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 383
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 384
    sget-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    iget-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$4;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    const v0, 0x7f0e0078

    invoke-virtual {p2, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroid/os/Bundle;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 387
    :cond_0
    sget-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result p1

    if-nez p1, :cond_0

    .line 388
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$4;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$4;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    invoke-virtual {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
