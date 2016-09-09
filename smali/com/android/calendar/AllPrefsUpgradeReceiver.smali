.class public Lcom/android/calendar/AllPrefsUpgradeReceiver;
.super Lcom/android/calendar/UpgradeReceiver;
.source "AllPrefsUpgradeReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/android/calendar/AllPrefsUpgradeReceiver;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/AllPrefsUpgradeReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/calendar/UpgradeReceiver;-><init>()V

    return-void
.end method

.method private static upgradePrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 57
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 58
    :cond_0
    sget-object v0, Lcom/android/calendar/AllPrefsUpgradeReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Attempted to upgrade null sharedprefs file."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 60
    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    sget-object v0, Lcom/android/calendar/AllPrefsUpgradeReceiver;->TAG:Ljava/lang/String;

    const-string v1, "No upgrade necessary for shared prefs in %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 99
    :goto_0
    return-void

    .line 65
    :cond_2
    invoke-static {p0, p1}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 66
    invoke-static {p0, p2}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 68
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 69
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 72
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_3

    .line 77
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 82
    instance-of v5, v0, Ljava/lang/Integer;

    if-eqz v5, :cond_4

    .line 83
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 84
    :cond_4
    instance-of v5, v0, Ljava/lang/Boolean;

    if-eqz v5, :cond_5

    .line 85
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 86
    :cond_5
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 87
    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 88
    :cond_6
    instance-of v5, v0, Ljava/lang/Float;

    if-eqz v5, :cond_7

    .line 89
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 90
    :cond_7
    instance-of v5, v0, Ljava/util/Set;

    if-eqz v5, :cond_3

    .line 91
    check-cast v0, Ljava/util/Set;

    .line 92
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v6

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 93
    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 98
    :cond_8
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method


# virtual methods
.method protected doUpgrade(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPrefsNameOld()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {p1}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPrefsName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-static {p1, v0, v1}, Lcom/android/calendar/AllPrefsUpgradeReceiver;->upgradePrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPrefsNoBackupNameOld()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {p1}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPrefsNoBackupName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-static {p1, v0, v1}, Lcom/android/calendar/AllPrefsUpgradeReceiver;->upgradePrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method
