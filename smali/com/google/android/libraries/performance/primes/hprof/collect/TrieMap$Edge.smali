.class Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;
.super Ljava/lang/Object;
.source "TrieMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Edge"
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
.field private edges:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$1;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;)Landroid/support/v4/util/SparseArrayCompat;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;->edges:Landroid/support/v4/util/SparseArrayCompat;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;Landroid/support/v4/util/SparseArrayCompat;)Landroid/support/v4/util/SparseArrayCompat;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;->edges:Landroid/support/v4/util/SparseArrayCompat;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;->value:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/hprof/collect/TrieMap$Edge;->value:Ljava/lang/Object;

    return-object p1
.end method
