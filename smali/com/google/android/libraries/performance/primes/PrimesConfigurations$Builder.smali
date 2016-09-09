.class public final Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;
.super Ljava/lang/Object;
.source "PrimesConfigurations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/performance/primes/PrimesConfigurations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private crashConfigs:Lcom/google/android/libraries/performance/primes/PrimesCrashConfigurations;

.field private jankConfigsSupplier:Lcom/google/android/libraries/performance/primes/PrimesJankConfigurationsSupplier;

.field private memoryConfigs:Lcom/google/android/libraries/performance/primes/PrimesMemoryConfigurations;

.field private networkConfigs:Lcom/google/android/libraries/performance/primes/PrimesNetworkConfigurations;

.field private packageConfigs:Lcom/google/android/libraries/performance/primes/PrimesPackageConfigurations;

.field private timerConfigs:Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/performance/primes/PrimesConfigurations$1;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/libraries/performance/primes/PrimesConfigurations;
    .locals 8

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;->memoryConfigs:Lcom/google/android/libraries/performance/primes/PrimesMemoryConfigurations;

    if-nez v0, :cond_0

    .line 84
    sget-object v0, Lcom/google/android/libraries/performance/primes/PrimesMemoryConfigurations;->DEFAULT:Lcom/google/android/libraries/performance/primes/PrimesMemoryConfigurations;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;->memoryConfigs:Lcom/google/android/libraries/performance/primes/PrimesMemoryConfigurations;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;->timerConfigs:Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;

    if-nez v0, :cond_1

    .line 87
    sget-object v0, Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;->DEFAULT:Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;->timerConfigs:Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;->crashConfigs:Lcom/google/android/libraries/performance/primes/PrimesCrashConfigurations;

    if-nez v0, :cond_2

    .line 90
    sget-object v0, Lcom/google/android/libraries/performance/primes/PrimesCrashConfigurations;->DEFAULT:Lcom/google/android/libraries/performance/primes/PrimesCrashConfigurations;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;->crashConfigs:Lcom/google/android/libraries/performance/primes/PrimesCrashConfigurations;

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;->networkConfigs:Lcom/google/android/libraries/performance/primes/PrimesNetworkConfigurations;

    if-nez v0, :cond_3

    .line 93
    sget-object v0, Lcom/google/android/libraries/performance/primes/PrimesNetworkConfigurations;->DEFAULT:Lcom/google/android/libraries/performance/primes/PrimesNetworkConfigurations;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;->networkConfigs:Lcom/google/android/libraries/performance/primes/PrimesNetworkConfigurations;

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;->packageConfigs:Lcom/google/android/libraries/performance/primes/PrimesPackageConfigurations;

    if-nez v0, :cond_4

    .line 96
    sget-object v0, Lcom/google/android/libraries/performance/primes/PrimesPackageConfigurations;->DEFAULT:Lcom/google/android/libraries/performance/primes/PrimesPackageConfigurations;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;->packageConfigs:Lcom/google/android/libraries/performance/primes/PrimesPackageConfigurations;

    .line 98
    :cond_4
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;->jankConfigsSupplier:Lcom/google/android/libraries/performance/primes/PrimesJankConfigurationsSupplier;

    if-nez v0, :cond_5

    .line 99
    new-instance v0, Lcom/google/android/libraries/performance/primes/PrimesJankConfigurationsSupplier;

    invoke-direct {v0}, Lcom/google/android/libraries/performance/primes/PrimesJankConfigurationsSupplier;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;->jankConfigsSupplier:Lcom/google/android/libraries/performance/primes/PrimesJankConfigurationsSupplier;

    .line 102
    :cond_5
    new-instance v0, Lcom/google/android/libraries/performance/primes/PrimesConfigurations;

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;->memoryConfigs:Lcom/google/android/libraries/performance/primes/PrimesMemoryConfigurations;

    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;->timerConfigs:Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;

    iget-object v3, p0, Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;->crashConfigs:Lcom/google/android/libraries/performance/primes/PrimesCrashConfigurations;

    iget-object v4, p0, Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;->networkConfigs:Lcom/google/android/libraries/performance/primes/PrimesNetworkConfigurations;

    iget-object v5, p0, Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;->packageConfigs:Lcom/google/android/libraries/performance/primes/PrimesPackageConfigurations;

    iget-object v6, p0, Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;->jankConfigsSupplier:Lcom/google/android/libraries/performance/primes/PrimesJankConfigurationsSupplier;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/libraries/performance/primes/PrimesConfigurations;-><init>(Lcom/google/android/libraries/performance/primes/PrimesMemoryConfigurations;Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;Lcom/google/android/libraries/performance/primes/PrimesCrashConfigurations;Lcom/google/android/libraries/performance/primes/PrimesNetworkConfigurations;Lcom/google/android/libraries/performance/primes/PrimesPackageConfigurations;Lcom/google/android/libraries/performance/primes/PrimesJankConfigurationsSupplier;Lcom/google/android/libraries/performance/primes/PrimesConfigurations$1;)V

    return-object v0
.end method

.method public setMemoryConfigurations(Lcom/google/android/libraries/performance/primes/PrimesMemoryConfigurations;)Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;->memoryConfigs:Lcom/google/android/libraries/performance/primes/PrimesMemoryConfigurations;

    .line 51
    return-object p0
.end method

.method public setTimerConfigurations(Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;)Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/PrimesConfigurations$Builder;->timerConfigs:Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;

    .line 56
    return-object p0
.end method
