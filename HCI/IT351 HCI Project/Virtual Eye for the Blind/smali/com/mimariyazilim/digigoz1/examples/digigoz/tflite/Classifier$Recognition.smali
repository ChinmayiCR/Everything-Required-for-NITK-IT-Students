.class public Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;
.super Ljava/lang/Object;
.source "Classifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Recognition"
.end annotation


# instance fields
.field private final confidence:Ljava/lang/Float;

.field private final id:Ljava/lang/String;

.field private location:Landroid/graphics/RectF;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Landroid/graphics/RectF;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->id:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->title:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->confidence:Ljava/lang/Float;

    .line 60
    iput-object p4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->location:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public getConfidence()Ljava/lang/Float;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->confidence:Ljava/lang/Float;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Landroid/graphics/RectF;
    .locals 2

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->location:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setLocation(Landroid/graphics/RectF;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->location:Landroid/graphics/RectF;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 86
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->id:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->title:Ljava/lang/String;

    const-string v2, " "

    if-eqz v0, :cond_1

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->confidence:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->confidence:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "(%.1f%%) "

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->location:Landroid/graphics/RectF;

    if-eqz v0, :cond_3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->location:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
