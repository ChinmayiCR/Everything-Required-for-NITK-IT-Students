.class Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$3;
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

    .line 342
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$3;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 346
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 348
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "D\u0130NLE TU\u015eUNA BASILDI1"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 350
    sput-boolean p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->SuanDinliyorSesKes:Z

    .line 351
    sget-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    const-wide/16 v1, 0xbb8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p2, v3}, Landroid/speech/tts/TextToSpeech;->playSilentUtterance(JILjava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$3;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    iget-object v0, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->recognizer:Landroid/speech/SpeechRecognizer;

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$3;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    iget-object v1, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 353
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->BelirliArama:Ljava/lang/Boolean;

    :cond_0
    return p2
.end method
