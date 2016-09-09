.class public final Lcom/google/android/libraries/performance/primes/hprof/HprofClassInstance;
.super Lcom/google/android/libraries/performance/primes/hprof/HprofObject;
.source "HprofClassInstance.java"


# instance fields
.field public final clazz:Lcom/google/android/libraries/performance/primes/hprof/HprofClass;


# direct methods
.method protected constructor <init>(ILcom/google/android/libraries/performance/primes/hprof/HprofClass;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/libraries/performance/primes/hprof/HprofObject;-><init>(I)V

    .line 40
    invoke-static {p2}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClassInstance;->clazz:Lcom/google/android/libraries/performance/primes/hprof/HprofClass;

    .line 41
    return-void
.end method


# virtual methods
.method public describeType(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClassInstance;->clazz:Lcom/google/android/libraries/performance/primes/hprof/HprofClass;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->getClassName(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;)I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClassInstance;->clazz:Lcom/google/android/libraries/performance/primes/hprof/HprofClass;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->getFieldsCount()I

    move-result v0

    return v0
.end method

.method public getChildName(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClassInstance;->clazz:Lcom/google/android/libraries/performance/primes/hprof/HprofClass;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->getFieldName(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildValue(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;I)I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/hprof/HprofClassInstance;->clazz:Lcom/google/android/libraries/performance/primes/hprof/HprofClass;

    invoke-virtual {v0, p1, p0, p2}, Lcom/google/android/libraries/performance/primes/hprof/HprofClass;->getFieldValue(Lcom/google/android/libraries/performance/primes/hprof/ParseContext;Lcom/google/android/libraries/performance/primes/hprof/HprofClassInstance;I)I

    move-result v0

    return v0
.end method
