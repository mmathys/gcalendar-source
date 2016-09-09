.class public Lcom/google/android/calendar/extensions/ActivationLoggerImpl;
.super Ljava/lang/Object;
.source "ActivationLoggerImpl.java"

# interfaces
.implements Lcom/android/calendar/ActivationLogger;


# instance fields
.field private mClearcutManager:Lcom/google/android/calendar/loggers/ClearcutManager;

.field private mRlzTracker:Lcom/google/android/calendar/rlz/RlzTracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private logAction(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/calendar/extensions/ActivationLoggerImpl;->mClearcutManager:Lcom/google/android/calendar/loggers/ClearcutManager;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/google/android/calendar/extensions/ActivationLoggerImpl;->mClearcutManager:Lcom/google/android/calendar/loggers/ClearcutManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/calendar/loggers/ClearcutManager;->logAction(ILjava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method

.method private recordRlzUse()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/calendar/extensions/ActivationLoggerImpl;->mRlzTracker:Lcom/google/android/calendar/rlz/RlzTracker;

    invoke-virtual {v0}, Lcom/google/android/calendar/rlz/RlzTracker;->recordUseEvent()V

    .line 67
    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 30
    const-string v0, "ActivationLogger"

    const-string v1, "Expecting application context."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 33
    :cond_0
    sget v0, Lcom/android/calendar/R$string;->rlz_access_points:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/google/android/calendar/rlz/RlzTracker;

    invoke-static {p1, v0}, Lcom/google/android/calendar/rlz/RlzConfig;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/calendar/rlz/RlzConfig;

    move-result-object v2

    .line 37
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getVersionSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/calendar/rlz/RlzTracker;-><init>(Landroid/content/Context;Lcom/google/android/calendar/rlz/RlzConfig;Landroid/content/SharedPreferences;)V

    iput-object v1, p0, Lcom/google/android/calendar/extensions/ActivationLoggerImpl;->mRlzTracker:Lcom/google/android/calendar/rlz/RlzTracker;

    .line 38
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    invoke-static {p1, v0}, Lcom/google/android/calendar/loggers/ClearcutManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/calendar/loggers/ClearcutManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/extensions/ActivationLoggerImpl;->mClearcutManager:Lcom/google/android/calendar/loggers/ClearcutManager;

    .line 42
    :cond_1
    return-void
.end method

.method public userCreatedNewEvent(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 46
    const-string v0, "ActivationLogger"

    const-string v1, "userCreatedNewEvent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 47
    invoke-direct {p0}, Lcom/google/android/calendar/extensions/ActivationLoggerImpl;->recordRlzUse()V

    .line 48
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/calendar/extensions/ActivationLoggerImpl;->logAction(ILjava/lang/String;)V

    .line 49
    return-void
.end method

.method public userModifiedEvent(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 53
    const-string v0, "ActivationLogger"

    const-string v1, "userModifiedEvent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 54
    invoke-direct {p0}, Lcom/google/android/calendar/extensions/ActivationLoggerImpl;->recordRlzUse()V

    .line 55
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/calendar/extensions/ActivationLoggerImpl;->logAction(ILjava/lang/String;)V

    .line 56
    return-void
.end method

.method public userRespondedToInvite(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 60
    const-string v0, "ActivationLogger"

    const-string v1, "userRespondedToInvite"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 61
    invoke-direct {p0}, Lcom/google/android/calendar/extensions/ActivationLoggerImpl;->recordRlzUse()V

    .line 62
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/google/android/calendar/extensions/ActivationLoggerImpl;->logAction(ILjava/lang/String;)V

    .line 63
    return-void
.end method
