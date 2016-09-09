.class public Lcom/android/calendar/alerts/AlertService$NotificationPrefs;
.super Ljava/lang/Object;
.source "AlertService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/alerts/AlertService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationPrefs"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private defaultVibrate:I

.field private prefs:Landroid/content/SharedPreferences;

.field quietUpdate:Z

.field private ringtone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Z)V
    .locals 1

    .prologue
    .line 853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 848
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->defaultVibrate:I

    .line 849
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->ringtone:Ljava/lang/String;

    .line 854
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->context:Landroid/content/Context;

    .line 855
    iput-object p2, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->prefs:Landroid/content/SharedPreferences;

    .line 856
    iput-boolean p3, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->quietUpdate:Z

    .line 857
    return-void
.end method


# virtual methods
.method public getDefaultVibrate()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 860
    iget v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->defaultVibrate:I

    if-gez v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v0, v3}, Lcom/android/calendar/Utils;->getDefaultVibrate(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->defaultVibrate:I

    .line 863
    :cond_0
    iget v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->defaultVibrate:I

    if-ne v0, v1, :cond_2

    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 861
    goto :goto_0

    :cond_2
    move v1, v2

    .line 863
    goto :goto_1
.end method

.method public getRingtoneAndSilence()Ljava/lang/String;
    .locals 2

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->ringtone:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 868
    iget-boolean v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->quietUpdate:Z

    if-eqz v0, :cond_1

    .line 869
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->ringtone:Ljava/lang/String;

    .line 874
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->ringtone:Ljava/lang/String;

    .line 875
    const-string v1, ""

    iput-object v1, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->ringtone:Ljava/lang/String;

    .line 876
    return-object v0

    .line 871
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getRingtonePreference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->ringtone:Ljava/lang/String;

    goto :goto_0
.end method
