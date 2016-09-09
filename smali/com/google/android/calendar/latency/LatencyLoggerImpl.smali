.class public Lcom/google/android/calendar/latency/LatencyLoggerImpl;
.super Ljava/lang/Object;
.source "LatencyLoggerImpl.java"

# interfaces
.implements Lcom/google/android/calendar/latency/LatencyLoggerExtension;


# static fields
.field private static final COLD_START:I

.field private static final COLD_START_ALL_EVENTS:I

.field private static final COLD_START_ALL_TASKS:I

.field private static final COLD_START_SHORT_TASKS:I

.field private static final GROOVE_CREATION:I

.field private static final GROOVE_DEFER:I

.field private static final NOTIFICATION_APP_START:I

.field private static final OPEN_EVENT_VIEW:I

.field private static final SAVE_EVENT:I

.field private static final TASK_LOAD:I

.field private static final TASK_PROCESSING:I

.field private static final TOGGLE_CALENDAR:I


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mColdStart:Lcom/google/android/calendar/latency/IntraSpans;

.field private mColdStartAllEvents:Lcom/google/android/calendar/latency/PerformanceSpan;

.field private mColdStartAllTasks:Lcom/google/android/calendar/latency/PerformanceSpan;

.field private mColdStartShortTasks:Lcom/google/android/calendar/latency/PerformanceSpan;

.field private mGrooveCreation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/calendar/latency/PerformanceSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mGrooveDefer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/calendar/latency/PerformanceSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationAppStart:Lcom/google/android/calendar/latency/PerformanceSpan;

.field private mOpenEventView:Lcom/google/android/calendar/latency/PerformanceSpan;

.field private mSaveEvent:Lcom/google/android/calendar/latency/IntraSpans;

.field private mTaskLoad:Lcom/google/android/calendar/latency/PerformanceSpan;

.field private mTaskProcessing:Lcom/google/android/calendar/latency/PerformanceSpan;

.field private mToggleCalendar:Lcom/google/android/calendar/latency/IntraSpans;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/android/calendar/R$string;->latency_cold_start:I

    sput v0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->COLD_START:I

    .line 31
    sget v0, Lcom/android/calendar/R$string;->latency_cold_start_all_events:I

    sput v0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->COLD_START_ALL_EVENTS:I

    .line 37
    sget v0, Lcom/android/calendar/R$string;->latency_cold_start_all_tasks:I

    sput v0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->COLD_START_ALL_TASKS:I

    .line 43
    sget v0, Lcom/android/calendar/R$string;->latency_cold_start_short_tasks:I

    sput v0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->COLD_START_SHORT_TASKS:I

    .line 48
    sget v0, Lcom/android/calendar/R$string;->latency_open_event_view:I

    sput v0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->OPEN_EVENT_VIEW:I

    .line 53
    sget v0, Lcom/android/calendar/R$string;->latency_save_event:I

    sput v0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->SAVE_EVENT:I

    .line 58
    sget v0, Lcom/android/calendar/R$string;->latency_toggle_calendar:I

    sput v0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->TOGGLE_CALENDAR:I

    .line 63
    sget v0, Lcom/android/calendar/R$string;->latency_task_load:I

    sput v0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->TASK_LOAD:I

    .line 68
    sget v0, Lcom/android/calendar/R$string;->latency_task_processing:I

    sput v0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->TASK_PROCESSING:I

    .line 73
    sget v0, Lcom/android/calendar/R$string;->analytics_action_groove_creation:I

    sput v0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->GROOVE_CREATION:I

    .line 78
    sget v0, Lcom/android/calendar/R$string;->analytics_action_groove_defer:I

    sput v0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->GROOVE_DEFER:I

    .line 84
    sget v0, Lcom/android/calendar/R$string;->latency_notification_start:I

    sput v0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->NOTIFICATION_APP_START:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mGrooveCreation:Ljava/util/Map;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mGrooveDefer:Ljava/util/Map;

    return-void
.end method

.method private logMarkVerbose(Ljava/lang/String;IILjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 112
    if-nez p4, :cond_0

    .line 113
    const-string v0, "LatencyLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x13

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "  [dev] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mark %s-%d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/calendar/latency/PerformanceMark;->getMarkName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 114
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 113
    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 119
    :goto_0
    return-void

    .line 116
    :cond_0
    const-string v0, "LatencyLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "  [dev] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mark %s-%d from %s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 117
    invoke-static {p2}, Lcom/google/android/calendar/latency/PerformanceMark;->getMarkName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p4, v2, v6

    .line 116
    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method public initialize(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 153
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 156
    const/4 v1, 0x0

    const-string v2, "AllDataReady"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 157
    const-string v1, "AppCreated"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 158
    const/4 v1, 0x2

    const-string v2, "CanOpenEvent"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 159
    const/4 v1, 0x3

    const-string v2, "ClickEventOpen"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 160
    const/4 v1, 0x4

    const-string v2, "ClickSaveEvent"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 161
    const/4 v1, 0x5

    const-string v2, "ClickToggleCalendar"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 162
    const/4 v1, 0x6

    const-string v2, "EventLoadBegin"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 163
    const/4 v1, 0x7

    const-string v2, "EventLoadFinished"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 164
    const/16 v1, 0x8

    const-string v2, "EventsChanged"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 165
    const/16 v1, 0x9

    const-string v2, "EventViewUpdated"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 166
    const/16 v1, 0xc

    const-string v2, "MainActivityCreated"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 167
    const/16 v1, 0xd

    const-string v2, "DataFactoryInitialized"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 168
    const/16 v1, 0xe

    const-string v2, "DataFactoryCreated"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 169
    const/16 v1, 0xa

    const-string v2, "MonthQueryBegin"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 170
    const/16 v1, 0xb

    const-string v2, "MonthQueryFinished"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 171
    const/16 v1, 0xf

    const-string v2, "MonthQueryDropped"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 172
    const/16 v1, 0x12

    const-string v2, "GrooveCreateBegin"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 173
    const/16 v1, 0x13

    const-string v2, "RequestSyncStart"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 174
    const/16 v1, 0x14

    const-string v2, "RequestSyncEnd"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 175
    const/16 v1, 0x15

    const-string v2, "ForceSyncScheduled"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 176
    const/16 v1, 0x16

    const-string v2, "ForceSyncStart"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 177
    const/16 v1, 0x17

    const-string v2, "ForceSyncEnd"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 178
    const/16 v1, 0x18

    const-string v2, "GrooveCreateEnd"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 179
    const/16 v1, 0x19

    const-string v2, "GrooveDeferBegin"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 180
    const/16 v1, 0x1a

    const-string v2, "UpsyncDeferRequestFinished"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 181
    const/16 v1, 0x1b

    const-string v2, "DeferForceSyncScheduled"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 182
    const/16 v1, 0x1c

    const-string v2, "DeferForceSyncFinished"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 183
    const/16 v1, 0x1d

    const-string v2, "GrooveDeferEnd"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 184
    const/16 v1, 0x10

    const-string v2, "AllTasksReady"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 185
    const/16 v1, 0x11

    const-string v2, "ShortTasksReady"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 188
    const/16 v1, 0x64

    const-string v2, "TaskLoadBegin"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 189
    const/16 v1, 0x65

    const-string v2, "TaskLoadFinished"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 190
    const/16 v1, 0x66

    const-string v2, "TaskLoadRestart"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 191
    const/16 v1, 0xc8

    const-string v2, "TaskProcessingStart"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 192
    const/16 v1, 0xc9

    const-string v2, "TaskProcessingStorageInitialized"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 193
    const/16 v1, 0xca

    const-string v2, "TaskProcessingStartTimelineTasksCreated"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 195
    const/16 v1, 0xcb

    const-string v2, "TaskProcessingStorageFinalized"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 196
    const/16 v1, 0xcc

    const-string v2, "TaskProcessingUpdateMonthData"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 197
    const/16 v1, 0xcd

    const-string v2, "TaskProcessingUpdatedSearch"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 198
    const/16 v1, 0xce

    const-string v2, "TaskProcessingUpdatedAnalytics"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 199
    const/16 v1, 0xcf

    const-string v2, "TaskProcessingFinished"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 201
    const/16 v1, 0x1e

    const-string v2, "NotificationAppStart"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 204
    sget v1, Lcom/android/calendar/R$string;->latency_category:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mCategory:Ljava/lang/String;

    .line 205
    iget-object v1, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mCategory:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/google/android/calendar/latency/PerformanceSpan;->loggerInitializer(Landroid/content/Context;Ljava/lang/String;)V

    .line 206
    invoke-static {v0}, Lcom/google/android/calendar/latency/PerformanceMark;->initMarkNames(Landroid/util/SparseArray;)V

    .line 207
    return v3
.end method

.method protected isDevelopment()Z
    .locals 2

    .prologue
    .line 135
    const-string v0, "LatencyLogger"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method protected isEnabled()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method protected isVerboseDevelopment()Z
    .locals 2

    .prologue
    .line 140
    const-string v0, "LatencyLogger"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public markAt(I)V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->markAt(ILjava/lang/String;)V

    .line 218
    return-void
.end method

.method public markAt(II)V
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->markAt(IILjava/lang/String;)V

    .line 463
    return-void
.end method

.method public markAt(IILjava/lang/String;)V
    .locals 9

    .prologue
    const/16 v2, 0xf

    const/4 v3, 0x0

    const/16 v5, 0xa

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 472
    invoke-virtual {p0}, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 530
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->isVerboseDevelopment()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 531
    const-string v0, "unhandled"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->logMarkVerbose(Ljava/lang/String;IILjava/lang/String;)V

    :cond_2
    move v0, v7

    .line 534
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->isVerboseDevelopment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    if-nez p3, :cond_a

    .line 536
    const-string v0, "LatencyLogger"

    const-string v1, "[[dev]] mark %s-%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/calendar/latency/PerformanceMark;->getMarkName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 482
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mColdStart:Lcom/google/android/calendar/latency/IntraSpans;

    if-eqz v0, :cond_d

    .line 484
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mColdStart:Lcom/google/android/calendar/latency/IntraSpans;

    invoke-virtual {v0, p1, p2, v3, p3}, Lcom/google/android/calendar/latency/IntraSpans;->startSubSpanAt(IILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;

    move-result-object v3

    move v0, v6

    .line 486
    :goto_2
    iget-object v1, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mSaveEvent:Lcom/google/android/calendar/latency/IntraSpans;

    if-eqz v1, :cond_4

    .line 488
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mSaveEvent:Lcom/google/android/calendar/latency/IntraSpans;

    invoke-virtual {v0, p1, p2, v3, p3}, Lcom/google/android/calendar/latency/IntraSpans;->startSubSpanAt(IILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;

    move-result-object v3

    move v0, v6

    .line 490
    :cond_4
    iget-object v1, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mToggleCalendar:Lcom/google/android/calendar/latency/IntraSpans;

    if-eqz v1, :cond_3

    .line 491
    iget-object v1, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mToggleCalendar:Lcom/google/android/calendar/latency/IntraSpans;

    invoke-virtual {v1, p1}, Lcom/google/android/calendar/latency/IntraSpans;->hasOneShot(I)Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v6

    :goto_3
    or-int/2addr v0, v1

    .line 492
    iget-object v1, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mToggleCalendar:Lcom/google/android/calendar/latency/IntraSpans;

    invoke-virtual {v1, p1, p2, v3, p3}, Lcom/google/android/calendar/latency/IntraSpans;->startSubSpanAt(IILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;

    goto :goto_1

    :cond_5
    move v1, v7

    .line 491
    goto :goto_3

    .line 496
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mColdStart:Lcom/google/android/calendar/latency/IntraSpans;

    if-eqz v0, :cond_c

    .line 498
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mColdStart:Lcom/google/android/calendar/latency/IntraSpans;

    move v1, p1

    move v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/calendar/latency/IntraSpans;->stopSubSpanAt(IILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;I)Lcom/google/android/calendar/latency/PerformanceMark;

    move-result-object v0

    move-object v4, v0

    move v0, v6

    .line 501
    :goto_4
    iget-object v1, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mSaveEvent:Lcom/google/android/calendar/latency/IntraSpans;

    if-eqz v1, :cond_6

    .line 503
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mSaveEvent:Lcom/google/android/calendar/latency/IntraSpans;

    invoke-virtual {v0, p1, v4, p3}, Lcom/google/android/calendar/latency/IntraSpans;->endAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;

    .line 504
    iput-object v3, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mSaveEvent:Lcom/google/android/calendar/latency/IntraSpans;

    move v0, v6

    .line 506
    :cond_6
    iget-object v1, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mToggleCalendar:Lcom/google/android/calendar/latency/IntraSpans;

    if-eqz v1, :cond_3

    .line 507
    iget-object v1, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mToggleCalendar:Lcom/google/android/calendar/latency/IntraSpans;

    invoke-virtual {v1, p1}, Lcom/google/android/calendar/latency/IntraSpans;->hasOneShot(I)Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v6

    :goto_5
    or-int v8, v0, v1

    .line 508
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mToggleCalendar:Lcom/google/android/calendar/latency/IntraSpans;

    move v1, p1

    move v2, p2

    move-object v3, v4

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/calendar/latency/IntraSpans;->stopSubSpanAt(IILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;I)Lcom/google/android/calendar/latency/PerformanceMark;

    move v0, v8

    goto/16 :goto_1

    :cond_7
    move v1, v7

    .line 507
    goto :goto_5

    .line 513
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mColdStart:Lcom/google/android/calendar/latency/IntraSpans;

    if-eqz v0, :cond_b

    .line 514
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mColdStart:Lcom/google/android/calendar/latency/IntraSpans;

    invoke-virtual {v0, v5, v2}, Lcom/google/android/calendar/latency/IntraSpans;->clearAt(II)V

    move v0, v6

    .line 517
    :goto_6
    iget-object v1, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mSaveEvent:Lcom/google/android/calendar/latency/IntraSpans;

    if-eqz v1, :cond_8

    .line 518
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mSaveEvent:Lcom/google/android/calendar/latency/IntraSpans;

    invoke-virtual {v0, v5, v2}, Lcom/google/android/calendar/latency/IntraSpans;->clearAt(II)V

    move v0, v6

    .line 521
    :cond_8
    iget-object v1, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mToggleCalendar:Lcom/google/android/calendar/latency/IntraSpans;

    if-eqz v1, :cond_9

    .line 522
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mToggleCalendar:Lcom/google/android/calendar/latency/IntraSpans;

    invoke-virtual {v0, v5, v2}, Lcom/google/android/calendar/latency/IntraSpans;->clearAt(II)V

    move v0, v6

    .line 525
    :cond_9
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->isVerboseDevelopment()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 526
    const-string v1, "unhandled"

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->logMarkVerbose(Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_1

    .line 538
    :cond_a
    const-string v0, "LatencyLogger"

    const-string v1, "[[dev]] mark %s-%d from %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/calendar/latency/PerformanceMark;->getMarkName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 539
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    aput-object p3, v2, v3

    .line 538
    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    :cond_b
    move v0, v7

    goto :goto_6

    :cond_c
    move v0, v7

    move-object v4, v3

    goto :goto_4

    :cond_d
    move v0, v7

    goto/16 :goto_2

    .line 480
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public markAt(ILjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 227
    invoke-virtual {p0}, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 442
    invoke-virtual {p0}, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->isVerboseDevelopment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    if-nez p2, :cond_6

    .line 444
    const-string v0, "LatencyLogger"

    const-string v1, "  [dev] unhandled mark %s"

    new-array v2, v5, [Ljava/lang/Object;

    .line 445
    invoke-static {p1}, Lcom/google/android/calendar/latency/PerformanceMark;->getMarkName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 444
    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 234
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mColdStartAllEvents:Lcom/google/android/calendar/latency/PerformanceSpan;

    if-eqz v0, :cond_7

    .line 235
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mColdStartAllEvents:Lcom/google/android/calendar/latency/PerformanceSpan;

    invoke-virtual {v0, p1, v3, p2}, Lcom/google/android/calendar/latency/PerformanceSpan;->endAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;

    move-result-object v0

    .line 236
    iput-object v3, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mColdStartAllEvents:Lcom/google/android/calendar/latency/PerformanceSpan;

    .line 238
    :goto_1
    iget-object v1, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mToggleCalendar:Lcom/google/android/calendar/latency/IntraSpans;

    if-eqz v1, :cond_2

    .line 239
    iget-object v1, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mToggleCalendar:Lcom/google/android/calendar/latency/IntraSpans;

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/android/calendar/latency/IntraSpans;->endAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;

    move-result-object v0

    .line 240
    iput-object v3, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mToggleCalendar:Lcom/google/android/calendar/latency/IntraSpans;

    .line 242
    :cond_2
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->isDevelopment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    if-nez p2, :cond_3

    .line 244
    const-string v0, "LatencyLogger"

    const-string v1, "[dev] mark %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/calendar/latency/PerformanceMark;->getMarkName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 246
    :cond_3
    const-string v0, "LatencyLogger"

    const-string v1, "[dev] mark %s from %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/calendar/latency/PerformanceMark;->getMarkName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 252
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mColdStartAllTasks:Lcom/google/android/calendar/latency/PerformanceSpan;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mColdStartAllTasks:Lcom/google/android/calendar/latency/PerformanceSpan;

    invoke-virtual {v0, p1, v3, p2}, Lcom/google/android/calendar/latency/PerformanceSpan;->endAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;

    .line 254
    iput-object v3, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mColdStartAllTasks:Lcom/google/android/calendar/latency/PerformanceSpan;

    goto :goto_0

    .line 258
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mColdStartShortTasks:Lcom/google/android/calendar/latency/PerformanceSpan;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mColdStartShortTasks:Lcom/google/android/calendar/latency/PerformanceSpan;

    invoke-virtual {v0, p1, v3, p2}, Lcom/google/android/calendar/latency/PerformanceSpan;->endAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;

    .line 260
    iput-object v3, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mColdStartShortTasks:Lcom/google/android/calendar/latency/PerformanceSpan;

    goto :goto_0

    .line 266
    :sswitch_3
    invoke-virtual {p0}, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->isDevelopment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    if-nez p2, :cond_4

    .line 268
    const-string v0, "LatencyLogger"

    const-string v1, "[dev] mark %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/calendar/latency/PerformanceMark;->getMarkName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 270
    :cond_4
    const-string v0, "LatencyLogger"

    const-string v1, "[dev] mark %s from %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/calendar/latency/PerformanceMark;->getMarkName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 276
    :sswitch_4
    new-instance v0, Lcom/google/android/calendar/latency/IntraSpans;

    sget v1, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->COLD_START:I

    invoke-direct {v0, v1, p1, v3, p2}, Lcom/google/android/calendar/latency/IntraSpans;-><init>(IILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mColdStart:Lcom/google/android/calendar/latency/IntraSpans;

    .line 277
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mColdStart:Lcom/google/android/calendar/latency/IntraSpans;

    invoke-virtual {v0}, Lcom/google/android/calendar/latency/IntraSpans;->getStart()Lcom/google/android/calendar/latency/PerformanceMark;

    move-result-object v0

    .line 278
    new-instance v1, Lcom/google/android/calendar/latency/PerformanceSpan;

    sget v2, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->COLD_START_ALL_EVENTS:I

    invoke-direct {v1, v2, p1, v0, p2}, Lcom/google/android/calendar/latency/PerformanceSpan;-><init>(IILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mColdStartAllEvents:Lcom/google/android/calendar/latency/PerformanceSpan;

    .line 280
    new-instance v1, Lcom/google/android/calendar/latency/PerformanceSpan;

    sget v2, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->COLD_START_ALL_TASKS:I

    invoke-direct {v1, v2, p1, v0, p2}, Lcom/google/android/calendar/latency/PerformanceSpan;-><init>(IILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mColdStartAllTasks:Lcom/google/android/calendar/latency/PerformanceSpan;

    .line 282
    new-instance v1, Lcom/google/android/calendar/latency/PerformanceSpan;

    sget v2, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->COLD_START_SHORT_TASKS:I

    invoke-direct {v1, v2, p1, v0, p2}, Lcom/google/android/calendar/latency/PerformanceSpan;-><init>(IILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mColdStartShortTasks:Lcom/google/android/calendar/latency/PerformanceSpan;

    goto/16 :goto_0

    .line 286
    :sswitch_5
    new-instance v0, Lcom/google/android/calendar/latency/PerformanceSpan;

    sget v1, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->OPEN_EVENT_VIEW:I

    invoke-direct {v0, v1, p1, v3, p2}, Lcom/google/android/calendar/latency/PerformanceSpan;-><init>(IILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mOpenEventView:Lcom/google/android/calendar/latency/PerformanceSpan;

    goto/16 :goto_0

    .line 289
    :sswitch_6
    new-instance v0, Lcom/google/android/calendar/latency/IntraSpans;

    sget v1, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->SAVE_EVENT:I

    invoke-direct {v0, v1, p1, v3, p2}, Lcom/google/android/calendar/latency/IntraSpans;-><init>(IILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mSaveEvent:Lcom/google/android/calendar/latency/IntraSpans;

    goto/16 :goto_0

    .line 292
    :sswitch_7
    new-instance v0, Lcom/google/android/calendar/latency/IntraSpans;

    sget v1, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->TOGGLE_CALENDAR:I

    invoke-direct {v0, v1, p1, v3, p2}, Lcom/google/android/calendar/latency/IntraSpans;-><init>(IILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mToggleCalendar:Lcom/google/android/calendar/latency/IntraSpans;

    goto/16 :goto_0

    .line 295
    :sswitch_8
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mSaveEvent:Lcom/google/android/calendar/latency/IntraSpans;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mSaveEvent:Lcom/google/android/calendar/latency/IntraSpans;

    invoke-virtual {v0, p1, v3, p2}, Lcom/google/android/calendar/latency/IntraSpans;->markAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;

    goto/16 :goto_0

    .line 300
    :sswitch_9
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mOpenEventView:Lcom/google/android/calendar/latency/PerformanceSpan;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mOpenEventView:Lcom/google/android/calendar/latency/PerformanceSpan;

    invoke-virtual {v0, p1, v3, p2}, Lcom/google/android/calendar/latency/PerformanceSpan;->startSubSpanAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;

    goto/16 :goto_0

    .line 305
    :sswitch_a
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mOpenEventView:Lcom/google/android/calendar/latency/PerformanceSpan;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mOpenEventView:Lcom/google/android/calendar/latency/PerformanceSpan;

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v3, p2, v1}, Lcom/google/android/calendar/latency/PerformanceSpan;->stopSubSpanAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;I)Lcom/google/android/calendar/latency/PerformanceMark;

    goto/16 :goto_0

    .line 310
    :sswitch_b
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mOpenEventView:Lcom/google/android/calendar/latency/PerformanceSpan;

    if-eqz v0, :cond_5

    .line 311
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mOpenEventView:Lcom/google/android/calendar/latency/PerformanceSpan;

    invoke-virtual {v0, p1, v3, p2}, Lcom/google/android/calendar/latency/PerformanceSpan;->endAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;

    .line 312
    iput-object v3, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mOpenEventView:Lcom/google/android/calendar/latency/PerformanceSpan;

    .line 314
    :cond_5
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mNotificationAppStart:Lcom/google/android/calendar/latency/PerformanceSpan;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mNotificationAppStart:Lcom/google/android/calendar/latency/PerformanceSpan;

    invoke-virtual {v0, p1, v3, p2}, Lcom/google/android/calendar/latency/PerformanceSpan;->endAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;

    .line 316
    iput-object v3, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mNotificationAppStart:Lcom/google/android/calendar/latency/PerformanceSpan;

    goto/16 :goto_0

    .line 320
    :sswitch_c
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mColdStart:Lcom/google/android/calendar/latency/IntraSpans;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mColdStart:Lcom/google/android/calendar/latency/IntraSpans;

    invoke-virtual {v0, p1, v3, p2}, Lcom/google/android/calendar/latency/IntraSpans;->endAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;

    .line 322
    iput-object v3, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mColdStart:Lcom/google/android/calendar/latency/IntraSpans;

    goto/16 :goto_0

    .line 326
    :sswitch_d
    new-instance v0, Lcom/google/android/calendar/latency/PerformanceSpan;

    sget v1, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->TASK_LOAD:I

    invoke-direct {v0, v1, p1, v3, p2}, Lcom/google/android/calendar/latency/PerformanceSpan;-><init>(IILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mTaskLoad:Lcom/google/android/calendar/latency/PerformanceSpan;

    goto/16 :goto_0

    .line 329
    :sswitch_e
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mTaskLoad:Lcom/google/android/calendar/latency/PerformanceSpan;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mTaskLoad:Lcom/google/android/calendar/latency/PerformanceSpan;

    invoke-virtual {v0, p1, v3, p2}, Lcom/google/android/calendar/latency/PerformanceSpan;->endAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;

    .line 331
    iput-object v3, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mTaskLoad:Lcom/google/android/calendar/latency/PerformanceSpan;

    goto/16 :goto_0

    .line 335
    :sswitch_f
    new-instance v0, Lcom/google/android/calendar/latency/PerformanceSpan;

    sget v1, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->TASK_PROCESSING:I

    invoke-direct {v0, v1, p1, v3, p2}, Lcom/google/android/calendar/latency/PerformanceSpan;-><init>(IILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mTaskProcessing:Lcom/google/android/calendar/latency/PerformanceSpan;

    goto/16 :goto_0

    .line 338
    :sswitch_10
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mTaskProcessing:Lcom/google/android/calendar/latency/PerformanceSpan;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mTaskProcessing:Lcom/google/android/calendar/latency/PerformanceSpan;

    invoke-virtual {v0, p1, v3, p2}, Lcom/google/android/calendar/latency/PerformanceSpan;->startSubSpanAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;

    goto/16 :goto_0

    .line 343
    :sswitch_11
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mTaskProcessing:Lcom/google/android/calendar/latency/PerformanceSpan;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mTaskProcessing:Lcom/google/android/calendar/latency/PerformanceSpan;

    const/16 v1, 0xc9

    invoke-virtual {v0, p1, v3, p2, v1}, Lcom/google/android/calendar/latency/PerformanceSpan;->stopSubSpanAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;I)Lcom/google/android/calendar/latency/PerformanceMark;

    goto/16 :goto_0

    .line 352
    :sswitch_12
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mTaskProcessing:Lcom/google/android/calendar/latency/PerformanceSpan;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mTaskProcessing:Lcom/google/android/calendar/latency/PerformanceSpan;

    invoke-virtual {v0, p1, v3, p2}, Lcom/google/android/calendar/latency/PerformanceSpan;->markAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;

    goto/16 :goto_0

    .line 357
    :sswitch_13
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mTaskProcessing:Lcom/google/android/calendar/latency/PerformanceSpan;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mTaskProcessing:Lcom/google/android/calendar/latency/PerformanceSpan;

    invoke-virtual {v0, p1, v3, p2}, Lcom/google/android/calendar/latency/PerformanceSpan;->endAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;

    .line 359
    iput-object v3, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mTaskProcessing:Lcom/google/android/calendar/latency/PerformanceSpan;

    goto/16 :goto_0

    .line 363
    :sswitch_14
    iget-object v6, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mGrooveCreation:Ljava/util/Map;

    new-instance v0, Lcom/google/android/calendar/latency/PerformanceSpan;

    sget v1, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->GROOVE_CREATION:I

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/calendar/latency/PerformanceSpan;-><init>(IILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;Z)V

    .line 364
    invoke-virtual {v0, v5}, Lcom/google/android/calendar/latency/PerformanceSpan;->setAlsoLogAsEvent(Z)Lcom/google/android/calendar/latency/PerformanceSpan;

    move-result-object v0

    .line 363
    invoke-interface {v6, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 367
    :sswitch_15
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mGrooveCreation:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/latency/PerformanceSpan;

    .line 368
    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0, p1, v3, p2}, Lcom/google/android/calendar/latency/PerformanceSpan;->startSubSpanAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;

    goto/16 :goto_0

    .line 373
    :sswitch_16
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mGrooveCreation:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/latency/PerformanceSpan;

    .line 374
    if-eqz v0, :cond_0

    .line 375
    const/16 v1, 0x13

    invoke-virtual {v0, p1, v3, p2, v1}, Lcom/google/android/calendar/latency/PerformanceSpan;->stopSubSpanAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;I)Lcom/google/android/calendar/latency/PerformanceMark;

    goto/16 :goto_0

    .line 380
    :sswitch_17
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mGrooveCreation:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/latency/PerformanceSpan;

    .line 381
    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {v0, p1, v3, p2}, Lcom/google/android/calendar/latency/PerformanceSpan;->startSubSpanAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;

    goto/16 :goto_0

    .line 386
    :sswitch_18
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mGrooveCreation:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/latency/PerformanceSpan;

    .line 387
    if-eqz v0, :cond_0

    .line 388
    const/16 v1, 0x15

    invoke-virtual {v0, p1, v3, p2, v1}, Lcom/google/android/calendar/latency/PerformanceSpan;->stopSubSpanAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;I)Lcom/google/android/calendar/latency/PerformanceMark;

    .line 390
    invoke-virtual {v0, p1, v3, p2}, Lcom/google/android/calendar/latency/PerformanceSpan;->startSubSpanAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;

    goto/16 :goto_0

    .line 394
    :sswitch_19
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mGrooveCreation:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/latency/PerformanceSpan;

    .line 395
    if-eqz v0, :cond_0

    .line 396
    const/16 v1, 0x16

    invoke-virtual {v0, p1, v3, p2, v1}, Lcom/google/android/calendar/latency/PerformanceSpan;->stopSubSpanAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;I)Lcom/google/android/calendar/latency/PerformanceMark;

    goto/16 :goto_0

    .line 401
    :sswitch_1a
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mGrooveCreation:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/latency/PerformanceSpan;

    .line 402
    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v0, p1, v3, p2}, Lcom/google/android/calendar/latency/PerformanceSpan;->endAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;

    .line 404
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mGrooveCreation:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 408
    :sswitch_1b
    iget-object v6, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mGrooveDefer:Ljava/util/Map;

    new-instance v0, Lcom/google/android/calendar/latency/PerformanceSpan;

    sget v1, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->GROOVE_DEFER:I

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/calendar/latency/PerformanceSpan;-><init>(IILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;Z)V

    .line 409
    invoke-virtual {v0, v5}, Lcom/google/android/calendar/latency/PerformanceSpan;->setAlsoLogAsEvent(Z)Lcom/google/android/calendar/latency/PerformanceSpan;

    move-result-object v0

    .line 408
    invoke-interface {v6, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 412
    :sswitch_1c
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mGrooveDefer:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/latency/PerformanceSpan;

    .line 413
    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {v0, p1, v3, p2}, Lcom/google/android/calendar/latency/PerformanceSpan;->markAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;

    goto/16 :goto_0

    .line 418
    :sswitch_1d
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mGrooveDefer:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/latency/PerformanceSpan;

    .line 419
    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v0, p1, v3, p2}, Lcom/google/android/calendar/latency/PerformanceSpan;->startSubSpanAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;

    goto/16 :goto_0

    .line 424
    :sswitch_1e
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mGrooveDefer:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/latency/PerformanceSpan;

    .line 425
    if-eqz v0, :cond_0

    .line 426
    const/16 v1, 0x1b

    invoke-virtual {v0, p1, v3, p2, v1}, Lcom/google/android/calendar/latency/PerformanceSpan;->stopSubSpanAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;I)Lcom/google/android/calendar/latency/PerformanceMark;

    goto/16 :goto_0

    .line 431
    :sswitch_1f
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mGrooveDefer:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/latency/PerformanceSpan;

    .line 432
    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {v0, p1, v3, p2}, Lcom/google/android/calendar/latency/PerformanceSpan;->endAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;

    .line 434
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mGrooveDefer:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 438
    :sswitch_20
    new-instance v0, Lcom/google/android/calendar/latency/IntraSpans;

    sget v1, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->NOTIFICATION_APP_START:I

    invoke-direct {v0, v1, p1, v3, p2}, Lcom/google/android/calendar/latency/IntraSpans;-><init>(IILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mNotificationAppStart:Lcom/google/android/calendar/latency/PerformanceSpan;

    .line 439
    iget-object v0, p0, Lcom/google/android/calendar/latency/LatencyLoggerImpl;->mNotificationAppStart:Lcom/google/android/calendar/latency/PerformanceSpan;

    invoke-virtual {v0}, Lcom/google/android/calendar/latency/PerformanceSpan;->getStart()Lcom/google/android/calendar/latency/PerformanceMark;

    goto/16 :goto_0

    .line 447
    :cond_6
    const-string v0, "LatencyLogger"

    const-string v1, "  [dev] unhandled mark %s from %s"

    new-array v2, v2, [Ljava/lang/Object;

    .line 448
    invoke-static {p1}, Lcom/google/android/calendar/latency/PerformanceMark;->getMarkName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    .line 447
    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    :cond_7
    move-object v0, v3

    goto/16 :goto_1

    .line 232
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_3
        0x2 -> :sswitch_c
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_9
        0x7 -> :sswitch_a
        0x8 -> :sswitch_8
        0x9 -> :sswitch_b
        0xc -> :sswitch_4
        0xd -> :sswitch_3
        0xe -> :sswitch_3
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
        0x12 -> :sswitch_14
        0x13 -> :sswitch_15
        0x14 -> :sswitch_16
        0x15 -> :sswitch_17
        0x16 -> :sswitch_18
        0x17 -> :sswitch_19
        0x18 -> :sswitch_1a
        0x19 -> :sswitch_1b
        0x1a -> :sswitch_1c
        0x1b -> :sswitch_1d
        0x1c -> :sswitch_1e
        0x1d -> :sswitch_1f
        0x1e -> :sswitch_20
        0x64 -> :sswitch_d
        0x65 -> :sswitch_e
        0xc8 -> :sswitch_f
        0xc9 -> :sswitch_10
        0xca -> :sswitch_12
        0xcb -> :sswitch_11
        0xcc -> :sswitch_12
        0xcd -> :sswitch_12
        0xce -> :sswitch_12
        0xcf -> :sswitch_13
    .end sparse-switch
.end method
