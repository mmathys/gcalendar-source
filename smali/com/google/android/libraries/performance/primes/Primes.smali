.class public Lcom/google/android/libraries/performance/primes/Primes;
.super Ljava/lang/Object;
.source "Primes.java"


# static fields
.field private static final DEFAULT_PRIMES:Lcom/google/android/libraries/performance/primes/Primes;

.field private static volatile primes:Lcom/google/android/libraries/performance/primes/Primes;


# instance fields
.field private final primesApi:Lcom/google/android/libraries/performance/primes/PrimesApi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/google/android/libraries/performance/primes/Primes;

    new-instance v1, Lcom/google/android/libraries/performance/primes/NoopPrimesApi;

    invoke-direct {v1}, Lcom/google/android/libraries/performance/primes/NoopPrimesApi;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/libraries/performance/primes/Primes;-><init>(Lcom/google/android/libraries/performance/primes/PrimesApi;)V

    sput-object v0, Lcom/google/android/libraries/performance/primes/Primes;->DEFAULT_PRIMES:Lcom/google/android/libraries/performance/primes/Primes;

    .line 58
    sget-object v0, Lcom/google/android/libraries/performance/primes/Primes;->DEFAULT_PRIMES:Lcom/google/android/libraries/performance/primes/Primes;

    sput-object v0, Lcom/google/android/libraries/performance/primes/Primes;->primes:Lcom/google/android/libraries/performance/primes/Primes;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/libraries/performance/primes/PrimesApi;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/PrimesApi;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/Primes;->primesApi:Lcom/google/android/libraries/performance/primes/PrimesApi;

    .line 64
    return-void
.end method

.method public static declared-synchronized initialize(Lcom/google/android/libraries/performance/primes/ApiProvider;)Lcom/google/android/libraries/performance/primes/Primes;
    .locals 3

    .prologue
    .line 76
    const-class v1, Lcom/google/android/libraries/performance/primes/Primes;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/libraries/performance/primes/Primes;->primes:Lcom/google/android/libraries/performance/primes/Primes;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/Primes;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const-string v0, "Primes"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "Primes"

    const-string v2, "Primes.initialize() is called more than once. This call will be ignored."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    sget-object v0, Lcom/google/android/libraries/performance/primes/Primes;->primes:Lcom/google/android/libraries/performance/primes/Primes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :goto_0
    monitor-exit v1

    return-object v0

    .line 83
    :cond_1
    :try_start_1
    const-string v0, "Primes-initialize"

    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/trace/PrimesTrace;->beginSection(Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/google/android/libraries/performance/primes/Primes;

    invoke-interface {p0}, Lcom/google/android/libraries/performance/primes/ApiProvider;->getPrimesApi()Lcom/google/android/libraries/performance/primes/PrimesApi;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/libraries/performance/primes/Primes;-><init>(Lcom/google/android/libraries/performance/primes/PrimesApi;)V

    sput-object v0, Lcom/google/android/libraries/performance/primes/Primes;->primes:Lcom/google/android/libraries/performance/primes/Primes;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    :try_start_2
    invoke-static {}, Lcom/google/android/libraries/performance/primes/trace/PrimesTrace;->endSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 86
    :catchall_1
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/google/android/libraries/performance/primes/trace/PrimesTrace;->endSection()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method


# virtual methods
.method public isInitialized()Z
    .locals 1

    .prologue
    .line 299
    sget-object v0, Lcom/google/android/libraries/performance/primes/Primes;->DEFAULT_PRIMES:Lcom/google/android/libraries/performance/primes/Primes;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startMemoryMonitor()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/Primes;->primesApi:Lcom/google/android/libraries/performance/primes/PrimesApi;

    invoke-interface {v0}, Lcom/google/android/libraries/performance/primes/PrimesApi;->startMemoryMonitor()V

    .line 104
    return-void
.end method

.method public startTimer()Lcom/google/android/libraries/performance/primes/TimerEvent;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/Primes;->primesApi:Lcom/google/android/libraries/performance/primes/PrimesApi;

    invoke-interface {v0}, Lcom/google/android/libraries/performance/primes/PrimesApi;->startTimer()Lcom/google/android/libraries/performance/primes/TimerEvent;

    move-result-object v0

    return-object v0
.end method

.method public stopTimer(Lcom/google/android/libraries/performance/primes/TimerEvent;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/Primes;->primesApi:Lcom/google/android/libraries/performance/primes/PrimesApi;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/performance/primes/PrimesApi;->stopTimer(Lcom/google/android/libraries/performance/primes/TimerEvent;Ljava/lang/String;)V

    .line 217
    return-void
.end method
