.class Lcom/mimariyazilim/digigoz1/examples/digigoz/ColorName;
.super Ljava/lang/Object;
.source "ColorName.java"


# instance fields
.field public b:I

.field public g:I

.field public name:Ljava/lang/String;

.field public r:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/ColorName;->r:I

    .line 18
    iput p3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/ColorName;->g:I

    .line 19
    iput p4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/ColorName;->b:I

    .line 20
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/ColorName;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public computeMSE(III)I
    .locals 3

    .line 24
    iget v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/ColorName;->r:I

    .line 25
    iget v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/ColorName;->g:I

    .line 26
    iget v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/ColorName;->b:I

    sub-int/2addr p1, v0

    mul-int/2addr p1, p1

    sub-int/2addr p2, v1

    mul-int/2addr p2, p2

    add-int/2addr p1, p2

    sub-int/2addr p3, v2

    mul-int/2addr p3, p3

    add-int/2addr p1, p3

    .line 30
    div-int/lit8 p1, p1, 0x3

    return p1
.end method

.method public getB()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/ColorName;->b:I

    return v0
.end method

.method public getG()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/ColorName;->g:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/ColorName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getR()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/ColorName;->r:I

    return v0
.end method
