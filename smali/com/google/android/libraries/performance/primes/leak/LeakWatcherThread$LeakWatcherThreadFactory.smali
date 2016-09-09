.class Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$LeakWatcherThreadFactory;
.super Ljava/lang/Object;
.source "LeakWatcherThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LeakWatcherThreadFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Lcom/google/android/libraries/performance/primes/leak/LeakListener;)Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 325
    new-instance v0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    new-instance v2, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$GarbageReferenceFactoryImpl;

    invoke-direct {v2, v3}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$GarbageReferenceFactoryImpl;-><init>(Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$1;)V

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;-><init>(Ljava/lang/ref/ReferenceQueue;Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$GarbageReferenceFactory;Lcom/google/android/libraries/performance/primes/leak/LeakListener;Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$1;)V

    return-object v0
.end method
