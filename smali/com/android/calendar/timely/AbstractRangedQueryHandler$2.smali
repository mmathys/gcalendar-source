.class Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;
.super Landroid/os/AsyncTask;
.source "AbstractRangedQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/AbstractRangedQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
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
        "TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mData:Lcom/android/calendar/timely/RangedData;

.field final synthetic this$0:Lcom/android/calendar/timely/AbstractRangedQueryHandler;

.field final synthetic val$cookie:Ljava/lang/Object;

.field final synthetic val$cursor:Landroid/database/Cursor;

.field final synthetic val$token:I


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/AbstractRangedQueryHandler;Ljava/lang/Object;ILandroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->this$0:Lcom/android/calendar/timely/AbstractRangedQueryHandler;

    iput-object p2, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->val$cookie:Ljava/lang/Object;

    iput p3, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->val$token:I

    iput-object p4, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 447
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->val$cookie:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/calendar/timely/RangedData;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->val$cookie:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/timely/RangedData;

    iput-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->mData:Lcom/android/calendar/timely/RangedData;

    .line 459
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->mData:Lcom/android/calendar/timely/RangedData;

    invoke-interface {v0}, Lcom/android/calendar/timely/RangedData;->getToken()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->val$token:I

    if-eq v0, v1, :cond_1

    .line 460
    const-string v0, "MonthQueryHandler"

    const-string v1, "Data was recycled before query completed for token: %d with new token %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->val$token:I

    .line 461
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->mData:Lcom/android/calendar/timely/RangedData;

    invoke-interface {v4}, Lcom/android/calendar/timely/RangedData;->getToken()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 460
    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 463
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->this$0:Lcom/android/calendar/timely/AbstractRangedQueryHandler;

    # getter for: Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;
    invoke-static {v0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->access$500(Lcom/android/calendar/timely/AbstractRangedQueryHandler;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/16 v1, 0xf

    iget v2, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->val$token:I

    const-string v3, "recycled"

    invoke-interface {v0, v1, v2, v3}, Lcom/android/calendar/latency/LatencyLogger;->markAt(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 501
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->this$0:Lcom/android/calendar/timely/AbstractRangedQueryHandler;

    iget-object v1, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->val$cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->closeCursor(Landroid/database/Cursor;)V

    .line 503
    :goto_0
    return-object v6

    .line 468
    :cond_0
    :try_start_1
    const-string v0, "MonthQueryHandler"

    const-string v1, "No RangedData cookie for token: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->val$token:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 501
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->this$0:Lcom/android/calendar/timely/AbstractRangedQueryHandler;

    iget-object v1, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->val$cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 472
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->val$cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 473
    :cond_2
    const-string v0, "MonthQueryHandler"

    const-string v1, "Cursor was empty for token: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->val$token:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 474
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->this$0:Lcom/android/calendar/timely/AbstractRangedQueryHandler;

    # getter for: Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;
    invoke-static {v0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->access$500(Lcom/android/calendar/timely/AbstractRangedQueryHandler;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/16 v1, 0xb

    iget v2, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->val$token:I

    const-string v3, "empty"

    invoke-interface {v0, v1, v2, v3}, Lcom/android/calendar/latency/LatencyLogger;->markAt(IILjava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->this$0:Lcom/android/calendar/timely/AbstractRangedQueryHandler;

    iget-object v1, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->mData:Lcom/android/calendar/timely/RangedData;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->processResults(Lcom/android/calendar/timely/RangedData;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 501
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->this$0:Lcom/android/calendar/timely/AbstractRangedQueryHandler;

    iget-object v1, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->val$cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 479
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->this$0:Lcom/android/calendar/timely/AbstractRangedQueryHandler;

    iget-object v1, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->val$cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->processCursor(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    .line 488
    iget-object v1, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->mData:Lcom/android/calendar/timely/RangedData;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 489
    :try_start_4
    iget-object v2, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->mData:Lcom/android/calendar/timely/RangedData;

    invoke-interface {v2}, Lcom/android/calendar/timely/RangedData;->getToken()I

    move-result v2

    iget v3, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->val$token:I

    if-ne v2, v3, :cond_4

    .line 490
    iget-object v2, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->this$0:Lcom/android/calendar/timely/AbstractRangedQueryHandler;

    # getter for: Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;
    invoke-static {v2}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->access$500(Lcom/android/calendar/timely/AbstractRangedQueryHandler;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v2

    const/16 v3, 0xb

    iget v4, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->val$token:I

    invoke-interface {v2, v3, v4}, Lcom/android/calendar/latency/LatencyLogger;->markAt(II)V

    .line 491
    iget-object v2, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->this$0:Lcom/android/calendar/timely/AbstractRangedQueryHandler;

    iget-object v3, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->mData:Lcom/android/calendar/timely/RangedData;

    invoke-virtual {v2, v3, v0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->processResults(Lcom/android/calendar/timely/RangedData;Ljava/lang/Object;)V

    .line 496
    :goto_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 498
    :try_start_5
    const-string v0, "MonthQueryHandler"

    const-string v1, "queryComplete for %d with data %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->val$token:I

    .line 499
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->mData:Lcom/android/calendar/timely/RangedData;

    invoke-interface {v4}, Lcom/android/calendar/timely/RangedData;->getDebugTag()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 498
    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 501
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->this$0:Lcom/android/calendar/timely/AbstractRangedQueryHandler;

    iget-object v1, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->val$cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->closeCursor(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 493
    :cond_4
    :try_start_6
    const-string v0, "MonthQueryHandler"

    const-string v2, "Data was recycled while cursoring for token: %d with new token %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->val$token:I

    .line 494
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->mData:Lcom/android/calendar/timely/RangedData;

    invoke-interface {v5}, Lcom/android/calendar/timely/RangedData;->getToken()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 493
    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 501
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->this$0:Lcom/android/calendar/timely/AbstractRangedQueryHandler;

    iget-object v2, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->val$cursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 447
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->this$0:Lcom/android/calendar/timely/AbstractRangedQueryHandler;

    # invokes: Lcom/android/calendar/timely/AbstractRangedQueryHandler;->deQueue()V
    invoke-static {v0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->access$400(Lcom/android/calendar/timely/AbstractRangedQueryHandler;)V

    .line 509
    return-void
.end method
