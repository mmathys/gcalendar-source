.class public Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap$Enumerator;
.super Ljava/lang/Object;
.source "IntIntMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Enumerator"
.end annotation


# instance fields
.field private final emptyValue:I

.field private key:I

.field private final keys:[I

.field private nextIndex:I

.field private value:I

.field private final values:[I


# direct methods
.method public constructor <init>([I[II)V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap$Enumerator;->keys:[I

    .line 183
    iput-object p2, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap$Enumerator;->values:[I

    .line 184
    iput p3, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap$Enumerator;->emptyValue:I

    .line 185
    return-void
.end method


# virtual methods
.method public getKey()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap$Enumerator;->key:I

    return v0
.end method

.method public next()Z
    .locals 3

    .prologue
    .line 192
    iget v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap$Enumerator;->emptyValue:I

    iput v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap$Enumerator;->value:I

    .line 193
    :goto_0
    iget v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap$Enumerator;->value:I

    iget v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap$Enumerator;->emptyValue:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap$Enumerator;->nextIndex:I

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap$Enumerator;->values:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap$Enumerator;->values:[I

    iget v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap$Enumerator;->nextIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap$Enumerator;->nextIndex:I

    aget v0, v0, v1

    iput v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap$Enumerator;->value:I

    goto :goto_0

    .line 196
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap$Enumerator;->nextIndex:I

    if-lez v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap$Enumerator;->keys:[I

    iget v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap$Enumerator;->nextIndex:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap$Enumerator;->key:I

    .line 199
    :cond_1
    iget v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap$Enumerator;->value:I

    iget v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntIntMap$Enumerator;->emptyValue:I

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
