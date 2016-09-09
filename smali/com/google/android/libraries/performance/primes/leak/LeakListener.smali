.class public interface abstract Lcom/google/android/libraries/performance/primes/leak/LeakListener;
.super Ljava/lang/Object;
.source "LeakListener.java"


# virtual methods
.method public abstract onBatchComplete(Z)V
.end method

.method public abstract onHeapDumpResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onLeaked(Ljava/lang/String;)V
.end method

.method public abstract onReleased(Ljava/lang/String;)V
.end method
