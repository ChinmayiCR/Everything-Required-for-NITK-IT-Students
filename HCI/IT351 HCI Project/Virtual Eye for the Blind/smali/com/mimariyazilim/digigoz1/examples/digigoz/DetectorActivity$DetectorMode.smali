.class final enum Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$DetectorMode;
.super Ljava/lang/Enum;
.source "DetectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DetectorMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$DetectorMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$DetectorMode;

.field public static final enum TF_OD_API:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$DetectorMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 264
    new-instance v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$DetectorMode;

    const-string v1, "TF_OD_API"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$DetectorMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$DetectorMode;->TF_OD_API:Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$DetectorMode;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$DetectorMode;

    aput-object v0, v1, v2

    .line 263
    sput-object v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$DetectorMode;->$VALUES:[Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$DetectorMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 263
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$DetectorMode;
    .locals 1

    .line 263
    const-class v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$DetectorMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$DetectorMode;

    return-object p0
.end method

.method public static values()[Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$DetectorMode;
    .locals 1

    .line 263
    sget-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$DetectorMode;->$VALUES:[Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$DetectorMode;

    invoke-virtual {v0}, [Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$DetectorMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mimariyazilim/digigoz1/examples/digigoz/DetectorActivity$DetectorMode;

    return-object v0
.end method
