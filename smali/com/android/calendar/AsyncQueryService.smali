.class public Lcom/android/calendar/AsyncQueryService;
.super Landroid/os/Handler;
.source "AsyncQueryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AsyncQueryService$OnOperationCompletedListener;,
        Lcom/android/calendar/AsyncQueryService$Operation;
    }
.end annotation


# static fields
.field private static mUniqueToken:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/calendar/AsyncQueryService;->mUniqueToken:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 56
    iput-object p0, p0, Lcom/android/calendar/AsyncQueryService;->mHandler:Landroid/os/Handler;

    .line 115
    iput-object p1, p0, Lcom/android/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    .line 116
    return-void
.end method

.method public static cancelOperation(I)I
    .locals 1

    .prologue
    .line 145
    invoke-static {p0}, Lcom/android/calendar/AsyncQueryServiceHelper;->cancelOperation(I)I

    move-result v0

    return v0
.end method

.method public static getLastCancelableOperation()Lcom/android/calendar/AsyncQueryService$Operation;
    .locals 1

    .prologue
    .line 131
    invoke-static {}, Lcom/android/calendar/AsyncQueryServiceHelper;->getLastCancelableOperation()Lcom/android/calendar/AsyncQueryService$Operation;

    move-result-object v0

    return-object v0
.end method

.method public static getNextToken()I
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/android/calendar/AsyncQueryService;->mUniqueToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    .line 395
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;

    .line 397
    iget v2, p1, Landroid/os/Message;->what:I

    .line 398
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 400
    const-string v3, "AsyncQuery"

    const-string v4, "AsyncQueryService.handleMessage: token=%d, op=%d, result=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 401
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    aput-object v7, v5, v6

    .line 400
    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 404
    packed-switch v1, :pswitch_data_0

    .line 426
    :goto_0
    iget-object v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->listener:Lcom/android/calendar/AsyncQueryService$OnOperationCompletedListener;

    if-eqz v1, :cond_0

    .line 427
    iget-object v0, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->listener:Lcom/android/calendar/AsyncQueryService$OnOperationCompletedListener;

    iget-object v1, p0, Lcom/android/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, v2}, Lcom/android/calendar/AsyncQueryService$OnOperationCompletedListener;->onOperationCompleted(Landroid/content/Context;I)V

    .line 429
    :cond_0
    return-void

    .line 406
    :pswitch_0
    iget-object v3, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->cookie:Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    check-cast v1, Landroid/database/Cursor;

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/calendar/AsyncQueryService;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    goto :goto_0

    .line 410
    :pswitch_1
    iget-object v3, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->cookie:Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/calendar/AsyncQueryService;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    goto :goto_0

    .line 414
    :pswitch_2
    iget-object v3, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->cookie:Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/calendar/AsyncQueryService;->onUpdateComplete(ILjava/lang/Object;I)V

    goto :goto_0

    .line 418
    :pswitch_3
    iget-object v3, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->cookie:Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/calendar/AsyncQueryService;->onDeleteComplete(ILjava/lang/Object;I)V

    goto :goto_0

    .line 422
    :pswitch_4
    iget-object v3, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->cookie:Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->result:Ljava/lang/Object;

    check-cast v1, [Landroid/content/ContentProviderResult;

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/calendar/AsyncQueryService;->onBatchComplete(ILjava/lang/Object;[Landroid/content/ContentProviderResult;)V

    goto :goto_0

    .line 404
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onBatchComplete(ILjava/lang/Object;[Landroid/content/ContentProviderResult;)V
    .locals 3

    .prologue
    .line 390
    const-string v0, "AsyncQuery"

    const-string v1, "########## default onBatchComplete"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 391
    return-void
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 3

    .prologue
    .line 375
    const-string v0, "AsyncQuery"

    const-string v1, "########## default onDeleteComplete"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 376
    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 349
    const-string v0, "AsyncQuery"

    const-string v1, "########## default onInsertComplete"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 350
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 336
    const-string v0, "AsyncQuery"

    const-string v1, "########## default onQueryComplete"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 337
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 3

    .prologue
    .line 362
    const-string v0, "AsyncQuery"

    const-string v1, "########## default onUpdateComplete"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 363
    return-void
.end method

.method protected setTestHandler(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/calendar/AsyncQueryService;->mHandler:Landroid/os/Handler;

    .line 434
    return-void
.end method

.method public startBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/calendar/AsyncQueryService$OnOperationCompletedListener;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/android/calendar/AsyncQueryService$OnOperationCompletedListener;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 312
    new-instance v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;

    invoke-direct {v0}, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;-><init>()V

    .line 313
    const/4 v1, 0x5

    iput v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->op:I

    .line 314
    iget-object v1, p0, Lcom/android/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->resolver:Landroid/content/ContentResolver;

    .line 315
    iget-object v1, p0, Lcom/android/calendar/AsyncQueryService;->mHandler:Landroid/os/Handler;

    iput-object v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->handler:Landroid/os/Handler;

    .line 317
    iput p1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->token:I

    .line 318
    iput-object p2, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->cookie:Ljava/lang/Object;

    .line 319
    iput-object p3, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->authority:Ljava/lang/String;

    .line 320
    iput-object p4, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->cpo:Ljava/util/ArrayList;

    .line 321
    iput-wide p6, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->delayMillis:J

    .line 322
    iput-object p5, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->listener:Lcom/android/calendar/AsyncQueryService$OnOperationCompletedListener;

    .line 324
    iget-object v1, p0, Lcom/android/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/calendar/AsyncQueryServiceHelper;->queueOperation(Landroid/content/Context;Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;)V

    .line 325
    return-void
.end method

.method public startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 279
    new-instance v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;

    invoke-direct {v0}, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;-><init>()V

    .line 280
    const/4 v1, 0x4

    iput v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->op:I

    .line 281
    iget-object v1, p0, Lcom/android/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->resolver:Landroid/content/ContentResolver;

    .line 282
    iget-object v1, p0, Lcom/android/calendar/AsyncQueryService;->mHandler:Landroid/os/Handler;

    iput-object v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->handler:Landroid/os/Handler;

    .line 284
    iput p1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->token:I

    .line 285
    iput-object p2, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->cookie:Ljava/lang/Object;

    .line 286
    iput-object p3, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->uri:Landroid/net/Uri;

    .line 287
    iput-object p4, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->selection:Ljava/lang/String;

    .line 288
    iput-object p5, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->selectionArgs:[Ljava/lang/String;

    .line 289
    iput-wide p6, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->delayMillis:J

    .line 291
    iget-object v1, p0, Lcom/android/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/calendar/AsyncQueryServiceHelper;->queueOperation(Landroid/content/Context;Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;)V

    .line 292
    return-void
.end method

.method public startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;J)V
    .locals 3

    .prologue
    .line 205
    new-instance v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;

    invoke-direct {v0}, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;-><init>()V

    .line 206
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->op:I

    .line 207
    iget-object v1, p0, Lcom/android/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->resolver:Landroid/content/ContentResolver;

    .line 208
    iget-object v1, p0, Lcom/android/calendar/AsyncQueryService;->mHandler:Landroid/os/Handler;

    iput-object v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->handler:Landroid/os/Handler;

    .line 210
    iput p1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->token:I

    .line 211
    iput-object p2, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->cookie:Ljava/lang/Object;

    .line 212
    iput-object p3, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->uri:Landroid/net/Uri;

    .line 213
    iput-object p4, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->values:Landroid/content/ContentValues;

    .line 214
    iput-wide p5, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->delayMillis:J

    .line 216
    iget-object v1, p0, Lcom/android/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/calendar/AsyncQueryServiceHelper;->queueOperation(Landroid/content/Context;Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;)V

    .line 217
    return-void
.end method

.method public startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 241
    new-instance v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;

    invoke-direct {v0}, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;-><init>()V

    .line 242
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->op:I

    .line 243
    iget-object v1, p0, Lcom/android/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->resolver:Landroid/content/ContentResolver;

    .line 244
    iget-object v1, p0, Lcom/android/calendar/AsyncQueryService;->mHandler:Landroid/os/Handler;

    iput-object v1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->handler:Landroid/os/Handler;

    .line 246
    iput p1, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->token:I

    .line 247
    iput-object p2, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->cookie:Ljava/lang/Object;

    .line 248
    iput-object p3, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->uri:Landroid/net/Uri;

    .line 249
    iput-object p4, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->values:Landroid/content/ContentValues;

    .line 250
    iput-object p5, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->selection:Ljava/lang/String;

    .line 251
    iput-object p6, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->selectionArgs:[Ljava/lang/String;

    .line 252
    iput-wide p7, v0, Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;->delayMillis:J

    .line 254
    iget-object v1, p0, Lcom/android/calendar/AsyncQueryService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/calendar/AsyncQueryServiceHelper;->queueOperation(Landroid/content/Context;Lcom/android/calendar/AsyncQueryServiceHelper$OperationInfo;)V

    .line 255
    return-void
.end method
