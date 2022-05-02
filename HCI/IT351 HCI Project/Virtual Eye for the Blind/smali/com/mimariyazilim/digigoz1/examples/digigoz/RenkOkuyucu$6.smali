.class Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$6;
.super Ljava/lang/Object;
.source "RenkOkuyucu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->requestCameraPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;


# direct methods
.method constructor <init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;)V
    .locals 0

    .line 636
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$6;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 638
    iget-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu$6;->this$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;

    invoke-virtual {p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/RenkOkuyucu;->finish()V

    return-void
.end method
