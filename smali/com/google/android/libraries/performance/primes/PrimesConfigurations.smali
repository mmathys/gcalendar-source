.class public final Lcom/google/android/libraries/performance/primes/PrimesConfigurations;
.super Ljava/lang/Object;
.source "PrimesConfigurations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;
    }
.end annotation


# instance fields
.field final crashConfigurations:Lcom/google/android/libraries/performance/primes/PrimesCrashConfigurations;

.field final jankConfigurationsSupplier:Lcom/google/android/libraries/performance/primes/PrimesJankConfigurationsSupplier;

.field final memoryConfigurations:Lcom/google/android/libraries/performance/primes/PrimesMemoryConfigurations;

.field final networkConfigurations:Lcom/google/android/libraries/performance/primes/PrimesNetworkConfigurations;

.field final packageConfigurations:Lcom/google/android/libraries/performance/primes/PrimesPackageConfigurations;

.field final timerConfigurations:Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/performance/primes/PrimesMemoryConfigurations;Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;Lcom/google/android/libraries/performance/primes/PrimesCrashConfigurations;Lcom/google/android/libraries/performance/primes/PrimesNetworkConfigurations;Lcom/google/android/libraries/performance/primes/PrimesPackageConfigurations;Lcom/google/android/libraries/performance/primes/PrimesJankConfigurationsSupplier;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/PrimesConfigurations;->memoryConfigurations:Lcom/google/android/libraries/performance/primes/PrimesMemoryConfigurations;

    .line 24
    iput-object p2, p0, Lcom/google/android/libraries/performance/primes/PrimesConfigurations;->timerConfigurations:Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;

    .line 25
    iput-object p3, p0, Lcom/google/android/libraries/performance/primes/PrimesConfigurations;->crashConfigurations:Lcom/google/android/libraries/performance/primes/PrimesCrashConfigurations;

    .line 26
    iput-object p4, p0, Lcom/google/android/libraries/performance/primes/PrimesConfigurations;->networkConfigurations:Lcom/google/android/libraries/performance/primes/PrimesNetworkConfigurations;

    .line 27
    iput-object p5, p0, Lcom/google/android/libraries/performance/primes/PrimesConfigurations;->packageConfigurations:Lcom/google/android/libraries/performance/primes/PrimesPackageConfigurations;

    .line 28
    iput-object p6, p0, Lcom/google/android/libraries/performance/primes/PrimesConfigurations;->jankConfigurationsSupplier:Lcom/google/android/libraries/performance/primes/PrimesJankConfigurationsSupplier;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/performance/primes/PrimesMemoryConfigurations;Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;Lcom/google/android/libraries/performance/primes/PrimesCrashConfigurations;Lcom/google/android/libraries/performance/primes/PrimesNetworkConfigurations;Lcom/google/android/libraries/performance/primes/PrimesPackageConfigurations;Lcom/google/android/libraries/performance/primes/PrimesJankConfigurationsSupplier;Lcom/google/android/libraries/performance/primes/PrimesConfigurations$1;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p6}, Lcom/google/android/libraries/performance/primes/PrimesConfigurations;-><init>(Lcom/google/android/libraries/performance/primes/PrimesMemoryConfigurations;Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;Lcom/google/android/libraries/performance/primes/PrimesCrashConfigurations;Lcom/google/android/libraries/performance/primes/PrimesNetworkConfigurations;Lcom/google/android/libraries/performance/primes/PrimesPackageConfigurations;Lcom/google/android/libraries/performance/primes/PrimesJankConfigurationsSupplier;)V

    return-void
.end method

.method public static newBuilder()Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;-><init>(Lcom/google/android/libraries/performance/primes/PrimesConfigurations$1;)V

    return-object v0
.end method
