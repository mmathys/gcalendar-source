.class interface abstract Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$GarbageReferenceFactory;
.super Ljava/lang/Object;
.source "LeakWatcherThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "GarbageReferenceFactory"
.end annotation


# virtual methods
.method public abstract newReference(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ref/ReferenceQueue;)Lcom/google/android/libraries/performance/primes/leak/GarbageReference;
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
.end method
