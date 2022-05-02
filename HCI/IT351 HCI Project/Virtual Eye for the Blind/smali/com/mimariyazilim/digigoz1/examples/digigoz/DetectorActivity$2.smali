.class Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;
.super Ljava/lang/Object;
.source "DetectorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->processImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

.field final synthetic val$currTimestamp:J


# direct methods
.method constructor <init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;J)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

    iput-wide p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;->val$currTimestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 197
    invoke-static {}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->access$100()Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Running detection on image "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;->val$currTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 199
    iget-object v3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

    invoke-static {v3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->access$300(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;)Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier;

    move-result-object v3

    iget-object v4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

    invoke-static {v4}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->access$200(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier;->recognizeImage(Landroid/graphics/Bitmap;)Ljava/util/List;

    move-result-object v3

    .line 200
    iget-object v4, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-static {v4, v5, v6}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->access$402(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;J)J

    .line 202
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

    invoke-static {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->access$200(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->access$502(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 203
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

    invoke-static {v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->access$500(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 204
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/high16 v4, -0x10000

    .line 205
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v4, 0x40000000    # 2.0f

    .line 207
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 210
    sget-object v4, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$3;->$SwitchMap$com$mimariyazilim$digigoz1$examples$digigoz$DetectorActivity$DetectorMode:[I

    invoke-static {}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->access$600()Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$DetectorMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$DetectorMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/high16 v4, 0x3f000000    # 0.5f

    .line 216
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 219
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;

    .line 220
    invoke-virtual {v6}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->getLocation()Landroid/graphics/RectF;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 221
    invoke-virtual {v6}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->getConfidence()Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v8, v8, v4

    if-ltz v8, :cond_0

    .line 222
    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 224
    iget-object v8, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

    invoke-static {v8}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->access$700(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;)Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 226
    invoke-virtual {v6, v7}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tflite/Classifier$Recognition;->setLocation(Landroid/graphics/RectF;)V

    .line 227
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

    invoke-static {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->access$000(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;)Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

    invoke-static {v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->access$800(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;)[B

    move-result-object v1

    iget-wide v3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;->val$currTimestamp:J

    invoke-virtual {v0, v5, v1, v3, v4}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->trackResults(Ljava/util/List;[BJ)V

    .line 232
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

    iget-object v0, v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->trackingOverlay:Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/OverlayView;

    invoke-virtual {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/OverlayView;->postInvalidate()V

    .line 234
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

    invoke-static {v0, v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->access$902(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;Z)Z

    .line 236
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

    new-instance v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2$1;

    invoke-direct {v1, p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2$1;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
