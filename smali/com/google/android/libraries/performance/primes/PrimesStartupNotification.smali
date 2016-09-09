.class final Lcom/google/android/libraries/performance/primes/PrimesStartupNotification;
.super Ljava/lang/Object;
.source "PrimesStartupNotification.java"


# instance fields
.field private final activityCreatedSent:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final initializedSent:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final startupListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/performance/primes/PrimesStartupListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/performance/primes/PrimesStartupListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesStartupNotification;->initializedSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesStartupNotification;->activityCreatedSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    invoke-static {p1}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesStartupNotification;->startupListeners:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method firstActivityCreated()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesStartupNotification;->activityCreatedSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    const-string v0, "OneTimeMetrics"

    const-string v1, "firstActivityCreated() was called more than once."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesStartupNotification;->startupListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/PrimesStartupListener;

    .line 50
    invoke-interface {v0}, Lcom/google/android/libraries/performance/primes/PrimesStartupListener;->onFirstActivityCreated()V

    goto :goto_0
.end method

.method initAppMonitoring(Landroid/app/Application;)V
    .locals 2

    .prologue
    .line 32
    invoke-static {p1}, Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;->getInstance(Landroid/app/Application;)Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/performance/primes/PrimesStartupNotification$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/performance/primes/PrimesStartupNotification$1;-><init>(Lcom/google/android/libraries/performance/primes/PrimesStartupNotification;Landroid/app/Application;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;->register(Lcom/google/android/libraries/performance/primes/AppLifecycleListener;)V

    .line 40
    return-void
.end method

.method primesInitialized()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesStartupNotification;->initializedSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    const-string v0, "OneTimeMetrics"

    const-string v1, "primesInitialized() was called more than once."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    return-void

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesStartupNotification;->startupListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/PrimesStartupListener;

    .line 61
    invoke-interface {v0}, Lcom/google/android/libraries/performance/primes/PrimesStartupListener;->onPrimesInitialize()V

    goto :goto_0
.end method
