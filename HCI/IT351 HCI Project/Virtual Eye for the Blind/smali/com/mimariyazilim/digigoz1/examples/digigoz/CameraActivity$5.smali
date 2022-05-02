.class Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$5;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;


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

    .line 412
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 415
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f0800b5

    if-ne p1, v2, :cond_1

    .line 420
    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    iget v3, v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->ses_hiz_kontrol_sayaci:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->ses_hiz_kontrol_sayaci:I

    .line 422
    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    iget v2, v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->ses_hiz_kontrol_sayaci:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    .line 423
    sget-object v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    const v4, 0x7f0e0010

    invoke-virtual {v3, v4}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 424
    sget-object v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    goto :goto_0

    .line 427
    :cond_0
    sget-object v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 428
    sget-object v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    const v4, 0x7f0e0011

    invoke-virtual {v3, v4}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const v2, 0x7f080072

    if-ne p1, v2, :cond_2

    .line 436
    sget-object v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    const v4, 0x7f0e0065

    invoke-virtual {v3, v4}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    :cond_2
    const v2, 0x7f08002b

    if-ne p1, v2, :cond_3

    .line 441
    sget-object v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    const v4, 0x7f0e003e

    invoke-virtual {v3, v4}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    :cond_3
    const v2, 0x7f080024

    if-ne p1, v2, :cond_4

    .line 445
    sget-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$5;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    const v3, 0x7f0e003b

    invoke-virtual {v2, v3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    :cond_4
    return v0
.end method
