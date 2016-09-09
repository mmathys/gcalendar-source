.class public Lcom/google/android/calendar/rlz/RlzTracker;
.super Ljava/lang/Object;
.source "RlzTracker.java"


# static fields
.field private static final RLZ_PING_INTENT_SERVICE:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mConfig:Lcom/google/android/calendar/rlz/RlzConfig;

.field private final mContext:Landroid/content/Context;

.field private final mSharedPrefs:Landroid/content/SharedPreferences;

.field private mShouldUseFirstUseBroadcast:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const-class v0, Lcom/google/android/calendar/rlz/RlzTracker;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/rlz/RlzTracker;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.partnersetup"

    const-string v2, "com.google.android.partnersetup.RlzPingBroadcastReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/calendar/rlz/RlzTracker;->RLZ_PING_INTENT_SERVICE:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/calendar/rlz/RlzConfig;Landroid/content/SharedPreferences;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/android/calendar/rlz/RlzTracker;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/google/android/calendar/rlz/RlzTracker;->mConfig:Lcom/google/android/calendar/rlz/RlzConfig;

    .line 61
    iput-object p3, p0, Lcom/google/android/calendar/rlz/RlzTracker;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 62
    iget-object v0, p0, Lcom/google/android/calendar/rlz/RlzTracker;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "sent_rlz_first_use_broadcast"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 63
    iget-object v0, p0, Lcom/google/android/calendar/rlz/RlzTracker;->mConfig:Lcom/google/android/calendar/rlz/RlzConfig;

    invoke-virtual {v0}, Lcom/google/android/calendar/rlz/RlzConfig;->isRlzEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/calendar/rlz/RlzTracker;->mShouldUseFirstUseBroadcast:Z

    .line 64
    sget-object v0, Lcom/google/android/calendar/rlz/RlzTracker;->TAG:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/google/android/calendar/rlz/RlzTracker;->TAG:Ljava/lang/String;

    const-string v4, "Initial mShouldUseFirstUseBroadcast=%b (rlzEnabled=%b,brandCode=%s,broadcastSent=%b)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/google/android/calendar/rlz/RlzTracker;->mShouldUseFirstUseBroadcast:Z

    .line 67
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v2, p0, Lcom/google/android/calendar/rlz/RlzTracker;->mConfig:Lcom/google/android/calendar/rlz/RlzConfig;

    invoke-virtual {v2}, Lcom/google/android/calendar/rlz/RlzConfig;->isRlzEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    iget-object v1, p0, Lcom/google/android/calendar/rlz/RlzTracker;->mConfig:Lcom/google/android/calendar/rlz/RlzConfig;

    invoke-virtual {v1}, Lcom/google/android/calendar/rlz/RlzConfig;->getBrandCode()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v7

    const/4 v1, 0x3

    .line 68
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    .line 65
    invoke-static {v0, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 70
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 63
    goto :goto_0
.end method

.method private static createIntent([Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 115
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 117
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.partnersetup.ACTION_RLZ_FIRST_USE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    const-string v2, "com.google.android.partnersetup.EXTRA_ACCESS_POINTS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 119
    sget-object v0, Lcom/google/android/calendar/rlz/RlzTracker;->RLZ_PING_INTENT_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 120
    return-object v1
.end method


# virtual methods
.method public recordUseEvent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    iget-boolean v0, p0, Lcom/google/android/calendar/rlz/RlzTracker;->mShouldUseFirstUseBroadcast:Z

    if-nez v0, :cond_1

    .line 79
    sget-object v0, Lcom/google/android/calendar/rlz/RlzTracker;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/google/android/calendar/rlz/RlzTracker;->TAG:Ljava/lang/String;

    const-string v1, "Received use event, but not broadcasting."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/rlz/RlzTracker;->mConfig:Lcom/google/android/calendar/rlz/RlzConfig;

    invoke-virtual {v0}, Lcom/google/android/calendar/rlz/RlzConfig;->getAccessPoints()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/rlz/RlzTracker;->createIntent([Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 85
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/rlz/RlzTracker;->sendBroadcast(Landroid/content/Intent;)V

    .line 87
    iget-object v0, p0, Lcom/google/android/calendar/rlz/RlzTracker;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sent_rlz_first_use_broadcast"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    sget-object v0, Lcom/google/android/calendar/rlz/RlzTracker;->TAG:Ljava/lang/String;

    const-string v1, "Couldn\'t persist sent_rlz_first_use_broadcast preference. Will send another broadcast on activation after process restart."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 93
    :cond_2
    iput-boolean v3, p0, Lcom/google/android/calendar/rlz/RlzTracker;->mShouldUseFirstUseBroadcast:Z

    goto :goto_0
.end method

.method protected sendBroadcast(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 98
    sget-object v0, Lcom/google/android/calendar/rlz/RlzTracker;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcom/google/android/calendar/rlz/RlzTracker;->TAG:Ljava/lang/String;

    const-string v1, "Broadcasting intent: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/rlz/RlzTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 102
    return-void
.end method
