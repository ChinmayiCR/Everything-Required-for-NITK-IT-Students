.class public Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ErrorDialog;
.super Landroid/app/DialogFragment;
.source "CameraConnectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialog"
.end annotation


# static fields
.field private static final ARG_MESSAGE:Ljava/lang/String; = "message"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 558
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ErrorDialog;
    .locals 3

    .line 562
    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ErrorDialog;

    invoke-direct {v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ErrorDialog;-><init>()V

    .line 563
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "message"

    .line 564
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-virtual {v0, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ErrorDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 571
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 572
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 573
    invoke-virtual {p0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ErrorDialog$1;

    invoke-direct {v1, p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ErrorDialog$1;-><init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/CameraConnectionFragment$ErrorDialog;Landroid/app/Activity;)V

    const p1, 0x104000a

    .line 574
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 582
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
