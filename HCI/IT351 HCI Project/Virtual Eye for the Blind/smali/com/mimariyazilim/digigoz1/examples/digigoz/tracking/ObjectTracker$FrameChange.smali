.class public Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$FrameChange;
.super Ljava/lang/Object;
.source "ObjectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameChange"
.end annotation


# static fields
.field public static final KEYPOINT_STEP:I = 0x7


# instance fields
.field private final maxScore:F

.field private final minScore:F

.field public final pointDeltas:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$PointChange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([F)V
    .locals 14

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    new-instance v0, Ljava/util/Vector;

    array-length v1, p1

    div-int/lit8 v1, v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$FrameChange;->pointDeltas:Ljava/util/Vector;

    const/4 v0, 0x0

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v2, -0x3d380000    # -100.0f

    move v3, v0

    .line 522
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, v3, 0x0

    .line 523
    aget v4, p1, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v7, v4, v5

    add-int/lit8 v4, v3, 0x1

    .line 524
    aget v4, p1, v4

    mul-float v8, v4, v5

    add-int/lit8 v4, v3, 0x2

    .line 526
    aget v4, p1, v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-lez v4, :cond_0

    const/4 v4, 0x1

    move v13, v4

    goto :goto_1

    :cond_0
    move v13, v0

    :goto_1
    add-int/lit8 v4, v3, 0x3

    .line 528
    aget v4, p1, v4

    mul-float v9, v4, v5

    add-int/lit8 v4, v3, 0x4

    .line 529
    aget v4, p1, v4

    mul-float v10, v4, v5

    add-int/lit8 v4, v3, 0x5

    .line 530
    aget v11, p1, v4

    add-int/lit8 v4, v3, 0x6

    .line 531
    aget v4, p1, v4

    float-to-int v12, v4

    .line 533
    invoke-static {v1, v11}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 534
    invoke-static {v2, v11}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 536
    iget-object v4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$FrameChange;->pointDeltas:Ljava/util/Vector;

    new-instance v5, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$PointChange;

    move-object v6, v5

    invoke-direct/range {v6 .. v13}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$PointChange;-><init>(FFFFFIZ)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x7

    goto :goto_0

    .line 539
    :cond_1
    iput v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$FrameChange;->minScore:F

    .line 540
    iput v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$FrameChange;->maxScore:F

    return-void
.end method

.method static synthetic access$100(Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$FrameChange;)F
    .locals 0

    .line 508
    iget p0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$FrameChange;->minScore:F

    return p0
.end method

.method static synthetic access$200(Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$FrameChange;)F
    .locals 0

    .line 508
    iget p0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$FrameChange;->maxScore:F

    return p0
.end method
