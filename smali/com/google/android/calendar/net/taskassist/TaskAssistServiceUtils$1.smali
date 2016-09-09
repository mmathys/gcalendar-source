.class final Lcom/google/android/calendar/net/taskassist/TaskAssistServiceUtils$1;
.super Landroid/os/AsyncTask;
.source "TaskAssistServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/net/taskassist/TaskAssistServiceUtils;->setTaskAssistance(Landroid/content/Context;Lcom/google/android/calendar/task/edit/TimelyMutableTask;Lcom/google/android/calendar/net/taskassist/TaskAssistService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic val$request:Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;

.field final synthetic val$task:Lcom/google/android/calendar/task/edit/TimelyMutableTask;

.field final synthetic val$taskAssistService:Lcom/google/android/calendar/net/taskassist/TaskAssistService;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/net/taskassist/TaskAssistService;Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;Lcom/google/android/calendar/task/edit/TimelyMutableTask;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistServiceUtils$1;->val$taskAssistService:Lcom/google/android/calendar/net/taskassist/TaskAssistService;

    iput-object p2, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistServiceUtils$1;->val$request:Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;

    iput-object p3, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistServiceUtils$1;->val$task:Lcom/google/android/calendar/task/edit/TimelyMutableTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/net/taskassist/TaskAssistServiceUtils$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistServiceUtils$1;->val$taskAssistService:Lcom/google/android/calendar/net/taskassist/TaskAssistService;

    iget-object v1, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistServiceUtils$1;->val$request:Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;

    .line 49
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->assist(Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;)Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceResponse;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceResponse;->taskAssistance:[Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceResponse;->taskAssistance:[Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;

    array-length v1, v1

    if-nez v1, :cond_1

    .line 52
    :cond_0
    # getter for: Lcom/google/android/calendar/net/taskassist/TaskAssistServiceUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/net/taskassist/TaskAssistServiceUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Empty TaskAssist response, assistance not created"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 60
    :goto_0
    return-object v4

    .line 55
    :cond_1
    iget-object v0, v0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceResponse;->taskAssistance:[Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 56
    iget-object v1, p0, Lcom/google/android/calendar/net/taskassist/TaskAssistServiceUtils$1;->val$task:Lcom/google/android/calendar/task/edit/TimelyMutableTask;

    invoke-virtual {v1}, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->mutableTaskAssistance()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/android/calendar/net/exceptions/GrpcServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    # getter for: Lcom/google/android/calendar/net/taskassist/TaskAssistServiceUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/net/taskassist/TaskAssistServiceUtils;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaskAssist assist call failed with exception"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
