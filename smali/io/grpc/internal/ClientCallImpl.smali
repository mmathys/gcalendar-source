.class final Lio/grpc/internal/ClientCallImpl;
.super Lio/grpc/ClientCall;
.source "ClientCallImpl.java"

# interfaces
.implements Lio/grpc/Context$CancellationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;,
        Lio/grpc/internal/ClientCallImpl$DeadlineTimer;,
        Lio/grpc/internal/ClientCallImpl$ClientTransportProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/ClientCall",
        "<TReqT;TRespT;>;",
        "Lio/grpc/Context$CancellationListener;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final callExecutor:Ljava/util/concurrent/Executor;

.field private final callOptions:Lio/grpc/CallOptions;

.field private cancelCalled:Z

.field private volatile cancelListenersShouldBeRemoved:Z

.field private final clientTransportProvider:Lio/grpc/internal/ClientCallImpl$ClientTransportProvider;

.field private compressorRegistry:Lio/grpc/CompressorRegistry;

.field private final context:Lio/grpc/Context;

.field private deadlineCancellationExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private volatile deadlineCancellationFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private decompressorRegistry:Lio/grpc/DecompressorRegistry;

.field private halfCloseCalled:Z

.field private final method:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor",
            "<TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field private stream:Lio/grpc/internal/ClientStream;

.field private final unaryRequest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lio/grpc/internal/ClientCallImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ClientCallImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lio/grpc/MethodDescriptor;Ljava/util/concurrent/Executor;Lio/grpc/CallOptions;Lio/grpc/internal/ClientCallImpl$ClientTransportProvider;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor",
            "<TReqT;TRespT;>;",
            "Ljava/util/concurrent/Executor;",
            "Lio/grpc/CallOptions;",
            "Lio/grpc/internal/ClientCallImpl$ClientTransportProvider;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Lio/grpc/ClientCall;-><init>()V

    .line 93
    invoke-static {}, Lio/grpc/DecompressorRegistry;->getDefaultInstance()Lio/grpc/DecompressorRegistry;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ClientCallImpl;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 94
    invoke-static {}, Lio/grpc/CompressorRegistry;->getDefaultInstance()Lio/grpc/CompressorRegistry;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ClientCallImpl;->compressorRegistry:Lio/grpc/CompressorRegistry;

    .line 99
    iput-object p1, p0, Lio/grpc/internal/ClientCallImpl;->method:Lio/grpc/MethodDescriptor;

    .line 103
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 104
    new-instance v0, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;

    invoke-direct {v0}, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;-><init>()V

    .line 105
    :goto_0
    iput-object v0, p0, Lio/grpc/internal/ClientCallImpl;->callExecutor:Ljava/util/concurrent/Executor;

    .line 107
    invoke-static {}, Lio/grpc/Context;->current()Lio/grpc/Context;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;

    .line 108
    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->getType()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object v0

    sget-object v1, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    if-eq v0, v1, :cond_0

    .line 109
    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->getType()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object v0

    sget-object v1, Lio/grpc/MethodDescriptor$MethodType;->SERVER_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lio/grpc/internal/ClientCallImpl;->unaryRequest:Z

    .line 110
    iput-object p3, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    .line 111
    iput-object p4, p0, Lio/grpc/internal/ClientCallImpl;->clientTransportProvider:Lio/grpc/internal/ClientCallImpl$ClientTransportProvider;

    .line 112
    iput-object p5, p0, Lio/grpc/internal/ClientCallImpl;->deadlineCancellationExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 113
    return-void

    .line 105
    :cond_1
    new-instance v0, Lio/grpc/internal/SerializingExecutor;

    invoke-direct {v0, p2}, Lio/grpc/internal/SerializingExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 109
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic access$000(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/Context;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;

    return-object v0
.end method

.method static synthetic access$100(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/internal/ClientStream;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    return-object v0
.end method

.method static synthetic access$1000(Lio/grpc/internal/ClientCallImpl;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lio/grpc/internal/ClientCallImpl;->removeContextListenerAndCancelDeadlineFuture()V

    return-void
.end method

.method static synthetic access$1100(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/Deadline;
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lio/grpc/internal/ClientCallImpl;->effectiveDeadline()Lio/grpc/Deadline;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/DecompressorRegistry;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    return-object v0
.end method

.method static synthetic access$700(Lio/grpc/internal/ClientCallImpl;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->callExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$800(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/MethodDescriptor;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->method:Lio/grpc/MethodDescriptor;

    return-object v0
.end method

.method static synthetic access$902(Lio/grpc/internal/ClientCallImpl;Z)Z
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lio/grpc/internal/ClientCallImpl;->cancelListenersShouldBeRemoved:Z

    return p1
.end method

.method private effectiveDeadline()Lio/grpc/Deadline;
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v0}, Lio/grpc/CallOptions;->getDeadline()Lio/grpc/Deadline;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;

    invoke-virtual {v1}, Lio/grpc/Context;->getDeadline()Lio/grpc/Deadline;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/internal/ClientCallImpl;->min(Lio/grpc/Deadline;Lio/grpc/Deadline;)Lio/grpc/Deadline;

    move-result-object v0

    return-object v0
.end method

.method private static logIfContextNarrowedTimeout(JLio/grpc/Deadline;Lio/grpc/Deadline;Lio/grpc/Deadline;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 270
    sget-object v0, Lio/grpc/internal/ClientCallImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eq p3, p2, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    const-string v1, "Call timeout set to \'%d\' ns, due to context deadline."

    new-array v2, v4, [Ljava/lang/Object;

    .line 276
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    .line 275
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    if-nez p4, :cond_2

    .line 278
    const-string v1, " Explicit call timeout was not set."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :goto_1
    sget-object v1, Lio/grpc/internal/ClientCallImpl;->log:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :cond_2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p4, v1}, Lio/grpc/Deadline;->timeRemaining(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    .line 281
    const-string v1, " Explicit call timeout was \'%d\' ns."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static min(Lio/grpc/Deadline;Lio/grpc/Deadline;)Lio/grpc/Deadline;
    .locals 0

    .prologue
    .line 318
    if-nez p0, :cond_0

    .line 324
    :goto_0
    return-object p1

    .line 321
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    .line 322
    goto :goto_0

    .line 324
    :cond_1
    invoke-virtual {p0, p1}, Lio/grpc/Deadline;->minimum(Lio/grpc/Deadline;)Lio/grpc/Deadline;

    move-result-object p1

    goto :goto_0
.end method

.method static prepareHeaders(Lio/grpc/Metadata;Lio/grpc/DecompressorRegistry;Lio/grpc/Compressor;)V
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lio/grpc/internal/GrpcUtil;->MESSAGE_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p0, v0}, Lio/grpc/Metadata;->removeAll(Lio/grpc/Metadata$Key;)Ljava/lang/Iterable;

    .line 144
    sget-object v0, Lio/grpc/Codec$Identity;->NONE:Lio/grpc/Codec;

    if-eq p2, v0, :cond_0

    .line 145
    sget-object v0, Lio/grpc/internal/GrpcUtil;->MESSAGE_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-interface {p2}, Lio/grpc/Compressor;->getMessageEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 148
    :cond_0
    sget-object v0, Lio/grpc/internal/GrpcUtil;->MESSAGE_ACCEPT_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p0, v0}, Lio/grpc/Metadata;->removeAll(Lio/grpc/Metadata$Key;)Ljava/lang/Iterable;

    .line 149
    invoke-virtual {p1}, Lio/grpc/DecompressorRegistry;->getRawAdvertisedMessageEncodings()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    sget-object v1, Lio/grpc/internal/GrpcUtil;->MESSAGE_ACCEPT_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p0, v1, v0}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 153
    :cond_1
    return-void
.end method

.method private removeContextListenerAndCancelDeadlineFuture()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;

    invoke-virtual {v0, p0}, Lio/grpc/Context;->removeListener(Lio/grpc/Context$CancellationListener;)V

    .line 289
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->deadlineCancellationFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 290
    if-eqz v0, :cond_0

    .line 291
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 293
    :cond_0
    return-void
.end method

.method private startDeadlineTimer(Lio/grpc/Deadline;)Ljava/util/concurrent/ScheduledFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Deadline;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->deadlineCancellationExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lio/grpc/internal/LogExceptionRunnable;

    new-instance v2, Lio/grpc/internal/ClientCallImpl$DeadlineTimer;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lio/grpc/internal/ClientCallImpl$DeadlineTimer;-><init>(Lio/grpc/internal/ClientCallImpl;Lio/grpc/internal/ClientCallImpl$1;)V

    invoke-direct {v1, v2}, Lio/grpc/internal/LogExceptionRunnable;-><init>(Ljava/lang/Runnable;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 306
    invoke-virtual {p1, v2}, Lio/grpc/Deadline;->timeRemaining(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 305
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method private static updateTimeoutHeaders(Lio/grpc/Deadline;Lio/grpc/Deadline;Lio/grpc/Deadline;Lio/grpc/Metadata;)V
    .locals 4

    .prologue
    .line 254
    sget-object v0, Lio/grpc/internal/GrpcUtil;->TIMEOUT_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p3, v0}, Lio/grpc/Metadata;->removeAll(Lio/grpc/Metadata$Key;)Ljava/lang/Iterable;

    .line 256
    if-nez p0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 260
    :cond_0
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2}, Lio/grpc/Deadline;->timeRemaining(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 261
    sget-object v2, Lio/grpc/internal/GrpcUtil;->TIMEOUT_KEY:Lio/grpc/Metadata$Key;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 263
    invoke-static {v0, v1, p0, p2, p1}, Lio/grpc/internal/ClientCallImpl;->logIfContextNarrowedTimeout(JLio/grpc/Deadline;Lio/grpc/Deadline;Lio/grpc/Deadline;)V

    goto :goto_0
.end method


# virtual methods
.method public cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 336
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 337
    new-instance p2, Ljava/util/concurrent/CancellationException;

    const-string v0, "Cancelled without a message or cause"

    invoke-direct {p2, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 338
    sget-object v0, Lio/grpc/internal/ClientCallImpl;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Cancelling without a message or cause is suboptimal"

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 340
    :cond_0
    iget-boolean v0, p0, Lio/grpc/internal/ClientCallImpl;->cancelCalled:Z

    if-eqz v0, :cond_1

    .line 360
    :goto_0
    return-void

    .line 343
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/ClientCallImpl;->cancelCalled:Z

    .line 347
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    if-eqz v0, :cond_4

    .line 348
    sget-object v0, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    .line 349
    if-eqz p1, :cond_2

    .line 350
    invoke-virtual {v0, p1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 352
    :cond_2
    if-eqz p2, :cond_3

    .line 353
    invoke-virtual {v0, p2}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    .line 355
    :cond_3
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v1, v0}, Lio/grpc/internal/ClientStream;->cancel(Lio/grpc/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    :cond_4
    invoke-direct {p0}, Lio/grpc/internal/ClientCallImpl;->removeContextListenerAndCancelDeadlineFuture()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lio/grpc/internal/ClientCallImpl;->removeContextListenerAndCancelDeadlineFuture()V

    throw v0
.end method

.method public cancelled(Lio/grpc/Context;)V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    invoke-static {p1}, Lio/grpc/Contexts;->statusFromCancelled(Lio/grpc/Context;)Lio/grpc/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/internal/ClientStream;->cancel(Lio/grpc/Status;)V

    .line 118
    return-void
.end method

.method public halfClose()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 364
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Not started"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 365
    iget-boolean v0, p0, Lio/grpc/internal/ClientCallImpl;->cancelCalled:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "call was cancelled"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 366
    iget-boolean v0, p0, Lio/grpc/internal/ClientCallImpl;->halfCloseCalled:Z

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    const-string v0, "call already half-closed"

    invoke-static {v2, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 367
    iput-boolean v1, p0, Lio/grpc/internal/ClientCallImpl;->halfCloseCalled:Z

    .line 368
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0}, Lio/grpc/internal/ClientStream;->halfClose()V

    .line 369
    return-void

    :cond_1
    move v0, v2

    .line 364
    goto :goto_0

    :cond_2
    move v0, v2

    .line 365
    goto :goto_1
.end method

.method public request(I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 329
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Not started"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 330
    if-ltz p1, :cond_1

    :goto_1
    const-string v0, "Number requested must be non-negative"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 331
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->request(I)V

    .line 332
    return-void

    :cond_0
    move v0, v2

    .line 329
    goto :goto_0

    :cond_1
    move v1, v2

    .line 330
    goto :goto_1
.end method

.method public sendMessage(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 373
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Not started"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 374
    iget-boolean v0, p0, Lio/grpc/internal/ClientCallImpl;->cancelCalled:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "call was cancelled"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 375
    iget-boolean v0, p0, Lio/grpc/internal/ClientCallImpl;->halfCloseCalled:Z

    if-nez v0, :cond_3

    :goto_2
    const-string v0, "call was half-closed"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 378
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->method:Lio/grpc/MethodDescriptor;

    invoke-virtual {v0, p1}, Lio/grpc/MethodDescriptor;->streamRequest(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    .line 379
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v1, v0}, Lio/grpc/internal/ClientStream;->writeMessage(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    iget-boolean v0, p0, Lio/grpc/internal/ClientCallImpl;->unaryRequest:Z

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0}, Lio/grpc/internal/ClientStream;->flush()V

    .line 390
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v0, v2

    .line 373
    goto :goto_0

    :cond_2
    move v0, v2

    .line 374
    goto :goto_1

    :cond_3
    move v1, v2

    .line 375
    goto :goto_2

    .line 380
    :catch_0
    move-exception v0

    .line 381
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    sget-object v2, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    invoke-virtual {v2, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    const-string v2, "Failed to stream message"

    invoke-virtual {v0, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-interface {v1, v0}, Lio/grpc/internal/ClientStream;->cancel(Lio/grpc/Status;)V

    goto :goto_3
.end method

.method setCompressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/internal/ClientCallImpl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/CompressorRegistry;",
            ")",
            "Lio/grpc/internal/ClientCallImpl",
            "<TReqT;TRespT;>;"
        }
    .end annotation

    .prologue
    .line 136
    iput-object p1, p0, Lio/grpc/internal/ClientCallImpl;->compressorRegistry:Lio/grpc/CompressorRegistry;

    .line 137
    return-object p0
.end method

.method setDecompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/internal/ClientCallImpl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/DecompressorRegistry;",
            ")",
            "Lio/grpc/internal/ClientCallImpl",
            "<TReqT;TRespT;>;"
        }
    .end annotation

    .prologue
    .line 131
    iput-object p1, p0, Lio/grpc/internal/ClientCallImpl;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 132
    return-object p0
.end method

.method public start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener",
            "<TRespT;>;",
            "Lio/grpc/Metadata;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Already started"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 158
    const-string v0, "observer"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v0, "headers"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;

    invoke-virtual {v0}, Lio/grpc/Context;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    sget-object v0, Lio/grpc/internal/NoopClientStream;->INSTANCE:Lio/grpc/internal/NoopClientStream;

    iput-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    .line 176
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->callExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/grpc/internal/ClientCallImpl$1ClosedByContext;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/ClientCallImpl$1ClosedByContext;-><init>(Lio/grpc/internal/ClientCallImpl;Lio/grpc/ClientCall$Listener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 247
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 157
    goto :goto_0

    .line 179
    :cond_2
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v0}, Lio/grpc/CallOptions;->getCompressor()Ljava/lang/String;

    move-result-object v3

    .line 181
    if-eqz v3, :cond_3

    .line 182
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->compressorRegistry:Lio/grpc/CompressorRegistry;

    invoke-virtual {v0, v3}, Lio/grpc/CompressorRegistry;->lookupCompressor(Ljava/lang/String;)Lio/grpc/Compressor;

    move-result-object v0

    .line 183
    if-nez v0, :cond_4

    .line 184
    sget-object v0, Lio/grpc/internal/NoopClientStream;->INSTANCE:Lio/grpc/internal/NoopClientStream;

    iput-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    .line 199
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->callExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/grpc/internal/ClientCallImpl$1ClosedByNotFoundCompressor;

    invoke-direct {v1, p0, p1, v3}, Lio/grpc/internal/ClientCallImpl$1ClosedByNotFoundCompressor;-><init>(Lio/grpc/internal/ClientCallImpl;Lio/grpc/ClientCall$Listener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 203
    :cond_3
    sget-object v0, Lio/grpc/Codec$Identity;->NONE:Lio/grpc/Codec;

    .line 206
    :cond_4
    iget-object v3, p0, Lio/grpc/internal/ClientCallImpl;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    invoke-static {p2, v3, v0}, Lio/grpc/internal/ClientCallImpl;->prepareHeaders(Lio/grpc/Metadata;Lio/grpc/DecompressorRegistry;Lio/grpc/Compressor;)V

    .line 208
    invoke-direct {p0}, Lio/grpc/internal/ClientCallImpl;->effectiveDeadline()Lio/grpc/Deadline;

    move-result-object v3

    .line 209
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lio/grpc/Deadline;->isExpired()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 210
    :goto_2
    if-nez v1, :cond_8

    .line 211
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v1}, Lio/grpc/CallOptions;->getDeadline()Lio/grpc/Deadline;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;

    .line 212
    invoke-virtual {v2}, Lio/grpc/Context;->getDeadline()Lio/grpc/Deadline;

    move-result-object v2

    .line 211
    invoke-static {v3, v1, v2, p2}, Lio/grpc/internal/ClientCallImpl;->updateTimeoutHeaders(Lio/grpc/Deadline;Lio/grpc/Deadline;Lio/grpc/Deadline;Lio/grpc/Metadata;)V

    .line 213
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->clientTransportProvider:Lio/grpc/internal/ClientCallImpl$ClientTransportProvider;

    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-interface {v1, v2}, Lio/grpc/internal/ClientCallImpl$ClientTransportProvider;->get(Lio/grpc/CallOptions;)Lio/grpc/internal/ClientTransport;

    move-result-object v1

    .line 214
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;

    invoke-virtual {v2}, Lio/grpc/Context;->attach()Lio/grpc/Context;

    move-result-object v2

    .line 216
    :try_start_0
    iget-object v4, p0, Lio/grpc/internal/ClientCallImpl;->method:Lio/grpc/MethodDescriptor;

    iget-object v5, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-interface {v1, v4, p2, v5}, Lio/grpc/internal/ClientTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/internal/ClientStream;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;

    invoke-virtual {v1, v2}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    .line 224
    :goto_3
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v1}, Lio/grpc/CallOptions;->getAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 225
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v2}, Lio/grpc/CallOptions;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/grpc/internal/ClientStream;->setAuthority(Ljava/lang/String;)V

    .line 227
    :cond_5
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v1, v0}, Lio/grpc/internal/ClientStream;->setCompressor(Lio/grpc/Compressor;)V

    .line 228
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    new-instance v1, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;-><init>(Lio/grpc/internal/ClientCallImpl;Lio/grpc/ClientCall$Listener;)V

    invoke-interface {v0, v1}, Lio/grpc/internal/ClientStream;->start(Lio/grpc/internal/ClientStreamListener;)V

    .line 234
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lio/grpc/Context;->addListener(Lio/grpc/Context$CancellationListener;Ljava/util/concurrent/Executor;)V

    .line 235
    if-eqz v3, :cond_6

    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;

    .line 237
    invoke-virtual {v0}, Lio/grpc/Context;->getDeadline()Lio/grpc/Deadline;

    move-result-object v0

    if-eq v0, v3, :cond_6

    .line 238
    invoke-direct {p0, v3}, Lio/grpc/internal/ClientCallImpl;->startDeadlineTimer(Lio/grpc/Deadline;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ClientCallImpl;->deadlineCancellationFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 240
    :cond_6
    iget-boolean v0, p0, Lio/grpc/internal/ClientCallImpl;->cancelListenersShouldBeRemoved:Z

    if-eqz v0, :cond_0

    .line 245
    invoke-direct {p0}, Lio/grpc/internal/ClientCallImpl;->removeContextListenerAndCancelDeadlineFuture()V

    goto/16 :goto_1

    :cond_7
    move v1, v2

    .line 209
    goto :goto_2

    .line 218
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;

    invoke-virtual {v1, v2}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    throw v0

    .line 221
    :cond_8
    new-instance v1, Lio/grpc/internal/FailingClientStream;

    sget-object v2, Lio/grpc/Status;->DEADLINE_EXCEEDED:Lio/grpc/Status;

    invoke-direct {v1, v2}, Lio/grpc/internal/FailingClientStream;-><init>(Lio/grpc/Status;)V

    iput-object v1, p0, Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;

    goto :goto_3
.end method
