.class Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ErrorDialog$1;
.super Ljava/lang/Object;
.source "CameraConnectionFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ErrorDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ErrorDialog;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ErrorDialog;Landroid/app/Activity;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ErrorDialog$1;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ErrorDialog;

    iput-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ErrorDialog$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 579
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ErrorDialog$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
