.class public Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Ocrreader.java"


# static fields
.field public static SagaKaydirmaSayaci:I

.field public static YukariKaydirmaSayaci:I

.field public static kopyalanacakYazi:Ljava/lang/String;


# instance fields
.field builder:Landroidx/appcompat/app/AlertDialog$Builder;

.field button:Landroid/widget/Button;

.field cameraSource:Lcom/google/android/gms/vision/CameraSource;

.field cameraView:Landroid/view/SurfaceView;

.field dialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field durdurButton:Landroid/widget/Button;

.field gestureDetector:Landroid/view/GestureDetector;

.field kopyalaButton:Landroid/widget/Button;

.field okuButton:Landroid/widget/Button;

.field renkTanımaGecisButton:Landroid/widget/Button;

.field textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 52
    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$1;

    invoke-direct {v0, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$1;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;)V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->dialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public OkumaButon()V
    .locals 5

    .line 272
    sget-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->kopyalanacakYazi:Ljava/lang/String;

    .line 279
    sget-object v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    sget-object v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->kopyalanacakYazi:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    return-void
.end method

.method public RenkOkumaGec(Landroid/view/View;)V
    .locals 2

    .line 287
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 266
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->finish()V

    .line 267
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 p1, 0x0

    .line 72
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001d

    .line 76
    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->setContentView(I)V

    const/4 p1, 0x0

    .line 81
    sput p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->YukariKaydirmaSayaci:I

    const v0, 0x7f080007

    .line 83
    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->okuButton:Landroid/widget/Button;

    const v0, 0x7f080004

    .line 84
    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->durdurButton:Landroid/widget/Button;

    const v0, 0x7f080006

    .line 85
    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->renkTanımaGecisButton:Landroid/widget/Button;

    const v0, 0x7f080005

    .line 86
    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->kopyalaButton:Landroid/widget/Button;

    .line 88
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f0f0002

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->builder:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 90
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/MyGestureListener;

    invoke-direct {v1, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/MyGestureListener;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->gestureDetector:Landroid/view/GestureDetector;

    .line 93
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->kopyalaButton:Landroid/widget/Button;

    new-instance v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2;

    invoke-direct {v1, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$2;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 131
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->okuButton:Landroid/widget/Button;

    new-instance v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$3;

    invoke-direct {v1, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$3;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 141
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->durdurButton:Landroid/widget/Button;

    new-instance v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$4;

    invoke-direct {v1, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$4;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 153
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->renkTanımaGecisButton:Landroid/widget/Button;

    new-instance v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$5;

    invoke-direct {v1, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$5;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0800cb

    .line 170
    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->cameraView:Landroid/view/SurfaceView;

    const v0, 0x7f0800d6

    .line 172
    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->textView:Landroid/widget/TextView;

    .line 174
    new-instance v0, Lcom/google/android/gms/vision/text/TextRecognizer$Builder;

    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/vision/text/TextRecognizer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/vision/text/TextRecognizer$Builder;->build()Lcom/google/android/gms/vision/text/TextRecognizer;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/google/android/gms/vision/text/TextRecognizer;->isOperational()Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "camera is unaccessable."

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_0
    new-instance v1, Lcom/google/android/gms/vision/CameraSource$Builder;

    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/vision/CameraSource$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/vision/Detector;)V

    .line 180
    invoke-virtual {v1, p1}, Lcom/google/android/gms/vision/CameraSource$Builder;->setFacing(I)Lcom/google/android/gms/vision/CameraSource$Builder;

    move-result-object p1

    const/16 v1, 0x500

    const/16 v2, 0x400

    .line 181
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/vision/CameraSource$Builder;->setRequestedPreviewSize(II)Lcom/google/android/gms/vision/CameraSource$Builder;

    move-result-object p1

    const/high16 v1, 0x40000000    # 2.0f

    .line 182
    invoke-virtual {p1, v1}, Lcom/google/android/gms/vision/CameraSource$Builder;->setRequestedFps(F)Lcom/google/android/gms/vision/CameraSource$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 183
    invoke-virtual {p1, v1}, Lcom/google/android/gms/vision/CameraSource$Builder;->setAutoFocusEnabled(Z)Lcom/google/android/gms/vision/CameraSource$Builder;

    move-result-object p1

    .line 184
    invoke-virtual {p1}, Lcom/google/android/gms/vision/CameraSource$Builder;->build()Lcom/google/android/gms/vision/CameraSource;

    move-result-object p1

    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->cameraSource:Lcom/google/android/gms/vision/CameraSource;

    .line 186
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->cameraView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    new-instance v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$6;

    invoke-direct {v1, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$6;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;)V

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 214
    new-instance p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$7;

    invoke-direct {p1, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader$7;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/vision/text/TextRecognizer;->setProcessor(Lcom/google/android/gms/vision/Detector$Processor;)V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
