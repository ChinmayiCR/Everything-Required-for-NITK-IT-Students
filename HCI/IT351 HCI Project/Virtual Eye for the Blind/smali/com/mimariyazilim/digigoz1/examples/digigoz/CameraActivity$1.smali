.class Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


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

    .line 278
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 3

    if-nez p1, :cond_3

    .line 287
    sget-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->localLang:Ljava/lang/String;

    const-string v0, "T\u00fcrk\u00e7e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 288
    sget-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result p1

    goto :goto_0

    .line 291
    :cond_0
    sget-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    new-instance v0, Ljava/util/Locale;

    const-string v1, "tr"

    const-string v2, "TR"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result p1

    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    :cond_1
    const-string p1, "TTS"

    const-string v0, "Dil Desteklenmiyor"

    .line 299
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_2
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    invoke-virtual {p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/sharedPrefs;->getVal(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 305
    sget-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    const v1, 0x7f0e0065

    invoke-virtual {v0, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 307
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    invoke-virtual {p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/sharedPrefs;->save(Landroid/content/Context;Z)V

    :cond_3
    return-void
.end method
