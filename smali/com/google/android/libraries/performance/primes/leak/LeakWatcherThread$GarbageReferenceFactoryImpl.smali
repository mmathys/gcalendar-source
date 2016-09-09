.class final Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$GarbageReferenceFactoryImpl;
.super Ljava/lang/Object;
.source "LeakWatcherThread.java"

# interfaces
.implements Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$GarbageReferenceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GarbageReferenceFactoryImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$1;)V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$GarbageReferenceFactoryImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public newReference(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ref/ReferenceQueue;)Lcom/google/android/libraries/performance/primes/leak/GarbageReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/libraries/performance/primes/leak/GarbageReference;"
        }
    .end annotation

    .prologue
    .line 346
    new-instance v0, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0
.end method
