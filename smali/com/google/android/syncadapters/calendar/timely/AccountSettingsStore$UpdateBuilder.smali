.class public Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;
.super Ljava/lang/Object;
.source "AccountSettingsStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateBuilder"
.end annotation


# instance fields
.field private mJsonFlags:Ljava/lang/String;

.field private final mValues:Landroid/content/ContentValues;

.field private triggerSyncAdapterUpdate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->mValues:Landroid/content/ContentValues;

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->triggerSyncAdapterUpdate:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->mJsonFlags:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;)Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->triggerSyncAdapterUpdate:Z

    return v0
.end method


# virtual methods
.method public setBirthdaySetting(Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;)Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 179
    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->mValues:Landroid/content/ContentValues;

    const-string v4, "settingBirthdayVisibility"

    invoke-virtual {p1}, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    invoke-virtual {p1}, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->mValues:Landroid/content/ContentValues;

    const-string v3, "settingBirthdayIncludeGplus"

    invoke-virtual {p1}, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;->getIncludeGplusBirthday()Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->triggerSyncAdapterUpdate:Z

    .line 184
    return-object p0

    :cond_2
    move v0, v2

    .line 179
    goto :goto_0
.end method

.method public setDefaultEventDuration(I)Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 167
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->mValues:Landroid/content/ContentValues;

    const-string v1, "defaultNoEndTime"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    :goto_0
    iput-boolean v3, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->triggerSyncAdapterUpdate:Z

    .line 174
    return-object p0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->mValues:Landroid/content/ContentValues;

    const-string v1, "defaultNoEndTime"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->mValues:Landroid/content/ContentValues;

    const-string v1, "defaultEventLength"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public setHolidayColor(I)Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;
    .locals 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->mValues:Landroid/content/ContentValues;

    const-string v1, "holidayscolor"

    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStoreUtils;->colorIntToHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->triggerSyncAdapterUpdate:Z

    .line 159
    return-object p0
.end method

.method public setSmartMailSettings(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->mValues:Landroid/content/ContentValues;

    const-string v1, "smartMailDelivery"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 194
    :goto_0
    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->mJsonFlags:Ljava/lang/String;

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->triggerSyncAdapterUpdate:Z

    .line 196
    return-object p0

    .line 194
    :cond_0
    const-string v0, "smartMailDeliveryChangeBehavior"

    invoke-static {v0, p2}, Lcom/google/android/syncadapters/calendar/timely/TimelyStoreUtils;->jsonFromValues(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setTaskColor(I)Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->mValues:Landroid/content/ContentValues;

    const-string v1, "taskscolor"

    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStoreUtils;->colorIntToHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-object p0
.end method

.method public setTasksVisible(Z)Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;
    .locals 3

    .prologue
    .line 145
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->mValues:Landroid/content/ContentValues;

    const-string v2, "tasksselected"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    return-object p0

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTimezoneId(Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->mValues:Landroid/content/ContentValues;

    const-string v1, "timezone"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->triggerSyncAdapterUpdate:Z

    .line 140
    return-object p0
.end method
