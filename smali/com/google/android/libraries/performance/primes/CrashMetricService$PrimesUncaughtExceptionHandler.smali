.class Lcom/google/android/libraries/performance/primes/CrashMetricService$PrimesUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "CrashMetricService.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/performance/primes/CrashMetricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrimesUncaughtExceptionHandler"
.end annotation


# instance fields
.field private final handlerToWrap:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final synthetic this$0:Lcom/google/android/libraries/performance/primes/CrashMetricService;


# direct methods
.method static synthetic access$000(Lcom/google/android/libraries/performance/primes/CrashMetricService$PrimesUncaughtExceptionHandler;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/CrashMetricService$PrimesUncaughtExceptionHandler;->handlerToWrap:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/CrashMetricService$PrimesUncaughtExceptionHandler;->this$0:Lcom/google/android/libraries/performance/primes/CrashMetricService;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/CrashMetricService;->shouldRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/CrashMetric;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/CrashMetric;-><init>()V

    .line 108
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Llogs/proto/wireless/performance/mobile/nano/CrashMetric;->hasCrashed:Ljava/lang/Boolean;

    .line 109
    new-instance v1, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;

    invoke-direct {v1}, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;-><init>()V

    .line 110
    iput-object v0, v1, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->crashMetric:Llogs/proto/wireless/performance/mobile/nano/CrashMetric;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :try_start_1
    iget-object v0, v1, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->crashMetric:Llogs/proto/wireless/performance/mobile/nano/CrashMetric;

    new-instance v2, Llogs/proto/wireless/performance/mobile/nano/ProcessStats;

    invoke-direct {v2}, Llogs/proto/wireless/performance/mobile/nano/ProcessStats;-><init>()V

    iput-object v2, v0, Llogs/proto/wireless/performance/mobile/nano/CrashMetric;->processStats:Llogs/proto/wireless/performance/mobile/nano/ProcessStats;

    .line 113
    iget-object v0, v1, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->crashMetric:Llogs/proto/wireless/performance/mobile/nano/CrashMetric;

    iget-object v0, v0, Llogs/proto/wireless/performance/mobile/nano/CrashMetric;->processStats:Llogs/proto/wireless/performance/mobile/nano/ProcessStats;

    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/CrashMetricService$PrimesUncaughtExceptionHandler;->this$0:Lcom/google/android/libraries/performance/primes/CrashMetricService;

    .line 114
    invoke-virtual {v2}, Lcom/google/android/libraries/performance/primes/CrashMetricService;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/performance/primes/metriccapture/ProcessStatsCapture;->getAndroidProcessStats(Landroid/content/Context;)Llogs/proto/wireless/performance/mobile/nano/AndroidProcessStats;

    move-result-object v2

    iput-object v2, v0, Llogs/proto/wireless/performance/mobile/nano/ProcessStats;->androidProcessStats:Llogs/proto/wireless/performance/mobile/nano/AndroidProcessStats;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/CrashMetricService$PrimesUncaughtExceptionHandler;->this$0:Lcom/google/android/libraries/performance/primes/CrashMetricService;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/performance/primes/CrashMetricService;->recordSystemHealthMetric(Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/CrashMetricService$PrimesUncaughtExceptionHandler;->this$0:Lcom/google/android/libraries/performance/primes/CrashMetricService;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/CrashMetricService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/PrimesHprofFile;->deleteHeapDumpIfExists(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/CrashMetricService$PrimesUncaughtExceptionHandler;->handlerToWrap:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/CrashMetricService$PrimesUncaughtExceptionHandler;->handlerToWrap:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 128
    :cond_1
    :goto_1
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    :try_start_3
    const-string v2, "CrashMetricService"

    const-string v3, "Failed to get process stats."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 121
    :catch_1
    move-exception v0

    .line 122
    :try_start_4
    const-string v1, "CrashMetricService"

    const-string v2, "Failed to record crash."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 124
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/CrashMetricService$PrimesUncaughtExceptionHandler;->handlerToWrap:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/CrashMetricService$PrimesUncaughtExceptionHandler;->handlerToWrap:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 124
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/CrashMetricService$PrimesUncaughtExceptionHandler;->handlerToWrap:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/CrashMetricService$PrimesUncaughtExceptionHandler;->handlerToWrap:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_2
    throw v0
.end method
