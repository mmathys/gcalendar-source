.class public Lcom/google/android/calendar/timely/report/DebugReportingService;
.super Landroid/app/IntentService;
.source "DebugReportingService.java"


# static fields
.field public static final ACTION_DELETE_REPORT:Ljava/lang/String;

.field public static final ACTION_NOTIFY_REPORT:Ljava/lang/String;

.field public static final ACTION_SEND_REPORT:Ljava/lang/String;

.field public static final ACTION_VIEW_REPORT:Ljava/lang/String;

.field public static final EXTRA_DONT_ASK_AGAIN:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static sDogfoodIcon:Landroid/graphics/Bitmap;


# instance fields
.field private mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-class v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/timely/report/DebugReportingService;->TAG:Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/DebugReportingManager;->ACTION_NOTIFY_REPORT:Ljava/lang/String;

    sput-object v0, Lcom/google/android/calendar/timely/report/DebugReportingService;->ACTION_NOTIFY_REPORT:Ljava/lang/String;

    .line 56
    const-class v0, Lcom/google/android/calendar/timely/report/DebugReportingService;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".SendReport"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/timely/report/DebugReportingService;->ACTION_SEND_REPORT:Ljava/lang/String;

    .line 58
    const-class v0, Lcom/google/android/calendar/timely/report/DebugReportingService;

    .line 59
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".DeleteReport"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/timely/report/DebugReportingService;->ACTION_DELETE_REPORT:Ljava/lang/String;

    .line 60
    const-class v0, Lcom/google/android/calendar/timely/report/DebugReportingService;

    .line 61
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".ViewReport"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/timely/report/DebugReportingService;->ACTION_VIEW_REPORT:Ljava/lang/String;

    .line 62
    const-class v0, Lcom/google/android/calendar/timely/report/DebugReportingService;

    .line 63
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".DoNotAsk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/timely/report/DebugReportingService;->EXTRA_DONT_ASK_AGAIN:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    const-class v0, Lcom/google/android/calendar/timely/report/DebugReportingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/android/calendar/timely/report/DebugReportingService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/calendar/timely/report/DebugReportingService;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/calendar/timely/report/DebugReportingService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method private getCategory(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    packed-switch p1, :pswitch_data_0

    .line 164
    const-string v0, "com.google.android.calendar.CONSISTENCY_REPORT"

    :goto_0
    return-object v0

    .line 160
    :pswitch_0
    const-string v0, "com.google.android.calendar.DEFAULT_SYNC_REPORT"

    goto :goto_0

    .line 162
    :pswitch_1
    const-string v0, "com.google.android.calendar.FORBIDDEN_DELETION_REPORT"

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getConsistencyShortStatusMessageString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 245
    packed-switch p2, :pswitch_data_0

    .line 253
    sget-object v0, Lcom/google/android/calendar/timely/report/DebugReportingService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x36

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unsupported consistency check status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 254
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 247
    :pswitch_0
    sget v0, Lcom/android/calendar/R$string;->calendar_is_consistent:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/timely/report/DebugReportingService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 249
    :pswitch_1
    sget v0, Lcom/android/calendar/R$string;->calendar_is_inconsistent:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/timely/report/DebugReportingService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 251
    :pswitch_2
    sget v0, Lcom/android/calendar/R$string;->calendar_could_not_be_checked:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/timely/report/DebugReportingService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDescription(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    packed-switch p1, :pswitch_data_0

    .line 175
    const-string v0, "Consistency Report"

    :goto_0
    return-object v0

    .line 171
    :pswitch_0
    const-string v0, "Sync Report"

    goto :goto_0

    .line 173
    :pswitch_1
    const-string v0, "Forbidden Delete Report"

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getShortStatusMessage(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    packed-switch p2, :pswitch_data_0

    .line 238
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 234
    :pswitch_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/calendar/timely/report/DebugReportingService;->getConsistencyShortStatusMessageString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private initializeClient()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/calendar/timely/report/DebugReportingService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {p0}, Lcom/google/android/calendar/timely/report/DebugReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    sget-object v1, Lcom/google/android/gms/feedback/Feedback;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/calendar/timely/report/DebugReportingService$2;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/timely/report/DebugReportingService$2;-><init>(Lcom/google/android/calendar/timely/report/DebugReportingService;)V

    .line 90
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/calendar/timely/report/DebugReportingService$1;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/timely/report/DebugReportingService$1;-><init>(Lcom/google/android/calendar/timely/report/DebugReportingService;)V

    .line 100
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/report/DebugReportingService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/timely/report/DebugReportingService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/google/android/calendar/timely/report/DebugReportingService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 112
    :cond_1
    return-void
.end method

.method private intentForReportCalendarAndAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 273
    sget-object v0, Lcom/google/android/calendar/timely/report/DebugReportingService;->ACTION_VIEW_REPORT:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v1, 0x10008000

    .line 275
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/DebugReportingManager;->EXTRA_CALENDAR_ID:Ljava/lang/String;

    .line 276
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "report_type"

    .line 277
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/google/android/calendar/timely/report/ViewDebugReportActivity;

    .line 278
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 279
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 285
    :goto_0
    return-object v0

    .line 281
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/DebugReportingManager;->EXTRA_CALENDAR_ID:Ljava/lang/String;

    .line 282
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "report_type"

    .line 283
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/google/android/calendar/timely/report/DebugReportingService;

    .line 284
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 285
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method

.method private notifyUserAboutStatus(Ljava/lang/String;II)V
    .locals 3

    .prologue
    .line 259
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/calendar/timely/report/DebugReportingService;->getShortStatusMessage(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 260
    if-nez v0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 263
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/calendar/timely/report/DebugReportingService;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/google/android/calendar/timely/report/DebugReportingService$4;

    invoke-direct {v2, p0, v0}, Lcom/google/android/calendar/timely/report/DebugReportingService$4;-><init>(Lcom/google/android/calendar/timely/report/DebugReportingService;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private uploadReportFile(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 117
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/timely/report/DebugReportingService;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/api/client/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 119
    invoke-direct {p0}, Lcom/google/android/calendar/timely/report/DebugReportingService;->initializeClient()V

    .line 123
    new-instance v1, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;-><init>()V

    .line 124
    invoke-direct {p0, p3}, Lcom/google/android/calendar/timely/report/DebugReportingService;->getDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions$Builder;

    move-result-object v1

    .line 125
    invoke-virtual {v1, p2}, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;->setAccountInUse(Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions$Builder;

    move-result-object v1

    const-string v2, "REPORT"

    const-string v3, "text/plain"

    .line 126
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;->addProductSpecificBinaryData(Ljava/lang/String;Ljava/lang/String;[B)Lcom/google/android/gms/feedback/FeedbackOptions$Builder;

    move-result-object v0

    .line 127
    invoke-direct {p0, p3}, Lcom/google/android/calendar/timely/report/DebugReportingService;->getCategory(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;->setCategoryTag(Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions$Builder;

    move-result-object v0

    .line 129
    invoke-static {v0, p0}, Lcom/google/android/calendar/timely/GoogleFeedbackUtils;->addEssentialDataToFeedback(Lcom/google/android/gms/feedback/FeedbackOptions$Builder;Landroid/content/Context;)V

    .line 134
    iget-object v1, p0, Lcom/google/android/calendar/timely/report/DebugReportingService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;->build()Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/feedback/Feedback;->startFeedback(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/feedback/FeedbackOptions;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 137
    new-instance v1, Lcom/google/android/calendar/timely/report/DebugReportingService$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/calendar/timely/report/DebugReportingService$3;-><init>(Lcom/google/android/calendar/timely/report/DebugReportingService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 155
    return-void
.end method


# virtual methods
.method public deleteReportFile(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 180
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/timely/report/DebugReportingService;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    sget-object v0, Lcom/google/android/calendar/timely/report/DebugReportingService;->TAG:Ljava/lang/String;

    const-string v1, "Deleted report file: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 185
    :goto_0
    const-string v0, "notification"

    .line 186
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/report/DebugReportingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 187
    invoke-virtual {v0, p1, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 188
    return-void

    .line 183
    :cond_0
    sget-object v0, Lcom/google/android/calendar/timely/report/DebugReportingService;->TAG:Ljava/lang/String;

    const-string v1, "Could not delete report file: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method notifyUserAboutReport(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    const-string v1, "ALLOW_CONSISTENCY_REPORTING"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 294
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 295
    sget-object v1, Lcom/google/android/calendar/timely/report/DebugReportingService;->TAG:Ljava/lang/String;

    const-string v2, "User denied sending reports"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 296
    invoke-virtual {p0, p2}, Lcom/google/android/calendar/timely/report/DebugReportingService;->deleteReportFile(Ljava/lang/String;)V

    .line 364
    :goto_0
    return-void

    .line 306
    :cond_0
    sget-object v1, Lcom/google/android/calendar/timely/report/DebugReportingService;->TAG:Ljava/lang/String;

    const-string v2, "Will ask user for permission"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 308
    sget-object v1, Lcom/google/android/calendar/timely/report/DebugReportingService;->sDogfoodIcon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/report/DebugReportingService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$drawable;->quantum_ic_dogfood_color_48:I

    .line 309
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/calendar/timely/report/DebugReportingService;->sDogfoodIcon:Landroid/graphics/Bitmap;

    .line 313
    :cond_1
    sget-object v1, Lcom/google/android/calendar/timely/report/DebugReportingService;->ACTION_VIEW_REPORT:Ljava/lang/String;

    .line 314
    move/from16 v0, p5

    invoke-direct {p0, p2, p3, v1, v0}, Lcom/google/android/calendar/timely/report/DebugReportingService;->intentForReportCalendarAndAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 316
    sget-object v1, Lcom/google/android/calendar/timely/report/DebugReportingService;->ACTION_SEND_REPORT:Ljava/lang/String;

    .line 317
    move/from16 v0, p5

    invoke-direct {p0, p2, p3, v1, v0}, Lcom/google/android/calendar/timely/report/DebugReportingService;->intentForReportCalendarAndAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 319
    sget-object v1, Lcom/google/android/calendar/timely/report/DebugReportingService;->ACTION_DELETE_REPORT:Ljava/lang/String;

    .line 320
    move/from16 v0, p5

    invoke-direct {p0, p2, p3, v1, v0}, Lcom/google/android/calendar/timely/report/DebugReportingService;->intentForReportCalendarAndAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 322
    new-instance v7, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v7, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 327
    packed-switch p5, :pswitch_data_0

    .line 344
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x24

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unsupported report type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 329
    :pswitch_0
    sget v3, Lcom/android/calendar/R$string;->inconsistent_calendar:I

    .line 330
    sget v2, Lcom/android/calendar/R$string;->calendar_inconsistent_text:I

    .line 331
    sget v1, Lcom/android/calendar/R$string;->calendar_inconsistent_details:I

    .line 347
    :goto_1
    invoke-virtual {p0, v3}, Lcom/google/android/calendar/timely/report/DebugReportingService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 348
    invoke-virtual {p0, v2}, Lcom/google/android/calendar/timely/report/DebugReportingService;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    new-instance v8, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v8}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 349
    invoke-virtual {p0, v2}, Lcom/google/android/calendar/timely/report/DebugReportingService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p3, v9, v10

    .line 350
    invoke-virtual {p0, v1, v9}, Lcom/google/android/calendar/timely/report/DebugReportingService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "\n\n"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 349
    invoke-virtual {v8, v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 351
    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 352
    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 353
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$drawable;->ic_notify_white:I

    .line 354
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/calendar/timely/report/DebugReportingService;->sDogfoodIcon:Landroid/graphics/Bitmap;

    .line 355
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const v2, 0x108009b

    sget v3, Lcom/android/calendar/R$string;->report_view:I

    .line 357
    invoke-virtual {p0, v3}, Lcom/google/android/calendar/timely/report/DebugReportingService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 356
    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const v2, 0x1080029

    sget v3, Lcom/android/calendar/R$string;->report_send:I

    .line 359
    invoke-virtual {p0, v3}, Lcom/google/android/calendar/timely/report/DebugReportingService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 358
    invoke-virtual {v1, v2, v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 361
    const-string v1, "notification"

    .line 362
    invoke-virtual {p0, v1}, Lcom/google/android/calendar/timely/report/DebugReportingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 363
    const/4 v2, 0x0

    invoke-virtual {v7}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, p2, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 334
    :pswitch_1
    sget v3, Lcom/android/calendar/R$string;->sync_default:I

    .line 335
    sget v2, Lcom/android/calendar/R$string;->sync_default_report_text:I

    .line 336
    sget v1, Lcom/android/calendar/R$string;->sync_default_report_details:I

    goto/16 :goto_1

    .line 339
    :pswitch_2
    sget v3, Lcom/android/calendar/R$string;->forbidden_deletes_notification_title:I

    .line 340
    sget v2, Lcom/android/calendar/R$string;->forbidden_deletes_report_text:I

    .line 341
    sget v1, Lcom/android/calendar/R$string;->forbidden_deletes_report_details:I

    goto/16 :goto_1

    .line 327
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 192
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 193
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v2, 0x0

    .line 194
    :goto_0
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/DebugReportingManager;->EXTRA_CALENDAR_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 196
    const-string v0, "report_type"

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 200
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/report/DebugReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "_preferences"

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 203
    :try_start_0
    sget-object v0, Lcom/google/android/calendar/timely/report/DebugReportingService;->ACTION_SEND_REPORT:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    sget-object v0, Lcom/google/android/calendar/timely/report/DebugReportingService;->EXTRA_DONT_ASK_AGAIN:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ALLOW_CONSISTENCY_REPORTING"

    const/4 v4, 0x1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 208
    :cond_0
    invoke-direct {p0, v2, v3, v5}, Lcom/google/android/calendar/timely/report/DebugReportingService;->uploadReportFile(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :cond_1
    :goto_1
    return-void

    .line 193
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 209
    :cond_3
    :try_start_1
    sget-object v0, Lcom/google/android/calendar/timely/report/DebugReportingService;->ACTION_DELETE_REPORT:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 210
    sget-object v0, Lcom/google/android/calendar/timely/report/DebugReportingService;->EXTRA_DONT_ASK_AGAIN:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 211
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ALLOW_CONSISTENCY_REPORTING"

    const/4 v3, -0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 213
    :cond_4
    invoke-virtual {p0, v2}, Lcom/google/android/calendar/timely/report/DebugReportingService;->deleteReportFile(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 221
    :catch_0
    move-exception v0

    .line 222
    sget-object v1, Lcom/google/android/calendar/timely/report/DebugReportingService;->TAG:Ljava/lang/String;

    const-string v3, "While performing %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v7

    aput-object v2, v4, v8

    invoke-static {v1, v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 224
    sget-object v0, Lcom/google/android/calendar/timely/report/DebugReportingService;->ACTION_DELETE_REPORT:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    invoke-virtual {p0, v2}, Lcom/google/android/calendar/timely/report/DebugReportingService;->deleteReportFile(Ljava/lang/String;)V

    goto :goto_1

    .line 214
    :cond_5
    :try_start_2
    sget-object v0, Lcom/google/android/calendar/timely/report/DebugReportingService;->ACTION_NOTIFY_REPORT:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, p0

    move-object v4, v3

    .line 215
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/calendar/timely/report/DebugReportingService;->notifyUserAboutReport(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 216
    :cond_6
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/DebugReportingManager;->ACTION_SHORT_STATUS:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/DebugReportingManager;->EXTRA_STATUS_CODE:Ljava/lang/String;

    .line 217
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/DebugReportingManager;->EXTRA_STATUS_CODE:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 219
    invoke-direct {p0, v3, v5, v0}, Lcom/google/android/calendar/timely/report/DebugReportingService;->notifyUserAboutStatus(Ljava/lang/String;II)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method
