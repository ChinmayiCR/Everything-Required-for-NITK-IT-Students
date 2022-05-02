.class public Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$PointChange;
.super Ljava/lang/Object;
.source "ObjectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointChange"
.end annotation


# instance fields
.field public final keypointA:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;

.field public final keypointB:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;

.field pointDelta:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;

.field private final wasFound:Z


# direct methods
.method public constructor <init>(FFFFFIZ)V
    .locals 0

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    iput-boolean p7, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$PointChange;->wasFound:Z

    .line 495
    new-instance p7, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;

    invoke-direct {p7, p1, p2, p5, p6}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;-><init>(FFFI)V

    iput-object p7, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$PointChange;->keypointA:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;

    .line 496
    new-instance p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;

    invoke-direct {p1, p3, p4}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;-><init>(FF)V

    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$PointChange;->keypointB:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;

    return-void
.end method

.method static synthetic access$300(Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$PointChange;)Z
    .locals 0

    .line 479
    iget-boolean p0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$PointChange;->wasFound:Z

    return p0
.end method


# virtual methods
.method public getDelta()Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$PointChange;->pointDelta:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;

    if-nez v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$PointChange;->keypointB:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$PointChange;->keypointA:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;

    invoke-virtual {v0, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;->delta(Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;)Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;

    move-result-object v0

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$PointChange;->pointDelta:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$PointChange;->pointDelta:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$Keypoint;

    return-object v0
.end method
