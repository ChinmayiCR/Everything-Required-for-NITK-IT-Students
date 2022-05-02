.class public final enum Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzgb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/zzcz$zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/vision/zzgb;"
    }
.end annotation


# static fields
.field private static final zzdv:Lcom/google/android/gms/internal/vision/zzgc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzgc<",
            "Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final enum zznp:Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;

.field private static final enum zznq:Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;

.field private static final enum zznr:Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;

.field private static final enum zzns:Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;

.field private static final synthetic zznt:[Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;

    const-string v1, "FORMAT_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;->zznp:Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;

    .line 14
    new-instance v1, Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;

    const-string v3, "FORMAT_LUMINANCE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;->zznq:Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;

    .line 15
    new-instance v3, Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;

    const-string v5, "FORMAT_RGB8"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;->zznr:Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;

    .line 16
    new-instance v5, Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;

    const-string v7, "FORMAT_MONOCHROME"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;->zzns:Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 17
    sput-object v7, Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;->zznt:[Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/vision/zzdf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzdf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;->zzdv:Lcom/google/android/gms/internal/vision/zzgc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;->zznt:[Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;

    return-object v0
.end method

.method public static zzah()Lcom/google/android/gms/internal/vision/zzgd;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/vision/zzdg;->zzhl:Lcom/google/android/gms/internal/vision/zzgd;

    return-object v0
.end method

.method public static zzu(I)Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;->zzns:Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;

    return-object p0

    .line 6
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;->zznr:Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;->zznq:Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;->zznp:Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;

    return-object p0
.end method


# virtual methods
.method public final zzr()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzcz$zzf$zzb;->value:I

    return v0
.end method
