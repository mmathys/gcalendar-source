.class public final Lcom/google/android/libraries/performance/primes/leak/GarbageReference;
.super Ljava/lang/ref/PhantomReference;
.source "GarbageReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final name:Ljava/lang/String;

.field next:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

.field prev:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p3}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 20
    iput-object p2, p0, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->name:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public insertAfter(Lcom/google/android/libraries/performance/primes/leak/GarbageReference;)V
    .locals 1

    .prologue
    .line 33
    invoke-static {p1}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->prev:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    .line 35
    iget-object v0, p1, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->next:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->next:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    .line 36
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->next:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->next:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    iput-object p0, v0, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->prev:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    .line 39
    :cond_0
    iput-object p0, p1, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->next:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    .line 40
    return-void
.end method

.method public removeSelf()Lcom/google/android/libraries/performance/primes/leak/GarbageReference;
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->prev:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->prev:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->next:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    iput-object v1, v0, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->next:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->next:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->next:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->prev:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    iput-object v1, v0, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->prev:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    .line 52
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->next:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->prev:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    .line 53
    return-object p0
.end method
