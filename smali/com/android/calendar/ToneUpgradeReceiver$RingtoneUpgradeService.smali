.class public Lcom/android/calendar/ToneUpgradeReceiver$RingtoneUpgradeService;
.super Landroid/app/IntentService;
.source "ToneUpgradeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ToneUpgradeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RingtoneUpgradeService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/android/calendar/ToneUpgradeReceiver$RingtoneUpgradeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private initializePref()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 72
    .line 73
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPrefsNoBackupName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preferences_alerts_ringtone"

    const/4 v2, 0x0

    .line 74
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    # getter for: Lcom/android/calendar/ToneUpgradeReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/ToneUpgradeReceiver;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Current tone uri: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 77
    const-string v0, "content://settings/system/notification_sound"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    # getter for: Lcom/android/calendar/ToneUpgradeReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/ToneUpgradeReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Current tone uri is default system tone."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 82
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    :cond_0
    # getter for: Lcom/android/calendar/ToneUpgradeReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/ToneUpgradeReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "System tone is silent, do not switch to our tone."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 86
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preferences_use_standard_tone"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 113
    :goto_1
    return-void

    .line 76
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_2
    if-eqz v1, :cond_3

    .line 91
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 92
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 93
    # getter for: Lcom/android/calendar/ToneUpgradeReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/ToneUpgradeReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not an external uri, do not switch to our tone."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 96
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preferences_use_standard_tone"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 110
    :cond_3
    # getter for: Lcom/android/calendar/ToneUpgradeReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/ToneUpgradeReceiver;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Switch to locally stored Calendar Notifcation tone."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 111
    sget v0, Lcom/android/calendar/ToneUpgradeReceiver;->TONE_RESOURCE_ID:I

    .line 112
    invoke-static {p0, v0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->generateResourceUri(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {p0, v0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->setRingtonePreference(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/calendar/ToneUpgradeReceiver$RingtoneUpgradeService;->initializePref()V

    .line 65
    return-void
.end method
