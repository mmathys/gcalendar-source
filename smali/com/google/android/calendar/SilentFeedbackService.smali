.class public Lcom/google/android/calendar/SilentFeedbackService;
.super Landroid/app/Service;
.source "SilentFeedbackService.java"


# instance fields
.field private mMostRecentId:I

.field private mPendingCrashCount:I

.field private final mPendingLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/SilentFeedbackService;->mPendingLock:Ljava/lang/Object;

    .line 43
    iput v1, p0, Lcom/google/android/calendar/SilentFeedbackService;->mPendingCrashCount:I

    .line 45
    iput v1, p0, Lcom/google/android/calendar/SilentFeedbackService;->mMostRecentId:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/SilentFeedbackService;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/calendar/SilentFeedbackService;->tryToStopSelf()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/calendar/SilentFeedbackService;Landroid/content/Intent;)Lcom/google/android/gms/feedback/FeedbackOptions;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/calendar/SilentFeedbackService;->buildCrashOptions(Landroid/content/Intent;)Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v0

    return-object v0
.end method

.method private buildCrashOptions(Landroid/content/Intent;)Lcom/google/android/gms/feedback/FeedbackOptions;
    .locals 3

    .prologue
    .line 69
    new-instance v0, Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;-><init>()V

    .line 70
    if-nez p1, :cond_0

    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;->build()Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    .line 74
    :cond_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions$Builder;

    .line 75
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;->setExcludePii(Z)Lcom/google/android/gms/feedback/FeedbackOptions$Builder;

    .line 76
    const-string v1, "exceptionClass"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    const-string v1, "exceptionClass"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;->setExceptionClassName(Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;

    .line 79
    :cond_1
    const-string v1, "stackTrace"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    const-string v1, "stackTrace"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;->setStackTrace(Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;

    .line 82
    :cond_2
    const-string v1, "throwingClass"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    const-string v1, "throwingClass"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;->setThrowClassName(Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;

    .line 85
    :cond_3
    const-string v1, "throwingFile"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 86
    const-string v1, "throwingFile"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;->setThrowFileName(Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;

    .line 88
    :cond_4
    const-string v1, "throwingLine"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 89
    const-string v1, "throwingLine"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;->setThrowLineNumber(I)Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;

    .line 91
    :cond_5
    const-string v1, "throwingMethod"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 92
    const-string v1, "throwingMethod"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;->setThrowMethodName(Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;

    .line 94
    :cond_6
    const-string v1, "categoryTag"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 95
    const-string v1, "categoryTag"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;->setCategoryTag(Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions$Builder;

    .line 97
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;->build()Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/calendar/SilentFeedbackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    const-string v1, "exceptionClass"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v1, "stackTrace"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v1, "throwingClass"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v1, "throwingFile"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v1, "throwingLine"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    const-string v1, "throwingMethod"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v1, "categoryTag"

    const-string v2, "com.google.android.apps.calendar.calendar.SILENT_FEEDBACK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    return-object v0
.end method

.method private tryToStopSelf()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 113
    .line 114
    iget-object v2, p0, Lcom/google/android/calendar/SilentFeedbackService;->mPendingLock:Ljava/lang/Object;

    monitor-enter v2

    .line 115
    :try_start_0
    iget v0, p0, Lcom/google/android/calendar/SilentFeedbackService;->mPendingCrashCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/calendar/SilentFeedbackService;->mPendingCrashCount:I

    if-nez v0, :cond_1

    .line 116
    iget v0, p0, Lcom/google/android/calendar/SilentFeedbackService;->mMostRecentId:I

    .line 118
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    if-eq v0, v1, :cond_0

    .line 120
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/SilentFeedbackService;->stopSelf(I)V

    .line 122
    :cond_0
    return-void

    .line 118
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method createApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 2

    .prologue
    .line 171
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 172
    sget-object v1, Lcom/google/android/gms/feedback/Feedback;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .prologue
    .line 126
    iget-object v1, p0, Lcom/google/android/calendar/SilentFeedbackService;->mPendingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    :try_start_0
    iget v0, p0, Lcom/google/android/calendar/SilentFeedbackService;->mPendingCrashCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/calendar/SilentFeedbackService;->mPendingCrashCount:I

    .line 128
    iput p3, p0, Lcom/google/android/calendar/SilentFeedbackService;->mMostRecentId:I

    .line 129
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    const-string v0, "SilentFeedbackService"

    const-string v1, "Starting silent feedback service."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 132
    invoke-virtual {p0}, Lcom/google/android/calendar/SilentFeedbackService;->createApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    .line 133
    new-instance v1, Lcom/google/android/calendar/SilentFeedbackService$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/calendar/SilentFeedbackService$1;-><init>(Lcom/google/android/calendar/SilentFeedbackService;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    .line 154
    new-instance v1, Lcom/google/android/calendar/SilentFeedbackService$2;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/SilentFeedbackService$2;-><init>(Lcom/google/android/calendar/SilentFeedbackService;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 163
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 167
    const/4 v0, 0x2

    return v0

    .line 129
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method silentSendFeedback(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/feedback/FeedbackOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/feedback/FeedbackOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    invoke-static {p1, p2}, Lcom/google/android/gms/feedback/Feedback;->silentSendFeedback(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/feedback/FeedbackOptions;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method
