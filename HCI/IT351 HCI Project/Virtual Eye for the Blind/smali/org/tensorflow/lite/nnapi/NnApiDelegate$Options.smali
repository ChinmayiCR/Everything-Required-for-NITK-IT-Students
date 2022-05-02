.class public final Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;
.super Ljava/lang/Object;
.source "NnApiDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/lite/nnapi/NnApiDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Options"
.end annotation


# static fields
.field public static final EXECUTION_PREFERENCE_FAST_SINGLE_ANSWER:I = 0x1

.field public static final EXECUTION_PREFERENCE_LOW_POWER:I = 0x0

.field public static final EXECUTION_PREFERENCE_SUSTAINED_SPEED:I = 0x2

.field public static final EXECUTION_PREFERENCE_UNDEFINED:I = -0x1


# instance fields
.field private acceleratorName:Ljava/lang/String;

.field private allowFp16:Ljava/lang/Boolean;

.field private cacheDir:Ljava/lang/String;

.field private executionPreference:I

.field private maxDelegatedPartitions:Ljava/lang/Integer;

.field private modelToken:Ljava/lang/String;

.field private useNnapiCpu:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 132
    iput v0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->executionPreference:I

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->acceleratorName:Ljava/lang/String;

    .line 134
    iput-object v0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->cacheDir:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->modelToken:Ljava/lang/String;

    .line 136
    iput-object v0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->maxDelegatedPartitions:Ljava/lang/Integer;

    .line 137
    iput-object v0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->useNnapiCpu:Ljava/lang/Boolean;

    .line 138
    iput-object v0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->allowFp16:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;)I
    .locals 0

    .line 29
    iget p0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->executionPreference:I

    return p0
.end method

.method static synthetic access$100(Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->acceleratorName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->cacheDir:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->modelToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;)Ljava/lang/Integer;
    .locals 0

    .line 29
    iget-object p0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->maxDelegatedPartitions:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$500(Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;)Ljava/lang/Boolean;
    .locals 0

    .line 29
    iget-object p0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->useNnapiCpu:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$600(Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;)Ljava/lang/Boolean;
    .locals 0

    .line 29
    iget-object p0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->allowFp16:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public setAcceleratorName(Ljava/lang/String;)Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;
    .locals 0

    .line 74
    iput-object p1, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->acceleratorName:Ljava/lang/String;

    return-object p0
.end method

.method public setAllowFp16(Z)Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;
    .locals 0

    .line 128
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->allowFp16:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setCacheDir(Ljava/lang/String;)Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->cacheDir:Ljava/lang/String;

    return-object p0
.end method

.method public setExecutionPreference(I)Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;
    .locals 0

    .line 63
    iput p1, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->executionPreference:I

    return-object p0
.end method

.method public setMaxNumberOfDelegatedPartitions(I)Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;
    .locals 0

    .line 106
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->maxDelegatedPartitions:Ljava/lang/Integer;

    return-object p0
.end method

.method public setModelToken(Ljava/lang/String;)Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;
    .locals 0

    .line 96
    iput-object p1, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->modelToken:Ljava/lang/String;

    return-object p0
.end method

.method public setUseNnapiCpu(Z)Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 117
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->useNnapiCpu:Ljava/lang/Boolean;

    return-object p0
.end method
