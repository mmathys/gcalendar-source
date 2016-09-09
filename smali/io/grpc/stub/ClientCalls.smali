.class public Lio/grpc/stub/ClientCalls;
.super Ljava/lang/Object;
.source "ClientCalls.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/stub/ClientCalls$ThreadlessExecutor;,
        Lio/grpc/stub/ClientCalls$GrpcFuture;,
        Lio/grpc/stub/ClientCalls$UnaryStreamToFuture;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lio/grpc/stub/ClientCalls;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/stub/ClientCalls;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$800()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lio/grpc/stub/ClientCalls;->log:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private static asyncUnaryRequestCall(Lio/grpc/ClientCall;Ljava/lang/Object;Lio/grpc/ClientCall$Listener;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/ClientCall",
            "<TReqT;TRespT;>;TReqT;",
            "Lio/grpc/ClientCall$Listener",
            "<TRespT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 252
    invoke-static {p0, p2, p3}, Lio/grpc/stub/ClientCalls;->startCall(Lio/grpc/ClientCall;Lio/grpc/ClientCall$Listener;Z)V

    .line 254
    :try_start_0
    invoke-virtual {p0, p1}, Lio/grpc/ClientCall;->sendMessage(Ljava/lang/Object;)V

    .line 255
    invoke-virtual {p0}, Lio/grpc/ClientCall;->halfClose()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lio/grpc/ClientCall;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/RuntimeException;

    :goto_0
    throw v0

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static blockingUnaryCall(Lio/grpc/Channel;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Channel;",
            "Lio/grpc/MethodDescriptor",
            "<TReqT;TRespT;>;",
            "Lio/grpc/CallOptions;",
            "TReqT;)TRespT;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 132
    new-instance v0, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;

    invoke-direct {v0, v4}, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;-><init>(Lio/grpc/stub/ClientCalls$1;)V

    .line 133
    invoke-virtual {p2, v0}, Lio/grpc/CallOptions;->withExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/CallOptions;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lio/grpc/Channel;->newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;

    move-result-object v1

    .line 135
    :try_start_0
    invoke-static {v1, p3}, Lio/grpc/stub/ClientCalls;->futureUnaryCall(Lio/grpc/ClientCall;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 136
    :goto_0
    invoke-interface {v2}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_0

    .line 138
    :try_start_1
    invoke-virtual {v0}, Lio/grpc/stub/ClientCalls$ThreadlessExecutor;->waitAndDrain()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 141
    sget-object v2, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    invoke-virtual {v2, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 145
    :catch_1
    move-exception v0

    .line 146
    invoke-virtual {v1, v4, v0}, Lio/grpc/ClientCall;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/RuntimeException;

    :goto_1
    throw v0

    .line 144
    :cond_0
    :try_start_3
    invoke-static {v2}, Lio/grpc/stub/ClientCalls;->getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    return-object v0

    .line 147
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public static futureUnaryCall(Lio/grpc/ClientCall;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/ClientCall",
            "<TReqT;TRespT;>;TReqT;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TRespT;>;"
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Lio/grpc/stub/ClientCalls$GrpcFuture;

    invoke-direct {v0, p0}, Lio/grpc/stub/ClientCalls$GrpcFuture;-><init>(Lio/grpc/ClientCall;)V

    .line 189
    new-instance v1, Lio/grpc/stub/ClientCalls$UnaryStreamToFuture;

    invoke-direct {v1, v0}, Lio/grpc/stub/ClientCalls$UnaryStreamToFuture;-><init>(Lio/grpc/stub/ClientCalls$GrpcFuture;)V

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lio/grpc/stub/ClientCalls;->asyncUnaryRequestCall(Lio/grpc/ClientCall;Ljava/lang/Object;Lio/grpc/ClientCall$Listener;Z)V

    .line 190
    return-object v0
.end method

.method private static getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 206
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 209
    sget-object v1, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    invoke-virtual {v1, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0

    .line 210
    :catch_1
    move-exception v0

    .line 211
    invoke-static {v0}, Lio/grpc/stub/ClientCalls;->toStatusRuntimeException(Ljava/lang/Throwable;)Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static startCall(Lio/grpc/ClientCall;Lio/grpc/ClientCall$Listener;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/ClientCall",
            "<TReqT;TRespT;>;",
            "Lio/grpc/ClientCall$Listener",
            "<TRespT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Lio/grpc/Metadata;

    invoke-direct {v0}, Lio/grpc/Metadata;-><init>()V

    invoke-virtual {p0, p1, v0}, Lio/grpc/ClientCall;->start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V

    .line 274
    if-eqz p2, :cond_0

    .line 275
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/grpc/ClientCall;->request(I)V

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lio/grpc/ClientCall;->request(I)V

    goto :goto_0
.end method

.method private static toStatusRuntimeException(Ljava/lang/Throwable;)Lio/grpc/StatusRuntimeException;
    .locals 3

    .prologue
    .line 222
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 223
    :goto_0
    if-eqz v0, :cond_2

    .line 225
    instance-of v1, v0, Lio/grpc/StatusException;

    if-eqz v1, :cond_0

    .line 226
    check-cast v0, Lio/grpc/StatusException;

    .line 227
    new-instance v1, Lio/grpc/StatusRuntimeException;

    invoke-virtual {v0}, Lio/grpc/StatusException;->getStatus()Lio/grpc/Status;

    move-result-object v2

    invoke-virtual {v0}, Lio/grpc/StatusException;->getTrailers()Lio/grpc/Metadata;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lio/grpc/StatusRuntimeException;-><init>(Lio/grpc/Status;Lio/grpc/Metadata;)V

    move-object v0, v1

    .line 234
    :goto_1
    return-object v0

    .line 228
    :cond_0
    instance-of v1, v0, Lio/grpc/StatusRuntimeException;

    if-eqz v1, :cond_1

    .line 229
    check-cast v0, Lio/grpc/StatusRuntimeException;

    .line 230
    new-instance v1, Lio/grpc/StatusRuntimeException;

    invoke-virtual {v0}, Lio/grpc/StatusRuntimeException;->getStatus()Lio/grpc/Status;

    move-result-object v2

    invoke-virtual {v0}, Lio/grpc/StatusRuntimeException;->getTrailers()Lio/grpc/Metadata;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lio/grpc/StatusRuntimeException;-><init>(Lio/grpc/Status;Lio/grpc/Metadata;)V

    move-object v0, v1

    goto :goto_1

    .line 232
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 234
    :cond_2
    sget-object v0, Lio/grpc/Status;->UNKNOWN:Lio/grpc/Status;

    invoke-virtual {v0, p0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    goto :goto_1
.end method
