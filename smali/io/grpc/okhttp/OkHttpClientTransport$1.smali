.class Lio/grpc/okhttp/OkHttpClientTransport$1;
.super Ljava/lang/Object;
.source "OkHttpClientTransport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/okhttp/OkHttpClientTransport;->start(Lio/grpc/internal/ManagedClientTransport$Listener;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/okhttp/OkHttpClientTransport;


# direct methods
.method constructor <init>(Lio/grpc/okhttp/OkHttpClientTransport;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 364
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # invokes: Lio/grpc/okhttp/OkHttpClientTransport;->isForTest()Z
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$000(Lio/grpc/okhttp/OkHttpClientTransport;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    iget-object v0, v0, Lio/grpc/okhttp/OkHttpClientTransport;->connectingCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    iget-object v0, v0, Lio/grpc/okhttp/OkHttpClientTransport;->connectingCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 368
    :cond_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    new-instance v1, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->testFrameReader:Lio/grpc/okhttp/internal/framed/FrameReader;
    invoke-static {v3}, Lio/grpc/okhttp/OkHttpClientTransport;->access$200(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/internal/framed/FrameReader;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;-><init>(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/internal/framed/FrameReader;)V

    # setter for: Lio/grpc/okhttp/OkHttpClientTransport;->clientFrameHandler:Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;
    invoke-static {v0, v1}, Lio/grpc/okhttp/OkHttpClientTransport;->access$102(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;)Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

    .line 369
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->executor:Ljava/util/concurrent/Executor;
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$300(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->clientFrameHandler:Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;
    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientTransport;->access$100(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 370
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$400(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 371
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    const v2, 0x7fffffff

    # setter for: Lio/grpc/okhttp/OkHttpClientTransport;->maxConcurrentStreams:I
    invoke-static {v0, v2}, Lio/grpc/okhttp/OkHttpClientTransport;->access$502(Lio/grpc/okhttp/OkHttpClientTransport;I)I

    .line 372
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # invokes: Lio/grpc/okhttp/OkHttpClientTransport;->startPendingStreams()Z
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$600(Lio/grpc/okhttp/OkHttpClientTransport;)Z

    .line 373
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/AsyncFrameWriter;
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$900(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/AsyncFrameWriter;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->testFrameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;
    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientTransport;->access$700(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/internal/framed/FrameWriter;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->socket:Ljava/net/Socket;
    invoke-static {v2}, Lio/grpc/okhttp/OkHttpClientTransport;->access$800(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/grpc/okhttp/AsyncFrameWriter;->becomeConnected(Lio/grpc/okhttp/internal/framed/FrameWriter;Ljava/net/Socket;)V

    .line 375
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    iget-object v0, v0, Lio/grpc/okhttp/OkHttpClientTransport;->connectedFuture:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 434
    :goto_0
    return-void

    .line 373
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 380
    :cond_1
    new-instance v0, Lio/grpc/okhttp/OkHttpClientTransport$1$1;

    invoke-direct {v0, p0}, Lio/grpc/okhttp/OkHttpClientTransport$1$1;-><init>(Lio/grpc/okhttp/OkHttpClientTransport$1;)V

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    .line 394
    new-instance v2, Lio/grpc/okhttp/internal/framed/Http2;

    invoke-direct {v2}, Lio/grpc/okhttp/internal/framed/Http2;-><init>()V

    .line 398
    :try_start_2
    new-instance v0, Ljava/net/Socket;

    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->address:Ljava/net/InetSocketAddress;
    invoke-static {v3}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1000(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    iget-object v4, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->address:Ljava/net/InetSocketAddress;
    invoke-static {v4}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1000(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    invoke-direct {v0, v3, v4}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    .line 399
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    invoke-static {v3}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1100(Lio/grpc/okhttp/OkHttpClientTransport;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 400
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    .line 401
    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    invoke-static {v3}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1100(Lio/grpc/okhttp/OkHttpClientTransport;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    iget-object v4, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v4}, Lio/grpc/okhttp/OkHttpClientTransport;->getOverridenHost()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v5}, Lio/grpc/okhttp/OkHttpClientTransport;->getOverridenPort()I

    move-result v5

    iget-object v6, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;
    invoke-static {v6}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1200(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/internal/ConnectionSpec;

    move-result-object v6

    .line 400
    invoke-static {v3, v0, v4, v5, v6}, Lio/grpc/okhttp/OkHttpTlsUpgrader;->upgrade(Ljavax/net/ssl/SSLSocketFactory;Ljava/net/Socket;Ljava/lang/String;ILio/grpc/okhttp/internal/ConnectionSpec;)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    .line 403
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 404
    invoke-static {v0}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object v3

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    .line 405
    invoke-static {v0}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object v3

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 410
    iget-object v4, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    new-instance v5, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

    iget-object v6, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-interface {v2, v1, v7}, Lio/grpc/okhttp/internal/framed/Variant;->newReader(Lokio/BufferedSource;Z)Lio/grpc/okhttp/internal/framed/FrameReader;

    move-result-object v1

    invoke-direct {v5, v6, v1}, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;-><init>(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/internal/framed/FrameReader;)V

    # setter for: Lio/grpc/okhttp/OkHttpClientTransport;->clientFrameHandler:Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;
    invoke-static {v4, v5}, Lio/grpc/okhttp/OkHttpClientTransport;->access$102(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;)Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

    .line 411
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->executor:Ljava/util/concurrent/Executor;
    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientTransport;->access$300(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v4, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->clientFrameHandler:Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;
    invoke-static {v4}, Lio/grpc/okhttp/OkHttpClientTransport;->access$100(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 415
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;
    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientTransport;->access$400(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 416
    :try_start_3
    iget-object v4, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # setter for: Lio/grpc/okhttp/OkHttpClientTransport;->socket:Ljava/net/Socket;
    invoke-static {v4, v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$802(Lio/grpc/okhttp/OkHttpClientTransport;Ljava/net/Socket;)Ljava/net/Socket;

    .line 417
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    const v4, 0x7fffffff

    # setter for: Lio/grpc/okhttp/OkHttpClientTransport;->maxConcurrentStreams:I
    invoke-static {v0, v4}, Lio/grpc/okhttp/OkHttpClientTransport;->access$502(Lio/grpc/okhttp/OkHttpClientTransport;I)I

    .line 418
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # invokes: Lio/grpc/okhttp/OkHttpClientTransport;->startPendingStreams()Z
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$600(Lio/grpc/okhttp/OkHttpClientTransport;)Z

    .line 419
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 421
    invoke-interface {v2, v3, v7}, Lio/grpc/okhttp/internal/framed/Variant;->newWriter(Lokio/BufferedSink;Z)Lio/grpc/okhttp/internal/framed/FrameWriter;

    move-result-object v0

    .line 422
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/AsyncFrameWriter;
    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientTransport;->access$900(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/AsyncFrameWriter;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->socket:Ljava/net/Socket;
    invoke-static {v2}, Lio/grpc/okhttp/OkHttpClientTransport;->access$800(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lio/grpc/okhttp/AsyncFrameWriter;->becomeConnected(Lio/grpc/okhttp/internal/framed/FrameWriter;Ljava/net/Socket;)V

    .line 427
    :try_start_4
    invoke-interface {v0}, Lio/grpc/okhttp/internal/framed/FrameWriter;->connectionPreface()V

    .line 428
    new-instance v1, Lio/grpc/okhttp/internal/framed/Settings;

    invoke-direct {v1}, Lio/grpc/okhttp/internal/framed/Settings;-><init>()V

    .line 429
    invoke-interface {v0, v1}, Lio/grpc/okhttp/internal/framed/FrameWriter;->settings(Lio/grpc/okhttp/internal/framed/Settings;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 430
    :catch_0
    move-exception v0

    .line 431
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v1, v0}, Lio/grpc/okhttp/OkHttpClientTransport;->onException(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 406
    :catch_1
    move-exception v0

    .line 407
    :try_start_5
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v3, v0}, Lio/grpc/okhttp/OkHttpClientTransport;->onException(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 410
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    new-instance v3, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

    iget-object v4, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-interface {v2, v1, v7}, Lio/grpc/okhttp/internal/framed/Variant;->newReader(Lokio/BufferedSource;Z)Lio/grpc/okhttp/internal/framed/FrameReader;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;-><init>(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/internal/framed/FrameReader;)V

    # setter for: Lio/grpc/okhttp/OkHttpClientTransport;->clientFrameHandler:Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;
    invoke-static {v0, v3}, Lio/grpc/okhttp/OkHttpClientTransport;->access$102(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;)Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

    .line 411
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->executor:Ljava/util/concurrent/Executor;
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$300(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->clientFrameHandler:Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;
    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientTransport;->access$100(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 410
    :catchall_1
    move-exception v0

    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    new-instance v4, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

    iget-object v5, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-interface {v2, v1, v7}, Lio/grpc/okhttp/internal/framed/Variant;->newReader(Lokio/BufferedSource;Z)Lio/grpc/okhttp/internal/framed/FrameReader;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;-><init>(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/internal/framed/FrameReader;)V

    # setter for: Lio/grpc/okhttp/OkHttpClientTransport;->clientFrameHandler:Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;
    invoke-static {v3, v4}, Lio/grpc/okhttp/OkHttpClientTransport;->access$102(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;)Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

    .line 411
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->executor:Ljava/util/concurrent/Executor;
    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientTransport;->access$300(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$1;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    # getter for: Lio/grpc/okhttp/OkHttpClientTransport;->clientFrameHandler:Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;
    invoke-static {v2}, Lio/grpc/okhttp/OkHttpClientTransport;->access$100(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    throw v0

    .line 419
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method
