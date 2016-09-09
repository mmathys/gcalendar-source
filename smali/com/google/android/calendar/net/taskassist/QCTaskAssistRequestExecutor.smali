.class public Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor;
.super Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;
.source "QCTaskAssistRequestExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor$WarmupRequestLoader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mTaskAssistService:Lcom/google/android/calendar/net/taskassist/TaskAssistService;

.field private final mWarmupRequest:Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/calendar/net/taskassist/TaskAssistService;Ljava/lang/String;Ljava/lang/String;Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p5}, Lcom/google/android/calendar/net/taskassist/TaskAssistRequestExecutor;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/calendar/net/taskassist/TaskAssistService;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iput-object p3, p0, Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor;->mTaskAssistService:Lcom/google/android/calendar/net/taskassist/TaskAssistService;

    .line 26
    iput-object p6, p0, Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor;->mWarmupRequest:Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor;)Lcom/google/android/calendar/net/taskassist/TaskAssistService;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor;->mTaskAssistService:Lcom/google/android/calendar/net/taskassist/TaskAssistService;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public initialize()V
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor;->mWarmupRequest:Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor$WarmupRequestLoader;

    iget-object v1, p0, Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor;->mWarmupRequest:Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;

    invoke-direct {v0, p0, v1}, Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor$WarmupRequestLoader;-><init>(Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor;Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;)V

    sget-object v1, Lcom/google/android/calendar/net/AsyncRequestLoader;->EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor$WarmupRequestLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 34
    :cond_0
    return-void
.end method
