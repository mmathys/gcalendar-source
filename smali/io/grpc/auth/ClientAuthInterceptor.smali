.class public final Lio/grpc/auth/ClientAuthInterceptor;
.super Ljava/lang/Object;
.source "ClientAuthInterceptor.java"

# interfaces
.implements Lio/grpc/ClientInterceptor;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private cached:Lio/grpc/Metadata;

.field private final credentials:Lcom/google/auth/Credentials;

.field private lastMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/auth/Credentials;Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/auth/Credentials;

    iput-object v0, p0, Lio/grpc/auth/ClientAuthInterceptor;->credentials:Lcom/google/auth/Credentials;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lio/grpc/auth/ClientAuthInterceptor;Lio/grpc/Channel;Lio/grpc/MethodDescriptor;)Ljava/net/URI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/StatusException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lio/grpc/auth/ClientAuthInterceptor;->serviceUri(Lio/grpc/Channel;Lio/grpc/MethodDescriptor;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lio/grpc/auth/ClientAuthInterceptor;Ljava/net/URI;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/StatusException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lio/grpc/auth/ClientAuthInterceptor;->getRequestMetadata(Ljava/net/URI;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lio/grpc/auth/ClientAuthInterceptor;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lio/grpc/auth/ClientAuthInterceptor;->lastMetadata:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$202(Lio/grpc/auth/ClientAuthInterceptor;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lio/grpc/auth/ClientAuthInterceptor;->lastMetadata:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$300(Lio/grpc/auth/ClientAuthInterceptor;)Lio/grpc/Metadata;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lio/grpc/auth/ClientAuthInterceptor;->cached:Lio/grpc/Metadata;

    return-object v0
.end method

.method static synthetic access$302(Lio/grpc/auth/ClientAuthInterceptor;Lio/grpc/Metadata;)Lio/grpc/Metadata;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lio/grpc/auth/ClientAuthInterceptor;->cached:Lio/grpc/Metadata;

    return-object p1
.end method

.method static synthetic access$400(Ljava/util/Map;)Lio/grpc/Metadata;
    .locals 1

    .prologue
    .line 64
    invoke-static {p0}, Lio/grpc/auth/ClientAuthInterceptor;->toHeaders(Ljava/util/Map;)Lio/grpc/Metadata;

    move-result-object v0

    return-object v0
.end method

.method private getRequestMetadata(Ljava/net/URI;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/StatusException;
        }
    .end annotation

    .prologue
    .line 150
    :try_start_0
    iget-object v0, p0, Lio/grpc/auth/ClientAuthInterceptor;->credentials:Lcom/google/auth/Credentials;

    invoke-virtual {v0, p1}, Lcom/google/auth/Credentials;->getRequestMetadata(Ljava/net/URI;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    sget-object v1, Lio/grpc/Status;->UNAUTHENTICATED:Lio/grpc/Status;

    invoke-virtual {v1, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Status;->asException()Lio/grpc/StatusException;

    move-result-object v0

    throw v0
.end method

.method private removePort(Ljava/net/URI;)Ljava/net/URI;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/StatusException;
        }
    .end annotation

    .prologue
    .line 139
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    .line 140
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    return-object v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    sget-object v1, Lio/grpc/Status;->UNAUTHENTICATED:Lio/grpc/Status;

    const-string v2, "Unable to construct service URI after removing port"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 144
    invoke-virtual {v1, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Status;->asException()Lio/grpc/StatusException;

    move-result-object v0

    throw v0
.end method

.method private serviceUri(Lio/grpc/Channel;Lio/grpc/MethodDescriptor;)Ljava/net/URI;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Channel;",
            "Lio/grpc/MethodDescriptor",
            "<**>;)",
            "Ljava/net/URI;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/StatusException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p1}, Lio/grpc/Channel;->authority()Ljava/lang/String;

    move-result-object v2

    .line 116
    if-nez v2, :cond_0

    .line 117
    sget-object v0, Lio/grpc/Status;->UNAUTHENTICATED:Lio/grpc/Status;

    const-string v1, "Channel has no authority"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Status;->asException()Lio/grpc/StatusException;

    move-result-object v0

    throw v0

    .line 122
    :cond_0
    const-string v0, "/"

    invoke-virtual {p2}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/MethodDescriptor;->extractFullServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    :goto_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    const-string v1, "https"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v1

    const/16 v2, 0x1bb

    if-ne v1, v2, :cond_1

    .line 132
    invoke-direct {p0, v0}, Lio/grpc/auth/ClientAuthInterceptor;->removePort(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    .line 134
    :cond_1
    return-object v0

    .line 122
    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    sget-object v1, Lio/grpc/Status;->UNAUTHENTICATED:Lio/grpc/Status;

    const-string v2, "Unable to construct service URI for auth"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 128
    invoke-virtual {v1, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Status;->asException()Lio/grpc/StatusException;

    move-result-object v0

    throw v0
.end method

.method private static final toHeaders(Ljava/util/Map;)Lio/grpc/Metadata;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lio/grpc/Metadata;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v1, Lio/grpc/Metadata;

    invoke-direct {v1}, Lio/grpc/Metadata;-><init>()V

    .line 158
    if-eqz p0, :cond_1

    .line 159
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    sget-object v3, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    invoke-static {v0, v3}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v3

    .line 161
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    invoke-virtual {v1, v3, v0}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 166
    :cond_1
    return-object v1
.end method


# virtual methods
.method public interceptCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Channel;)Lio/grpc/ClientCall;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor",
            "<TReqT;TRespT;>;",
            "Lio/grpc/CallOptions;",
            "Lio/grpc/Channel;",
            ")",
            "Lio/grpc/ClientCall",
            "<TReqT;TRespT;>;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lio/grpc/auth/ClientAuthInterceptor$1;

    invoke-virtual {p3, p1, p2}, Lio/grpc/Channel;->newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;

    move-result-object v1

    invoke-direct {v0, p0, v1, p3, p1}, Lio/grpc/auth/ClientAuthInterceptor$1;-><init>(Lio/grpc/auth/ClientAuthInterceptor;Lio/grpc/ClientCall;Lio/grpc/Channel;Lio/grpc/MethodDescriptor;)V

    return-object v0
.end method
