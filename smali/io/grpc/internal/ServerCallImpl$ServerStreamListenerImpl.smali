.class final Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;
.super Ljava/lang/Object;
.source "ServerCallImpl.java"

# interfaces
.implements Lio/grpc/internal/ServerStreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ServerCallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ServerStreamListenerImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/grpc/internal/ServerStreamListener;"
    }
.end annotation


# instance fields
.field private final call:Lio/grpc/internal/ServerCallImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ServerCallImpl",
            "<TReqT;*>;"
        }
    .end annotation
.end field

.field private final listener:Lio/grpc/ServerCall$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ServerCall$Listener",
            "<TReqT;>;"
        }
    .end annotation
.end field

.field private messageReceived:Z


# virtual methods
.method public messageRead(Ljava/io/InputStream;)V
    .locals 4

    .prologue
    .line 223
    const/4 v1, 0x0

    .line 225
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    # getter for: Lio/grpc/internal/ServerCallImpl;->cancelled:Z
    invoke-static {v0}, Lio/grpc/internal/ServerCallImpl;->access$000(Lio/grpc/internal/ServerCallImpl;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 252
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    if-eqz v1, :cond_0

    .line 246
    invoke-static {v1}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;)V

    .line 247
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 249
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 229
    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->messageReceived:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    # getter for: Lio/grpc/internal/ServerCallImpl;->method:Lio/grpc/MethodDescriptor;
    invoke-static {v0}, Lio/grpc/internal/ServerCallImpl;->access$100(Lio/grpc/internal/ServerCallImpl;)Lio/grpc/MethodDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor;->getType()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object v0

    sget-object v2, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    if-ne v0, v2, :cond_3

    .line 230
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    # getter for: Lio/grpc/internal/ServerCallImpl;->stream:Lio/grpc/internal/ServerStream;
    invoke-static {v0}, Lio/grpc/internal/ServerCallImpl;->access$200(Lio/grpc/internal/ServerCallImpl;)Lio/grpc/internal/ServerStream;

    move-result-object v0

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v3, "More than one request messages for unary call or server streaming call"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    new-instance v3, Lio/grpc/Metadata;

    invoke-direct {v3}, Lio/grpc/Metadata;-><init>()V

    invoke-interface {v0, v2, v3}, Lio/grpc/internal/ServerStream;->close(Lio/grpc/Status;Lio/grpc/Metadata;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 243
    :catch_1
    move-exception v0

    .line 244
    if-eqz v1, :cond_2

    .line 246
    invoke-static {v1}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;)V

    .line 247
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 249
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 235
    :cond_3
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->messageReceived:Z

    .line 237
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->listener:Lio/grpc/ServerCall$Listener;

    iget-object v2, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    # getter for: Lio/grpc/internal/ServerCallImpl;->method:Lio/grpc/MethodDescriptor;
    invoke-static {v2}, Lio/grpc/internal/ServerCallImpl;->access$100(Lio/grpc/internal/ServerCallImpl;)Lio/grpc/MethodDescriptor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/grpc/MethodDescriptor;->parseRequest(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/ServerCall$Listener;->onMessage(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 242
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 243
    :catch_2
    move-exception v0

    .line 244
    if-eqz v1, :cond_4

    .line 246
    invoke-static {v1}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;)V

    .line 247
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 249
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 238
    :catch_3
    move-exception v0

    .line 242
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 243
    :catch_4
    move-exception v1

    .line 244
    if-eqz v0, :cond_5

    .line 246
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;)V

    .line 247
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 249
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 241
    :catchall_0
    move-exception v0

    .line 242
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 249
    throw v0

    .line 243
    :catch_5
    move-exception v0

    .line 244
    if-eqz v1, :cond_6

    .line 246
    invoke-static {v1}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;)V

    .line 247
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 249
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onReady()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    # getter for: Lio/grpc/internal/ServerCallImpl;->cancelled:Z
    invoke-static {v0}, Lio/grpc/internal/ServerCallImpl;->access$000(Lio/grpc/internal/ServerCallImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->listener:Lio/grpc/ServerCall$Listener;

    invoke-virtual {v0}, Lio/grpc/ServerCall$Listener;->onReady()V

    goto :goto_0
.end method
