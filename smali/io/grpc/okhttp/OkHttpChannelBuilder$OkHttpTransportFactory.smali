.class final Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;
.super Ljava/lang/Object;
.source "OkHttpChannelBuilder.java"

# interfaces
.implements Lio/grpc/internal/ClientTransportFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OkHttpChannelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OkHttpTransportFactory"
.end annotation


# instance fields
.field private closed:Z

.field private final connectionSpec:Lcom/squareup/okhttp/ConnectionSpec;

.field private enableKeepAlive:Z

.field private final executor:Ljava/util/concurrent/Executor;

.field private keepAliveDelayNanos:J

.field private keepAliveTimeoutNanos:J

.field private final maxMessageSize:I

.field private final socketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final usingSharedExecutor:Z


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;Ljavax/net/ssl/SSLSocketFactory;Lcom/squareup/okhttp/ConnectionSpec;IZJJ)V
    .locals 2

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p2, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 312
    iput-object p3, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->connectionSpec:Lcom/squareup/okhttp/ConnectionSpec;

    .line 313
    iput p4, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->maxMessageSize:I

    .line 314
    iput-boolean p5, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->enableKeepAlive:Z

    .line 315
    iput-wide p6, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->keepAliveDelayNanos:J

    .line 316
    iput-wide p8, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->keepAliveTimeoutNanos:J

    .line 318
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->usingSharedExecutor:Z

    .line 319
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->usingSharedExecutor:Z

    if-eqz v0, :cond_1

    .line 321
    # getter for: Lio/grpc/okhttp/OkHttpChannelBuilder;->SHARED_EXECUTOR:Lio/grpc/internal/SharedResourceHolder$Resource;
    invoke-static {}, Lio/grpc/okhttp/OkHttpChannelBuilder;->access$100()Lio/grpc/internal/SharedResourceHolder$Resource;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/internal/SharedResourceHolder;->get(Lio/grpc/internal/SharedResourceHolder$Resource;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->executor:Ljava/util/concurrent/Executor;

    .line 325
    :goto_1
    return-void

    .line 318
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 323
    :cond_1
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->executor:Ljava/util/concurrent/Executor;

    goto :goto_1
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljavax/net/ssl/SSLSocketFactory;Lcom/squareup/okhttp/ConnectionSpec;IZJJLio/grpc/okhttp/OkHttpChannelBuilder$1;)V
    .locals 0

    .prologue
    .line 292
    invoke-direct/range {p0 .. p9}, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;-><init>(Ljava/util/concurrent/Executor;Ljavax/net/ssl/SSLSocketFactory;Lcom/squareup/okhttp/ConnectionSpec;IZJJ)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 344
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->closed:Z

    if-eqz v0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->closed:Z

    .line 349
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->usingSharedExecutor:Z

    if-eqz v0, :cond_0

    .line 350
    # getter for: Lio/grpc/okhttp/OkHttpChannelBuilder;->SHARED_EXECUTOR:Lio/grpc/internal/SharedResourceHolder$Resource;
    invoke-static {}, Lio/grpc/okhttp/OkHttpChannelBuilder;->access$100()Lio/grpc/internal/SharedResourceHolder$Resource;

    move-result-object v1

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->executor:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-static {v1, v0}, Lio/grpc/internal/SharedResourceHolder;->release(Lio/grpc/internal/SharedResourceHolder$Resource;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public newClientTransport(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;)Lio/grpc/internal/ConnectionClientTransport;
    .locals 8

    .prologue
    .line 330
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->closed:Z

    if-eqz v0, :cond_0

    .line 331
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The transport factory is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v1, p1

    .line 333
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 334
    new-instance v0, Lio/grpc/okhttp/OkHttpClientTransport;

    iget-object v4, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->executor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->connectionSpec:Lcom/squareup/okhttp/ConnectionSpec;

    .line 335
    invoke-static {v2}, Lio/grpc/okhttp/Utils;->convertSpec(Lcom/squareup/okhttp/ConnectionSpec;)Lio/grpc/okhttp/internal/ConnectionSpec;

    move-result-object v6

    iget v7, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->maxMessageSize:I

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lio/grpc/okhttp/OkHttpClientTransport;-><init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljavax/net/ssl/SSLSocketFactory;Lio/grpc/okhttp/internal/ConnectionSpec;I)V

    .line 336
    iget-boolean v1, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->enableKeepAlive:Z

    if-eqz v1, :cond_1

    .line 337
    const/4 v1, 0x1

    iget-wide v2, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->keepAliveDelayNanos:J

    iget-wide v4, p0, Lio/grpc/okhttp/OkHttpChannelBuilder$OkHttpTransportFactory;->keepAliveTimeoutNanos:J

    invoke-virtual/range {v0 .. v5}, Lio/grpc/okhttp/OkHttpClientTransport;->enableKeepAlive(ZJJ)V

    .line 339
    :cond_1
    return-object v0
.end method
