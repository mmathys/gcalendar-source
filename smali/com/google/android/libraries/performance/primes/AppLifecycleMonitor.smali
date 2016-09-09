.class public final Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;
.super Ljava/lang/Object;
.source "AppLifecycleMonitor.java"


# static fields
.field private static volatile instance:Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;


# instance fields
.field final tracker:Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;

    invoke-direct {v0}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;->tracker:Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;

    .line 42
    return-void
.end method

.method private attachToApp(Landroid/app/Application;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;->tracker:Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;->attachToApp(Landroid/app/Application;)V

    .line 46
    return-void
.end method

.method static forApp(Landroid/app/Application;)Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;

    invoke-direct {v0}, Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;-><init>()V

    .line 36
    invoke-direct {v0, p0}, Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;->attachToApp(Landroid/app/Application;)V

    .line 37
    return-object v0
.end method

.method public static getInstance(Landroid/app/Application;)Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;->instance:Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;

    if-nez v0, :cond_1

    .line 15
    const-class v1, Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;

    monitor-enter v1

    .line 16
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;->instance:Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;

    if-nez v0, :cond_0

    .line 17
    invoke-static {p0}, Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;->forApp(Landroid/app/Application;)Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;->instance:Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;

    .line 19
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_1
    sget-object v0, Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;->instance:Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public register(Lcom/google/android/libraries/performance/primes/AppLifecycleListener;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;->tracker:Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;->register(Lcom/google/android/libraries/performance/primes/AppLifecycleListener;)V

    .line 54
    return-void
.end method

.method public unregister(Lcom/google/android/libraries/performance/primes/AppLifecycleListener;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;->tracker:Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/performance/primes/AppLifecycleTracker;->unregister(Lcom/google/android/libraries/performance/primes/AppLifecycleListener;)V

    .line 58
    return-void
.end method
