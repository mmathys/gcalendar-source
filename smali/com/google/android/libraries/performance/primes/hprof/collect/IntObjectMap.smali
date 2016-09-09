.class public final Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;
.super Ljava/lang/Object;
.source "IntObjectMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap$Enumerator;
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
.field private keys:[I

.field private size:I

.field private sizeIndex:I

.field private values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->init()V

    .line 20
    return-void
.end method

.method private findKeyIndex(I)I
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->keys:[I

    array-length v1, v0

    .line 94
    invoke-static {p1}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->hash(I)I

    move-result v0

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    rem-int/2addr v0, v1

    .line 96
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->keys:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_2

    .line 97
    :cond_1
    return v0

    .line 99
    :cond_2
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_0

    .line 100
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->sizeIndex:I

    .line 28
    sget-object v0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->TABLE_SIZES:[I

    iget v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->sizeIndex:I

    aget v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->keys:[I

    .line 29
    sget-object v0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->TABLE_SIZES:[I

    iget v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->sizeIndex:I

    aget v0, v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->values:[Ljava/lang/Object;

    .line 30
    return-void
.end method

.method private resize()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 58
    iget v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->sizeIndex:I

    sget-object v2, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->TABLE_SIZES:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    .line 59
    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->keys:[I

    .line 60
    iget-object v3, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->values:[Ljava/lang/Object;

    .line 61
    iget v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->sizeIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->sizeIndex:I

    .line 62
    sget-object v1, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->TABLE_SIZES:[I

    iget v4, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->sizeIndex:I

    aget v1, v1, v4

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->keys:[I

    .line 63
    sget-object v1, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->TABLE_SIZES:[I

    iget v4, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->sizeIndex:I

    aget v1, v1, v4

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->values:[Ljava/lang/Object;

    .line 65
    iget v4, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->size:I

    .line 66
    array-length v5, v2

    .line 67
    iput v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->size:I

    move v1, v0

    .line 68
    :goto_0
    if-ge v1, v5, :cond_1

    .line 69
    aget-object v6, v3, v1

    if-eqz v6, :cond_0

    .line 70
    aget v6, v2, v1

    aget-object v7, v3, v1

    invoke-virtual {p0, v6, v7}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->putIfAbsent(ILjava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_1
    iget v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->size:I

    if-ne v4, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkState(Z)V

    .line 77
    return-void

    .line 75
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too many items, you\'d better use array map instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->init()V

    .line 24
    return-void
.end method

.method public containsKey(I)Z
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enumerator()Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap$Enumerator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap$Enumerator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap$Enumerator;

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->keys:[I

    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->values:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap$Enumerator;-><init>([I[Ljava/lang/Object;Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap$1;)V

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->values:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->findKeyIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public putIfAbsent(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p2}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->findKeyIndex(I)I

    move-result v0

    .line 43
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->keys:[I

    aput p1, v1, v0

    .line 45
    iget v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->size:I

    .line 49
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->values:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 50
    iget v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->size:I

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->keys:[I

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->resize()V

    .line 53
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;->values:[Ljava/lang/Object;

    aget-object v0, v1, v0

    goto :goto_0
.end method
