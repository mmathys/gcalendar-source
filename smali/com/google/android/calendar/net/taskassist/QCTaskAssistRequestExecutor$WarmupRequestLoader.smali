.class Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor$WarmupRequestLoader;
.super Landroid/os/AsyncTask;
.source "QCTaskAssistRequestExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WarmupRequestLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mWarmupRequest:Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;

.field final synthetic this$0:Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor;


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor;Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;)V
    .locals 2

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor$WarmupRequestLoader;->this$0:Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor$WarmupRequestLoader;->mWarmupRequest:Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;

    .line 45
    iget-object v0, p0, Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor$WarmupRequestLoader;->mWarmupRequest:Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;

    invoke-virtual {p1}, Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor;->getSessionId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->sessionId:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor$WarmupRequestLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor$WarmupRequestLoader;->this$0:Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor;

    # getter for: Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor;->mTaskAssistService:Lcom/google/android/calendar/net/taskassist/TaskAssistService;
    invoke-static {v0}, Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor;->access$000(Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor;)Lcom/google/android/calendar/net/taskassist/TaskAssistService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor$WarmupRequestLoader;->mWarmupRequest:Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->suggest(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;)Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;
    :try_end_0
    .catch Lcom/google/android/calendar/net/exceptions/GrpcServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    # getter for: Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/net/taskassist/QCTaskAssistRequestExecutor;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error sending Task Assist warmup request"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
