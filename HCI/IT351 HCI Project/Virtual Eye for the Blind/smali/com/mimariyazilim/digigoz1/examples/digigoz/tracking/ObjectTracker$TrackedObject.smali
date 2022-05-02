.class public Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;
.super Ljava/lang/Object;
.source "ObjectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrackedObject"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private isDead:Z

.field private lastExternalPositionTime:J

.field private lastTrackedPosition:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

.field private visibleInLastFrame:Z


# direct methods
.method constructor <init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;Landroid/graphics/RectF;J[B)V
    .locals 1

    .line 562
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 563
    iput-boolean v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->isDead:Z

    .line 565
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->id:Ljava/lang/String;

    .line 567
    iput-wide p3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->lastExternalPositionTime:J

    .line 569
    monitor-enter p1

    .line 570
    :try_start_0
    invoke-virtual {p0, p2, p5}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->registerInitialAppearance(Landroid/graphics/RectF;[B)V

    .line 571
    invoke-virtual {p0, p2, p3, p4}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->setPreviousPosition(Landroid/graphics/RectF;J)V

    .line 572
    invoke-static {p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->access$400(Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method static synthetic access$000(Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;)V
    .locals 0

    .line 552
    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->updateTrackedPosition()V

    return-void
.end method

.method private checkValidObject()V
    .locals 2

    .line 665
    iget-boolean v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->isDead:Z

    if-nez v0, :cond_1

    .line 667
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    sget-object v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->instance:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    if-ne v0, v1, :cond_0

    return-void

    .line 668
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TrackedObject created with another ObjectTracker!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TrackedObject already removed from tracking!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized updateTrackedPosition()V
    .locals 6

    monitor-enter p0

    .line 638
    :try_start_0
    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->checkValidObject()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 641
    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->getTrackedPositionNative(Ljava/lang/String;[F)V

    .line 642
    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v0, v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->lastTrackedPosition:Landroid/graphics/RectF;

    .line 644
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->isObjectVisible(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->visibleInLastFrame:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getCurrentCorrelation()F
    .locals 2

    .line 587
    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->checkValidObject()V

    .line 588
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->getCurrentCorrelation(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method declared-synchronized getLastExternalPositionTime()J
    .locals 2

    monitor-enter p0

    .line 657
    :try_start_0
    iget-wide v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->lastExternalPositionTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTrackedPositionInPreviewFrame()Landroid/graphics/RectF;
    .locals 2

    monitor-enter p0

    .line 648
    :try_start_0
    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->checkValidObject()V

    .line 650
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->lastTrackedPosition:Landroid/graphics/RectF;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 651
    monitor-exit p0

    return-object v0

    .line 653
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    invoke-static {v1, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->access$700(Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method registerInitialAppearance(Landroid/graphics/RectF;[B)V
    .locals 7

    .line 592
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    invoke-static {v0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->access$500(Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    .line 593
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->id:Ljava/lang/String;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->registerNewObjectWithAppearanceNative(Ljava/lang/String;FFFF[B)V

    return-void
.end method

.method setCurrentPosition(Landroid/graphics/RectF;)V
    .locals 7

    .line 625
    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->checkValidObject()V

    .line 626
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    invoke-static {v0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->access$500(Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    .line 627
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    monitor-enter v0

    .line 628
    :try_start_0
    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->id:Ljava/lang/String;

    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    iget v5, p1, Landroid/graphics/RectF;->right:F

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual/range {v1 .. v6}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->setCurrentPositionNative(Ljava/lang/String;FFFF)V

    .line 634
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method declared-synchronized setPreviousPosition(Landroid/graphics/RectF;J)V
    .locals 9

    monitor-enter p0

    .line 603
    :try_start_0
    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->checkValidObject()V

    .line 604
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 605
    :try_start_1
    iget-wide v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->lastExternalPositionTime:J

    cmp-long v1, v1, p2

    if-lez v1, :cond_0

    .line 606
    invoke-static {}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->access$600()Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    move-result-object p1

    const-string p2, "Tried to use older position time!"

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 607
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 609
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    invoke-static {v1, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->access$500(Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    .line 610
    iput-wide p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->lastExternalPositionTime:J

    .line 612
    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->id:Ljava/lang/String;

    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    iget v5, p1, Landroid/graphics/RectF;->right:F

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    iget-wide v7, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->lastExternalPositionTime:J

    invoke-virtual/range {v1 .. v8}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->setPreviousPositionNative(Ljava/lang/String;FFFFJ)V

    .line 620
    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->updateTrackedPosition()V

    .line 621
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 622
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 621
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public stopTracking()V
    .locals 3

    .line 577
    invoke-direct {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->checkValidObject()V

    .line 579
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    monitor-enter v0

    const/4 v1, 0x1

    .line 580
    :try_start_0
    iput-boolean v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->isDead:Z

    .line 581
    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->forgetNative(Ljava/lang/String;)V

    .line 582
    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;

    invoke-static {v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;->access$400(Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized visibleInLastPreviewFrame()Z
    .locals 1

    monitor-enter p0

    .line 661
    :try_start_0
    iget-boolean v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/ObjectTracker$TrackedObject;->visibleInLastFrame:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
