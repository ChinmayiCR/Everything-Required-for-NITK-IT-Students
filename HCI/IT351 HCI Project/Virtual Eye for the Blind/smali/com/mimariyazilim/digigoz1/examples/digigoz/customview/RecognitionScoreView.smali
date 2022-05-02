.class public Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/RecognitionScoreView;
.super Landroid/view/View;
.source "RecognitionScoreView.java"

# interfaces
.implements Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/ResultsView;


# static fields
.field private static final TEXT_SIZE_DIP:F = 14.0f


# instance fields
.field private final bgPaint:Landroid/graphics/Paint;

.field private final fgPaint:Landroid/graphics/Paint;

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;",
            ">;"
        }
    .end annotation
.end field

.field private final textSizePx:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/RecognitionScoreView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 v0, 0x41600000    # 14.0f

    .line 40
    invoke-static {p2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/RecognitionScoreView;->textSizePx:F

    .line 42
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/RecognitionScoreView;->fgPaint:Landroid/graphics/Paint;

    .line 43
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 45
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/RecognitionScoreView;->bgPaint:Landroid/graphics/Paint;

    const p2, -0x33bd7a0c    # -5.0993104E7f

    .line 46
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 58
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/RecognitionScoreView;->fgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 60
    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/RecognitionScoreView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 62
    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/RecognitionScoreView;->results:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 63
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->getConfidence()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41200000    # 10.0f

    int-to-float v5, v0

    iget-object v6, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/RecognitionScoreView;->fgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 65
    iget-object v3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/RecognitionScoreView;->fgPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/RecognitionScoreView;->results:Ljava/util/List;

    .line 52
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/RecognitionScoreView;->postInvalidate()V

    return-void
.end method
