.class public Lcom/android/calendar/AsyncQueryServiceHelper;
.super Landroid/app/IntentService;
.source "AsyncQueryServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;
    }
.end annotation


# static fields
.field private static final sWorkQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    sput-object v0, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 235
    const-string v0, "AsyncQueryServiceHelper"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public static cancelOperation(I)I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 214
    .line 215
    sget-object v3, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    monitor-enter v3

    .line 216
    :try_start_0
    sget-object v0, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    .line 217
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;

    iget v0, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->token:I

    if-ne v0, p0, :cond_0

    .line 219
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 220
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 223
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    const-string v0, "AsyncQuery"

    const-string v3, "cancelOperation(%d) -> %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 227
    return v1

    .line 223
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getLastCancelableOperation()Lcom/android/calendar/AsyncQueryService$Operation;
    .locals 10

    .prologue
    .line 177
    const-wide/high16 v2, -0x8000000000000000L

    .line 178
    const/4 v1, 0x0

    .line 180
    sget-object v4, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    monitor-enter v4

    .line 182
    :try_start_0
    sget-object v0, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;

    .line 183
    iget-wide v6, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->delayMillis:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    # getter for: Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->mScheduledTimeMillis:J
    invoke-static {v0}, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->access$000(Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;)J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    .line 184
    if-nez v1, :cond_0

    .line 185
    new-instance v1, Lcom/android/calendar/AsyncQueryService$Operation;

    invoke-direct {v1}, Lcom/android/calendar/AsyncQueryService$Operation;-><init>()V

    .line 188
    :cond_0
    iget v2, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->token:I

    iput v2, v1, Lcom/android/calendar/AsyncQueryService$Operation;->token:I

    .line 189
    iget v2, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->op:I

    iput v2, v1, Lcom/android/calendar/AsyncQueryService$Operation;->op:I

    .line 190
    # getter for: Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->mScheduledTimeMillis:J
    invoke-static {v0}, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->access$000(Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/calendar/AsyncQueryService$Operation;->scheduledExecutionTime:J

    .line 192
    # getter for: Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->mScheduledTimeMillis:J
    invoke-static {v0}, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->access$000(Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;)J

    move-result-wide v2

    move-object v0, v1

    :goto_1
    move-object v1, v0

    .line 194
    goto :goto_0

    .line 195
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    const-string v0, "AsyncQuery"

    const-string v2, "getLastCancelableOperation -> Operation:%c token:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v1, Lcom/android/calendar/AsyncQueryService$Operation;->op:I

    .line 198
    invoke-static {v5}, Lcom/android/calendar/AsyncQueryService$Operation;->opToChar(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, v1, Lcom/android/calendar/AsyncQueryService$Operation;->token:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 197
    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 200
    return-object v1

    .line 195
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static queueOperation(Landroid/content/Context;Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;)V
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p1}, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->calculateScheduledTime()V

    .line 163
    sget-object v1, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    monitor-enter v1

    .line 164
    :try_start_0
    sget-object v0, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 166
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/calendar/AsyncQueryServiceHelper;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 169
    return-void

    .line 166
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 354
    const-string v0, "AsyncQuery"

    const-string v1, "onCreate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 355
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 356
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 360
    const-string v0, "AsyncQuery"

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 361
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 362
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 242
    const-string v2, "AsyncQuery"

    const-string v3, "onHandleIntent: queue size=%d"

    new-array v4, v11, [Ljava/lang/Object;

    sget-object v5, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 243
    sget-object v3, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    monitor-enter v3

    .line 249
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 250
    monitor-exit v3

    .line 344
    :cond_1
    :goto_0
    return-void

    .line 251
    :cond_2
    sget-object v2, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    if-ne v2, v11, :cond_3

    .line 252
    sget-object v2, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;

    .line 253
    # getter for: Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->mScheduledTimeMillis:J
    invoke-static {v2}, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->access$000(Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;)J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 254
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    .line 256
    :try_start_1
    sget-object v2, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    :cond_3
    :goto_1
    :try_start_2
    sget-object v2, Lcom/android/calendar/AsyncQueryServiceHelper;->sWorkQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;

    move-object v8, v0

    .line 263
    if-eqz v8, :cond_0

    .line 268
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 270
    const-string v2, "AsyncQuery"

    const-string v3, "onHandleIntent: %s"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v8, v4, v10

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 272
    iget-object v2, v8, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->resolver:Landroid/content/ContentResolver;

    .line 273
    if-eqz v2, :cond_1

    .line 275
    iget v3, v8, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->op:I

    packed-switch v3, :pswitch_data_0

    .line 335
    :goto_2
    iget-object v2, v8, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->handler:Landroid/os/Handler;

    iget v3, v8, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->token:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 336
    iput-object v8, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 337
    iget v3, v8, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->op:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 339
    const-string v3, "AsyncQuery"

    const-string v4, "onHandleIntent: op=%c, token=%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v8, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->op:I

    .line 340
    invoke-static {v6}, Lcom/android/calendar/AsyncQueryService$Operation;->opToChar(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v5, v10

    iget v6, v2, Landroid/os/Message;->what:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    .line 339
    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 342
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 279
    :pswitch_0
    :try_start_4
    iget-object v3, v8, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->uri:Landroid/net/Uri;

    iget-object v4, v8, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->projection:[Ljava/lang/String;

    iget-object v5, v8, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->selection:Ljava/lang/String;

    iget-object v6, v8, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->selectionArgs:[Ljava/lang/String;

    iget-object v7, v8, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->orderBy:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 286
    if-eqz v2, :cond_4

    .line 287
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 294
    :cond_4
    :goto_3
    iput-object v2, v8, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    goto :goto_2

    .line 289
    :catch_0
    move-exception v2

    .line 290
    const-string v3, "AsyncQuery"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v2, v9

    .line 291
    goto :goto_3

    .line 298
    :pswitch_1
    iget-object v3, v8, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->uri:Landroid/net/Uri;

    iget-object v4, v8, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->values:Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v8, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    goto :goto_2

    .line 302
    :pswitch_2
    iget-object v3, v8, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->uri:Landroid/net/Uri;

    iget-object v4, v8, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->values:Landroid/content/ContentValues;

    iget-object v5, v8, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->selection:Ljava/lang/String;

    iget-object v6, v8, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v8, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    goto :goto_2

    .line 308
    :pswitch_3
    :try_start_5
    iget-object v3, v8, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->uri:Landroid/net/Uri;

    iget-object v4, v8, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->selection:Ljava/lang/String;

    iget-object v5, v8, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v8, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 309
    :catch_1
    move-exception v2

    .line 310
    const-string v3, "AsyncQuery"

    const-string v4, "Delete failed."

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v3, v2, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 311
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v8, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    goto/16 :goto_2

    .line 318
    :pswitch_4
    :try_start_6
    iget-object v3, v8, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->authority:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->cpo:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2

    iput-object v2, v8, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_2

    .line 319
    :catch_2
    move-exception v2

    .line 320
    const-string v3, "AsyncQuery"

    const-string v4, "RemoteException in AsyncQueryServiceHelper#onHandleIntent"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v3, v2, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 322
    iput-object v9, v8, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    goto/16 :goto_2

    .line 323
    :catch_3
    move-exception v2

    .line 324
    const-string v3, "AsyncQuery"

    const-string v4, "OperationApplicationException in AsyncQueryServiceHelper#onHandleIntent"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v3, v2, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 326
    iput-object v9, v8, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    goto/16 :goto_2

    .line 257
    :catch_4
    move-exception v2

    goto/16 :goto_1

    .line 275
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 5

    .prologue
    .line 348
    const-string v0, "AsyncQuery"

    const-string v1, "onStart startId=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 349
    invoke-super {p0, p1, p2}, Landroid/app/IntentService;->onStart(Landroid/content/Intent;I)V

    .line 350
    return-void
.end method
