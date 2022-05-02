.class public Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;
.super Ljava/lang/Object;
.source "ObjectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Keypoint"
.end annotation


# instance fields
.field public final score:F

.field public final type:I

.field public final x:F

.field public final y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;->x:F

    .line 458
    iput p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;->y:F

    const/4 p1, 0x0

    .line 459
    iput p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;->score:F

    const/4 p1, -0x1

    .line 460
    iput p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;->type:I

    return-void
.end method

.method public constructor <init>(FFFI)V
    .locals 0

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    iput p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;->x:F

    .line 465
    iput p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;->y:F

    .line 466
    iput p3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;->score:F

    .line 467
    iput p4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;->type:I

    return-void
.end method


# virtual methods
.method delta(Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;)Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;
    .locals 3

    .line 471
    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;

    iget v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;->x:F

    iget v2, p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;->y:F

    iget p1, p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;->y:F

    sub-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;-><init>(FF)V

    return-object v0
.end method
