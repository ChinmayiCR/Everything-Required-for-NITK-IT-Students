.class Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$7;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "CameraActivity.java"


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

    .line 500
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$7;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 1

    const/4 p1, 0x2

    const v0, 0x7f070088

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 511
    :cond_0
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$7;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    iget-object p1, p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->bottomSheetArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 507
    :cond_1
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$7;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    iget-object p1, p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->bottomSheetArrowImageView:Landroid/widget/ImageView;

    const p2, 0x7f070087

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 517
    :cond_2
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity$7;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;

    iget-object p1, p1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraActivity;->bottomSheetArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
