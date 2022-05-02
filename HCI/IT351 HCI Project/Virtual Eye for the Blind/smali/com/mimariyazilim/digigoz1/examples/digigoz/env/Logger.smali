.class public final Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final DEFAULT_MIN_LOG_LEVEL:I = 0x3

.field private static final DEFAULT_TAG:Ljava/lang/String; = "tensorflow"

.field private static final IGNORED_CLASS_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final messagePrefix:Ljava/lang/String;

.field private minLogLevel:I

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->IGNORED_CLASS_NAMES:Ljava/util/Set;

    const-string v1, "dalvik.system.VMStack"

    .line 32
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.lang.Thread"

    .line 33
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    const-class v1, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "tensorflow"

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, v0, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-string v0, "tensorflow"

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, v0, v1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iput p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->minLogLevel:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tensorflow"

    .line 56
    invoke-direct {p0, v0, p1}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 39
    iput v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->minLogLevel:I

    .line 71
    iput-object p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->tag:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 72
    invoke-static {}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->getCallerSimpleName()Ljava/lang/String;

    move-result-object p2

    .line 73
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->messagePrefix:Ljava/lang/String;

    return-void
.end method

.method private static getCallerSimpleName()Ljava/lang/String;
    .locals 5

    .line 101
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 103
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 104
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 105
    sget-object v4, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->IGNORED_CLASS_NAMES:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v0, "\\."

    .line 107
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 108
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    :cond_1
    const-class v0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private varargs toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->messagePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    if-lez v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    .line 140
    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    .line 146
    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    .line 176
    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    .line 182
    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    .line 152
    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public varargs i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    .line 158
    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public isLoggable(I)Z
    .locals 1

    .line 120
    iget v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->minLogLevel:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setMinLogLevel(I)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->minLogLevel:I

    return-void
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    .line 128
    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public varargs v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    .line 134
    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x5

    .line 164
    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public varargs w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x5

    .line 170
    invoke-virtual {p0, v0}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->tag:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/mimariyazilim/digigoz1/examples/digigoz/env/Logger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
