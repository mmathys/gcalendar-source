.class public Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;
.super Ljava/lang/Object;
.source "EditScreenAnalyticsLogger.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllDay:Z

.field private final mLogSource:Ljava/lang/String;

.field private mNotificationModified:Z

.field private mScreenLoadingFinishedTimestamp:J

.field private mTimeModified:Z

.field private mTitleEmpty:Z

.field private mTitleModified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 387
    new-instance v0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger$2;

    invoke-direct {v0}, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger$2;-><init>()V

    sput-object v0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->mScreenLoadingFinishedTimestamp:J

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->mTimeModified:Z

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->mNotificationModified:Z

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->mTitleModified:Z

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->mLogSource:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->mScreenLoadingFinishedTimestamp:J

    .line 97
    return-void

    :cond_0
    move v0, v2

    .line 91
    goto :goto_0

    :cond_1
    move v0, v2

    .line 92
    goto :goto_1

    :cond_2
    move v1, v2

    .line 93
    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->mScreenLoadingFinishedTimestamp:J

    .line 87
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->mLogSource:Ljava/lang/String;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;Landroid/content/Context;ILcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->logInBackground(Landroid/content/Context;ILcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)V

    return-void
.end method

.method private fillDimensions(Landroid/content/Context;ILcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 224
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v3

    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 231
    sget v0, Lcom/android/calendar/R$integer;->analytics_event_edit_calendar_type_dimension:I

    .line 233
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 234
    invoke-direct {p0, p3}, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->getCalendarType(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-interface {v3, p1, v0, v1}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 236
    sget v0, Lcom/android/calendar/R$integer;->analytics_event_edit_attachments_dimension:I

    .line 237
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v1, "0"

    .line 236
    invoke-interface {v3, p1, v0, v1}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 239
    sget v0, Lcom/android/calendar/R$integer;->analytics_event_edit_attendees_dimension:I

    .line 240
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v1, "1"

    .line 239
    invoke-interface {v3, p1, v0, v1}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 246
    if-nez p2, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 252
    :goto_0
    if-eqz v1, :cond_1

    .line 253
    const/16 v0, 0xa

    invoke-static {v2, v0}, Lcom/android/calendar/AnalyticsUtils;->convertNumToDimensionValue(II)Ljava/lang/String;

    move-result-object v0

    .line 259
    :goto_1
    sget v2, Lcom/android/calendar/R$integer;->analytics_event_edit_num_tagged_contacts_dimension:I

    .line 261
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 259
    invoke-interface {v3, p1, v2, v0}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 265
    sget v0, Lcom/android/calendar/R$integer;->analytics_event_edit_location_dimension:I

    .line 267
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v2, "unchanged"

    .line 265
    invoke-interface {v3, p1, v0, v2}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 274
    if-eqz v1, :cond_3

    .line 275
    iget-boolean v0, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->mTitleEmpty:Z

    if-nez v0, :cond_2

    .line 276
    const-string v0, "set"

    .line 287
    :goto_2
    sget v2, Lcom/android/calendar/R$integer;->analytics_event_edit_title_dimension:I

    .line 288
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 287
    invoke-interface {v3, p1, v2, v0}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 294
    if-eqz v1, :cond_6

    .line 295
    iget-boolean v0, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->mNotificationModified:Z

    if-eqz v0, :cond_5

    .line 296
    const-string v0, "override"

    .line 305
    :goto_3
    sget v2, Lcom/android/calendar/R$integer;->analytics_event_edit_notification_dimension:I

    .line 306
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 305
    invoke-interface {v3, p1, v2, v0}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 313
    if-eqz v1, :cond_c

    .line 314
    iget-boolean v0, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->mAllDay:Z

    if-eqz v0, :cond_8

    .line 315
    const-string v0, "allDay"

    .line 316
    :goto_4
    iget-boolean v1, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->mTimeModified:Z

    if-eqz v1, :cond_a

    .line 317
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "Picker"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    :goto_5
    sget v1, Lcom/android/calendar/R$integer;->analytics_event_edit_time_dimension:I

    .line 329
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 328
    invoke-interface {v3, p1, v1, v0}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 335
    sget v0, Lcom/android/calendar/R$integer;->analytics_event_edit_quick_create_status_dimension:I

    .line 336
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v1, "unreachable"

    .line 335
    invoke-interface {v3, p1, v0, v1}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 343
    sget v0, Lcom/android/calendar/R$integer;->analytics_event_edit_find_time_shown_dimension:I

    .line 345
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v1, "false"

    .line 343
    invoke-interface {v3, p1, v0, v1}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 349
    sget v0, Lcom/android/calendar/R$integer;->analytics_event_edit_find_time_clicked_dimension:I

    .line 351
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v1, "false"

    .line 349
    invoke-interface {v3, p1, v0, v1}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 353
    return-void

    :cond_0
    move v1, v2

    .line 246
    goto/16 :goto_0

    .line 257
    :cond_1
    const-string v0, "unchanged"

    goto/16 :goto_1

    .line 278
    :cond_2
    const-string v0, "none"

    goto :goto_2

    .line 281
    :cond_3
    iget-boolean v0, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->mTitleModified:Z

    if-eqz v0, :cond_4

    .line 282
    const-string v0, "changed"

    goto :goto_2

    .line 284
    :cond_4
    const-string v0, "unchanged"

    goto :goto_2

    .line 297
    :cond_5
    const-string v0, "default"

    goto :goto_3

    .line 299
    :cond_6
    iget-boolean v0, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->mNotificationModified:Z

    if-eqz v0, :cond_7

    .line 300
    const-string v0, "changed"

    goto :goto_3

    .line 302
    :cond_7
    const-string v0, "unchanged"

    goto :goto_3

    .line 315
    :cond_8
    const-string v0, "time"

    goto :goto_4

    .line 317
    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 319
    :cond_a
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "Preset"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 322
    :cond_c
    iget-boolean v0, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->mTimeModified:Z

    if-eqz v0, :cond_d

    .line 323
    const-string v0, "changed"

    goto :goto_5

    .line 325
    :cond_d
    const-string v0, "unchanged"

    goto :goto_5
.end method

.method private getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;
    .locals 1

    .prologue
    .line 401
    invoke-static {p1}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    return-object v0
.end method

.method private getCalendarType(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 357
    const-string v0, "com.google"

    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    const-string v0, "nonGoogle"

    .line 378
    :goto_0
    return-object v0

    .line 360
    :cond_0
    new-instance v0, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;

    invoke-direct {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;-><init>()V

    .line 361
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->setAccountName(Ljava/lang/String;)Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;

    .line 362
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;->setAccountType(Ljava/lang/String;)Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;

    .line 363
    sget-object v0, Lcom/google/android/calendar/api/CalendarApi;->CalendarList:Lcom/google/android/calendar/api/calendarlist/CalendarListClient;

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListClient;->read(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/calendarlist/CalendarListClient$ReadResult;

    .line 364
    invoke-interface {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarListClient$ReadResult;->getCalendarListEntry()Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    const-string v0, "primary"

    goto :goto_0

    .line 368
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/CalendarType;->calculateType(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 378
    :pswitch_0
    const-string v0, "other"

    goto :goto_0

    .line 370
    :pswitch_1
    const-string v0, "individual"

    goto :goto_0

    .line 376
    :pswitch_2
    const-string v0, "group"

    goto :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private log(Landroid/content/Context;ILcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)V
    .locals 3

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 179
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger$1;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger$1;-><init>(Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;Landroid/content/Context;ILcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 184
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 185
    return-void
.end method

.method private logInBackground(Landroid/content/Context;ILcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 190
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v1

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 193
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->fillDimensions(Landroid/content/Context;ILcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)V

    .line 194
    sget v0, Lcom/android/calendar/R$string;->analytics_category_event:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 195
    sget v0, Lcom/android/calendar/R$string;->analytics_action_update:I

    .line 196
    if-nez p2, :cond_0

    .line 197
    sget v0, Lcom/android/calendar/R$string;->analytics_action_create:I

    .line 199
    :cond_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 200
    invoke-interface {v1, p1, v6, v7}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v0, "EditAnalyticsLogger"

    invoke-static {v0, v11}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    const-string v0, "EditAnalyticsLogger"

    const-string v2, "Logging event save: %s - %s"

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v6, v3, v8

    aput-object v7, v3, v9

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 205
    :cond_1
    iget-wide v2, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->mScreenLoadingFinishedTimestamp:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 206
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->fillDimensions(Landroid/content/Context;ILcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)V

    .line 207
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->mScreenLoadingFinishedTimestamp:J

    sub-long v4, v2, v4

    .line 208
    const-string v0, "EditAnalyticsLogger"

    const-string v2, "Logging event edit timing: %s/%s = %d"

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v6, v3, v8

    aput-object v7, v3, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v3, v10

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 209
    const-string v3, "interaction"

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/calendar/AnalyticsLogger;->trackTiming(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_2
    const-string v0, "EditAnalyticsLogger"

    const-string v1, "Saving a not loaded event"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method public logCreate(Landroid/content/Context;Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->log(Landroid/content/Context;ILcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)V

    .line 163
    return-void
.end method

.method public notificationModified()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->mNotificationModified:Z

    .line 115
    return-void
.end method

.method public setIsTitleEmpty(Z)V
    .locals 0

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->mTitleEmpty:Z

    .line 131
    return-void
.end method

.method public startUserInteractionTimer()V
    .locals 4

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->mScreenLoadingFinishedTimestamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->mScreenLoadingFinishedTimestamp:J

    .line 154
    :cond_0
    return-void
.end method

.method public timeModified()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->mTimeModified:Z

    .line 111
    return-void
.end method

.method public titleModified()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->mTitleModified:Z

    .line 119
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    iget-boolean v0, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->mTimeModified:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 102
    iget-boolean v0, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->mNotificationModified:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 103
    iget-boolean v0, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->mTitleModified:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 105
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->mLogSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-wide v0, p0, Lcom/android/calendar/newapi/screen/EditScreenAnalyticsLogger;->mScreenLoadingFinishedTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 107
    return-void

    :cond_0
    move v0, v2

    .line 101
    goto :goto_0

    :cond_1
    move v0, v2

    .line 102
    goto :goto_1

    :cond_2
    move v1, v2

    .line 103
    goto :goto_2
.end method
