.class public Lcom/android/calendar/CalendarBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "CalendarBackupAgent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/calendar/CalendarBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    const-string v0, "shared_pref"

    new-instance v1, Landroid/app/backup/SharedPreferencesBackupHelper;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/android/calendar/CalendarBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPrefsName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, p0, v2}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/CalendarBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    goto :goto_0
.end method
