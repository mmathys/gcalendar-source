.class public Lcom/google/android/calendar/rlz/RlzConfig;
.super Ljava/lang/Object;
.source "RlzConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/google/android/calendar/rlz/RlzConfig;


# instance fields
.field private final mAccessPoints:[Ljava/lang/String;

.field private final mBrandCode:Ljava/lang/String;

.field private final mIsPreInstalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/google/android/calendar/rlz/RlzConfig;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/rlz/RlzConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/android/calendar/rlz/RlzConfig;->mBrandCode:Ljava/lang/String;

    .line 56
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/rlz/RlzConfig;->mAccessPoints:[Ljava/lang/String;

    .line 57
    iput-boolean p3, p0, Lcom/google/android/calendar/rlz/RlzConfig;->mIsPreInstalled:Z

    .line 58
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/calendar/rlz/RlzConfig;
    .locals 4

    .prologue
    .line 36
    const-class v1, Lcom/google/android/calendar/rlz/RlzConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/calendar/rlz/RlzConfig;->sInstance:Lcom/google/android/calendar/rlz/RlzConfig;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/google/android/calendar/rlz/RlzConfig;

    const-string v2, "ro.com.google.rlzbrandcode"

    .line 39
    invoke-static {v2}, Lcom/google/android/calendar/rlz/RlzConfig;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-static {p0}, Lcom/google/android/calendar/ApplicationUtils;->isSystemApp(Landroid/content/Context;)Z

    move-result v3

    invoke-direct {v0, v2, p1, v3}, Lcom/google/android/calendar/rlz/RlzConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/android/calendar/rlz/RlzConfig;->sInstance:Lcom/google/android/calendar/rlz/RlzConfig;

    .line 44
    :cond_0
    sget-object v0, Lcom/google/android/calendar/rlz/RlzConfig;->sInstance:Lcom/google/android/calendar/rlz/RlzConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 91
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 92
    const-string v1, "get"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 93
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 101
    :goto_0
    return-object v0

    .line 94
    :catch_0
    move-exception v0

    .line 99
    :goto_1
    sget-object v1, Lcom/google/android/calendar/rlz/RlzConfig;->TAG:Ljava/lang/String;

    const-string v2, "Getting system property"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 101
    const-string v0, ""

    goto :goto_0

    .line 94
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public getAccessPoints()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/calendar/rlz/RlzConfig;->mAccessPoints:[Ljava/lang/String;

    return-object v0
.end method

.method public getBrandCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/calendar/rlz/RlzConfig;->mBrandCode:Ljava/lang/String;

    return-object v0
.end method

.method public isPreInstalled()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/google/android/calendar/rlz/RlzConfig;->mIsPreInstalled:Z

    return v0
.end method

.method public isRlzEnabled()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/calendar/rlz/RlzConfig;->mBrandCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
