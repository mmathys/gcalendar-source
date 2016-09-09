.class public final Lcom/google/android/libraries/performance/primes/hprof/ParseResult;
.super Ljava/lang/Object;
.source "ParseResult.java"


# instance fields
.field private final classInstances:Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap",
            "<",
            "Lcom/google/android/libraries/performance/primes/hprof/HprofObject;",
            ">;"
        }
    .end annotation
.end field

.field private final classes:Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap",
            "<",
            "Lcom/google/android/libraries/performance/primes/hprof/HprofClass;",
            ">;"
        }
    .end annotation
.end field

.field private final instancesFound:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/performance/primes/hprof/HprofObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private final roots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/performance/primes/hprof/HprofObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap",
            "<",
            "Lcom/google/android/libraries/performance/primes/hprof/HprofClass;",
            ">;",
            "Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap",
            "<",
            "Lcom/google/android/libraries/performance/primes/hprof/HprofObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/performance/primes/hprof/HprofObject;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/performance/primes/hprof/HprofObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/hprof/ParseResult;->classes:Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;

    .line 21
    iput-object p2, p0, Lcom/google/android/libraries/performance/primes/hprof/ParseResult;->classInstances:Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;

    .line 22
    iput-object p3, p0, Lcom/google/android/libraries/performance/primes/hprof/ParseResult;->roots:Ljava/util/List;

    .line 23
    iput-object p4, p0, Lcom/google/android/libraries/performance/primes/hprof/ParseResult;->instancesFound:Ljava/util/Map;

    .line 24
    return-void
.end method


# virtual methods
.method public getClassInstances()Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap",
            "<",
            "Lcom/google/android/libraries/performance/primes/hprof/HprofObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/ParseResult;->classInstances:Lcom/google/android/libraries/performance/primes/hprof/collect/IntObjectMap;

    return-object v0
.end method

.method public getInstancesFound()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/performance/primes/hprof/HprofObject;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/ParseResult;->instancesFound:Ljava/util/Map;

    return-object v0
.end method

.method public getRoots()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/performance/primes/hprof/HprofObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/ParseResult;->roots:Ljava/util/List;

    return-object v0
.end method
