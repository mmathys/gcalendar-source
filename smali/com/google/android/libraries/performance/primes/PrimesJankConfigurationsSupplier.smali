.class public Lcom/google/android/libraries/performance/primes/PrimesJankConfigurationsSupplier;
.super Ljava/lang/Object;
.source "PrimesJankConfigurationsSupplier.java"

# interfaces
.implements Lcom/google/android/libraries/performance/primes/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/performance/primes/Supplier",
        "<",
        "Lcom/google/android/libraries/performance/primes/PrimesJankConfigurations;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/android/libraries/performance/primes/PrimesJankConfigurations;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/google/android/libraries/performance/primes/PrimesJankConfigurations;->DEFAULT:Lcom/google/android/libraries/performance/primes/PrimesJankConfigurations;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/google/android/libraries/performance/primes/PrimesJankConfigurationsSupplier;->get()Lcom/google/android/libraries/performance/primes/PrimesJankConfigurations;

    move-result-object v0

    return-object v0
.end method
