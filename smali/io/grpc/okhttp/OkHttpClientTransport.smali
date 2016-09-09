.class Lio/grpc/okhttp/OkHttpClientTransport;
.super Ljava/lang/Object;
.source "OkHttpClientTransport.java"

# interfaces
.implements Lio/grpc/internal/ConnectionClientTransport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;
    }
.end annotation


# static fields
.field private static final EMPTY_STREAM_ARRAY:[Lio/grpc/okhttp/OkHttpClientStream;

.field private static final ERROR_CODE_TO_STATUS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lio/grpc/okhttp/internal/framed/ErrorCode;",
            "Lio/grpc/Status;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final address:Ljava/net/InetSocketAddress;

.field private clientFrameHandler:Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

.field connectedFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field connectingCallback:Ljava/lang/Runnable;

.field private final connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

.field private connectionUnacknowledgedBytesRead:I

.field private final defaultAuthority:Ljava/lang/String;

.field private enableKeepAlive:Z

.field private final executor:Ljava/util/concurrent/Executor;

.field private frameWriter:Lio/grpc/okhttp/AsyncFrameWriter;

.field private goAwaySent:Z

.field private goAwayStatus:Lio/grpc/Status;

.field private inUse:Z

.field private keepAliveDelayNanos:J

.field private keepAliveManager:Lio/grpc/internal/KeepAliveManager;

.field private keepAliveTimeoutNanos:J

.field private listener:Lio/grpc/internal/ManagedClientTransport$Listener;

.field private final lock:Ljava/lang/Object;

.field private maxConcurrentStreams:I

.field private final maxMessageSize:I

.field private nextStreamId:I

.field private outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

.field private pendingStreams:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lio/grpc/okhttp/OkHttpClientStream;",
            ">;"
        }
    .end annotation
.end field

.field private ping:Lio/grpc/internal/Http2Ping;

.field private final random:Ljava/util/Random;

.field private scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final serializingExecutor:Lio/grpc/internal/SerializingExecutor;

.field private socket:Ljava/net/Socket;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private stopped:Z

.field private final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lio/grpc/okhttp/OkHttpClientStream;",
            ">;"
        }
    .end annotation
.end field

.field private testFrameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

.field private testFrameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

.field private final ticker:Lcom/google/common/base/Ticker;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lio/grpc/okhttp/OkHttpClientTransport;->buildErrorCodeToStatusMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpClientTransport;->ERROR_CODE_TO_STATUS:Ljava/util/Map;

    .line 100
    const-class v0, Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/OkHttpClientTransport;->log:Ljava/util/logging/Logger;

    .line 101
    const/4 v0, 0x0

    new-array v0, v0, [Lio/grpc/okhttp/OkHttpClientStream;

    sput-object v0, Lio/grpc/okhttp/OkHttpClientTransport;->EMPTY_STREAM_ARRAY:[Lio/grpc/okhttp/OkHttpClientStream;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lio/grpc/okhttp/internal/framed/FrameReader;Lio/grpc/okhttp/internal/framed/FrameWriter;ILjava/net/Socket;Lcom/google/common/base/Ticker;Ljava/lang/Runnable;Lcom/google/common/util/concurrent/SettableFuture;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Lio/grpc/okhttp/internal/framed/FrameReader;",
            "Lio/grpc/okhttp/internal/framed/FrameWriter;",
            "I",
            "Ljava/net/Socket;",
            "Lcom/google/common/base/Ticker;",
            "Ljava/lang/Runnable;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->random:Ljava/util/Random;

    .line 141
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->maxConcurrentStreams:I

    .line 171
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/LinkedList;

    .line 210
    iput-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->address:Ljava/net/InetSocketAddress;

    .line 211
    iput p10, p0, Lio/grpc/okhttp/OkHttpClientTransport;->maxMessageSize:I

    .line 212
    const-string v0, "notarealauthority:80"

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->defaultAuthority:Ljava/lang/String;

    .line 213
    const-string v0, "okhttp"

    invoke-static {v0, p1}, Lio/grpc/internal/GrpcUtil;->getGrpcUserAgent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->userAgent:Ljava/lang/String;

    .line 214
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->executor:Ljava/util/concurrent/Executor;

    .line 215
    new-instance v0, Lio/grpc/internal/SerializingExecutor;

    invoke-direct {v0, p2}, Lio/grpc/internal/SerializingExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    .line 216
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/internal/framed/FrameReader;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->testFrameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

    .line 217
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/internal/framed/FrameWriter;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->testFrameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

    .line 218
    invoke-static {p6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->socket:Ljava/net/Socket;

    .line 219
    iput p5, p0, Lio/grpc/okhttp/OkHttpClientTransport;->nextStreamId:I

    .line 220
    iput-object p7, p0, Lio/grpc/okhttp/OkHttpClientTransport;->ticker:Lcom/google/common/base/Ticker;

    .line 221
    iput-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

    .line 222
    iput-object p8, p0, Lio/grpc/okhttp/OkHttpClientTransport;->connectingCallback:Ljava/lang/Runnable;

    .line 223
    invoke-static {p9}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/SettableFuture;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->connectedFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 224
    return-void
.end method

.method constructor <init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljavax/net/ssl/SSLSocketFactory;Lio/grpc/okhttp/internal/ConnectionSpec;I)V
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->random:Ljava/util/Random;

    .line 141
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->maxConcurrentStreams:I

    .line 171
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/LinkedList;

    .line 188
    const-string v0, "address"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->address:Ljava/net/InetSocketAddress;

    .line 189
    iput-object p2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->defaultAuthority:Ljava/lang/String;

    .line 190
    iput p7, p0, Lio/grpc/okhttp/OkHttpClientTransport;->maxMessageSize:I

    .line 191
    const-string v0, "executor"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->executor:Ljava/util/concurrent/Executor;

    .line 192
    new-instance v0, Lio/grpc/internal/SerializingExecutor;

    invoke-direct {v0, p4}, Lio/grpc/internal/SerializingExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    .line 195
    const/4 v0, 0x3

    iput v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->nextStreamId:I

    .line 196
    iput-object p5, p0, Lio/grpc/okhttp/OkHttpClientTransport;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 197
    const-string v0, "connectionSpec"

    invoke-static {p6, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/internal/ConnectionSpec;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

    .line 198
    invoke-static {}, Lcom/google/common/base/Ticker;->systemTicker()Lcom/google/common/base/Ticker;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->ticker:Lcom/google/common/base/Ticker;

    .line 199
    const-string v0, "okhttp"

    invoke-static {v0, p3}, Lio/grpc/internal/GrpcUtil;->getGrpcUserAgent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->userAgent:Ljava/lang/String;

    .line 200
    return-void
.end method

.method static synthetic access$000(Lio/grpc/okhttp/OkHttpClientTransport;)Z
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->isForTest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->clientFrameHandler:Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->address:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method static synthetic access$102(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;)Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->clientFrameHandler:Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

    return-object p1
.end method

.method static synthetic access$1100(Lio/grpc/okhttp/OkHttpClientTransport;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method static synthetic access$1200(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/internal/ConnectionSpec;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->connectionSpec:Lio/grpc/okhttp/internal/ConnectionSpec;

    return-object v0
.end method

.method static synthetic access$1300(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/internal/KeepAliveManager;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    return-object v0
.end method

.method static synthetic access$1400(Lio/grpc/okhttp/OkHttpClientTransport;ILio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/okhttp/OkHttpClientTransport;->startGoAway(ILio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V

    return-void
.end method

.method static synthetic access$1500()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lio/grpc/okhttp/OkHttpClientTransport;->log:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$1600(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/internal/ManagedClientTransport$Listener;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->listener:Lio/grpc/internal/ManagedClientTransport$Listener;

    return-object v0
.end method

.method static synthetic access$1700(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lio/grpc/okhttp/OkHttpClientTransport;->onError(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lio/grpc/okhttp/OkHttpClientTransport;)I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->connectionUnacknowledgedBytesRead:I

    return v0
.end method

.method static synthetic access$1802(Lio/grpc/okhttp/OkHttpClientTransport;I)I
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->connectionUnacknowledgedBytesRead:I

    return p1
.end method

.method static synthetic access$1900(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/internal/framed/FrameReader;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->testFrameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

    return-object v0
.end method

.method static synthetic access$2000(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/OutboundFlowController;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

    return-object v0
.end method

.method static synthetic access$2100(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/internal/Http2Ping;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->ping:Lio/grpc/internal/Http2Ping;

    return-object v0
.end method

.method static synthetic access$2102(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/internal/Http2Ping;)Lio/grpc/internal/Http2Ping;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->ping:Lio/grpc/internal/Http2Ping;

    return-object p1
.end method

.method static synthetic access$300(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$400(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lio/grpc/okhttp/OkHttpClientTransport;I)I
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->maxConcurrentStreams:I

    return p1
.end method

.method static synthetic access$600(Lio/grpc/okhttp/OkHttpClientTransport;)Z
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->startPendingStreams()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/internal/framed/FrameWriter;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->testFrameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

    return-object v0
.end method

.method static synthetic access$800(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$802(Lio/grpc/okhttp/OkHttpClientTransport;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->socket:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic access$900(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/AsyncFrameWriter;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/AsyncFrameWriter;

    return-object v0
.end method

.method private static buildErrorCodeToStatusMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lio/grpc/okhttp/internal/framed/ErrorCode;",
            "Lio/grpc/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 105
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v3, "No error: A GRPC status of OK should have been sent"

    .line 106
    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 105
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v3, "Protocol error"

    .line 108
    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 107
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v3, "Internal error"

    .line 110
    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 109
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->FLOW_CONTROL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v3, "Flow control error"

    .line 112
    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 111
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->STREAM_CLOSED:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v3, "Stream closed"

    .line 114
    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 113
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->FRAME_TOO_LARGE:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v3, "Frame too large"

    .line 116
    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 115
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->REFUSED_STREAM:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v3, "Refused stream"

    .line 118
    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 117
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->CANCEL:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    const-string v3, "Cancelled"

    .line 120
    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 119
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->COMPRESSION_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v3, "Compression error"

    .line 122
    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 121
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->CONNECT_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v3, "Connect error"

    .line 124
    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 123
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->ENHANCE_YOUR_CALM:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->RESOURCE_EXHAUSTED:Lio/grpc/Status;

    const-string v3, "Enhance your calm"

    .line 126
    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 125
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->INADEQUATE_SECURITY:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v2, Lio/grpc/Status;->PERMISSION_DENIED:Lio/grpc/Status;

    const-string v3, "Inadequate security"

    .line 128
    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 127
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private getPingFailure()Ljava/lang/Throwable;
    .locals 3

    .prologue
    .line 691
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 692
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwayStatus:Lio/grpc/Status;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwayStatus:Lio/grpc/Status;

    invoke-virtual {v0}, Lio/grpc/Status;->asException()Lio/grpc/StatusException;

    move-result-object v0

    monitor-exit v1

    .line 695
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v2, "Connection closed"

    invoke-virtual {v0, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Status;->asException()Lio/grpc/StatusException;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 697
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isForTest()Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->address:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeClearInUse()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 661
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->inUse:Z

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    iput-boolean v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->inUse:Z

    .line 664
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->listener:Lio/grpc/internal/ManagedClientTransport$Listener;

    invoke-interface {v0, v1}, Lio/grpc/internal/ManagedClientTransport$Listener;->transportInUse(Z)V

    .line 665
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    invoke-virtual {v0}, Lio/grpc/internal/KeepAliveManager;->onTransportIdle()V

    .line 673
    :cond_0
    return-void
.end method

.method private onError(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 561
    const/4 v0, 0x0

    invoke-static {p1}, Lio/grpc/okhttp/OkHttpClientTransport;->toGrpcStatus(Lio/grpc/okhttp/internal/framed/ErrorCode;)Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v1, p2}, Lio/grpc/Status;->augmentDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lio/grpc/okhttp/OkHttpClientTransport;->startGoAway(ILio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V

    .line 562
    return-void
.end method

.method private setInUse()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 677
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->inUse:Z

    if-nez v0, :cond_0

    .line 678
    iput-boolean v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->inUse:Z

    .line 679
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->listener:Lio/grpc/internal/ManagedClientTransport$Listener;

    invoke-interface {v0, v1}, Lio/grpc/internal/ManagedClientTransport$Listener;->transportInUse(Z)V

    .line 680
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    invoke-virtual {v0}, Lio/grpc/internal/KeepAliveManager;->onTransportActive()V

    .line 688
    :cond_0
    return-void
.end method

.method private startGoAway(ILio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V
    .locals 5

    .prologue
    .line 565
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 566
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwayStatus:Lio/grpc/Status;

    if-nez v0, :cond_0

    .line 567
    iput-object p3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwayStatus:Lio/grpc/Status;

    .line 568
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->listener:Lio/grpc/internal/ManagedClientTransport$Listener;

    invoke-interface {v0, p3}, Lio/grpc/internal/ManagedClientTransport$Listener;->transportShutdown(Lio/grpc/Status;)V

    .line 570
    :cond_0
    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwaySent:Z

    if-nez v0, :cond_1

    .line 573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwaySent:Z

    .line 574
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/AsyncFrameWriter;

    const/4 v1, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-virtual {v0, v1, p2, v3}, Lio/grpc/okhttp/AsyncFrameWriter;->goAway(ILio/grpc/okhttp/internal/framed/ErrorCode;[B)V

    .line 577
    :cond_1
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 578
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 579
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 580
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, p1, :cond_2

    .line 581
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 582
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/OkHttpClientStream;

    const/4 v1, 0x0

    new-instance v4, Lio/grpc/Metadata;

    invoke-direct {v4}, Lio/grpc/Metadata;-><init>()V

    invoke-virtual {v0, p3, v1, v4}, Lio/grpc/okhttp/OkHttpClientStream;->transportReportStatus(Lio/grpc/Status;ZLio/grpc/Metadata;)V

    goto :goto_0

    .line 593
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 586
    :cond_3
    :try_start_1
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/OkHttpClientStream;

    .line 587
    const/4 v3, 0x1

    new-instance v4, Lio/grpc/Metadata;

    invoke-direct {v4}, Lio/grpc/Metadata;-><init>()V

    invoke-virtual {v0, p3, v3, v4}, Lio/grpc/okhttp/OkHttpClientStream;->transportReportStatus(Lio/grpc/Status;ZLio/grpc/Metadata;)V

    goto :goto_1

    .line 589
    :cond_4
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 590
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->maybeClearInUse()V

    .line 592
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->stopIfNecessary()V

    .line 593
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 594
    return-void
.end method

.method private startPendingStreams()Z
    .locals 3

    .prologue
    .line 328
    const/4 v0, 0x0

    .line 329
    :goto_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->maxConcurrentStreams:I

    if-ge v1, v2, :cond_0

    .line 330
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/OkHttpClientStream;

    .line 331
    invoke-direct {p0, v0}, Lio/grpc/okhttp/OkHttpClientTransport;->startStream(Lio/grpc/okhttp/OkHttpClientStream;)V

    .line 332
    const/4 v0, 0x1

    .line 333
    goto :goto_0

    .line 334
    :cond_0
    return v0
.end method

.method private startStream(Lio/grpc/okhttp/OkHttpClientStream;)V
    .locals 4

    .prologue
    const v3, 0x7fffffff

    .line 302
    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpClientStream;->id()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "StreamId already assigned"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 303
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    iget v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->nextStreamId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->setInUse()V

    .line 305
    iget v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->nextStreamId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/grpc/okhttp/OkHttpClientStream;->start(Ljava/lang/Integer;)V

    .line 306
    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpClientStream;->allocated()V

    .line 308
    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpClientStream;->getType()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object v0

    sget-object v1, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    if-eq v0, v1, :cond_0

    .line 309
    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpClientStream;->getType()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object v0

    sget-object v1, Lio/grpc/MethodDescriptor$MethodType;->SERVER_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    if-eq v0, v1, :cond_0

    .line 310
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/AsyncFrameWriter;

    invoke-virtual {v0}, Lio/grpc/okhttp/AsyncFrameWriter;->flush()V

    .line 312
    :cond_0
    iget v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->nextStreamId:I

    const v1, 0x7ffffffd

    if-lt v0, v1, :cond_2

    .line 315
    iput v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->nextStreamId:I

    .line 316
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v1, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v2, "Stream ids exhausted"

    .line 317
    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 316
    invoke-direct {p0, v3, v0, v1}, Lio/grpc/okhttp/OkHttpClientTransport;->startGoAway(ILio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V

    .line 321
    :goto_1
    return-void

    .line 302
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 319
    :cond_2
    iget v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->nextStreamId:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->nextStreamId:I

    goto :goto_1
.end method

.method static toGrpcStatus(Lio/grpc/okhttp/internal/framed/ErrorCode;)Lio/grpc/Status;
    .locals 4

    .prologue
    .line 717
    sget-object v0, Lio/grpc/okhttp/OkHttpClientTransport;->ERROR_CODE_TO_STATUS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Status;

    .line 718
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lio/grpc/Status;->UNKNOWN:Lio/grpc/Status;

    iget v1, p0, Lio/grpc/okhttp/internal/framed/ErrorCode;->httpCode:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown http2 error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method enableKeepAlive(ZJJ)V
    .locals 0

    .prologue
    .line 231
    iput-boolean p1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->enableKeepAlive:Z

    .line 232
    iput-wide p2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveDelayNanos:J

    .line 233
    iput-wide p4, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveTimeoutNanos:J

    .line 234
    return-void
.end method

.method finishStream(ILio/grpc/Status;Lio/grpc/okhttp/internal/framed/ErrorCode;)V
    .locals 4

    .prologue
    .line 610
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 611
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/OkHttpClientStream;

    .line 612
    if-eqz v0, :cond_3

    .line 613
    if-eqz p3, :cond_0

    .line 614
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/AsyncFrameWriter;

    sget-object v3, Lio/grpc/okhttp/internal/framed/ErrorCode;->CANCEL:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, p1, v3}, Lio/grpc/okhttp/AsyncFrameWriter;->rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 616
    :cond_0
    if-eqz p2, :cond_2

    .line 617
    invoke-virtual {p2}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v1

    sget-object v3, Lio/grpc/Status$Code;->CANCELLED:Lio/grpc/Status$Code;

    if-eq v1, v3, :cond_1

    .line 618
    invoke-virtual {p2}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v1

    sget-object v3, Lio/grpc/Status$Code;->DEADLINE_EXCEEDED:Lio/grpc/Status$Code;

    if-ne v1, v3, :cond_4

    :cond_1
    const/4 v1, 0x1

    .line 619
    :goto_0
    new-instance v3, Lio/grpc/Metadata;

    invoke-direct {v3}, Lio/grpc/Metadata;-><init>()V

    invoke-virtual {v0, p2, v1, v3}, Lio/grpc/okhttp/OkHttpClientStream;->transportReportStatus(Lio/grpc/Status;ZLio/grpc/Metadata;)V

    .line 621
    :cond_2
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->startPendingStreams()Z

    move-result v0

    if-nez v0, :cond_3

    .line 622
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->stopIfNecessary()V

    .line 623
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->maybeClearInUse()V

    .line 626
    :cond_3
    monitor-exit v2

    .line 627
    return-void

    .line 618
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 626
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getActiveStreams()[Lio/grpc/okhttp/OkHttpClientStream;
    .locals 3

    .prologue
    .line 531
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 532
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v2, Lio/grpc/okhttp/OkHttpClientTransport;->EMPTY_STREAM_ARRAY:[Lio/grpc/okhttp/OkHttpClientStream;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/okhttp/OkHttpClientStream;

    monitor-exit v1

    return-object v0

    .line 533
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAttrs()Lio/grpc/Attributes;
    .locals 1

    .prologue
    .line 524
    sget-object v0, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    return-object v0
.end method

.method getHandler()Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->clientFrameHandler:Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;

    return-object v0
.end method

.method public getLogId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    invoke-static {p0}, Lio/grpc/internal/GrpcUtil;->getLogId(Lio/grpc/internal/WithLogId;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOverridenHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->defaultAuthority:Ljava/lang/String;

    invoke-static {v0}, Lio/grpc/internal/GrpcUtil;->authorityToUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 465
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 466
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 469
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->defaultAuthority:Ljava/lang/String;

    goto :goto_0
.end method

.method getOverridenPort()I
    .locals 3

    .prologue
    .line 474
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->defaultAuthority:Ljava/lang/String;

    invoke-static {v0}, Lio/grpc/internal/GrpcUtil;->authorityToUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 475
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 476
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    .line 479
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method getPendingStreamSize()I
    .locals 2

    .prologue
    .line 543
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 544
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 545
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getStream(I)Lio/grpc/okhttp/OkHttpClientStream;
    .locals 3

    .prologue
    .line 707
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 708
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/OkHttpClientStream;

    monitor-exit v1

    return-object v0

    .line 709
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method mayHaveCreatedStream(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 701
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 702
    :try_start_0
    iget v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->nextStreamId:I

    if-ge p1, v2, :cond_0

    and-int/lit8 v2, p1, 0x1

    if-ne v2, v0, :cond_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 703
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/internal/ClientStream;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/okhttp/OkHttpClientTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/okhttp/OkHttpClientStream;

    move-result-object v0

    return-object v0
.end method

.method public newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/okhttp/OkHttpClientStream;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor",
            "<**>;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/CallOptions;",
            ")",
            "Lio/grpc/okhttp/OkHttpClientStream;"
        }
    .end annotation

    .prologue
    .line 274
    const-string v0, "method"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v0, "headers"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    new-instance v0, Lio/grpc/okhttp/OkHttpClientStream;

    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/AsyncFrameWriter;

    iget-object v5, p0, Lio/grpc/okhttp/OkHttpClientTransport;->outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

    iget-object v6, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    iget v7, p0, Lio/grpc/okhttp/OkHttpClientTransport;->maxMessageSize:I

    iget-object v8, p0, Lio/grpc/okhttp/OkHttpClientTransport;->defaultAuthority:Ljava/lang/String;

    iget-object v9, p0, Lio/grpc/okhttp/OkHttpClientTransport;->userAgent:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v9}, Lio/grpc/okhttp/OkHttpClientStream;-><init>(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/okhttp/AsyncFrameWriter;Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/OutboundFlowController;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method onException(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 552
    const-string v0, "failureCause"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    sget-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    invoke-virtual {v0, p1}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    .line 554
    const/4 v1, 0x0

    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-direct {p0, v1, v2, v0}, Lio/grpc/okhttp/OkHttpClientTransport;->startGoAway(ILio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V

    .line 555
    return-void
.end method

.method public ping(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 242
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/AsyncFrameWriter;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 243
    const-wide/16 v4, 0x0

    .line 246
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 247
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->stopped:Z

    if-eqz v0, :cond_1

    .line 248
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->getPingFailure()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lio/grpc/internal/Http2Ping;->notifyFailed(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;Ljava/lang/Throwable;)V

    .line 249
    monitor-exit v3

    .line 269
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 242
    goto :goto_0

    .line 251
    :cond_1
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->ping:Lio/grpc/internal/Http2Ping;

    if-eqz v0, :cond_3

    .line 254
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->ping:Lio/grpc/internal/Http2Ping;

    move v1, v2

    .line 262
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    if-eqz v1, :cond_2

    .line 264
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/AsyncFrameWriter;

    const/16 v3, 0x20

    ushr-long v6, v4, v3

    long-to-int v3, v6

    long-to-int v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lio/grpc/okhttp/AsyncFrameWriter;->ping(ZII)V

    .line 268
    :cond_2
    invoke-virtual {v0, p1, p2}, Lio/grpc/internal/Http2Ping;->addCallback(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V

    goto :goto_1

    .line 258
    :cond_3
    :try_start_1
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    .line 259
    new-instance v0, Lio/grpc/internal/Http2Ping;

    iget-object v6, p0, Lio/grpc/okhttp/OkHttpClientTransport;->ticker:Lcom/google/common/base/Ticker;

    invoke-static {v6}, Lcom/google/common/base/Stopwatch;->createStarted(Lcom/google/common/base/Ticker;)Lcom/google/common/base/Stopwatch;

    move-result-object v6

    invoke-direct {v0, v4, v5, v6}, Lio/grpc/internal/Http2Ping;-><init>(JLcom/google/common/base/Stopwatch;)V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->ping:Lio/grpc/internal/Http2Ping;

    goto :goto_2

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method removePendingStream(Lio/grpc/okhttp/OkHttpClientStream;)V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 343
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->maybeClearInUse()V

    .line 344
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 484
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 485
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwayStatus:Lio/grpc/Status;

    if-eqz v0, :cond_0

    .line 486
    monitor-exit v1

    .line 498
    :goto_0
    return-void

    .line 489
    :cond_0
    sget-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v2, "Transport stopped"

    invoke-virtual {v0, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwayStatus:Lio/grpc/Status;

    .line 490
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->listener:Lio/grpc/internal/ManagedClientTransport$Listener;

    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwayStatus:Lio/grpc/Status;

    invoke-interface {v0, v2}, Lio/grpc/internal/ManagedClientTransport$Listener;->transportShutdown(Lio/grpc/Status;)V

    .line 491
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->stopIfNecessary()V

    .line 492
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    invoke-virtual {v0}, Lio/grpc/internal/KeepAliveManager;->onTransportShutdown()V

    .line 495
    sget-object v0, Lio/grpc/internal/GrpcUtil;->TIMER_SERVICE:Lio/grpc/internal/SharedResourceHolder$Resource;

    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v2}, Lio/grpc/internal/SharedResourceHolder;->release(Lio/grpc/internal/SharedResourceHolder$Resource;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 497
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shutdownNow(Lio/grpc/Status;)V
    .locals 5

    .prologue
    .line 502
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->shutdown()V

    .line 503
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 504
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 505
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 507
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 508
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/OkHttpClientStream;

    const/4 v3, 0x0

    new-instance v4, Lio/grpc/Metadata;

    invoke-direct {v4}, Lio/grpc/Metadata;-><init>()V

    invoke-virtual {v0, p1, v3, v4}, Lio/grpc/okhttp/OkHttpClientStream;->transportReportStatus(Lio/grpc/Status;ZLio/grpc/Metadata;)V

    goto :goto_0

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 511
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/OkHttpClientStream;

    .line 512
    const/4 v3, 0x1

    new-instance v4, Lio/grpc/Metadata;

    invoke-direct {v4}, Lio/grpc/Metadata;-><init>()V

    invoke-virtual {v0, p1, v3, v4}, Lio/grpc/okhttp/OkHttpClientStream;->transportReportStatus(Lio/grpc/Status;ZLio/grpc/Metadata;)V

    goto :goto_1

    .line 514
    :cond_1
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 515
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->maybeClearInUse()V

    .line 517
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->stopIfNecessary()V

    .line 518
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    return-void
.end method

.method public start(Lio/grpc/internal/ManagedClientTransport$Listener;)Ljava/lang/Runnable;
    .locals 8

    .prologue
    .line 348
    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ManagedClientTransport$Listener;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->listener:Lio/grpc/internal/ManagedClientTransport$Listener;

    .line 350
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->enableKeepAlive:Z

    if-eqz v0, :cond_0

    .line 351
    sget-object v0, Lio/grpc/internal/GrpcUtil;->TIMER_SERVICE:Lio/grpc/internal/SharedResourceHolder$Resource;

    invoke-static {v0}, Lio/grpc/internal/SharedResourceHolder;->get(Lio/grpc/internal/SharedResourceHolder$Resource;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 352
    new-instance v1, Lio/grpc/internal/KeepAliveManager;

    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v4, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveDelayNanos:J

    iget-wide v6, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveTimeoutNanos:J

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lio/grpc/internal/KeepAliveManager;-><init>(Lio/grpc/internal/ManagedClientTransport;Ljava/util/concurrent/ScheduledExecutorService;JJ)V

    iput-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->keepAliveManager:Lio/grpc/internal/KeepAliveManager;

    .line 356
    :cond_0
    new-instance v0, Lio/grpc/okhttp/AsyncFrameWriter;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    invoke-direct {v0, p0, v1}, Lio/grpc/okhttp/AsyncFrameWriter;-><init>(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/internal/SerializingExecutor;)V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/AsyncFrameWriter;

    .line 357
    new-instance v0, Lio/grpc/okhttp/OutboundFlowController;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/AsyncFrameWriter;

    invoke-direct {v0, p0, v1}, Lio/grpc/okhttp/OutboundFlowController;-><init>(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/internal/framed/FrameWriter;)V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

    .line 361
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v1, Lio/grpc/okhttp/OkHttpClientTransport$1;

    invoke-direct {v1, p0}, Lio/grpc/okhttp/OkHttpClientTransport$1;-><init>(Lio/grpc/okhttp/OkHttpClientTransport;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    .line 436
    const/4 v0, 0x0

    return-object v0
.end method

.method stopIfNecessary()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 634
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwayStatus:Lio/grpc/Status;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->stopped:Z

    if-nez v0, :cond_0

    .line 640
    iput-boolean v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->stopped:Z

    .line 642
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->ping:Lio/grpc/internal/Http2Ping;

    if-eqz v0, :cond_2

    .line 643
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->ping:Lio/grpc/internal/Http2Ping;

    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->getPingFailure()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/internal/Http2Ping;->failed(Ljava/lang/Throwable;)V

    .line 644
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->ping:Lio/grpc/internal/Http2Ping;

    .line 647
    :cond_2
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwaySent:Z

    if-nez v0, :cond_3

    .line 650
    iput-boolean v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwaySent:Z

    .line 651
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/AsyncFrameWriter;

    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    new-array v2, v3, [B

    invoke-virtual {v0, v3, v1, v2}, Lio/grpc/okhttp/AsyncFrameWriter;->goAway(ILio/grpc/okhttp/internal/framed/ErrorCode;[B)V

    .line 656
    :cond_3
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->frameWriter:Lio/grpc/okhttp/AsyncFrameWriter;

    invoke-virtual {v0}, Lio/grpc/okhttp/AsyncFrameWriter;->close()V

    goto :goto_0
.end method

.method streamReadyToStart(Lio/grpc/okhttp/OkHttpClientStream;)V
    .locals 4

    .prologue
    .line 288
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 289
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwayStatus:Lio/grpc/Status;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->goAwayStatus:Lio/grpc/Status;

    const/4 v2, 0x1

    new-instance v3, Lio/grpc/Metadata;

    invoke-direct {v3}, Lio/grpc/Metadata;-><init>()V

    invoke-virtual {p1, v0, v2, v3}, Lio/grpc/okhttp/OkHttpClientStream;->transportReportStatus(Lio/grpc/Status;ZLio/grpc/Metadata;)V

    .line 297
    :goto_0
    monitor-exit v1

    .line 298
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v2, p0, Lio/grpc/okhttp/OkHttpClientTransport;->maxConcurrentStreams:I

    if-lt v0, v2, :cond_1

    .line 292
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport;->pendingStreams:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->setInUse()V

    goto :goto_0

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 295
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lio/grpc/okhttp/OkHttpClientTransport;->startStream(Lio/grpc/okhttp/OkHttpClientStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 441
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientTransport;->getLogId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport;->address:Ljava/net/InetSocketAddress;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
