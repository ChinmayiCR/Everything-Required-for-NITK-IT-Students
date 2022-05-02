.class Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$8;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->DinleButon()V
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

    .line 609
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$8;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 0

    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0

    return-void
.end method

.method public onEndOfSpeech()V
    .locals 0

    return-void
.end method

.method public onError(I)V
    .locals 3

    .line 646
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR \u0130S "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 649
    sget-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    const-string v0, "Error "

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 650
    sput-boolean v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->SuanDinliyorArttirma:Z

    .line 651
    sput-boolean v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->SuanDinliyorSesKes:Z

    .line 652
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->BelirliArama:Ljava/lang/Boolean;

    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    .line 614
    sput-boolean p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->SuanDinliyorArttirma:Z

    .line 615
    sput-boolean p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->SuanDinliyorSesKes:Z

    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x0

    .line 694
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 663
    sput-boolean v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->SuanDinliyorArttirma:Z

    const/4 v2, 0x0

    .line 664
    sput-object v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->aranan:Ljava/lang/String;

    .line 665
    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$8;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    const-string v3, "results_recognition"

    .line 666
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->voiceResults:Ljava/util/ArrayList;

    .line 668
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$8;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    iget-object p1, p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->voiceResults:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 669
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$8;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    iget-object p1, p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->voiceResults:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sput-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->aranan:Ljava/lang/String;

    :cond_0
    move p1, v0

    .line 673
    :goto_0
    sget-object v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->taninan_neseler:[Ljava/lang/String;

    array-length v2, v2

    if-ge p1, v2, :cond_2

    .line 676
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Listedeki Eleman"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->taninan_neseler:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 677
    sget-object v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->taninan_neseler:[Ljava/lang/String;

    aget-object v2, v2, p1

    sget-object v3, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->aranan:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    .line 678
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->BelirliArama:Ljava/lang/Boolean;

    .line 679
    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$8;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    iput-boolean p1, v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->Listedevarmi:Z

    goto :goto_1

    .line 682
    :cond_1
    sput-object v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->BelirliArama:Ljava/lang/Boolean;

    .line 683
    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$8;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    iput-boolean v0, v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->Listedevarmi:Z

    .line 684
    sput-boolean v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->SuanDinliyorArttirma:Z

    .line 685
    sput-boolean v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->SuanDinliyorSesKes:Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 690
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$8;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    iget-boolean p1, p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->Listedevarmi:Z

    if-nez p1, :cond_3

    .line 694
    sput-object v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->BelirliArama:Ljava/lang/Boolean;

    .line 695
    sput-boolean v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->SuanDinliyorArttirma:Z

    .line 696
    sput-boolean v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->SuanDinliyorSesKes:Z

    .line 717
    :cond_3
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$8;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    iget-object p1, p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->voiceResults:Ljava/util/ArrayList;

    if-nez p1, :cond_4

    .line 718
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "No voice results"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 0

    return-void
.end method
