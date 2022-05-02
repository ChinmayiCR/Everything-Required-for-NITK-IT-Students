.class public Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;
.super Ljava/lang/Object;
.source "Size.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x6ab7b04cf27fbe29L


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;->width:I

    .line 36
    iput p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;->height:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;->width:I

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;->height:I

    return-void
.end method

.method public static final dimensionsAsString(II)Ljava/lang/String;
    .locals 1

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRotatedSize(Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;I)Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;
    .locals 1

    .line 52
    rem-int/lit16 p1, p1, 0xb4

    if-eqz p1, :cond_0

    .line 54
    new-instance p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;

    iget v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;->height:I

    iget p0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;->width:I

    invoke-direct {p1, v0, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;-><init>(II)V

    return-object p1

    :cond_0
    return-object p0
.end method

.method public static parseFromString(Ljava/lang/String;)Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;
    .locals 3

    .line 60
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 64
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "x"

    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 68
    array-length v0, p0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    .line 70
    :try_start_0
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    .line 71
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 72
    new-instance v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;

    invoke-direct {v2, v0, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    :cond_1
    return-object v1
.end method

.method public static sizeListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 97
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 98
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;

    invoke-virtual {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 99
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;

    invoke-virtual {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public static sizeStringToList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    const-string v1, ","

    .line 84
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 85
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 86
    invoke-static {v3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;->parseFromString(Ljava/lang/String;)Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 88
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final aspectRatio()F
    .locals 2

    .line 111
    iget v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;->width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public compareTo(Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;)I
    .locals 2

    .line 116
    iget v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;->width:I

    iget v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;->height:I

    mul-int/2addr v0, v1

    iget v1, p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;->width:I

    iget p1, p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;->height:I

    mul-int/2addr v1, p1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 25
    check-cast p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;

    invoke-virtual {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;->compareTo(Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 125
    :cond_0
    instance-of v1, p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;

    if-nez v1, :cond_1

    return v0

    .line 129
    :cond_1
    check-cast p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;

    .line 130
    iget v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;->width:I

    iget v2, p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;->width:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;->height:I

    iget p1, p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;->height:I

    if-ne v1, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 135
    iget v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;->width:I

    mul-int/lit16 v0, v0, 0x7fc9

    iget v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;->height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 140
    iget v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;->width:I

    iget v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;->height:I

    invoke-static {v0, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;->dimensionsAsString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
