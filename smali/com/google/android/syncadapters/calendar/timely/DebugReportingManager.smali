.class public Lcom/google/android/syncadapters/calendar/timely/DebugReportingManager;
.super Ljava/lang/Object;
.source "DebugReportingManager.java"


# static fields
.field public static final ACTION_NOTIFY_REPORT:Ljava/lang/String;

.field public static final ACTION_SHORT_STATUS:Ljava/lang/String;

.field public static final EXTRA_CALENDAR_ID:Ljava/lang/String;

.field public static final EXTRA_STATUS_CODE:Ljava/lang/String;

.field private static final REPORT_TYPE_TO_INTERVAL_DAYS_MAP:Landroid/util/SparseIntArray;

.field private static final TAG:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 23
    const-class v0, Lcom/google/android/syncadapters/calendar/timely/DebugReportingManager;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/DebugReportingManager;->TAG:Ljava/lang/String;

    .line 25
    const-class v0, Lcom/google/android/syncadapters/calendar/timely/DebugReportingManager;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".NotifyReport"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/DebugReportingManager;->ACTION_NOTIFY_REPORT:Ljava/lang/String;

    .line 27
    const-class v0, Lcom/google/android/syncadapters/calendar/timely/DebugReportingManager;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".ShortStatus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/DebugReportingManager;->ACTION_SHORT_STATUS:Ljava/lang/String;

    .line 29
    const-class v0, Lcom/google/android/syncadapters/calendar/timely/DebugReportingManager;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".CalendarId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/DebugReportingManager;->EXTRA_CALENDAR_ID:Ljava/lang/String;

    .line 31
    const-class v0, Lcom/google/android/syncadapters/calendar/timely/DebugReportingManager;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".StatusCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/DebugReportingManager;->EXTRA_STATUS_CODE:Ljava/lang/String;

    .line 62
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/DebugReportingManager;->REPORT_TYPE_TO_INTERVAL_DAYS_MAP:Landroid/util/SparseIntArray;

    .line 64
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/DebugReportingManager;->REPORT_TYPE_TO_INTERVAL_DAYS_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 65
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/DebugReportingManager;->REPORT_TYPE_TO_INTERVAL_DAYS_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 71
    sput-object p0, Lcom/google/android/syncadapters/calendar/timely/DebugReportingManager;->sContext:Landroid/content/Context;

    .line 72
    return-void
.end method
