.class Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;
.super Ljava/lang/Object;
.source "MultiBoxTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrackedRecognition"
.end annotation


# instance fields
.field color:I

.field detectionConfidence:F

.field location:Landroid/graphics/RectF;

.field title:Ljava/lang/String;

.field trackedObject:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$1;)V
    .locals 0

    .line 784
    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker$TrackedRecognition;-><init>()V

    return-void
.end method
