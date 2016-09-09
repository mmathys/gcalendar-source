.class public final Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap;
.super Ljava/lang/Object;
.source "TrieMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final head:Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;-><init>(Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$1;)V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap;->head:Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;

    return-void
.end method


# virtual methods
.method public get(Ljava/nio/ByteBuffer;II)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "II)TE;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap;->head:Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;

    .line 61
    add-int v1, p2, p3

    .line 62
    :goto_0
    if-ge p2, v1, :cond_2

    .line 63
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    .line 65
    # getter for: Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;->edges:Landroid/support/v4/util/SparseArrayCompat;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;->access$100(Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v3

    if-eqz v3, :cond_0

    # getter for: Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;->edges:Landroid/support/v4/util/SparseArrayCompat;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;->access$100(Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;

    if-nez v0, :cond_1

    .line 66
    :cond_0
    const/4 v0, 0x0

    .line 70
    :goto_1
    return-object v0

    .line 62
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 70
    :cond_2
    # getter for: Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;->value:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;->access$200(Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public putIfAbsent(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TE;)TE;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkArgument(Z)V

    .line 31
    invoke-static {p2}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 33
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap;->head:Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;

    .line 34
    array-length v5, v4

    move-object v3, v0

    :goto_1
    if-ge v1, v5, :cond_3

    aget-byte v6, v4, v1

    .line 35
    # getter for: Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;->edges:Landroid/support/v4/util/SparseArrayCompat;
    invoke-static {v3}, Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;->access$100(Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v0

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    # setter for: Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;->edges:Landroid/support/v4/util/SparseArrayCompat;
    invoke-static {v3, v0}, Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;->access$102(Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;Landroid/support/v4/util/SparseArrayCompat;)Landroid/support/v4/util/SparseArrayCompat;

    .line 38
    :cond_0
    # getter for: Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;->edges:Landroid/support/v4/util/SparseArrayCompat;
    invoke-static {v3}, Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;->access$100(Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;

    .line 39
    if-nez v0, :cond_1

    .line 40
    new-instance v0, Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;

    invoke-direct {v0, v2}, Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;-><init>(Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$1;)V

    .line 41
    # getter for: Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;->edges:Landroid/support/v4/util/SparseArrayCompat;
    invoke-static {v3}, Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;->access$100(Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v3

    invoke-virtual {v3, v6, v0}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 34
    :cond_1
    add-int/lit8 v1, v1, 0x1

    move-object v3, v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 30
    goto :goto_0

    .line 45
    :cond_3
    # getter for: Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;->value:Ljava/lang/Object;
    invoke-static {v3}, Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;->access$200(Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 46
    # getter for: Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;->value:Ljava/lang/Object;
    invoke-static {v3}, Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;->access$200(Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    :goto_2
    return-object v0

    .line 48
    :cond_4
    # setter for: Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;->value:Ljava/lang/Object;
    invoke-static {v3, p2}, Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;->access$202(Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 49
    goto :goto_2
.end method
