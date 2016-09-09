.class public Lcom/android/calendar/event/data/AbstractEditManager$SaveAsyncTask;
.super Landroid/os/AsyncTask;
.source "AbstractEditManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/data/AbstractEditManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SaveAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/calendar/event/data/AbstractEditManager$SaveTaskOutput;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mModification:I

.field final synthetic this$0:Lcom/android/calendar/event/data/AbstractEditManager;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/data/AbstractEditManager;I)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lcom/android/calendar/event/data/AbstractEditManager$SaveAsyncTask;->this$0:Lcom/android/calendar/event/data/AbstractEditManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 606
    iput p2, p0, Lcom/android/calendar/event/data/AbstractEditManager$SaveAsyncTask;->mModification:I

    .line 607
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/calendar/event/data/AbstractEditManager$SaveTaskOutput;
    .locals 5

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager$SaveAsyncTask;->this$0:Lcom/android/calendar/event/data/AbstractEditManager;

    iget-object v0, v0, Lcom/android/calendar/event/data/AbstractEditManager;->mHelper:Lcom/android/calendar/event/EditHelper;

    iget-object v1, p0, Lcom/android/calendar/event/data/AbstractEditManager$SaveAsyncTask;->this$0:Lcom/android/calendar/event/data/AbstractEditManager;

    iget-object v1, v1, Lcom/android/calendar/event/data/AbstractEditManager;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/calendar/event/data/AbstractEditManager$SaveAsyncTask;->this$0:Lcom/android/calendar/event/data/AbstractEditManager;

    iget-object v2, v2, Lcom/android/calendar/event/data/AbstractEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v3, p0, Lcom/android/calendar/event/data/AbstractEditManager$SaveAsyncTask;->this$0:Lcom/android/calendar/event/data/AbstractEditManager;

    iget-object v3, v3, Lcom/android/calendar/event/data/AbstractEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    iget v4, p0, Lcom/android/calendar/event/data/AbstractEditManager$SaveAsyncTask;->mModification:I

    .line 628
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/event/EditHelper;->saveEvent(Landroid/content/Context;Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/event/CalendarEventModel;I)Lcom/android/calendar/event/EditHelper$SaveEventResult;

    move-result-object v0

    .line 629
    new-instance v1, Lcom/android/calendar/event/data/AbstractEditManager$SaveTaskOutput;

    iget-object v2, p0, Lcom/android/calendar/event/data/AbstractEditManager$SaveAsyncTask;->this$0:Lcom/android/calendar/event/data/AbstractEditManager;

    iget-boolean v3, v0, Lcom/android/calendar/event/EditHelper$SaveEventResult;->queuedForSaving:Z

    .line 630
    invoke-virtual {v2, v3}, Lcom/android/calendar/event/data/AbstractEditManager;->getToastString(Z)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/calendar/event/EditHelper$SaveEventResult;->eventInferredSyncId:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/android/calendar/event/EditHelper$SaveEventResult;->newEvent:Z

    invoke-direct {v1, v2, v3, v0}, Lcom/android/calendar/event/data/AbstractEditManager$SaveTaskOutput;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 629
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 601
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/data/AbstractEditManager$SaveAsyncTask;->doInBackground([Ljava/lang/Void;)Lcom/android/calendar/event/data/AbstractEditManager$SaveTaskOutput;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/calendar/event/data/AbstractEditManager$SaveTaskOutput;)V
    .locals 3

    .prologue
    .line 636
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/calendar/event/data/AbstractEditManager$SaveTaskOutput;->resultMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager$SaveAsyncTask;->this$0:Lcom/android/calendar/event/data/AbstractEditManager;

    iget-object v0, v0, Lcom/android/calendar/event/data/AbstractEditManager;->mActivity:Landroid/app/Activity;

    iget-object v1, p1, Lcom/android/calendar/event/data/AbstractEditManager$SaveTaskOutput;->resultMessage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager$SaveAsyncTask;->this$0:Lcom/android/calendar/event/data/AbstractEditManager;

    iget-object v1, p1, Lcom/android/calendar/event/data/AbstractEditManager$SaveTaskOutput;->eventInferredId:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/android/calendar/event/data/AbstractEditManager$SaveTaskOutput;->newEvent:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/event/data/AbstractEditManager;->onEventSaved(Ljava/lang/String;Z)V

    .line 640
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 601
    check-cast p1, Lcom/android/calendar/event/data/AbstractEditManager$SaveTaskOutput;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/data/AbstractEditManager$SaveAsyncTask;->onPostExecute(Lcom/android/calendar/event/data/AbstractEditManager$SaveTaskOutput;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager$SaveAsyncTask;->this$0:Lcom/android/calendar/event/data/AbstractEditManager;

    iget-object v1, v0, Lcom/android/calendar/event/data/AbstractEditManager;->mCallbacks:Ljava/util/List;

    monitor-enter v1

    .line 613
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/event/data/AbstractEditManager$SaveAsyncTask;->this$0:Lcom/android/calendar/event/data/AbstractEditManager;

    iget-object v2, v2, Lcom/android/calendar/event/data/AbstractEditManager;->mCallbacks:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 614
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AbstractEditManager$Callback;

    .line 621
    iget v1, p0, Lcom/android/calendar/event/data/AbstractEditManager$SaveAsyncTask;->mModification:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v1}, Lcom/android/calendar/event/data/AbstractEditManager$Callback;->onSaveInitiated(Z)V

    goto :goto_0

    .line 614
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 621
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 623
    :cond_1
    return-void
.end method
