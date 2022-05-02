.class public final synthetic Lcom/mimariyazilim/digigoz1/examples/digigoz/-$$Lambda$DetectorActivity$ZmTJUK7WWg1S_GTix8HwwHX7fIk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/-$$Lambda$DetectorActivity$ZmTJUK7WWg1S_GTix8HwwHX7fIk;->f$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

    iput p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/-$$Lambda$DetectorActivity$ZmTJUK7WWg1S_GTix8HwwHX7fIk;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/-$$Lambda$DetectorActivity$ZmTJUK7WWg1S_GTix8HwwHX7fIk;->f$0:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;

    iget v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/-$$Lambda$DetectorActivity$ZmTJUK7WWg1S_GTix8HwwHX7fIk;->f$1:I

    invoke-virtual {v0, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;->lambda$setNumThreads$1$DetectorActivity(I)V

    return-void
.end method
