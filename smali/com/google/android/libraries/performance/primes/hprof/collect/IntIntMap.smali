.class public final Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;
.super Ljava/lang/Object;
.source "IntIntMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap$Enumerator;
    }
.end annotation


# static fields
.field static final TABLE_SIZES:[I


# instance fields
.field private final emptyValue:I

.field private keys:[I

.field private size:I

.field private sizeIndex:I

.field private values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->TABLE_SIZES:[I

    return-void

    :array_0
    .array-data 4
        0x5
        0xb
        0x17
        0x2f
        0x61
        0xc5
        0x18d
        0x31d
        0x63d
        0xc83
        0x1915
        0x3235
        0x6475
        0xc8ed
        0x191dd
        0x323bf
        0x64787
        0xc8f4d
        0x191e9d
        0x323d49
        0x647a97
        0xc8f539
        0x191ea81
        0x323d521
        0x647aa43
        0xc8f5489
        0x191ea927
        0x323d525b
        0x647aa4bf
        0x7fffffed
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;-><init>(I)V

    .line 64
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->emptyValue:I

    .line 68
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->init()V

    .line 69
    return-void
.end method

.method private findKeyIndex(I)I
    .locals 4

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->keys:[I

    array-length v1, v0

    .line 142
    invoke-static {p1}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->hash(I)I

    move-result v0

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    rem-int/2addr v0, v1

    .line 144
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->values:[I

    aget v2, v2, v0

    iget v3, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->emptyValue:I

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->keys:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_2

    .line 145
    :cond_1
    return v0

    .line 147
    :cond_2
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_0

    .line 148
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static hash(I)I
    .locals 2

    .prologue
    .line 53
    shl-int/lit8 v0, p0, 0x1

    shl-int/lit8 v1, p0, 0x8

    sub-int/2addr v0, v1

    return v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->sizeIndex:I

    .line 77
    sget-object v0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->TABLE_SIZES:[I

    iget v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->sizeIndex:I

    aget v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->keys:[I

    .line 78
    sget-object v0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->TABLE_SIZES:[I

    iget v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->sizeIndex:I

    aget v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->values:[I

    .line 79
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->values:[I

    iget v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->emptyValue:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 80
    return-void
.end method

.method private resize()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 106
    iget v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->sizeIndex:I

    sget-object v2, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->TABLE_SIZES:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    .line 107
    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->keys:[I

    .line 108
    iget-object v3, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->values:[I

    .line 109
    iget v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->sizeIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->sizeIndex:I

    .line 110
    sget-object v1, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->TABLE_SIZES:[I

    iget v4, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->sizeIndex:I

    aget v1, v1, v4

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->keys:[I

    .line 111
    sget-object v1, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->TABLE_SIZES:[I

    iget v4, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->sizeIndex:I

    aget v1, v1, v4

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->values:[I

    .line 112
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->values:[I

    iget v4, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->emptyValue:I

    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([II)V

    .line 114
    iget v4, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->size:I

    .line 115
    array-length v5, v2

    .line 116
    iput v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->size:I

    move v1, v0

    .line 117
    :goto_0
    if-ge v1, v5, :cond_1

    .line 118
    aget v6, v3, v1

    iget v7, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->emptyValue:I

    if-eq v6, v7, :cond_0

    .line 119
    aget v6, v2, v1

    aget v7, v3, v1

    invoke-virtual {p0, v6, v7}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->putIfAbsent(II)I

    .line 117
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_1
    iget v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->size:I

    if-ne v4, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkState(Z)V

    .line 126
    return-void

    .line 124
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
    .line 72
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->init()V

    .line 73
    return-void
.end method

.method public containsKey(I)Z
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->get(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->emptyValue:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enumerator()Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap$Enumerator;
    .locals 4

    .prologue
    .line 168
    new-instance v0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap$Enumerator;

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->keys:[I

    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->values:[I

    iget v3, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->emptyValue:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap$Enumerator;-><init>([I[II)V

    return-object v0
.end method

.method public get(I)I
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->values:[I

    invoke-direct {p0, p1}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->findKeyIndex(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public putIfAbsent(II)I
    .locals 3

    .prologue
    .line 90
    iget v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->emptyValue:I

    if-eq p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot add emptyValue to map"

    invoke-static {v0, v1}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->findKeyIndex(I)I

    move-result v0

    .line 92
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->values:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->emptyValue:I

    if-ne v1, v2, :cond_2

    .line 93
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->keys:[I

    aput p1, v1, v0

    .line 94
    iget v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->size:I

    .line 98
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->values:[I

    aput p2, v1, v0

    .line 99
    iget v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->size:I

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->keys:[I

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->resize()V

    .line 102
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->emptyValue:I

    :goto_1
    return v0

    .line 90
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;->values:[I

    aget v0, v1, v0

    goto :goto_1
.end method
