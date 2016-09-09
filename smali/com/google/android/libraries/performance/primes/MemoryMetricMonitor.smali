.class final Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;
.super Ljava/lang/Object;
.source "MemoryMetricMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$Callback;
    }
.end annotation


# instance fields
.field private final appLifecycleMonitor:Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;

.field private final callback:Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$Callback;

.field private futureMemoryBackgroundTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private futureMemoryForegroundTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final hasMemoryMonitorStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final onAppToBackground:Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnAppToBackground;

.field private final onAppToForeground:Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnAppToForeground;

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$Callback;Landroid/app/Application;)V
    .locals 2

    .prologue
    .line 35
    .line 38
    invoke-static {}, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;->getInstance()Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;->get()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 39
    invoke-static {p2}, Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;->getInstance(Landroid/app/Application;)Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;

    move-result-object v1

    .line 35
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;-><init>(Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$Callback;Landroid/app/Application;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;)V

    .line 40
    return-void
.end method

.method constructor <init>(Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$Callback;Landroid/app/Application;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->hasMemoryMonitorStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    new-instance v0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$1;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$1;-><init>(Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;)V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->onAppToBackground:Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnAppToBackground;

    .line 74
    new-instance v0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$2;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$2;-><init>(Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;)V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->onAppToForeground:Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnAppToForeground;

    .line 48
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->callback:Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$Callback;

    .line 49
    iput-object p3, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 50
    iput-object p4, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->appLifecycleMonitor:Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;)Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$Callback;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->callback:Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->cancelFutureTasksIfAny()V

    return-void
.end method

.method static synthetic access$202(Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->futureMemoryBackgroundTask:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->futureMemoryForegroundTask:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method private cancelFutureTasksIfAny()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 107
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->futureMemoryForegroundTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->futureMemoryForegroundTask:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 109
    iput-object v2, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->futureMemoryForegroundTask:Ljava/util/concurrent/ScheduledFuture;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->futureMemoryBackgroundTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->futureMemoryBackgroundTask:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 113
    iput-object v2, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->futureMemoryBackgroundTask:Ljava/util/concurrent/ScheduledFuture;

    .line 115
    :cond_1
    return-void
.end method


# virtual methods
.method start()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->hasMemoryMonitorStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    const-string v0, "MemoryMetricMonitor"

    const-string v1, "Memory Monitor has already started. This MemoryMetricMonitor.start() is ignored."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->appLifecycleMonitor:Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->onAppToBackground:Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnAppToBackground;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;->register(Lcom/google/android/libraries/performance/primes/AppLifecycleListener;)V

    .line 103
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->appLifecycleMonitor:Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->onAppToForeground:Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnAppToForeground;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;->register(Lcom/google/android/libraries/performance/primes/AppLifecycleListener;)V

    goto :goto_0
.end method

.method stop()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->appLifecycleMonitor:Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->onAppToBackground:Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnAppToBackground;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;->unregister(Lcom/google/android/libraries/performance/primes/AppLifecycleListener;)V

    .line 119
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->appLifecycleMonitor:Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->onAppToForeground:Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnAppToForeground;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;->unregister(Lcom/google/android/libraries/performance/primes/AppLifecycleListener;)V

    .line 120
    return-void
.end method
