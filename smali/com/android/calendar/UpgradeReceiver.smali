.class public abstract Lcom/android/calendar/UpgradeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpgradeReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final UPGRADE_RECEIVERS:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const-class v0, Lcom/android/calendar/UpgradeReceiver;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/UpgradeReceiver;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/android/calendar/SyncUpgradeReceiver;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/android/calendar/AllPrefsUpgradeReceiver;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/android/calendar/ToneUpgradeReceiver;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/UpgradeReceiver;->UPGRADE_RECEIVERS:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private tryUpgradeAndDisableReceiver(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 95
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v3, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    if-ne v0, v4, :cond_0

    move v0, v1

    .line 99
    :goto_0
    if-eqz v0, :cond_1

    .line 110
    :goto_1
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/calendar/UpgradeReceiver;->doUpgrade(Landroid/content/Context;)V

    .line 108
    invoke-virtual {v2, v3, v4, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_1
.end method

.method public static tryUpgradesAndDisableReceivers(Landroid/content/Context;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 66
    sget-object v4, Lcom/android/calendar/UpgradeReceiver;->UPGRADE_RECEIVERS:[Ljava/lang/Class;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    .line 67
    const/4 v1, 0x0

    .line 69
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/UpgradeReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    .line 78
    :goto_1
    if-eqz v0, :cond_0

    .line 79
    invoke-direct {v0, p0}, Lcom/android/calendar/UpgradeReceiver;->tryUpgradeAndDisableReceiver(Landroid/content/Context;)V

    .line 66
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    sget-object v7, Lcom/android/calendar/UpgradeReceiver;->TAG:Ljava/lang/String;

    const-string v8, "%s: unable to access class."

    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v3

    invoke-static {v7, v0, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 76
    goto :goto_1

    .line 72
    :catch_1
    move-exception v0

    .line 73
    sget-object v7, Lcom/android/calendar/UpgradeReceiver;->TAG:Ljava/lang/String;

    const-string v8, "%s: unable to create instance."

    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v3

    invoke-static {v7, v0, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 76
    goto :goto_1

    .line 74
    :catch_2
    move-exception v0

    .line 75
    sget-object v7, Lcom/android/calendar/UpgradeReceiver;->TAG:Ljava/lang/String;

    const-string v8, "%s: unable to cast class."

    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v3

    invoke-static {v7, v0, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    goto :goto_1

    .line 82
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract doUpgrade(Landroid/content/Context;)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/calendar/UpgradeReceiver;->tryUpgradeAndDisableReceiver(Landroid/content/Context;)V

    .line 55
    return-void
.end method
