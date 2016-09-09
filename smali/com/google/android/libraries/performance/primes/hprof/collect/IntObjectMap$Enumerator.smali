.class public Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap$Enumerator;
.super Ljava/lang/Object;
.source "IntObjectMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Enumerator"
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
.field private key:I

.field private final keys:[I

.field private nextIndex:I

.field private value:Ljava/lang/Object;

.field private final values:[Ljava/lang/Object;


# direct methods
.method private constructor <init>([I[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap$Enumerator;->keys:[I

    .line 133
    iput-object p2, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap$Enumerator;->values:[Ljava/lang/Object;

    .line 134
    return-void
.end method

.method synthetic constructor <init>([I[Ljava/lang/Object;Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap$1;)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap$Enumerator;-><init>([I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap$Enumerator;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public next()Z
    .locals 3

    .prologue
    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap$Enumerator;->value:Ljava/lang/Object;

    .line 142
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap$Enumerator;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap$Enumerator;->nextIndex:I

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap$Enumerator;->values:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap$Enumerator;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap$Enumerator;->nextIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap$Enumerator;->nextIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap$Enumerator;->value:Ljava/lang/Object;

    goto :goto_0

    .line 145
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap$Enumerator;->nextIndex:I

    if-lez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap$Enumerator;->keys:[I

    iget v1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap$Enumerator;->nextIndex:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap$Enumerator;->key:I

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap$Enumerator;->value:Ljava/lang/Object;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
