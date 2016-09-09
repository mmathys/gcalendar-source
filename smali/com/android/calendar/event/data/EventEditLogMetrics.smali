.class public Lcom/android/calendar/event/data/EventEditLogMetrics;
.super Ljava/lang/Object;
.source "EventEditLogMetrics.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/calendar/event/data/EventEditLogMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private static final JOIN_KEY_VALUE:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NO_TAGS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCalendarEventReference:Ljava/lang/String;

.field private mCreateEditSource:Ljava/lang/String;

.field private mDidChangeContacts:Z

.field private mDidChangeLocation:Z

.field protected mDidChangeNotification:Z

.field protected mDidChangeTime:Z

.field private mFindTimeButtonClicked:Z

.field private mFindTimeButtonShown:Z

.field private mLoadedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/android/calendar/event/data/EventEditLogMetrics;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/data/EventEditLogMetrics;->TAG:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/android/calendar/event/data/EventEditLogMetrics$1;

    invoke-direct {v0}, Lcom/android/calendar/event/data/EventEditLogMetrics$1;-><init>()V

    sput-object v0, Lcom/android/calendar/event/data/EventEditLogMetrics;->JOIN_KEY_VALUE:Lcom/google/common/base/Function;

    .line 64
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/calendar/event/data/EventEditLogMetrics;->NO_TAGS:[Ljava/lang/String;

    .line 249
    new-instance v0, Lcom/android/calendar/event/data/EventEditLogMetrics$2;

    invoke-direct {v0}, Lcom/android/calendar/event/data/EventEditLogMetrics$2;-><init>()V

    sput-object v0, Lcom/android/calendar/event/data/EventEditLogMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mLoadedTime:J

    .line 90
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mLoadedTime:J

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mDidChangeTime:Z

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mDidChangeLocation:Z

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mDidChangeContacts:Z

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mDidChangeNotification:Z

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mCreateEditSource:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mLoadedTime:J

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mFindTimeButtonShown:Z

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    :goto_6
    iput-boolean v1, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mFindTimeButtonClicked:Z

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mCalendarEventReference:Ljava/lang/String;

    .line 227
    return-void

    :cond_0
    move v0, v2

    .line 216
    goto :goto_0

    :cond_1
    move v0, v2

    .line 218
    goto :goto_1

    :cond_2
    move v0, v2

    .line 219
    goto :goto_2

    :cond_3
    move v0, v2

    .line 220
    goto :goto_3

    :cond_4
    move v0, v2

    .line 221
    goto :goto_4

    :cond_5
    move v0, v2

    .line 224
    goto :goto_5

    :cond_6
    move v1, v2

    .line 225
    goto :goto_6
.end method

.method private getCalendarType(Lcom/google/calendar/v2/client/service/api/events/EventEdit;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 327
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v0

    instance-of v0, v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    if-nez v0, :cond_0

    .line 328
    const-string v0, "unknown"

    .line 348
    :goto_0
    return-object v0

    .line 331
    :cond_0
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    .line 333
    const-string v1, "com.google"

    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 334
    const-string v0, "nonGoogle"

    goto :goto_0

    .line 337
    :cond_1
    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getIsPrimary()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 338
    const-string v0, "primary"

    goto :goto_0

    .line 341
    :cond_2
    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getOwnerAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/CalendarType;->calculateType(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 348
    :pswitch_0
    const-string v0, "other"

    goto :goto_0

    .line 343
    :pswitch_1
    const-string v0, "individual"

    goto :goto_0

    .line 345
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getAccessRole()Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    move-result-object v0

    sget-object v1, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->OWNER:Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    if-ne v0, v1, :cond_3

    .line 346
    const-string v0, "secondary"

    goto :goto_0

    :cond_3
    const-string v0, "group"

    goto :goto_0

    .line 341
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method protected getActionString(Landroid/content/res/Resources;Lcom/google/calendar/v2/client/service/api/events/EventEdit;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 275
    sget v0, Lcom/android/calendar/R$string;->analytics_action_update:I

    .line 276
    invoke-virtual {p2}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->isNewEvent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    sget v0, Lcom/android/calendar/R$string;->analytics_action_create:I

    .line 279
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarEventReference()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mCalendarEventReference:Ljava/lang/String;

    return-object v0
.end method

.method protected getCategoryString(Landroid/content/res/Resources;Lcom/google/calendar/v2/client/service/api/events/EventEdit;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    sget v0, Lcom/android/calendar/R$string;->analytics_category_event:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCalendarEventReferenceLogged()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mCalendarEventReference:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logCalendarEventReference()V
    .locals 1

    .prologue
    .line 137
    invoke-static {}, Lcom/android/calendar/event/EditHelper;->generateId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mCalendarEventReference:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public logDelete(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/events/EventEdit;)V
    .locals 5

    .prologue
    .line 198
    invoke-static {p1}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 201
    invoke-virtual {p0, v1, p2}, Lcom/android/calendar/event/data/EventEditLogMetrics;->getCategoryString(Landroid/content/res/Resources;Lcom/google/calendar/v2/client/service/api/events/EventEdit;)Ljava/lang/String;

    move-result-object v2

    .line 202
    sget v3, Lcom/android/calendar/R$string;->analytics_action_delete:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-interface {v0, p1, v2, v1}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    sget-object v0, Lcom/android/calendar/event/data/EventEditLogMetrics;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    sget-object v0, Lcom/android/calendar/event/data/EventEditLogMetrics;->TAG:Ljava/lang/String;

    const-string v1, "Logging event delete: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v1, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 208
    :cond_0
    return-void
.end method

.method public logDidChangeContacts()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mDidChangeContacts:Z

    .line 112
    return-void
.end method

.method public logDidChangeLocation()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mDidChangeLocation:Z

    .line 108
    return-void
.end method

.method public logDidChangeNotifications()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mDidChangeNotification:Z

    .line 104
    return-void
.end method

.method public logDidChangeTime()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mDidChangeTime:Z

    .line 100
    return-void
.end method

.method public logEventLoaded()V
    .locals 4

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mLoadedTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mLoadedTime:J

    .line 96
    :cond_0
    return-void
.end method

.method public logFindTimeButtonClicked()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mFindTimeButtonClicked:Z

    .line 124
    return-void
.end method

.method public logFindTimeButtonShown()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mFindTimeButtonShown:Z

    .line 120
    return-void
.end method

.method public logSave(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/events/EventEdit;Ljava/lang/String;Z)V
    .locals 10

    .prologue
    .line 155
    invoke-static {p1}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v1

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 158
    invoke-virtual {p0, v0, p2}, Lcom/android/calendar/event/data/EventEditLogMetrics;->getCategoryString(Landroid/content/res/Resources;Lcom/google/calendar/v2/client/service/api/events/EventEdit;)Ljava/lang/String;

    move-result-object v6

    .line 159
    invoke-virtual {p0, v0, p2}, Lcom/android/calendar/event/data/EventEditLogMetrics;->getActionString(Landroid/content/res/Resources;Lcom/google/calendar/v2/client/service/api/events/EventEdit;)Ljava/lang/String;

    move-result-object v7

    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/data/EventEditLogMetrics;->logSaveCustomDimensions(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/events/EventEdit;)V

    .line 162
    invoke-interface {v1, p1, v6, v7}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sget-object v0, Lcom/android/calendar/event/data/EventEditLogMetrics;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lcom/android/calendar/event/data/EventEditLogMetrics;->TAG:Ljava/lang/String;

    const-string v2, "Logging event save: %s - %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v7, v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 167
    :cond_0
    iget-wide v2, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mLoadedTime:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/data/EventEditLogMetrics;->logSaveCustomDimensions(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/events/EventEdit;)V

    .line 169
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mLoadedTime:J

    sub-long v4, v2, v4

    .line 170
    sget-object v0, Lcom/android/calendar/event/data/EventEditLogMetrics;->TAG:Ljava/lang/String;

    const-string v2, "Logging event edit timing: %s/%s = %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v3, v8

    const/4 v8, 0x1

    aput-object v7, v3, v8

    const/4 v8, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v3, v8

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 171
    const-string v3, "interaction"

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/calendar/AnalyticsLogger;->trackTiming(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_0
    invoke-virtual {p2}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v0

    .line 177
    const/4 v1, 0x0

    .line 178
    instance-of v2, v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    if-eqz v2, :cond_4

    .line 179
    check-cast v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 181
    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditLogMetrics;->isCalendarEventReferenceLogged()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 184
    invoke-static {v1}, Lcom/android/calendar/ExtensionsFactory;->getCalendarClientLogger(Landroid/content/Context;)Lcom/android/calendar/CalendarClientLogger;

    move-result-object v1

    .line 186
    if-eqz p4, :cond_3

    .line 187
    iget-object v2, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mCalendarEventReference:Ljava/lang/String;

    invoke-virtual {v1, p3, v2, v0}, Lcom/android/calendar/CalendarClientLogger;->logEventCreated(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    .line 192
    :cond_1
    :goto_2
    return-void

    .line 173
    :cond_2
    sget-object v0, Lcom/android/calendar/event/data/EventEditLogMetrics;->TAG:Ljava/lang/String;

    const-string v1, "Saving a not loaded event"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 189
    :cond_3
    iget-object v2, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mCalendarEventReference:Ljava/lang/String;

    invoke-virtual {v1, p3, v2, v0}, Lcom/android/calendar/CalendarClientLogger;->logEventUpdated(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method protected logSaveCustomDimensions(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/events/EventEdit;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 284
    invoke-static {p1}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v3

    .line 285
    invoke-virtual {p2}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v4

    .line 288
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mCreateEditSource:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 289
    sget v0, Lcom/android/calendar/R$integer;->analytics_event_edit_source_dimension:I

    .line 290
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v5, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mCreateEditSource:Ljava/lang/String;

    .line 289
    invoke-interface {v3, p1, v0, v5}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 295
    :cond_0
    sget v0, Lcom/android/calendar/R$integer;->analytics_event_edit_calendar_type_dimension:I

    .line 296
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 297
    invoke-direct {p0, p2}, Lcom/android/calendar/event/data/EventEditLogMetrics;->getCalendarType(Lcom/google/calendar/v2/client/service/api/events/EventEdit;)Ljava/lang/String;

    move-result-object v5

    .line 295
    invoke-interface {v3, p1, v0, v5}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 300
    invoke-interface {v4}, Lcom/google/calendar/v2/client/service/api/events/Event;->getAttachments()Ljava/util/List;

    move-result-object v0

    .line 301
    if-nez v0, :cond_1

    move v0, v1

    .line 302
    :goto_0
    sget v5, Lcom/android/calendar/R$integer;->analytics_event_edit_attachments_dimension:I

    .line 303
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 304
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-interface {v3, p1, v5, v0}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 307
    sget v0, Lcom/android/calendar/R$integer;->analytics_event_edit_find_time_shown_dimension:I

    .line 308
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iget-boolean v0, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mFindTimeButtonShown:Z

    if-eqz v0, :cond_2

    .line 309
    const-string v0, "true"

    .line 307
    :goto_1
    invoke-interface {v3, p1, v5, v0}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 312
    sget v0, Lcom/android/calendar/R$integer;->analytics_event_edit_find_time_clicked_dimension:I

    .line 313
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iget-boolean v0, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mFindTimeButtonClicked:Z

    if-eqz v0, :cond_3

    .line 314
    const-string v0, "true"

    .line 312
    :goto_2
    invoke-interface {v3, p1, v5, v0}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 317
    invoke-interface {v4}, Lcom/google/calendar/v2/client/service/api/events/Event;->getAttendees()Ljava/util/List;

    move-result-object v0

    .line 318
    if-nez v0, :cond_4

    .line 319
    :goto_3
    const/16 v0, 0x32

    if-le v1, v0, :cond_5

    const-string v0, "50+"

    .line 320
    :goto_4
    sget v1, Lcom/android/calendar/R$integer;->analytics_event_edit_attendees_dimension:I

    .line 321
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 320
    invoke-interface {v3, p1, v1, v0}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 323
    return-void

    .line 301
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 309
    :cond_2
    const-string v0, "false"

    goto :goto_1

    .line 314
    :cond_3
    const-string v0, "false"

    goto :goto_2

    .line 318
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_3

    .line 319
    :cond_5
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public logSource(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mCreateEditSource:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 236
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget-boolean v0, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mDidChangeTime:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 239
    iget-boolean v0, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mDidChangeLocation:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 240
    iget-boolean v0, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mDidChangeContacts:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 241
    iget-boolean v0, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mDidChangeNotification:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 242
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mCreateEditSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget-wide v4, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mLoadedTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 244
    iget-boolean v0, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mFindTimeButtonShown:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 245
    iget-boolean v0, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mFindTimeButtonClicked:Z

    if-eqz v0, :cond_5

    :goto_5
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 246
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditLogMetrics;->mCalendarEventReference:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    return-void

    :cond_0
    move v0, v2

    .line 238
    goto :goto_0

    :cond_1
    move v0, v2

    .line 239
    goto :goto_1

    :cond_2
    move v0, v2

    .line 240
    goto :goto_2

    :cond_3
    move v0, v2

    .line 241
    goto :goto_3

    :cond_4
    move v0, v2

    .line 244
    goto :goto_4

    :cond_5
    move v1, v2

    .line 245
    goto :goto_5
.end method
