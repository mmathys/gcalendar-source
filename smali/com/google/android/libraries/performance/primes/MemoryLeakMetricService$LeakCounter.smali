.class Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;
.super Ljava/lang/Object;
.source "MemoryLeakMetricService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LeakCounter"
.end annotation


# instance fields
.field private leaked:I

.field private released:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$1;)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;)I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;->released:I

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;I)I
    .locals 0

    .prologue
    .line 301
    iput p1, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;->released:I

    return p1
.end method

.method static synthetic access$208(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;)I
    .locals 2

    .prologue
    .line 301
    iget v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;->released:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;->released:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;)I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;->leaked:I

    return v0
.end method

.method static synthetic access$302(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;I)I
    .locals 0

    .prologue
    .line 301
    iput p1, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;->leaked:I

    return p1
.end method

.method static synthetic access$308(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;)I
    .locals 2

    .prologue
    .line 301
    iget v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;->leaked:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$LeakCounter;->leaked:I

    return v0
.end method
