.class public Lcom/android/calendar/event/data/TaskEditLogMetrics;
.super Ljava/lang/Object;
.source "TaskEditLogMetrics.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/calendar/event/data/TaskEditLogMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mDidChangeRecurrence:Z

.field protected mDidChangeTime:Z

.field private mLoadedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/calendar/event/data/TaskEditLogMetrics;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/data/TaskEditLogMetrics;->TAG:Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/android/calendar/event/data/TaskEditLogMetrics$1;

    invoke-direct {v0}, Lcom/android/calendar/event/data/TaskEditLogMetrics$1;-><init>()V

    sput-object v0, Lcom/android/calendar/event/data/TaskEditLogMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/event/data/TaskEditLogMetrics;->mLoadedTime:J

    .line 45
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/calendar/event/data/TaskEditLogMetrics;->mLoadedTime:J

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/event/data/TaskEditLogMetrics;->mLoadedTime:J

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/event/data/TaskEditLogMetrics;->mDidChangeTime:Z

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/calendar/event/data/TaskEditLogMetrics;->mDidChangeRecurrence:Z

    .line 96
    return-void

    :cond_0
    move v0, v2

    .line 94
    goto :goto_0

    :cond_1
    move v1, v2

    .line 95
    goto :goto_1
.end method

.method private getActionString(Landroid/content/res/Resources;Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p2}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getTask()Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->isNewTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    sget v0, Lcom/android/calendar/R$string;->analytics_action_create:I

    .line 139
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 138
    :cond_0
    sget v0, Lcom/android/calendar/R$string;->analytics_action_update:I

    goto :goto_0
.end method

.method private getCategoryString(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    sget v0, Lcom/android/calendar/R$string;->analytics_category_reminder:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private logSaveCustomDimensions(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;)V
    .locals 5

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 144
    invoke-static {p1}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v2

    .line 145
    invoke-virtual {p2}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getTask()Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    move-result-object v3

    .line 149
    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->isNewTask()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->isDueAllDay()Z

    move-result v0

    .line 151
    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->getDueTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v4

    invoke-static {p1, v4, v0}, Lcom/android/calendar/time/DateTimeUtils;->isAllDayToday(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/time/DateTime;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const-string v0, "unscheduled"

    .line 162
    :goto_0
    sget v4, Lcom/android/calendar/R$integer;->analytics_event_edit_time_dimension:I

    .line 163
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 162
    invoke-interface {v2, p1, v4, v0}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 168
    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->isNewTask()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 169
    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->getRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 170
    new-instance v0, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct {v0}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    .line 171
    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->getRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    move-result-object v3

    invoke-static {v3}, Lcom/android/calendar/Utils;->convertToRrule(Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 172
    iget v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    packed-switch v0, :pswitch_data_0

    .line 186
    const-string v0, "none"

    .line 195
    :goto_1
    sget v3, Lcom/android/calendar/R$integer;->analytics_event_edit_recurrence_dimension:I

    .line 196
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 195
    invoke-interface {v2, p1, v1, v0}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 198
    return-void

    .line 153
    :cond_0
    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->isDueAllDay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    const-string v0, "allDay"

    goto :goto_0

    .line 156
    :cond_1
    const-string v0, "timed"

    goto :goto_0

    .line 159
    :cond_2
    iget-boolean v0, p0, Lcom/android/calendar/event/data/TaskEditLogMetrics;->mDidChangeTime:Z

    if-eqz v0, :cond_3

    .line 160
    const-string v0, "changed"

    goto :goto_0

    :cond_3
    const-string v0, "unchanged"

    goto :goto_0

    .line 174
    :pswitch_0
    const-string v0, "daily"

    goto :goto_1

    .line 177
    :pswitch_1
    const-string v0, "weekly"

    goto :goto_1

    .line 180
    :pswitch_2
    const-string v0, "monthly"

    goto :goto_1

    .line 183
    :pswitch_3
    const-string v0, "yearly"

    goto :goto_1

    .line 189
    :cond_4
    const-string v0, "none"

    goto :goto_1

    .line 192
    :cond_5
    iget-boolean v0, p0, Lcom/android/calendar/event/data/TaskEditLogMetrics;->mDidChangeRecurrence:Z

    if-eqz v0, :cond_6

    .line 193
    const-string v0, "changed"

    goto :goto_1

    :cond_6
    const-string v0, "unchanged"

    goto :goto_1

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public logDelete(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 81
    invoke-static {p1}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 84
    invoke-direct {p0, v1}, Lcom/android/calendar/event/data/TaskEditLogMetrics;->getCategoryString(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    .line 85
    sget v3, Lcom/android/calendar/R$string;->analytics_action_delete:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-interface {v0, p1, v2, v1}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public logDidChangeRecurrence()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/data/TaskEditLogMetrics;->mDidChangeRecurrence:Z

    .line 59
    return-void
.end method

.method public logDidChangeTime()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/data/TaskEditLogMetrics;->mDidChangeTime:Z

    .line 55
    return-void
.end method

.method public logSave(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;)V
    .locals 8

    .prologue
    .line 62
    invoke-static {p1}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v1

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 65
    invoke-direct {p0, v0}, Lcom/android/calendar/event/data/TaskEditLogMetrics;->getCategoryString(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    .line 66
    invoke-direct {p0, v0, p2}, Lcom/android/calendar/event/data/TaskEditLogMetrics;->getActionString(Landroid/content/res/Resources;Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;)Ljava/lang/String;

    move-result-object v7

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/event/data/TaskEditLogMetrics;->logSaveCustomDimensions(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;)V

    .line 69
    invoke-interface {v1, p1, v6, v7}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-wide v2, p0, Lcom/android/calendar/event/data/TaskEditLogMetrics;->mLoadedTime:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/event/data/TaskEditLogMetrics;->logSaveCustomDimensions(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;)V

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/calendar/event/data/TaskEditLogMetrics;->mLoadedTime:J

    sub-long v4, v2, v4

    .line 74
    const-string v3, "interaction"

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/calendar/AnalyticsLogger;->trackTiming(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    sget-object v0, Lcom/android/calendar/event/data/TaskEditLogMetrics;->TAG:Ljava/lang/String;

    const-string v1, "Saving a not loaded task"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public logTaskLoaded()V
    .locals 4

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/android/calendar/event/data/TaskEditLogMetrics;->mLoadedTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/event/data/TaskEditLogMetrics;->mLoadedTime:J

    .line 51
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    iget-wide v4, p0, Lcom/android/calendar/event/data/TaskEditLogMetrics;->mLoadedTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 106
    iget-boolean v0, p0, Lcom/android/calendar/event/data/TaskEditLogMetrics;->mDidChangeTime:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 107
    iget-boolean v0, p0, Lcom/android/calendar/event/data/TaskEditLogMetrics;->mDidChangeRecurrence:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 108
    return-void

    :cond_0
    move v0, v2

    .line 106
    goto :goto_0

    :cond_1
    move v1, v2

    .line 107
    goto :goto_1
.end method
