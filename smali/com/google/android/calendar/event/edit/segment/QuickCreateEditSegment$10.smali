.class Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$10;
.super Landroid/os/AsyncTask;
.source "QuickCreateEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->logEvent()V
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
.field final synthetic this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

.field final synthetic val$loggingRequest:Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;)V
    .locals 0

    .prologue
    .line 1210
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$10;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    iput-object p2, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$10;->val$loggingRequest:Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1210
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$10;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 1214
    :try_start_0
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$10;->this$0:Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;

    # getter for: Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->mTaskAssistService:Lcom/google/android/calendar/net/taskassist/TaskAssistService;
    invoke-static {v0}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->access$700(Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;)Lcom/google/android/calendar/net/taskassist/TaskAssistService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment$10;->val$loggingRequest:Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/net/taskassist/TaskAssistService;->log(Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;)Lcom/google/personalization/assist/annotate/api/nano/LoggingResponse;
    :try_end_0
    .catch Lcom/google/android/calendar/net/exceptions/GrpcServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1219
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 1215
    :catch_0
    move-exception v0

    .line 1216
    # getter for: Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/event/edit/segment/QuickCreateEditSegment;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error logging TaskSave object in QuickCreate"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
