.class public Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterIntentService;
.super Landroid/app/IntentService;
.source "CalendarSyncAdapterIntentService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterIntentService;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterIntentService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "CalendarSyncAdapterIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterService;->getOrMakeSyncAdapter(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;

    move-result-object v0

    .line 23
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 25
    const-string v2, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->updateColorMapFromGsfLater()V

    .line 30
    :cond_0
    return-void
.end method
