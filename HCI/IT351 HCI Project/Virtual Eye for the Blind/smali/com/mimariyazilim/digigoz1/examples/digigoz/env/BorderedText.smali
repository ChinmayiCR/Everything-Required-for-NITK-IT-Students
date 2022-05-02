.class public Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;
.super Ljava/lang/Object;
.source "BorderedText.java"


# instance fields
.field private final exteriorPaint:Landroid/graphics/Paint;

.field private final interiorPaint:Landroid/graphics/Paint;

.field private final textSize:F


# direct methods
.method public constructor <init>(F)V
    .locals 2

    const/4 v0, -0x1

    const/high16 v1, -0x1000000

    .line 41
    invoke-direct {p0, v0, v1, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;-><init>(IIF)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;->interiorPaint:Landroid/graphics/Paint;

    .line 54
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 55
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p1, 0x0

    .line 57
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v1, 0xff

    .line 58
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;->exteriorPaint:Landroid/graphics/Paint;

    .line 61
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 62
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p2, 0x41000000    # 8.0f

    div-float p2, p3, p2

    .line 64
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 68
    iput p3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;->textSize:F

    return-void
.end method


# virtual methods
.method public drawLines(Landroid/graphics/Canvas;FFLjava/util/Vector;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "FF",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 96
    invoke-virtual {p4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;->getTextSize()F

    move-result v3

    invoke-virtual {p4}, Ljava/util/Vector;->size()I

    move-result v4

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    sub-float v3, p3, v3

    invoke-virtual {p0, p1, p2, v3, v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;->drawText(Landroid/graphics/Canvas;FFLjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drawText(Landroid/graphics/Canvas;FFLjava/lang/String;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;->exteriorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 78
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;->interiorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawText(Landroid/graphics/Canvas;FFLjava/lang/String;Landroid/graphics/Paint;)V
    .locals 8

    .line 84
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;->exteriorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 85
    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;->exteriorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    .line 86
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, p5}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 87
    sget-object p5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 p5, 0xa0

    .line 88
    invoke-virtual {v7, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    float-to-int p5, v1

    int-to-float p5, p5

    add-float v4, p3, p5

    float-to-int p5, v0

    int-to-float p5, p5

    add-float v5, p2, p5

    move-object v2, p1

    move v3, p2

    move v6, p3

    .line 89
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-float/2addr p3, v1

    .line 91
    iget-object p5, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;->interiorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p3, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;->interiorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    return-void
.end method

.method public getTextSize()F
    .locals 1

    .line 111
    iget v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;->textSize:F

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;->interiorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 116
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;->exteriorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setExteriorColor(I)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;->exteriorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setInteriorColor(I)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;->interiorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setTextAlign(Landroid/graphics/Paint$Align;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;->interiorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 126
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;->exteriorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;->interiorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 73
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;->exteriorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method
