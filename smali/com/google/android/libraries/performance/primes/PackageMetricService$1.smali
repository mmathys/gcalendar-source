.class Lcom/google/android/libraries/performance/primes/PackageMetricService$1;
.super Ljava/lang/Object;
.source "PackageMetricService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/performance/primes/PackageMetricService;->sendInBackground()Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/performance/primes/PackageMetricService;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/performance/primes/PackageMetricService;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/PackageMetricService$1;->this$0:Lcom/google/android/libraries/performance/primes/PackageMetricService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 128
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PackageMetricService$1;->this$0:Lcom/google/android/libraries/performance/primes/PackageMetricService;

    # getter for: Lcom/google/android/libraries/performance/primes/PackageMetricService;->application:Landroid/app/Application;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/PackageMetricService;->access$000(Lcom/google/android/libraries/performance/primes/PackageMetricService;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture;->getPackageStats(Landroid/content/Context;)Landroid/content/pm/PackageStats;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_3

    .line 130
    new-instance v1, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;

    invoke-direct {v1}, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;-><init>()V

    .line 131
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/PackageMetricService;->statsToProto(Landroid/content/pm/PackageStats;)Llogs/proto/wireless/performance/mobile/nano/PackageMetric;

    move-result-object v0

    iput-object v0, v1, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->packageMetric:Llogs/proto/wireless/performance/mobile/nano/PackageMetric;

    .line 132
    const-string v2, "PackageMetricService"

    const-string v3, "pkgMetric: "

    iget-object v0, v1, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->packageMetric:Llogs/proto/wireless/performance/mobile/nano/PackageMetric;

    invoke-virtual {v0}, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PackageMetricService$1;->this$0:Lcom/google/android/libraries/performance/primes/PackageMetricService;

    # getter for: Lcom/google/android/libraries/performance/primes/PackageMetricService;->metricRecorder:Lcom/google/android/libraries/performance/primes/MetricRecorder;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/PackageMetricService;->access$100(Lcom/google/android/libraries/performance/primes/PackageMetricService;)Lcom/google/android/libraries/performance/primes/MetricRecorder;

    move-result-object v0

    invoke-virtual {v0, v5, v1, v5}, Lcom/google/android/libraries/performance/primes/MetricRecorder;->record(Ljava/lang/String;Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;Llogs/proto/wireless/performance/mobile/nano/MetricExtension;)V

    .line 134
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PackageMetricService$1;->this$0:Lcom/google/android/libraries/performance/primes/PackageMetricService;

    # getter for: Lcom/google/android/libraries/performance/primes/PackageMetricService;->application:Landroid/app/Application;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/PackageMetricService;->access$000(Lcom/google/android/libraries/performance/primes/PackageMetricService;)Landroid/app/Application;

    move-result-object v0

    # invokes: Lcom/google/android/libraries/performance/primes/PackageMetricService;->getSharedPreferences(Landroid/app/Application;)Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/PackageMetricService;->access$200(Landroid/app/Application;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastSendTime"

    .line 135
    invoke-static {}, Lcom/google/android/libraries/performance/primes/metriccapture/TimeCapture;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 136
    :goto_1
    const-string v1, "PackageMetricService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "PackageMetricService"

    const-string v1, "Failure storing timestamp persistently"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    :goto_2
    return-void

    .line 132
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 140
    :cond_3
    const-string v0, "PackageMetricService"

    const-string v1, "PackageStats capture failed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
