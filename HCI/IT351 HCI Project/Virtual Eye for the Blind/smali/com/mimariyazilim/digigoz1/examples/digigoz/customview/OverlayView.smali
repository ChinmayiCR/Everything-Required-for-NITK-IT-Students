.class public Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/OverlayView;
.super Landroid/view/View;
.source "OverlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/OverlayView$DrawCallback;
    }
.end annotation


# instance fields
.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/OverlayView$DrawCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/OverlayView;->callbacks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/OverlayView$DrawCallback;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/OverlayView;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized draw(Landroid/graphics/Canvas;)V
    .locals 2

    monitor-enter p0

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/OverlayView;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/OverlayView$DrawCallback;

    .line 40
    invoke-interface {v1, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/OverlayView$DrawCallback;->drawCallback(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 42
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
