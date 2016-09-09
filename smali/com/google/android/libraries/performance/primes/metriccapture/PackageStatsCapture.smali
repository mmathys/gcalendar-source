.class public final Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture;
.super Ljava/lang/Object;
.source "PackageStatsCapture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture$PackageStatsInvocation;,
        Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture$PackageStatsCallback;
    }
.end annotation


# static fields
.field static final GETTER_INVOCATIONS:[Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture$PackageStatsInvocation;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 112
    new-array v0, v8, [Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture$PackageStatsInvocation;

    new-instance v1, Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture$1;

    const-string v2, "getPackageSizeInfo"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    const-class v4, Landroid/content/pm/IPackageStatsObserver;

    aput-object v4, v3, v6

    invoke-direct {v1, v2, v3}, Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture$1;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture$2;

    const-string v2, "getPackageSizeInfo"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    const-class v4, Landroid/content/pm/IPackageStatsObserver;

    aput-object v4, v3, v7

    invoke-direct {v1, v2, v3}, Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture$2;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture$3;

    const-string v2, "getPackageSizeInfoAsUser"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    const-class v4, Landroid/content/pm/IPackageStatsObserver;

    aput-object v4, v3, v7

    invoke-direct {v1, v2, v3}, Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture$3;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture;->GETTER_INVOCATIONS:[Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture$PackageStatsInvocation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPackageStats(Landroid/content/Context;)Landroid/content/pm/PackageStats;
    .locals 3

    .prologue
    .line 190
    :try_start_0
    const-string v0, "PackageStatsCapture-getPackageStats"

    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/trace/PrimesTrace;->beginSection(Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/google/android/libraries/stitch/util/ThreadUtil;->ensureBackgroundThread()V

    .line 192
    invoke-static {p0}, Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture;->hasPkgPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    const-wide/16 v0, 0x3a98

    sget-object v2, Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture;->GETTER_INVOCATIONS:[Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture$PackageStatsInvocation;

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture;->getPackageStatsUsingInternalAPI(Landroid/content/Context;J[Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture$PackageStatsInvocation;)Landroid/content/pm/PackageStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 201
    invoke-static {}, Lcom/google/android/libraries/performance/primes/trace/PrimesTrace;->endSection()V

    .line 199
    :goto_0
    return-object v0

    .line 197
    :cond_0
    :try_start_1
    const-string v0, "PackageStatsCapture"

    const-string v1, "android.permission.GET_PACKAGE_SIZE required"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    const/4 v0, 0x0

    .line 201
    invoke-static {}, Lcom/google/android/libraries/performance/primes/trace/PrimesTrace;->endSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/android/libraries/performance/primes/trace/PrimesTrace;->endSection()V

    throw v0
.end method

.method static varargs getPackageStatsUsingInternalAPI(Landroid/content/Context;J[Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture$PackageStatsInvocation;)Landroid/content/pm/PackageStats;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-static {}, Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture;->isCallbackPresent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    const-string v1, "PackageStatsCapture"

    const-string v2, "Callback implementation stripped by proguard."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_0
    return-object v0

    .line 155
    :cond_0
    new-instance v2, Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture$PackageStatsCallback;

    invoke-direct {v2, v0}, Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture$PackageStatsCallback;-><init>(Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture$1;)V

    .line 157
    :try_start_0
    # invokes: Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture$PackageStatsCallback;->acquireLock()V
    invoke-static {v2}, Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture$PackageStatsCallback;->access$100(Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture$PackageStatsCallback;)V

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 161
    array-length v6, p3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_2

    aget-object v7, p3, v1

    .line 162
    invoke-virtual {v7, v3, v4, v5, v2}, Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture$PackageStatsInvocation;->invoke(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 163
    const-string v1, "PackageStatsCapture"

    const-string v3, "Success invoking PackageStats capture."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    # invokes: Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture$PackageStatsCallback;->waitForStats(J)Landroid/content/pm/PackageStats;
    invoke-static {v2, p1, p2}, Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture$PackageStatsCallback;->access$200(Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture$PackageStatsCallback;J)Landroid/content/pm/PackageStats;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 169
    :cond_2
    const-string v1, "PackageStatsCapture"

    const-string v2, "Couldn\'t capture PackageStats."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v1

    .line 171
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method private static hasPkgPermission(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.GET_PACKAGE_SIZE"

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.GET_PACKAGE_SIZE"

    .line 179
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 177
    :goto_0
    return v0

    .line 179
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCallbackPresent()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 139
    :try_start_0
    const-class v2, Lcom/google/android/libraries/performance/primes/metriccapture/PackageStatsCapture$PackageStatsCallback;

    const-string v3, "onGetStatsCompleted"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/pm/PackageStats;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 140
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    .line 139
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_0

    .line 144
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 139
    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 143
    :goto_1
    const-string v2, "PackageStatsCapture"

    const-string v3, "failure"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 144
    goto :goto_0

    .line 141
    :catch_1
    move-exception v0

    goto :goto_1
.end method
