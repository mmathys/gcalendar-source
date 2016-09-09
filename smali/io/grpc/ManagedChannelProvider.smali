.class public abstract Lio/grpc/ManagedChannelProvider;
.super Ljava/lang/Object;
.source "ManagedChannelProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/ManagedChannelProvider$ServicesClassLoader;
    }
.end annotation


# static fields
.field private static final provider:Lio/grpc/ManagedChannelProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lio/grpc/ManagedChannelProvider$ServicesClassLoader;

    .line 57
    invoke-static {}, Lio/grpc/ManagedChannelProvider;->getCorrectClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/grpc/ManagedChannelProvider$ServicesClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    invoke-static {v0}, Lio/grpc/ManagedChannelProvider;->load(Ljava/lang/ClassLoader;)Lio/grpc/ManagedChannelProvider;

    move-result-object v0

    sput-object v0, Lio/grpc/ManagedChannelProvider;->provider:Lio/grpc/ManagedChannelProvider;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Ljava/lang/Class;)Lio/grpc/ManagedChannelProvider;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lio/grpc/ManagedChannelProvider;"
        }
    .end annotation

    .prologue
    .line 158
    :try_start_0
    const-class v0, Lio/grpc/ManagedChannelProvider;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/ManagedChannelProvider;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    new-instance v1, Ljava/util/ServiceConfigurationError;

    .line 161
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x25

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " could not be instantiated: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/util/ServiceConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getCandidatesViaHardCoded(Ljava/lang/ClassLoader;)Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lio/grpc/ManagedChannelProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    :try_start_0
    const-string v1, "io.grpc.okhttp.OkHttpChannelProvider"

    const/4 v2, 0x1

    invoke-static {v1, v2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/ManagedChannelProvider;->create(Ljava/lang/Class;)Lio/grpc/ManagedChannelProvider;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 148
    :goto_0
    :try_start_1
    const-string v1, "io.grpc.netty.NettyChannelProvider"

    const/4 v2, 0x1

    invoke-static {v1, v2, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/ManagedChannelProvider;->create(Ljava/lang/Class;)Lio/grpc/ManagedChannelProvider;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    :goto_1
    return-object v0

    .line 149
    :catch_0
    move-exception v1

    goto :goto_1

    .line 144
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static getCandidatesViaServiceLoader(Ljava/lang/ClassLoader;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lio/grpc/ManagedChannelProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    const-class v0, Lio/grpc/ManagedChannelProvider;

    invoke-static {v0, p0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    return-object v0
.end method

.method private static getCorrectClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lio/grpc/ManagedChannelProvider;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const-class v0, Lio/grpc/ManagedChannelProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method protected static isAndroid()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 191
    :try_start_0
    const-string v1, "android.app.Application"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    .line 193
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static load(Ljava/lang/ClassLoader;)Lio/grpc/ManagedChannelProvider;
    .locals 4

    .prologue
    .line 103
    invoke-static {}, Lio/grpc/ManagedChannelProvider;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-static {p0}, Lio/grpc/ManagedChannelProvider;->getCandidatesViaHardCoded(Ljava/lang/ClassLoader;)Ljava/lang/Iterable;

    move-result-object v0

    .line 108
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/ManagedChannelProvider;

    .line 110
    invoke-virtual {v0}, Lio/grpc/ManagedChannelProvider;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 106
    :cond_1
    invoke-static {p0}, Lio/grpc/ManagedChannelProvider;->getCandidatesViaServiceLoader(Ljava/lang/ClassLoader;)Ljava/lang/Iterable;

    move-result-object v0

    goto :goto_0

    .line 115
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    const/4 v0, 0x0

    .line 118
    :goto_2
    return-object v0

    :cond_3
    new-instance v0, Lio/grpc/ManagedChannelProvider$1;

    invoke-direct {v0}, Lio/grpc/ManagedChannelProvider$1;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/ManagedChannelProvider;

    goto :goto_2
.end method


# virtual methods
.method protected abstract isAvailable()Z
.end method

.method protected abstract priority()I
.end method
