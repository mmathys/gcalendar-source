.class final Lcom/google/android/libraries/performance/primes/MetricStamper$1;
.super Ljava/lang/Object;
.source "MetricStamper.java"

# interfaces
.implements Lcom/google/android/libraries/performance/primes/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/performance/primes/MetricStamper;->getSupplier(Landroid/app/Application;)Lcom/google/android/libraries/performance/primes/Supplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/performance/primes/Supplier",
        "<",
        "Lcom/google/android/libraries/performance/primes/MetricStamper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$application:Landroid/app/Application;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/MetricStamper$1;->val$application:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/android/libraries/performance/primes/MetricStamper;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MetricStamper$1;->val$application:Landroid/app/Application;

    # invokes: Lcom/google/android/libraries/performance/primes/MetricStamper;->getInstance(Landroid/app/Application;)Lcom/google/android/libraries/performance/primes/MetricStamper;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/MetricStamper;->access$000(Landroid/app/Application;)Lcom/google/android/libraries/performance/primes/MetricStamper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/android/libraries/performance/primes/MetricStamper$1;->get()Lcom/google/android/libraries/performance/primes/MetricStamper;

    move-result-object v0

    return-object v0
.end method
