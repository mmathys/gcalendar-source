.class public final Lcom/google/android/libraries/performance/primes/metriccapture/MemoryUsageCapture;
.super Ljava/lang/Object;
.source "MemoryUsageCapture.java"


# static fields
.field private static otherPssGetter:Ljava/lang/reflect/Method;

.field private static otherPssGetterInitialized:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMemoryUsageMetric(IILjava/lang/String;Landroid/content/Context;Z)Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 113
    invoke-static {}, Lcom/google/android/libraries/stitch/util/ThreadUtil;->ensureBackgroundThread()V

    .line 114
    invoke-static {p3}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;-><init>()V

    .line 117
    new-instance v1, Llogs/proto/wireless/performance/mobile/nano/MemoryStats;

    invoke-direct {v1}, Llogs/proto/wireless/performance/mobile/nano/MemoryStats;-><init>()V

    iput-object v1, v0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->memoryStats:Llogs/proto/wireless/performance/mobile/nano/MemoryStats;

    .line 118
    invoke-static {p3}, Lcom/google/android/libraries/performance/primes/metriccapture/ProcessStats;->getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v1

    .line 121
    iget-object v2, v0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->memoryStats:Llogs/proto/wireless/performance/mobile/nano/MemoryStats;

    aget-object v1, v1, v3

    invoke-static {v1, p4}, Lcom/google/android/libraries/performance/primes/metriccapture/MemoryUsageCapture;->toAndroidMemoryStats(Landroid/os/Debug$MemoryInfo;Z)Llogs/proto/wireless/performance/mobile/nano/AndroidMemoryStats;

    move-result-object v1

    iput-object v1, v2, Llogs/proto/wireless/performance/mobile/nano/MemoryStats;->androidMemoryStats:Llogs/proto/wireless/performance/mobile/nano/AndroidMemoryStats;

    .line 122
    new-instance v1, Llogs/proto/wireless/performance/mobile/nano/ProcessStats;

    invoke-direct {v1}, Llogs/proto/wireless/performance/mobile/nano/ProcessStats;-><init>()V

    iput-object v1, v0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->processStats:Llogs/proto/wireless/performance/mobile/nano/ProcessStats;

    .line 123
    iget-object v1, v0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->processStats:Llogs/proto/wireless/performance/mobile/nano/ProcessStats;

    .line 124
    invoke-static {p2, p3}, Lcom/google/android/libraries/performance/primes/metriccapture/ProcessStatsCapture;->getAndroidProcessStats(Ljava/lang/String;Landroid/content/Context;)Llogs/proto/wireless/performance/mobile/nano/AndroidProcessStats;

    move-result-object v2

    iput-object v2, v1, Llogs/proto/wireless/performance/mobile/nano/ProcessStats;->androidProcessStats:Llogs/proto/wireless/performance/mobile/nano/AndroidProcessStats;

    .line 125
    new-instance v1, Llogs/proto/wireless/performance/mobile/nano/DeviceStats;

    invoke-direct {v1}, Llogs/proto/wireless/performance/mobile/nano/DeviceStats;-><init>()V

    iput-object v1, v0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->deviceStats:Llogs/proto/wireless/performance/mobile/nano/DeviceStats;

    .line 126
    iget-object v1, v0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->deviceStats:Llogs/proto/wireless/performance/mobile/nano/DeviceStats;

    invoke-static {p3}, Lcom/google/android/libraries/performance/primes/metriccapture/ProcessStats;->isScreenOn(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Llogs/proto/wireless/performance/mobile/nano/DeviceStats;->isScreenOn:Ljava/lang/Boolean;

    .line 127
    iput p0, v0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->memoryEventCode:I

    .line 128
    return-object v0
.end method

.method public static getMemoryUsageMetric(ILandroid/content/Context;Z)Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;
    .locals 2

    .prologue
    .line 92
    .line 93
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/4 v1, 0x0

    .line 92
    invoke-static {p0, v0, v1, p1, p2}, Lcom/google/android/libraries/performance/primes/metriccapture/MemoryUsageCapture;->getMemoryUsageMetric(IILjava/lang/String;Landroid/content/Context;Z)Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;

    move-result-object v0

    return-object v0
.end method

.method static getOtherGraphicsPss(Landroid/os/Debug$MemoryInfo;)I
    .locals 4

    .prologue
    .line 60
    invoke-static {}, Lcom/google/android/libraries/performance/primes/metriccapture/MemoryUsageCapture;->getOtherPssGetter()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 63
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 70
    :goto_0
    return v0

    .line 64
    :catch_0
    move-exception v0

    .line 66
    :goto_1
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/libraries/performance/primes/metriccapture/MemoryUsageCapture;->otherPssGetter:Ljava/lang/reflect/Method;

    .line 67
    const-string v1, "PrimesMemoryCapture"

    const-string v2, "MemoryInfo.getOtherPss(which) invocation failure"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 64
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static getOtherPssGetter()Ljava/lang/reflect/Method;
    .locals 6

    .prologue
    .line 42
    sget-boolean v0, Lcom/google/android/libraries/performance/primes/metriccapture/MemoryUsageCapture;->otherPssGetterInitialized:Z

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/google/android/libraries/performance/primes/metriccapture/MemoryUsageCapture;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-boolean v0, Lcom/google/android/libraries/performance/primes/metriccapture/MemoryUsageCapture;->otherPssGetterInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 46
    :try_start_1
    const-class v0, Landroid/os/Debug$MemoryInfo;

    const-string v2, "getOtherPss"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/performance/primes/metriccapture/MemoryUsageCapture;->otherPssGetter:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :goto_0
    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lcom/google/android/libraries/performance/primes/metriccapture/MemoryUsageCapture;->otherPssGetterInitialized:Z

    .line 54
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    :cond_1
    sget-object v0, Lcom/google/android/libraries/performance/primes/metriccapture/MemoryUsageCapture;->otherPssGetter:Ljava/lang/reflect/Method;

    return-object v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    :try_start_3
    const-string v2, "PrimesMemoryCapture"

    const-string v3, "MemoryInfo.getOtherPss(which) not found"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 49
    :catch_1
    move-exception v0

    .line 50
    :goto_1
    :try_start_4
    const-string v2, "PrimesMemoryCapture"

    const-string v3, "MemoryInfo.getOtherPss(which) failure"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 49
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method static toAndroidMemoryStats(Landroid/os/Debug$MemoryInfo;Z)Llogs/proto/wireless/performance/mobile/nano/AndroidMemoryStats;
    .locals 3

    .prologue
    const/16 v2, 0x13

    .line 134
    new-instance v1, Llogs/proto/wireless/performance/mobile/nano/AndroidMemoryStats;

    invoke-direct {v1}, Llogs/proto/wireless/performance/mobile/nano/AndroidMemoryStats;-><init>()V

    .line 135
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Llogs/proto/wireless/performance/mobile/nano/AndroidMemoryStats;->dalvikPssKb:Ljava/lang/Integer;

    .line 136
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Llogs/proto/wireless/performance/mobile/nano/AndroidMemoryStats;->nativePssKb:Ljava/lang/Integer;

    .line 137
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Llogs/proto/wireless/performance/mobile/nano/AndroidMemoryStats;->otherPssKb:Ljava/lang/Integer;

    .line 138
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Llogs/proto/wireless/performance/mobile/nano/AndroidMemoryStats;->dalvikPrivateDirtyKb:Ljava/lang/Integer;

    .line 139
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Llogs/proto/wireless/performance/mobile/nano/AndroidMemoryStats;->nativePrivateDirtyKb:Ljava/lang/Integer;

    .line 140
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Llogs/proto/wireless/performance/mobile/nano/AndroidMemoryStats;->otherPrivateDirtyKb:Ljava/lang/Integer;

    .line 141
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_0

    .line 142
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Llogs/proto/wireless/performance/mobile/nano/AndroidMemoryStats;->totalPrivateCleanKb:Ljava/lang/Integer;

    .line 143
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Llogs/proto/wireless/performance/mobile/nano/AndroidMemoryStats;->totalSwappablePssKb:Ljava/lang/Integer;

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Llogs/proto/wireless/performance/mobile/nano/AndroidMemoryStats;->totalSharedDirtyKb:Ljava/lang/Integer;

    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1

    .line 149
    invoke-static {p0}, Lcom/google/android/libraries/performance/primes/metriccapture/MemoryUsageCapture;->getOtherGraphicsPss(Landroid/os/Debug$MemoryInfo;)I

    move-result v0

    .line 150
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 151
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Llogs/proto/wireless/performance/mobile/nano/AndroidMemoryStats;->otherGraphicsPssKb:Ljava/lang/Integer;

    .line 154
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_2

    if-nez p1, :cond_2

    .line 156
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getMemoryStats()Ljava/util/Map;

    move-result-object v2

    .line 157
    const-string v0, "summary.code"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/metriccapture/MemoryUsageCapture;->toInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Llogs/proto/wireless/performance/mobile/nano/AndroidMemoryStats;->summaryCodeKb:Ljava/lang/Integer;

    .line 158
    const-string v0, "summary.stack"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/metriccapture/MemoryUsageCapture;->toInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Llogs/proto/wireless/performance/mobile/nano/AndroidMemoryStats;->summaryStackKb:Ljava/lang/Integer;

    .line 159
    const-string v0, "summary.graphics"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/metriccapture/MemoryUsageCapture;->toInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Llogs/proto/wireless/performance/mobile/nano/AndroidMemoryStats;->summaryGraphicsKb:Ljava/lang/Integer;

    .line 160
    const-string v0, "summary.system"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/metriccapture/MemoryUsageCapture;->toInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Llogs/proto/wireless/performance/mobile/nano/AndroidMemoryStats;->summarySystemKb:Ljava/lang/Integer;

    .line 161
    const-string v0, "summary.java-heap"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/metriccapture/MemoryUsageCapture;->toInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Llogs/proto/wireless/performance/mobile/nano/AndroidMemoryStats;->summaryJavaHeapKb:Ljava/lang/Integer;

    .line 162
    const-string v0, "summary.private-other"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/metriccapture/MemoryUsageCapture;->toInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Llogs/proto/wireless/performance/mobile/nano/AndroidMemoryStats;->summaryPrivateOtherKb:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_2
    :goto_0
    return-object v1

    .line 163
    :catch_0
    move-exception v0

    .line 165
    const-string v0, "PrimesMemoryCapture"

    const-string v2, "failed to collect memory summary stats"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static toInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 173
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method
