.class public Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;
.super Ljava/lang/Object;
.source "MultiBoxTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;
    }
.end annotation


# static fields
.field private static final COLORS:[I

.field private static final MARGINAL_CORRELATION:F = 0.75f

.field private static final MAX_OVERLAP:F = 0.2f

.field private static final MIN_CORRELATION:F = 0.3f

.field private static final MIN_SIZE:F = 16.0f

.field private static final TEXT_SIZE_DIP:F = 18.0f


# instance fields
.field StartTime:J

.field private final availableColors:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final borderedText:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;

.field private final boxPaint:Landroid/graphics/Paint;

.field private context:Landroid/content/Context;

.field diff:J

.field private frameHeight:I

.field private frameToCanvasMatrix:Landroid/graphics/Matrix;

.field private frameWidth:I

.field private initialized:Z

.field public lastSay:Ljava/lang/String;

.field private final logger:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

.field public objectTracker:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

.field screenRectFBenim:Landroid/graphics/RectF;

.field final screenRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Landroid/graphics/RectF;",
            ">;>;"
        }
    .end annotation
.end field

.field private sensorOrientation:I

.field private final textSizePx:F

.field private final trackedObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, -0xffff01

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, -0x10000

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, -0xff0100

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, -0x100

    aput v2, v0, v1

    const/4 v1, 0x4

    const v2, -0xff0001

    aput v2, v0, v1

    const/4 v1, 0x5

    const v2, -0xff01

    aput v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, -0x1

    aput v2, v0, v1

    const-string v1, "#55FF55"

    .line 67
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x7

    aput v1, v0, v2

    const-string v1, "#FFA500"

    .line 68
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    aput v1, v0, v2

    const-string v1, "#FF8888"

    .line 69
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x9

    aput v1, v0, v2

    const-string v1, "#AAAAFF"

    .line 70
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xa

    aput v1, v0, v2

    const-string v1, "#FFFFAA"

    .line 71
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    aput v1, v0, v2

    const-string v1, "#55AAAA"

    .line 72
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc

    aput v1, v0, v2

    const-string v1, "#AA33AA"

    .line 73
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xd

    aput v1, v0, v2

    const-string v1, "#0D0068"

    .line 74
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xe

    aput v1, v0, v2

    sput-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->COLORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->screenRects:Ljava/util/List;

    .line 77
    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    invoke-direct {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;-><init>()V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->logger:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    .line 78
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->availableColors:Ljava/util/Queue;

    .line 79
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->trackedObjects:Ljava/util/List;

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->boxPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->initialized:Z

    .line 94
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->context:Landroid/content/Context;

    .line 95
    sget-object v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->COLORS:[I

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, v1, v0

    .line 96
    iget-object v4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->availableColors:Ljava/util/Queue;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->boxPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->boxPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->boxPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->boxPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 103
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->boxPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 104
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->boxPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    const/high16 v0, 0x41900000    # 18.0f

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v1, 0x1

    .line 107
    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->textSizePx:F

    .line 109
    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;

    invoke-direct {v0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;-><init>(F)V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->borderedText:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;

    return-void
.end method

.method private getFrameToCanvasMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->frameToCanvasMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private handleDetection([BJLandroid/util/Pair;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BJ",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 668
    iget-object v2, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->objectTracker:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;

    .line 669
    invoke-virtual {v3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->getLocation()Landroid/graphics/RectF;

    move-result-object v3

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    invoke-virtual {v2, v3, v5, v6, v4}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->trackObject(Landroid/graphics/RectF;J[B)Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;

    move-result-object v2

    .line 671
    invoke-virtual {v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->getCurrentCorrelation()F

    move-result v3

    .line 672
    iget-object v4, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->logger:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 674
    invoke-virtual {v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->getTrackedPositionInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v10, 0x2

    aput-object v7, v6, v10

    const-string v7, "Tracked object went from %s to %s with correlation %.2f"

    .line 672
    invoke-virtual {v4, v7, v6}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 v4, 0x3f400000    # 0.75f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 677
    iget-object v1, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->logger:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v2, v3, v8

    const-string v4, "Correlation too low to begin tracking %s."

    invoke-virtual {v1, v4, v3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 678
    invoke-virtual {v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->stopTracking()V

    return-void

    .line 682
    :cond_0
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    const/4 v6, 0x0

    .line 692
    iget-object v7, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->trackedObjects:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v12, 0x0

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;

    .line 693
    iget-object v14, v13, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->trackedObject:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;

    invoke-virtual {v14}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->getTrackedPositionInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v14

    .line 694
    invoke-virtual {v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->getTrackedPositionInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v15

    .line 695
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    .line 696
    invoke-virtual {v11, v14, v15}, Landroid/graphics/RectF;->setIntersect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v16

    .line 698
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v17

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    mul-float v17, v17, v11

    .line 699
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v11

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v14

    mul-float/2addr v11, v14

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v14

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v15

    mul-float/2addr v14, v15

    add-float/2addr v11, v14

    sub-float v11, v11, v17

    div-float v17, v17, v11

    if-eqz v16, :cond_1

    const v11, 0x3e4ccccd    # 0.2f

    cmpl-float v11, v17, v11

    if-lez v11, :cond_1

    .line 706
    iget-object v11, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    iget v14, v13, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->detectionConfidence:F

    cmpg-float v11, v11, v14

    if-gez v11, :cond_2

    iget-object v11, v13, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->trackedObject:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;

    .line 707
    invoke-virtual {v11}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->getCurrentCorrelation()F

    move-result v11

    cmpl-float v11, v11, v4

    if-lez v11, :cond_2

    .line 710
    invoke-virtual {v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->stopTracking()V

    return-void

    .line 713
    :cond_2
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    cmpl-float v11, v17, v6

    if-lez v11, :cond_1

    move-object v12, v13

    move/from16 v6, v17

    goto :goto_0

    .line 728
    :cond_3
    iget-object v4, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->availableColors:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 729
    iget-object v4, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->trackedObjects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;

    .line 730
    iget v7, v6, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->detectionConfidence:F

    iget-object v11, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    cmpg-float v7, v7, v11

    if-gez v7, :cond_4

    if-eqz v12, :cond_5

    .line 731
    iget v7, v6, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->detectionConfidence:F

    iget v11, v12, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->detectionConfidence:F

    cmpg-float v7, v7, v11

    if-gez v7, :cond_4

    :cond_5
    move-object v12, v6

    goto :goto_1

    :cond_6
    if-eqz v12, :cond_7

    .line 739
    iget-object v4, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->logger:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    new-array v6, v8, [Ljava/lang/Object;

    const-string v7, "Found non-intersecting object to remove."

    invoke-virtual {v4, v7, v6}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 740
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 742
    :cond_7
    iget-object v4, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->logger:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    new-array v6, v8, [Ljava/lang/Object;

    const-string v7, "No non-intersecting object found to remove"

    invoke-virtual {v4, v7, v6}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 747
    :cond_8
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;

    .line 748
    iget-object v6, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->logger:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    new-array v7, v5, [Ljava/lang/Object;

    iget-object v11, v4, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->trackedObject:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;

    aput-object v11, v7, v8

    iget v11, v4, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->detectionConfidence:F

    .line 751
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v7, v9

    iget-object v11, v4, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->trackedObject:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;

    .line 752
    invoke-virtual {v11}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->getCurrentCorrelation()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v7, v10

    const-string v11, "Removing tracked object %s with detection confidence %.2f, correlation %.2f"

    .line 748
    invoke-virtual {v6, v11, v7}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 753
    iget-object v6, v4, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->trackedObject:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;

    invoke-virtual {v6}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->stopTracking()V

    .line 754
    iget-object v6, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->trackedObjects:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    if-eq v4, v12, :cond_9

    .line 756
    iget-object v6, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->availableColors:Ljava/util/Queue;

    iget v4, v4, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->color:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    if-nez v12, :cond_b

    .line 760
    iget-object v3, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->availableColors:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 761
    iget-object v1, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->logger:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "No room to track this object, aborting."

    invoke-virtual {v1, v4, v3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 762
    invoke-virtual {v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->stopTracking()V

    return-void

    .line 767
    :cond_b
    iget-object v3, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->logger:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v8

    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;

    .line 770
    invoke-virtual {v6}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v6, v4, v10

    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;

    .line 772
    invoke-virtual {v6}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->getLocation()Landroid/graphics/RectF;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "Tracking object %s (%s) with detection confidence %.2f at position %s"

    .line 767
    invoke-virtual {v3, v5, v4}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 773
    new-instance v3, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$1;)V

    .line 774
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v3, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->detectionConfidence:F

    .line 775
    iput-object v2, v3, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->trackedObject:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;

    .line 776
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;

    invoke-virtual {v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    if-eqz v12, :cond_c

    .line 779
    iget v1, v12, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->color:I

    goto :goto_4

    :cond_c
    iget-object v1, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->availableColors:Ljava/util/Queue;

    .line 780
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_4
    iput v1, v3, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->color:I

    .line 781
    iget-object v1, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->trackedObjects:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private processResults(JLjava/util/List;[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;",
            ">;[B)V"
        }
    .end annotation

    .line 605
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 607
    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->screenRects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 608
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->getFrameToCanvasMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 610
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;

    .line 611
    invoke-virtual {v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->getLocation()Landroid/graphics/RectF;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 614
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->getLocation()Landroid/graphics/RectF;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 616
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 619
    invoke-virtual {v1, v5, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 621
    iget-object v6, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->logger:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Result! Frame: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-virtual {v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->getLocation()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " mapped to screen:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    .line 621
    invoke-virtual {v6, v7, v8}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    iget-object v6, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->screenRects:Ljava/util/List;

    new-instance v7, Landroid/util/Pair;

    invoke-virtual {v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->getConfidence()Ljava/lang/Float;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    iput-object v5, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->screenRectFBenim:Landroid/graphics/RectF;

    .line 628
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x41800000    # 16.0f

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_2

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    goto :goto_1

    .line 633
    :cond_1
    new-instance v3, Landroid/util/Pair;

    invoke-virtual {v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->getConfidence()Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 629
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->logger:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Degenerate rectangle! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 636
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 637
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->logger:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "Nothing to track, aborting."

    invoke-virtual {p1, p3, p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->trackedObjects:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void

    .line 642
    :cond_4
    iget-object p3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->objectTracker:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    if-nez p3, :cond_7

    .line 643
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->trackedObjects:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 644
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    .line 645
    new-instance p3, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$1;)V

    .line 646
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p3, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->detectionConfidence:F

    .line 647
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;

    invoke-virtual {v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->getLocation()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p3, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->location:Landroid/graphics/RectF;

    .line 648
    iput-object p4, p3, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->trackedObject:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;

    .line 649
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;

    invoke-virtual {p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->getTitle()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    .line 650
    sget-object p2, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->COLORS:[I

    iget-object p4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->trackedObjects:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    aget p4, p2, p4

    iput p4, p3, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->color:I

    .line 651
    iget-object p4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->trackedObjects:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    iget-object p3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->trackedObjects:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    array-length p2, p2

    if-lt p3, p2, :cond_5

    :cond_6
    return-void

    .line 660
    :cond_7
    iget-object p3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->logger:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "%d rects to track"

    invoke-virtual {p3, v2, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 661
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 662
    invoke-direct {p0, p4, p1, p2, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->handleDetection([BJLandroid/util/Pair;)V

    goto :goto_2

    :cond_8
    return-void
.end method


# virtual methods
.method public declared-synchronized draw(Landroid/graphics/Canvas;)V
    .locals 14

    monitor-enter p0

    .line 168
    :try_start_0
    iget v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->sensorOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    const/16 v1, 0x5a

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 171
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    if-eqz v0, :cond_1

    iget v4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->frameWidth:I

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->frameHeight:I

    :goto_1
    int-to-float v4, v4

    div-float/2addr v1, v4

    .line 172
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    if-eqz v0, :cond_2

    iget v5, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->frameHeight:I

    goto :goto_2

    :cond_2
    iget v5, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->frameWidth:I

    :goto_2
    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 170
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 173
    iget v4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->frameWidth:I

    iget v5, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->frameHeight:I

    if-eqz v0, :cond_3

    move v6, v5

    goto :goto_3

    :cond_3
    move v6, v4

    :goto_3
    int-to-float v6, v6

    mul-float/2addr v6, v1

    float-to-int v6, v6

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_4

    :cond_4
    move v0, v5

    :goto_4
    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v7, v1

    iget v8, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->sensorOrientation:I

    const/4 v9, 0x0

    .line 174
    invoke-static/range {v4 .. v9}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/ImageUtils;->getTransformationMatrix(IIIIIZ)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->frameToCanvasMatrix:Landroid/graphics/Matrix;

    .line 181
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->trackedObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;

    .line 182
    iget-object v4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->objectTracker:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    if-eqz v4, :cond_6

    iget-object v4, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->trackedObject:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;

    .line 184
    invoke-virtual {v4}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->getTrackedPositionInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v4

    goto :goto_6

    :cond_6
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->location:Landroid/graphics/RectF;

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 187
    :goto_6
    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->getFrameToCanvasMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 188
    iget-object v5, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->boxPaint:Landroid/graphics/Paint;

    iget v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->color:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x42000000    # 32.0f

    div-float/2addr v5, v6

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/high16 v6, 0x41000000    # 8.0f

    div-float/2addr v5, v6

    .line 192
    iget-object v6, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->boxPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 199
    sget-object v6, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->localLang:Ljava/lang/String;

    const-string v7, "T\u00fcrk\u00e7e"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x2

    if-nez v6, :cond_8

    .line 201
    iget-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    const/4 v8, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_7

    :sswitch_0
    const-string v9, "bezbol topu"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x23

    goto/16 :goto_7

    :sswitch_1
    const-string v9, "sandwich"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x2f

    goto/16 :goto_7

    :sswitch_2
    const-string v9, "sandalye"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x37

    goto/16 :goto_7

    :sswitch_3
    const-string v9, "yang\u0131n muslu\u011fu"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x9

    goto/16 :goto_7

    :sswitch_4
    const-string v9, "el \u00e7antas\u0131"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x1a

    goto/16 :goto_7

    :sswitch_5
    const-string v9, "kayaklar"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x1f

    goto/16 :goto_7

    :sswitch_6
    const-string v9, "hot dog"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x33

    goto/16 :goto_7

    :sswitch_7
    const-string v9, "bisiklet"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v8, v3

    goto/16 :goto_7

    :sswitch_8
    const-string v9, "\u015femsiye"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x19

    goto/16 :goto_7

    :sswitch_9
    const-string v9, "portakal"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x30

    goto/16 :goto_7

    :sswitch_a
    const-string v9, "buzdolab\u0131"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x47

    goto/16 :goto_7

    :sswitch_b
    const-string v9, "motosiklet"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0xb

    goto/16 :goto_7

    :sswitch_c
    const-string v9, "tenis raketi"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x25

    goto/16 :goto_7

    :sswitch_d
    const-string v9, "\u00e7atal"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x29

    goto/16 :goto_7

    :sswitch_e
    const-string v9, "\u00e7anta"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x18

    goto/16 :goto_7

    :sswitch_f
    const-string v9, "brokoli"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x31

    goto/16 :goto_7

    :sswitch_10
    const-string v9, "zebra"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x16

    goto/16 :goto_7

    :sswitch_11
    const-string v9, "yatak"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x3a

    goto/16 :goto_7

    :sswitch_12
    const-string v9, "tabak"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x2c

    goto/16 :goto_7

    :sswitch_13
    const-string v9, "pizza"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x34

    goto/16 :goto_7

    :sswitch_14
    const-string v9, "k\u00f6pek"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x10

    goto/16 :goto_7

    :sswitch_15
    const-string v9, "makas"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x4b

    goto/16 :goto_7

    :sswitch_16
    const-string v9, "f\u0131r\u0131n"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x44

    goto/16 :goto_7

    :sswitch_17
    const-string v9, "kitap"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x48

    goto/16 :goto_7

    :sswitch_18
    const-string v9, "ka\u015f\u0131k"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x2b

    goto/16 :goto_7

    :sswitch_19
    const-string v9, "kayak"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x1e

    goto/16 :goto_7

    :sswitch_1a
    const-string v9, "insan"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v8, v2

    goto/16 :goto_7

    :sswitch_1b
    const-string v9, "b\u0131\u00e7ak"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x2a

    goto/16 :goto_7

    :sswitch_1c
    const-string v9, "havu\u00e7"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x32

    goto/16 :goto_7

    :sswitch_1d
    const-string v9, "donut"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x35

    goto/16 :goto_7

    :sswitch_1e
    const-string v9, "bitki"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x39

    goto/16 :goto_7

    :sswitch_1f
    const-string v9, "bavul"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x1c

    goto/16 :goto_7

    :sswitch_20
    const-string v9, "araba"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v8, v7

    goto/16 :goto_7

    :sswitch_21
    const-string v9, "s\u00f6rf tahtas\u0131"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x24

    goto/16 :goto_7

    :sswitch_22
    const-string v9, "\u015fi\u015fe"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x26

    goto/16 :goto_7

    :sswitch_23
    const-string v9, "u\u00e7ak"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v8, 0x3

    goto/16 :goto_7

    :sswitch_24
    const-string v9, "vazo"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x4a

    goto/16 :goto_7

    :sswitch_25
    const-string v9, "tren"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v8, 0x5

    goto/16 :goto_7

    :sswitch_26
    const-string v9, "saat"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x49

    goto/16 :goto_7

    :sswitch_27
    const-string v9, "kuzu"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x12

    goto/16 :goto_7

    :sswitch_28
    const-string v9, "kedi"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0xf

    goto/16 :goto_7

    :sswitch_29
    const-string v9, "inek"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x13

    goto/16 :goto_7

    :sswitch_2a
    const-string v9, "gemi"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v8, 0x7

    goto/16 :goto_7

    :sswitch_2b
    const-string v9, "fare"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x3f

    goto/16 :goto_7

    :sswitch_2c
    const-string v9, "elma"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x2e

    goto/16 :goto_7

    :sswitch_2d
    const-string v9, "top"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x20

    goto/16 :goto_7

    :sswitch_2e
    const-string v9, "muz"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x2d

    goto/16 :goto_7

    :sswitch_2f
    const-string v9, "ku\u015f"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0xe

    goto/16 :goto_7

    :sswitch_30
    const-string v9, "kek"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x36

    goto/16 :goto_7

    :sswitch_31
    const-string v9, "fil"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x14

    goto/16 :goto_7

    :sswitch_32
    const-string v9, "ay\u0131"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x15

    goto/16 :goto_7

    :sswitch_33
    const-string v9, "at"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x11

    goto/16 :goto_7

    :sswitch_34
    const-string v9, "oturma bank\u0131"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0xd

    goto/16 :goto_7

    :sswitch_35
    const-string v9, "trafik lambas\u0131"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x8

    goto/16 :goto_7

    :sswitch_36
    const-string v9, "kumanda"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x40

    goto/16 :goto_7

    :sswitch_37
    const-string v9, "bezbol \u015fapkas\u0131"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x22

    goto/16 :goto_7

    :sswitch_38
    const-string v9, "dur i\u015fareti"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0xa

    goto/16 :goto_7

    :sswitch_39
    const-string v9, "zurafa"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x17

    goto/16 :goto_7

    :sswitch_3a
    const-string v9, "tuvalet"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x3c

    goto/16 :goto_7

    :sswitch_3b
    const-string v9, "di\u015f f\u0131r\u00e7as\u0131"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x4e

    goto/16 :goto_7

    :sswitch_3c
    const-string v9, "otob\u00fcs"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v8, 0x4

    goto/16 :goto_7

    :sswitch_3d
    const-string v9, "lavabo"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x46

    goto/16 :goto_7

    :sswitch_3e
    const-string v9, "laptop"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x3e

    goto/16 :goto_7

    :sswitch_3f
    const-string v9, "kravat"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x1b

    goto/16 :goto_7

    :sswitch_40
    const-string v9, "klavye"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x41

    goto/16 :goto_7

    :sswitch_41
    const-string v9, "kaykay"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x21

    goto/16 :goto_7

    :sswitch_42
    const-string v9, "kanape"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x38

    goto/16 :goto_7

    :sswitch_43
    const-string v9, "kamyon"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v8, 0x6

    goto/16 :goto_7

    :sswitch_44
    const-string v9, "frizbi"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x1d

    goto/16 :goto_7

    :sswitch_45
    const-string v9, "televizyon"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x3d

    goto :goto_7

    :sswitch_46
    const-string v9, "bardak"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x28

    goto :goto_7

    :sswitch_47
    const-string v9, "yemek masas\u0131"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x3b

    goto :goto_7

    :sswitch_48
    const-string v9, "telefon"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x42

    goto :goto_7

    :sswitch_49
    const-string v9, "f\u00f6n makinesi"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x4d

    goto :goto_7

    :sswitch_4a
    const-string v9, "\u015farap barda\u011f\u0131"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x27

    goto :goto_7

    :sswitch_4b
    const-string v9, "mikrodalga"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x43

    goto :goto_7

    :sswitch_4c
    const-string v9, "oyuncak ay\u0131"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x4c

    goto :goto_7

    :sswitch_4d
    const-string v9, "tost makinesi"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0x45

    goto :goto_7

    :sswitch_4e
    const-string v9, "parkmetre"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v8, 0xc

    :cond_7
    :goto_7
    packed-switch v8, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    const-string v6, "toothbrush"

    .line 466
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_1
    const-string v6, "hair dryer"

    .line 463
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_2
    const-string v6, "teddy bear"

    .line 460
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_3
    const-string v6, "scissors"

    .line 457
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_4
    const-string v6, "vase"

    .line 454
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_5
    const-string v6, "clock"

    .line 451
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_6
    const-string v6, "book"

    .line 448
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_7
    const-string v6, "refrigerator"

    .line 445
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_8
    const-string v6, "sink"

    .line 442
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_9
    const-string v6, "toaster"

    .line 439
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_a
    const-string v6, "bakery"

    .line 436
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_b
    const-string v6, "microwave"

    .line 433
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_c
    const-string v6, "phone"

    .line 429
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_d
    const-string v6, "keyboard"

    .line 425
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_e
    const-string v6, "remote"

    .line 421
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_f
    const-string v6, "mouse"

    .line 417
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_10
    const-string v6, "laptop"

    .line 413
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_11
    const-string v6, "television"

    .line 409
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_12
    const-string v6, "toilet"

    .line 405
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_13
    const-string v6, "dinner table"

    .line 401
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_14
    const-string v6, "bed"

    .line 397
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_15
    const-string v6, "plant"

    .line 393
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_16
    const-string v6, "couch"

    .line 389
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_17
    const-string v6, "chair"

    .line 385
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_18
    const-string v6, "cake"

    .line 381
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_19
    const-string v6, "donut"

    .line 377
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_1a
    const-string v6, "pizza"

    .line 373
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_1b
    const-string v6, "hotdog"

    .line 369
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_1c
    const-string v6, "carrot"

    .line 365
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_1d
    const-string v6, "broccoli"

    .line 361
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_1e
    const-string v6, "orange"

    .line 357
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_1f
    const-string v6, "sandwich"

    .line 353
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_20
    const-string v6, "apple"

    .line 349
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_21
    const-string v6, "banana"

    .line 345
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_22
    const-string v6, "plate"

    .line 341
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_23
    const-string v6, "fork"

    .line 337
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_24
    const-string v6, "knife"

    .line 333
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_25
    const-string v6, "fork"

    .line 330
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_26
    const-string v6, "glass"

    .line 327
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_27
    const-string v6, "wine glass"

    .line 324
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_28
    const-string v6, "bottle"

    .line 321
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_29
    const-string v6, "tennis racket"

    .line 318
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_2a
    const-string v6, "surfboard"

    .line 315
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_2b
    const-string v6, "baseball ball"

    .line 312
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_2c
    const-string v6, "baseball cap"

    .line 309
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_2d
    const-string v6, "skateboard"

    .line 306
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_2e
    const-string v6, "ball"

    .line 303
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_2f
    const-string v6, "skis"

    .line 300
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_30
    const-string v6, "snowboard"

    .line 297
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_31
    const-string v6, "frisbee"

    .line 294
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_32
    const-string v6, "suitcase"

    .line 291
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_33
    const-string v6, "tie"

    .line 288
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_34
    const-string v6, "handbag"

    .line 285
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_35
    const-string v6, "umbrella"

    .line 282
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_36
    const-string v6, "bag"

    .line 279
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_37
    const-string v6, "giraffe"

    .line 276
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_38
    const-string v6, "zebra"

    .line 273
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_39
    const-string v6, "bear"

    .line 270
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_3a
    const-string v6, "elephant"

    .line 267
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_3b
    const-string v6, "cow"

    .line 264
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_3c
    const-string v6, "lamb"

    .line 261
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto :goto_8

    :pswitch_3d
    const-string v6, "horse"

    .line 258
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto :goto_8

    :pswitch_3e
    const-string v6, "dog"

    .line 255
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto :goto_8

    :pswitch_3f
    const-string v6, "cat"

    .line 252
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto :goto_8

    :pswitch_40
    const-string v6, "bird"

    .line 249
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto :goto_8

    :pswitch_41
    const-string v6, "seat"

    .line 246
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto :goto_8

    :pswitch_42
    const-string v6, "parkmeter"

    .line 243
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto :goto_8

    :pswitch_43
    const-string v6, "motorbike"

    .line 240
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto :goto_8

    :pswitch_44
    const-string v6, "stop sign"

    .line 237
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto :goto_8

    :pswitch_45
    const-string v6, "fire hydrant"

    .line 234
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto :goto_8

    :pswitch_46
    const-string v6, "traffic lamb"

    .line 231
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto :goto_8

    :pswitch_47
    const-string v6, "ship"

    .line 228
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto :goto_8

    :pswitch_48
    const-string v6, "truck"

    .line 225
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto :goto_8

    :pswitch_49
    const-string v6, "train"

    .line 222
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto :goto_8

    :pswitch_4a
    const-string v6, "bus"

    .line 219
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto :goto_8

    :pswitch_4b
    const-string v6, "airplane"

    .line 215
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto :goto_8

    :pswitch_4c
    const-string v6, "car"

    .line 211
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto :goto_8

    :pswitch_4d
    const-string v6, "bike"

    .line 207
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    goto :goto_8

    :pswitch_4e
    const-string v6, "person"

    .line 203
    iput-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    .line 477
    :cond_8
    :goto_8
    iget-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    .line 478
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/high16 v8, 0x42c80000    # 100.0f

    if-nez v6, :cond_9

    const-string v6, "%s %.2f"

    new-array v9, v7, [Ljava/lang/Object;

    iget-object v10, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    aput-object v10, v9, v2

    iget v10, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->detectionConfidence:F

    mul-float/2addr v10, v8

    .line 479
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v9, v3

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    :cond_9
    const-string v6, "%.2f"

    new-array v9, v3, [Ljava/lang/Object;

    iget v10, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->detectionConfidence:F

    mul-float/2addr v10, v8

    .line 480
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v9, v2

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 485
    :goto_9
    iget-object v8, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->borderedText:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;

    iget v9, v4, Landroid/graphics/RectF;->left:F

    add-float v10, v9, v5

    iget v11, v4, Landroid/graphics/RectF;->top:F

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->boxPaint:Landroid/graphics/Paint;

    move-object v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;->drawText(Landroid/graphics/Canvas;FFLjava/lang/String;Landroid/graphics/Paint;)V

    .line 488
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    div-int/2addr v5, v7

    .line 489
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    .line 491
    sget-boolean v6, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->kesfetBasla:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_e

    sget-object v6, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->BelirliArama:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_e

    sget-boolean v6, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->SuanDinliyorSesKes:Z

    if-nez v6, :cond_e

    .line 492
    iget v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->detectionConfidence:F

    const/high16 v8, 0x3f000000    # 0.5f

    cmpl-float v6, v6, v8

    if-lez v6, :cond_e

    .line 495
    sget-object v6, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    if-eqz v6, :cond_e

    .line 497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->StartTime:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->diff:J

    .line 499
    sget-object v6, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v6}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->lastSay:Ljava/lang/String;

    iget-object v8, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    if-ne v6, v8, :cond_a

    iget-wide v8, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->diff:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const-wide/16 v10, 0x2

    cmp-long v6, v8, v10

    if-ltz v6, :cond_e

    .line 500
    :cond_a
    sget-object v6, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v6}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v6

    if-nez v6, :cond_d

    .line 502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->StartTime:J

    .line 505
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "centerX "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 506
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v8, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v5, -0x2d

    int-to-float v6, v6

    cmpg-float v6, v4, v6

    if-gez v6, :cond_b

    .line 508
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 509
    sget-object v5, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->solda:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3, v7, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    goto :goto_a

    :cond_b
    add-int/lit8 v5, v5, 0x2d

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_c

    .line 511
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 512
    sget-object v5, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->sagda:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3, v7, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    goto :goto_a

    .line 514
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 515
    sget-object v5, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->ortada:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3, v7, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 519
    :cond_d
    :goto_a
    iget-object v1, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    iput-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->lastSay:Ljava/lang/String;

    goto/16 :goto_5

    .line 526
    :cond_e
    sget-object v6, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->BelirliArama:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    if-eqz v6, :cond_5

    .line 528
    sput-boolean v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->kesfetBasla:Z

    .line 529
    iget-object v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    .line 532
    sget-object v8, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->aranan:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 533
    sget-object v6, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v6}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v6

    if-nez v6, :cond_5

    add-int/lit8 v6, v5, -0x2d

    int-to-float v6, v6

    cmpg-float v6, v4, v6

    if-gez v6, :cond_f

    .line 535
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 536
    sget-object v5, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->solda:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v3, v7, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_f
    add-int/lit8 v5, v5, 0x2d

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_10

    .line 538
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 539
    sget-object v5, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->sagda:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v3, v7, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 541
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 542
    sget-object v5, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->title:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->ortada:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v3, v7, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 546
    :cond_11
    sget-object v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v1

    if-nez v1, :cond_5

    .line 547
    sget-object v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->mTTs:Landroid/speech/tts/TextToSpeech;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->aranan:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->bulunamadi:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    .line 552
    :cond_12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a70d49b -> :sswitch_4e
        -0x775aa33d -> :sswitch_4d
        -0x73952a3d -> :sswitch_4c
        -0x6fec54a3 -> :sswitch_4b
        -0x6c2a895f -> :sswitch_4a
        -0x58a993ff -> :sswitch_49
        -0x55324f25 -> :sswitch_48
        -0x55174b87 -> :sswitch_47
        -0x5338d565 -> :sswitch_46
        -0x4e87dd45 -> :sswitch_45
        -0x4b79a7fc -> :sswitch_44
        -0x43df2d1f -> :sswitch_43
        -0x43df12c2 -> :sswitch_42
        -0x43d9eee0 -> :sswitch_41
        -0x4349a91e -> :sswitch_40
        -0x42f51ef1 -> :sswitch_3f
        -0x42290a26 -> :sswitch_3e
        -0x422698d3 -> :sswitch_3d
        -0x3bff6891 -> :sswitch_3c
        -0x3bae52e7 -> :sswitch_3b
        -0x39599651 -> :sswitch_3a
        -0x292abb1b -> :sswitch_39
        -0x1f8adbac -> :sswitch_38
        -0x1cc7cc96 -> :sswitch_37
        -0x15f077d3 -> :sswitch_36
        -0x10045866 -> :sswitch_35
        -0x403c5d5 -> :sswitch_34
        0xc33 -> :sswitch_33
        0x17bf9 -> :sswitch_32
        0x18c09 -> :sswitch_31
        0x19e51 -> :sswitch_30
        0x1a135 -> :sswitch_2f
        0x1a7d2 -> :sswitch_2e
        0x1c155 -> :sswitch_2d
        0x2f8c7b -> :sswitch_2c
        0x2fd82e -> :sswitch_2b
        0x305afa -> :sswitch_2a
        0x31648b -> :sswitch_29
        0x322b5f -> :sswitch_28
        0x326a25 -> :sswitch_27
        0x35bf01 -> :sswitch_26
        0x3673a7 -> :sswitch_25
        0x371f20 -> :sswitch_24
        0x389ebc -> :sswitch_23
        0xa14350 -> :sswitch_22
        0x477f59d -> :sswitch_21
        0x58c328f -> :sswitch_20
        0x592e0ee -> :sswitch_1f
        0x5967b2b -> :sswitch_1e
        0x5b54f22 -> :sswitch_1d
        0x5e76e6f -> :sswitch_1c
        0x5f313e2 -> :sswitch_1b
        0x5fb609b -> :sswitch_1a
        0x611bd4d -> :sswitch_19
        0x61535e3 -> :sswitch_18
        0x6154d85 -> :sswitch_17
        0x629d3e4 -> :sswitch_16
        0x62db7c9 -> :sswitch_15
        0x655574b -> :sswitch_14
        0x65bdc88 -> :sswitch_13
        0x6903a7f -> :sswitch_12
        0x6d6f396 -> :sswitch_11
        0x6e69b06 -> :sswitch_10
        0x8f9a880 -> :sswitch_f
        0xce4f8c1 -> :sswitch_e
        0xce50d05 -> :sswitch_d
        0x1159b437 -> :sswitch_c
        0x19048b03 -> :sswitch_b
        0x22c79d96 -> :sswitch_a
        0x2b7025d6 -> :sswitch_9
        0x3a3a96a9 -> :sswitch_8
        0x40d8b42d -> :sswitch_7
        0x4164b6e9 -> :sswitch_6
        0x4a5dc530 -> :sswitch_5
        0x5187ed26 -> :sswitch_4
        0x69158e88 -> :sswitch_3
        0x76c79afb -> :sswitch_2
        0x76d18d3b -> :sswitch_1
        0x776e9118 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized drawDebug(Landroid/graphics/Canvas;)V
    .locals 9

    monitor-enter p0

    .line 117
    :try_start_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, -0x1

    .line 118
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x42700000    # 60.0f

    .line 119
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 121
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/high16 v2, -0x10000

    .line 122
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v2, 0xc8

    .line 123
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 124
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 126
    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->screenRects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 127
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/RectF;

    .line 128
    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, v4, Landroid/graphics/RectF;->left:F

    iget v7, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v5, v6, v7, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 130
    iget-object v5, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->borderedText:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, p1, v6, v4, v3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;->drawText(Landroid/graphics/Canvas;FFLjava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->objectTracker:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 134
    monitor-exit p0

    return-void

    .line 138
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->trackedObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;

    .line 139
    iget-object v1, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->trackedObject:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;

    .line 141
    invoke-virtual {v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->getTrackedPositionInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v2

    .line 143
    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->getFrameToCanvasMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "%.2f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 144
    invoke-virtual {v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->getCurrentCorrelation()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 145
    iget-object v3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->borderedText:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, p1, v4, v2, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/BorderedText;->drawText(Landroid/graphics/Canvas;FFLjava/lang/String;)V

    goto :goto_1

    .line 150
    :cond_3
    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->getFrameToCanvasMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->objectTracker:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    invoke-virtual {v1, p1, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->drawDebug(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onFrame(IIII[BJ)V
    .locals 14

    move-object v1, p0

    move v0, p1

    move/from16 v2, p2

    monitor-enter p0

    .line 562
    :try_start_0
    iget-object v3, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->objectTracker:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v3, :cond_0

    iget-boolean v3, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->initialized:Z

    if-nez v3, :cond_0

    .line 563
    invoke-static {}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->clearInstance()V

    .line 565
    iget-object v3, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->logger:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    const-string v7, "Initializing ObjectTracker: %dx%d"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {v3, v7, v8}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v3, p3

    .line 566
    invoke-static {p1, v2, v3, v6}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->getInstance(IIIZ)Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    move-result-object v3

    iput-object v3, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->objectTracker:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    .line 567
    iput v0, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->frameWidth:I

    .line 568
    iput v2, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->frameHeight:I

    move/from16 v0, p4

    .line 569
    iput v0, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->sensorOrientation:I

    .line 570
    iput-boolean v6, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->initialized:Z

    .line 581
    :cond_0
    iget-object v7, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->objectTracker:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_1

    .line 582
    monitor-exit p0

    return-void

    :cond_1
    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v8, p5

    move-wide/from16 v10, p6

    .line 585
    :try_start_1
    invoke-virtual/range {v7 .. v13}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->nextFrame([B[BJ[FZ)V

    .line 588
    new-instance v0, Ljava/util/LinkedList;

    iget-object v2, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->trackedObjects:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 590
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;

    .line 591
    iget-object v3, v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->trackedObject:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;

    .line 592
    invoke-virtual {v3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->getCurrentCorrelation()F

    move-result v7

    const v8, 0x3e99999a    # 0.3f

    cmpg-float v8, v7, v8

    if-gez v8, :cond_2

    .line 594
    iget-object v8, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->logger:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    const-string v9, "Removing tracked object %s because NCC is %.2f"

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v3, v10, v4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v10, v6

    invoke-virtual {v8, v9, v10}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 595
    invoke-virtual {v3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->stopTracking()V

    .line 596
    iget-object v3, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->trackedObjects:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 598
    iget-object v3, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->availableColors:Ljava/util/Queue;

    iget v2, v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;->color:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 601
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized trackResults(Ljava/util/List;[BJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;",
            ">;[BJ)V"
        }
    .end annotation

    monitor-enter p0

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->logger:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    const-string v1, "Processing %d results from %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    invoke-direct {p0, p3, p4, p1, p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->processResults(JLjava/util/List;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
