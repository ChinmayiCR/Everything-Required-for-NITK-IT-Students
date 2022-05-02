.class public Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;
.super Landroid/view/TextureView;
.source "AutoFitTextureView.java"


# instance fields
.field private ratioHeight:I

.field private ratioWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;->ratioWidth:I

    .line 26
    iput p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;->ratioHeight:I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    .line 59
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 60
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 61
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 62
    iget v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;->ratioWidth:I

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;->ratioHeight:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int v2, p2, v0

    .line 65
    div-int/2addr v2, v1

    if-ge p1, v2, :cond_1

    mul-int/2addr v1, p1

    .line 66
    div-int/2addr v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;->setMeasuredDimension(II)V

    goto :goto_1

    :cond_1
    mul-int/2addr v0, p2

    .line 68
    div-int/2addr v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;->setMeasuredDimension(II)V

    goto :goto_1

    .line 63
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;->setMeasuredDimension(II)V

    :goto_1
    return-void
.end method

.method public setAspectRatio(II)V
    .locals 0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 52
    iput p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;->ratioWidth:I

    .line 53
    iput p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;->ratioHeight:I

    .line 54
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/AutoFitTextureView;->requestLayout()V

    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Size cannot be negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
