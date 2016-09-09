.class Lcom/google/android/libraries/performance/primes/PrimesStartupNotification$1;
.super Ljava/lang/Object;
.source "PrimesStartupNotification.java"

# interfaces
.implements Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnActivityCreated;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/performance/primes/PrimesStartupNotification;->initAppMonitoring(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/performance/primes/PrimesStartupNotification;

.field final synthetic val$application:Landroid/app/Application;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/performance/primes/PrimesStartupNotification;Landroid/app/Application;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/PrimesStartupNotification$1;->this$0:Lcom/google/android/libraries/performance/primes/PrimesStartupNotification;

    iput-object p2, p0, Lcom/google/android/libraries/performance/primes/PrimesStartupNotification$1;->val$application:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesStartupNotification$1;->val$application:Landroid/app/Application;

    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;->getInstance(Landroid/app/Application;)Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;->unregister(Lcom/google/android/libraries/performance/primes/AppLifecycleListener;)V

    .line 37
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesStartupNotification$1;->this$0:Lcom/google/android/libraries/performance/primes/PrimesStartupNotification;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/PrimesStartupNotification;->firstActivityCreated()V

    .line 38
    return-void
.end method
