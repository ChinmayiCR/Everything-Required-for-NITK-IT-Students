.class public Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;
.super Ljava/lang/Object;
.source "ObjectTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;,
        Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$FrameChange;,
        Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$PointChange;,
        Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;,
        Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TimestampedDeltas;
    }
.end annotation


# static fields
.field private static final DOWNSAMPLE_FACTOR:I = 0x2

.field private static final DRAW_TEXT:Z = false

.field private static final LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

.field private static final MAX_DEBUG_HISTORY_SIZE:I = 0x1e

.field private static final MAX_FRAME_HISTORY_SIZE:I = 0xc8

.field protected static instance:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

.field private static libraryFound:Z


# instance fields
.field protected final alwaysTrack:Z

.field private final debugHistory:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final downsampledFrame:[B

.field private downsampledTimestamp:J

.field protected final frameHeight:I

.field protected final frameWidth:I

.field private lastKeypoints:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$FrameChange;

.field private lastTimestamp:J

.field private final matrixValues:[F

.field private nativeObjectTracker:J

.field private final rowStride:I

.field private final timestampedDeltas:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TimestampedDeltas;",
            ">;"
        }
    .end annotation
.end field

.field private final trackedObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    invoke-direct {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;-><init>()V

    sput-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    const/4 v0, 0x0

    .line 64
    sput-boolean v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->libraryFound:Z

    :try_start_0
    const-string v1, "tensorflow_demo"

    .line 68
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 69
    sput-boolean v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->libraryFound:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    sget-object v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "libtensorflow_demo.so not found, tracking unavailable"

    invoke-virtual {v1, v2, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected constructor <init>(IIIZ)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 83
    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->matrixValues:[F

    .line 92
    iput p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->frameWidth:I

    .line 93
    iput p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->frameHeight:I

    .line 94
    iput p3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->rowStride:I

    .line 95
    iput-boolean p4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->alwaysTrack:Z

    .line 96
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->timestampedDeltas:Ljava/util/LinkedList;

    .line 98
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->trackedObjects:Ljava/util/Map;

    .line 100
    new-instance p2, Ljava/util/Vector;

    const/16 p3, 0x1e

    invoke-direct {p2, p3}, Ljava/util/Vector;-><init>(I)V

    iput-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->debugHistory:Ljava/util/Vector;

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, -0x1

    .line 102
    div-int/lit8 p2, p1, 0x2

    mul-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->downsampledFrame:[B

    return-void
.end method

.method static synthetic access$400(Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;)Ljava/util/Map;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->trackedObjects:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->downscaleRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600()Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;
    .locals 1

    .line 50
    sget-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->upscaleRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized clearInstance()V
    .locals 2

    const-class v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    monitor-enter v0

    .line 130
    :try_start_0
    sget-object v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->instance:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected static native downsampleImageNative(III[BI[B)V
.end method

.method private downscaleRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5

    .line 362
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    div-float/2addr v3, v2

    iget v4, p1, Landroid/graphics/RectF;->right:F

    div-float/2addr v4, v2

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    div-float/2addr p1, v2

    invoke-direct {v0, v1, v3, v4, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method private drawHistoryDebug(Landroid/graphics/Canvas;)V
    .locals 2

    .line 196
    iget v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->frameWidth:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->frameHeight:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->drawHistoryPoint(Landroid/graphics/Canvas;FF)V

    return-void
.end method

.method private drawHistoryPoint(Landroid/graphics/Canvas;FF)V
    .locals 10

    .line 201
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x0

    .line 202
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 203
    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 v1, -0x10000

    .line 205
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 206
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v2, -0xff0100

    .line 209
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x40400000    # 3.0f

    .line 210
    invoke-virtual {p1, p2, p3, v2, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 212
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    iget-object v7, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->debugHistory:Ljava/util/Vector;

    monitor-enter v7

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->debugHistory:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v8

    move v1, p2

    move v2, p3

    move p2, v0

    :goto_0
    if-ge p2, v8, :cond_0

    .line 220
    iget-object p3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->debugHistory:Ljava/util/Vector;

    sub-int v0, v8, p2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/PointF;

    .line 221
    iget v0, p3, Landroid/graphics/PointF;->x:F

    add-float v9, v1, v0

    .line 222
    iget p3, p3, Landroid/graphics/PointF;->y:F

    add-float/2addr p3, v2

    move-object v0, p1

    move v3, v9

    move v4, p3

    move-object v5, v6

    .line 223
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 p2, p2, 0x1

    move v2, p3

    move v1, v9

    goto :goto_0

    .line 227
    :cond_0
    monitor-exit v7

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private drawKeypointsDebug(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 231
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 232
    iget-object v1, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->lastKeypoints:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$FrameChange;

    if-nez v1, :cond_0

    return-void

    .line 237
    :cond_0
    invoke-static {v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$FrameChange;->access$100(Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$FrameChange;)F

    move-result v8

    .line 238
    iget-object v1, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->lastKeypoints:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$FrameChange;

    invoke-static {v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$FrameChange;->access$200(Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$FrameChange;)F

    move-result v9

    .line 240
    iget-object v1, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->lastKeypoints:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$FrameChange;

    iget-object v1, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$FrameChange;->pointDeltas:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$PointChange;

    .line 241
    invoke-static {v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$PointChange;->access$300(Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$PointChange;)Z

    move-result v2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x2

    if-eqz v2, :cond_1

    .line 242
    iget-object v2, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$PointChange;->keypointA:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;

    iget v2, v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;->score:F

    sub-float/2addr v2, v8

    sub-float v3, v9, v8

    div-float/2addr v2, v3

    invoke-static {v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->floatToChar(F)I

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    .line 243
    iget-object v5, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$PointChange;->keypointA:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;

    iget v5, v5, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;->score:F

    sub-float/2addr v5, v8

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    .line 244
    invoke-static {v4}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->floatToChar(F)I

    move-result v3

    const/high16 v4, -0x1000000

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v4

    or-int/2addr v2, v3

    .line 247
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x4

    new-array v14, v2, [F

    .line 249
    iget-object v2, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$PointChange;->keypointA:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;

    iget v2, v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;->x:F

    aput v2, v14, v12

    iget-object v2, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$PointChange;->keypointA:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;

    iget v2, v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;->y:F

    aput v2, v14, v11

    iget-object v2, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$PointChange;->keypointB:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;

    iget v2, v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;->x:F

    aput v2, v14, v13

    iget-object v1, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$PointChange;->keypointB:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;

    iget v1, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;->y:F

    const/4 v15, 0x3

    aput v1, v14, v15

    .line 252
    aget v1, v14, v13

    const/high16 v2, 0x40400000    # 3.0f

    sub-float v3, v1, v2

    aget v1, v14, v15

    sub-float v4, v1, v2

    aget v1, v14, v13

    add-float v5, v1, v2

    aget v1, v14, v15

    add-float v6, v1, v2

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const v1, -0xff0001

    .line 258
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    aget v2, v14, v13

    aget v3, v14, v15

    aget v4, v14, v12

    aget v5, v14, v11

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v4, p1

    goto/16 :goto_0

    :cond_1
    const/16 v2, -0x100

    .line 270
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-array v2, v13, [F

    .line 271
    iget-object v3, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$PointChange;->keypointA:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;

    iget v3, v3, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;->x:F

    aput v3, v2, v12

    iget-object v1, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$PointChange;->keypointA:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;

    iget v1, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;->y:F

    aput v1, v2, v11

    .line 272
    aget v1, v2, v12

    aget v2, v2, v11

    const/high16 v3, 0x40a00000    # 5.0f

    move-object/from16 v4, p1

    invoke-virtual {v4, v1, v2, v3, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private static floatToChar(F)I
    .locals 1

    const v0, 0x437fffbe

    mul-float/2addr p0, v0

    float-to-int p0, p0

    const/16 v0, 0xff

    .line 136
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private declared-synchronized getAccumulatedDelta(JFFF)Landroid/graphics/PointF;
    .locals 4

    monitor-enter p0

    .line 279
    :try_start_0
    new-instance v0, Landroid/graphics/RectF;

    sub-float v1, p3, p5

    sub-float v2, p4, p5

    add-float v3, p3, p5

    add-float/2addr p5, p4

    invoke-direct {v0, v1, v2, v3, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 280
    invoke-direct {p0, p1, p2, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->getCurrentPosition(JLandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    .line 284
    new-instance p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p5

    sub-float/2addr p5, p3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    sub-float/2addr p1, p4

    invoke-direct {p2, p5, p1}, Landroid/graphics/PointF;-><init>(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getCurrentPosition(JLandroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 9

    monitor-enter p0

    .line 288
    :try_start_0
    invoke-direct {p0, p3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->downscaleRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p3

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 291
    iget v4, p3, Landroid/graphics/RectF;->left:F

    iget v5, p3, Landroid/graphics/RectF;->top:F

    iget v6, p3, Landroid/graphics/RectF;->right:F

    iget v7, p3, Landroid/graphics/RectF;->bottom:F

    move-object v1, p0

    move-wide v2, p1

    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->getCurrentPositionNative(JFFFF[F)V

    .line 299
    new-instance p1, Landroid/graphics/RectF;

    const/4 p2, 0x0

    aget p2, v0, p2

    const/4 p3, 0x1

    aget p3, v0, p3

    const/4 v1, 0x2

    aget v1, v0, v1

    const/4 v2, 0x3

    aget v0, v0, v2

    invoke-direct {p1, p2, p3, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 301
    invoke-direct {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->upscaleRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized getInstance(IIIZ)Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;
    .locals 2

    const-class v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    monitor-enter v0

    .line 112
    :try_start_0
    sget-boolean v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->libraryFound:Z

    if-nez v1, :cond_0

    .line 113
    sget-object p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->LOGGER:Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    const-string p1, "Native object tracking support not found. See tensorflow/examples/android/README.md for details."

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 116
    monitor-exit v0

    return-object p0

    .line 119
    :cond_0
    :try_start_1
    sget-object v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->instance:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    if-nez v1, :cond_1

    .line 120
    new-instance v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;-><init>(IIIZ)V

    sput-object v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->instance:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    .line 121
    invoke-virtual {v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->init()V

    .line 126
    sget-object p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->instance:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    .line 123
    :cond_1
    :try_start_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Tried to create a new objectracker before releasing the old one!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private native initNative(IIZ)V
.end method

.method private updateDebugHistory()V
    .locals 9

    .line 305
    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$FrameChange;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->getKeypointsNative(Z)[F

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$FrameChange;-><init>([F)V

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->lastKeypoints:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$FrameChange;

    .line 307
    iget-wide v4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->lastTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    return-void

    .line 311
    :cond_0
    iget v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->frameWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    iget v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->frameHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v7, v0

    const/high16 v8, 0x42c80000    # 100.0f

    move-object v3, p0

    .line 312
    invoke-direct/range {v3 .. v8}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->getAccumulatedDelta(JFFF)Landroid/graphics/PointF;

    move-result-object v0

    .line 315
    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->debugHistory:Ljava/util/Vector;

    monitor-enter v2

    .line 316
    :try_start_0
    iget-object v3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->debugHistory:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 318
    :goto_0
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->debugHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v3, 0x1e

    if-le v0, v3, :cond_1

    .line 319
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->debugHistory:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 321
    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private upscaleRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5

    .line 370
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v3, v2

    iget v4, p1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v4, v2

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p1, v2

    invoke-direct {v0, v1, v3, v4, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized drawDebug(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 0

    monitor-enter p0

    .line 325
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 326
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 328
    invoke-direct {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->drawHistoryDebug(Landroid/graphics/Canvas;)V

    .line 329
    invoke-direct {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->drawKeypointsDebug(Landroid/graphics/Canvas;)V

    .line 331
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected native drawNative(II[F)V
.end method

.method public declared-synchronized drawOverlay(Ljavax/microedition/khronos/opengles/GL10;Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;Landroid/graphics/Matrix;)V
    .locals 0

    monitor-enter p0

    .line 151
    :try_start_0
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1, p3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    const/high16 p3, 0x40000000    # 2.0f

    .line 152
    invoke-virtual {p1, p3, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 153
    iget-object p3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->matrixValues:[F

    invoke-virtual {p1, p3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 154
    iget p1, p2, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;->width:I

    iget p2, p2, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Size;->height:I

    iget-object p3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->matrixValues:[F

    invoke-virtual {p0, p1, p2, p3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->drawNative(II[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected native forgetNative(Ljava/lang/String;)V
.end method

.method protected native getCurrentCorrelation(Ljava/lang/String;)F
.end method

.method protected native getCurrentPositionNative(JFFFF[F)V
.end method

.method public getDebugText()Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 335
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 337
    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->lastKeypoints:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$FrameChange;

    if-eqz v1, :cond_0

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Num keypoints "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->lastKeypoints:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$FrameChange;

    iget-object v2, v2, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$FrameChange;->pointDeltas:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Min score: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->lastKeypoints:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$FrameChange;

    invoke-static {v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$FrameChange;->access$100(Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$FrameChange;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max score: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->lastKeypoints:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$FrameChange;

    invoke-static {v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$FrameChange;->access$200(Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$FrameChange;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method protected native getKeypointsNative(Z)[F
.end method

.method protected native getKeypointsPacked(F)[B
.end method

.method protected native getMatchScore(Ljava/lang/String;)F
.end method

.method protected native getModelIdNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected native getTrackedPositionNative(Ljava/lang/String;[F)V
.end method

.method protected native haveObject(Ljava/lang/String;)Z
.end method

.method protected init()V
    .locals 3

    .line 145
    iget v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->frameWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->frameHeight:I

    div-int/lit8 v1, v1, 0x2

    iget-boolean v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->alwaysTrack:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->initNative(IIZ)V

    return-void
.end method

.method protected native isObjectVisible(Ljava/lang/String;)Z
.end method

.method public declared-synchronized nextFrame([B[BJ[FZ)V
    .locals 7

    monitor-enter p0

    .line 163
    :try_start_0
    iget-wide v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->downsampledTimestamp:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_0

    .line 164
    iget v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->frameWidth:I

    iget v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->frameHeight:I

    iget v3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->rowStride:I

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->downsampledFrame:[B

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->downsampleImageNative(III[BI[B)V

    .line 166
    iput-wide p3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->downsampledTimestamp:J

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->downsampledFrame:[B

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->nextFrameNative([B[BJ[F)V

    .line 172
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->timestampedDeltas:Ljava/util/LinkedList;

    new-instance p2, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TimestampedDeltas;

    const/high16 p5, 0x40000000    # 2.0f

    invoke-virtual {p0, p5}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->getKeypointsPacked(F)[B

    move-result-object p5

    invoke-direct {p2, p3, p4, p5}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TimestampedDeltas;-><init>(J[B)V

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 173
    :goto_0
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->timestampedDeltas:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 p2, 0xc8

    if-le p1, p2, :cond_1

    .line 174
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->timestampedDeltas:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 177
    :cond_1
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->trackedObjects:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;

    .line 178
    invoke-static {p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->access$000(Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;)V

    goto :goto_1

    :cond_2
    if-eqz p6, :cond_3

    .line 182
    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->updateDebugHistory()V

    .line 185
    :cond_3
    iput-wide p3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->lastTimestamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected native nextFrameNative([B[BJ[F)V
.end method

.method public declared-synchronized pollAccumulatedFlowData(J)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    monitor-enter p0

    .line 347
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 348
    :goto_0
    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->timestampedDeltas:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->timestampedDeltas:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TimestampedDeltas;

    .line 350
    iget-wide v2, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TimestampedDeltas;->timestamp:J

    cmp-long v2, v2, p1

    if-gtz v2, :cond_0

    .line 351
    iget-object v1, v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TimestampedDeltas;->deltas:[B

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->timestampedDeltas:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 358
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected native registerNewObjectWithAppearanceNative(Ljava/lang/String;FFFF[B)V
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    .line 189
    :try_start_0
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->releaseMemoryNative()V

    .line 190
    const-class v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 191
    :try_start_1
    sput-object v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->instance:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    .line 192
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 192
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected native releaseMemoryNative()V
.end method

.method protected native setCurrentPositionNative(Ljava/lang/String;FFFF)V
.end method

.method protected native setPreviousPositionNative(Ljava/lang/String;FFFFJ)V
.end method

.method public declared-synchronized trackObject(Landroid/graphics/RectF;J[B)Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;
    .locals 7

    monitor-enter p0

    .line 379
    :try_start_0
    iget-wide v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->downsampledTimestamp:J

    cmp-long v0, v0, p2

    if-eqz v0, :cond_0

    .line 380
    iget v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->frameWidth:I

    iget v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->frameHeight:I

    iget v3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->rowStride:I

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->downsampledFrame:[B

    move-object v4, p4

    invoke-static/range {v1 .. v6}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->downsampleImageNative(III[BI[B)V

    .line 382
    iput-wide p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->downsampledTimestamp:J

    .line 384
    :cond_0
    new-instance p4, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;

    iget-object v5, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->downsampledFrame:[B

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;Landroid/graphics/RectF;J[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p4

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized trackObject(Landroid/graphics/RectF;[B)Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;
    .locals 7

    monitor-enter p0

    .line 388
    :try_start_0
    new-instance v6, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;

    iget-wide v3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->lastTimestamp:J

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;Landroid/graphics/RectF;J[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v6

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
