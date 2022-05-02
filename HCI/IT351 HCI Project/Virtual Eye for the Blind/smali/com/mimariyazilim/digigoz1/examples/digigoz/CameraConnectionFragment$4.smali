.class Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$4;
.super Ljava/lang/Object;
.source "CameraConnectionFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$4;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;

    iput-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$4;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$4;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$4;->val$text:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
