.class Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$1;
.super Ljava/lang/Object;
.source "DetectorActivity.java"

# interfaces
.implements Lcom/mimariyazilim/digigoz1/examples/digigoz/customview/OverlayView$DrawCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->onPreviewSizeChosen(Landroid/util/Size;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;


# direct methods
.method constructor <init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawCallback(Landroid/graphics/Canvas;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

    invoke-static {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->access$000(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;)Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->draw(Landroid/graphics/Canvas;)V

    .line 149
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

    invoke-virtual {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

    invoke-static {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->access$000(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;)Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/tracking/MultiBoxTracker;->drawDebug(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method
