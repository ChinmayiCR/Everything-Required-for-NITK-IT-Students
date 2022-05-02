.class Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TimestampedDeltas;
.super Ljava/lang/Object;
.source "ObjectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimestampedDeltas"
.end annotation


# instance fields
.field final deltas:[B

.field final timestamp:J


# direct methods
.method public constructor <init>(J[B)V
    .locals 0

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iput-wide p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TimestampedDeltas;->timestamp:J

    .line 442
    iput-object p3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TimestampedDeltas;->deltas:[B

    return-void
.end method
