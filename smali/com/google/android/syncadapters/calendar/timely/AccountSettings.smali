.class public Lcom/google/android/syncadapters/calendar/timely/AccountSettings;
.super Ljava/lang/Object;
.source "AccountSettings.java"


# instance fields
.field private mAutoAddHangouts:Z

.field private mBirthdaySetting:Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;

.field private mDefaultEventDuration:I

.field private mHolidayColor:I

.field private mQualityOfService:I

.field private mSmartmailSetting:Ljava/lang/String;

.field private mTaskColor:I

.field private mTasksVisible:Z

.field private mTimezoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->mAutoAddHangouts:Z

    .line 27
    iput v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->mQualityOfService:I

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->mTasksVisible:Z

    .line 30
    const v0, -0xbe7b0d

    iput v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->mTaskColor:I

    return-void
.end method

.method static createFromCursor(Landroid/database/Cursor;)Lcom/google/android/syncadapters/calendar/timely/AccountSettings;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 41
    new-instance v3, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;

    invoke-direct {v3}, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;-><init>()V

    .line 42
    const-string v0, "autoAddHangouts"

    .line 43
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->mAutoAddHangouts:Z

    .line 44
    const-string v0, "qualityOfService"

    .line 45
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {v3, v0}, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->setQualityOfServiceString(Ljava/lang/String;)V

    .line 46
    const-string v0, "tasksselected"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, v3, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->mTasksVisible:Z

    .line 47
    const-string v0, "taskscolor"

    .line 49
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStoreUtils;->colorHexToInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->mTaskColor:I

    .line 50
    const-string v0, "timezone"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->mTimezoneId:Ljava/lang/String;

    .line 51
    const-string v0, "holidayscolor"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStoreUtils;->colorHexToInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->mHolidayColor:I

    .line 55
    :cond_0
    const-string v0, "defaultNoEndTime"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 56
    :goto_2
    if-eqz v1, :cond_4

    .line 57
    const/4 v0, -0x1

    :goto_3
    iput v0, v3, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->mDefaultEventDuration:I

    .line 58
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;->createFromCursor(Landroid/database/Cursor;)Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->mBirthdaySetting:Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;

    .line 59
    const-string v0, "smartMailDelivery"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->mSmartmailSetting:Ljava/lang/String;

    .line 60
    return-object v3

    :cond_1
    move v0, v2

    .line 43
    goto :goto_0

    :cond_2
    move v0, v2

    .line 46
    goto :goto_1

    :cond_3
    move v1, v2

    .line 55
    goto :goto_2

    .line 57
    :cond_4
    const-string v0, "defaultEventLength"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_3
.end method

.method public static parseQualityOfService(Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 128
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 141
    :goto_0
    return v0

    .line 131
    :cond_0
    const/4 v4, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 133
    goto :goto_0

    .line 131
    :sswitch_0
    const-string v5, "high"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v0

    goto :goto_1

    :sswitch_1
    const-string v5, "normal"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v1

    goto :goto_1

    :sswitch_2
    const-string v5, "low"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v2

    goto :goto_1

    :sswitch_3
    const-string v5, "none"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v3

    goto :goto_1

    :pswitch_1
    move v0, v2

    .line 135
    goto :goto_0

    :pswitch_2
    move v0, v3

    .line 137
    goto :goto_0

    .line 139
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 131
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3df94319 -> :sswitch_1
        0x1a354 -> :sswitch_2
        0x30dda2 -> :sswitch_0
        0x33af38 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public areTaskSettingsEqual(Lcom/google/android/syncadapters/calendar/timely/AccountSettings;)Z
    .locals 2

    .prologue
    .line 107
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->mTasksVisible:Z

    iget-boolean v1, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->mTasksVisible:Z

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->mTaskColor:I

    iget v1, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->mTaskColor:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public areTasksVisible()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->mTasksVisible:Z

    return v0
.end method

.method public autoAddHangoutsEnabled()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->mAutoAddHangouts:Z

    return v0
.end method

.method public getBirthdaySetting()Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->mBirthdaySetting:Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;

    return-object v0
.end method

.method public getQualityOfService()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->mQualityOfService:I

    return v0
.end method

.method public getSmartmailSetting()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->mSmartmailSetting:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskColor()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->mTaskColor:I

    return v0
.end method

.method public getTimezoneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->mTimezoneId:Ljava/lang/String;

    return-object v0
.end method

.method setQualityOfServiceString(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 73
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->parseQualityOfService(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->mQualityOfService:I

    .line 74
    return-void
.end method
