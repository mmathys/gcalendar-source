.class Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask$1;
.super Landroid/os/CountDownTimer;
.source "SnoozeFindTimeAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;

.field final synthetic val$asyncTask:Landroid/os/AsyncTask;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;JJLandroid/os/AsyncTask;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask$1;->this$0:Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;

    iput-object p6, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask$1;->val$asyncTask:Landroid/os/AsyncTask;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask$1;->val$asyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask$1;->val$asyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 129
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method
