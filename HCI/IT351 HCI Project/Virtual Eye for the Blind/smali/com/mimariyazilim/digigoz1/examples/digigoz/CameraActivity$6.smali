.class Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$6;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;


# direct methods
.method constructor <init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$6;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 486
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 487
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$6;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    invoke-static {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->access$000(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$6;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    invoke-static {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->access$000(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 492
    :goto_0
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$6;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    invoke-static {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->access$000(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 494
    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$6;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    invoke-static {v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->access$100(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    return-void
.end method
