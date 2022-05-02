.class public Lcom/mimariyazilim/digigoz1/examples/digigoz/MyGestureListener;
.super Ljava/lang/Object;
.source "MyGestureListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field public SagaKaydirmaSayac:I

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/MyGestureListener;->SagaKaydirmaSayac:I

    .line 30
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/MyGestureListener;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p4

    sub-float/2addr p3, p4

    const/high16 p4, 0x42480000    # 50.0f

    cmpl-float p3, p3, p4

    const/4 v0, 0x0

    const-string v1, "RenkOkumaEkrani"

    const-string v2, "OkumaEkrani"

    const/4 v3, 0x1

    if-ltz p3, :cond_3

    .line 35
    sget-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->Ekranadi:Ljava/lang/String;

    const-string p2, "AramaEkrani"

    if-ne p1, p2, :cond_0

    sget-boolean p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->SuanDinliyorArttirma:Z

    if-nez p1, :cond_0

    .line 36
    sget p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->yukariKaydirmaSay:I

    add-int/2addr p1, v3

    sput p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->yukariKaydirmaSay:I

    .line 38
    :cond_0
    sget-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->Ekranadi:Ljava/lang/String;

    if-ne p1, v2, :cond_1

    .line 39
    sget p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->YukariKaydirmaSayaci:I

    add-int/2addr p1, v3

    sput p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->YukariKaydirmaSayaci:I

    .line 40
    sput v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->SagaKaydirmaSayaci:I

    .line 42
    :cond_1
    sget-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->Ekranadi:Ljava/lang/String;

    if-ne p1, v1, :cond_2

    .line 43
    sget p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->YukariKaydirmaSayaci:I

    add-int/2addr p1, v3

    sput p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->YukariKaydirmaSayaci:I

    :cond_2
    return v3

    .line 46
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr p3, v4

    cmpg-float p3, p3, p4

    if-gtz p3, :cond_6

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr p3, v1

    cmpl-float p3, p3, p4

    if-gtz p3, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    const/high16 p1, 0x41f00000    # 30.0f

    cmpl-float p1, p2, p1

    if-lez p1, :cond_5

    :cond_4
    move v0, v3

    :cond_5
    return v0

    .line 49
    :cond_6
    sget-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->Ekranadi:Ljava/lang/String;

    .line 50
    sget p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->solaKaydirmaSay:I

    add-int/2addr p1, v3

    sput p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->solaKaydirmaSay:I

    .line 51
    sget-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->Ekranadi:Ljava/lang/String;

    if-ne p1, v2, :cond_7

    .line 52
    sget p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->SagaKaydirmaSayaci:I

    add-int/2addr p1, v3

    sput p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/Ocrreader;->SagaKaydirmaSayaci:I

    .line 54
    :cond_7
    sget-object p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->Ekranadi:Ljava/lang/String;

    if-ne p1, v1, :cond_8

    .line 55
    sget p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->asagiKaydirma:I

    add-int/2addr p1, v3

    sput p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->asagiKaydirma:I

    :cond_8
    return v3
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
