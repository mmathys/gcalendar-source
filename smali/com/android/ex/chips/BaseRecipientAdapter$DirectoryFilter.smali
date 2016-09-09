.class public Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;
.super Landroid/widget/Filter;
.source "BaseRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/BaseRecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DirectoryFilter"
.end annotation


# instance fields
.field private mLimit:I

.field private final mParams:Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

.field final synthetic this$0:Lcom/android/ex/chips/BaseRecipientAdapter;


# direct methods
.method public constructor <init>(Lcom/android/ex/chips/BaseRecipientAdapter;Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 399
    iput-object p2, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->mParams:Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    .line 400
    return-void
.end method


# virtual methods
.method public declared-synchronized getLimit()I
    .locals 1

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->mLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 416
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 417
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 418
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 420
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 421
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 428
    :try_start_0
    iget-object v3, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual {p0}, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->getLimit()I

    move-result v4

    iget-object v5, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->mParams:Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    iget-wide v6, v5, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->directoryId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    # invokes: Lcom/android/ex/chips/BaseRecipientAdapter;->doQuery(Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;
    invoke-static {v3, p1, v4, v5}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$300(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;

    move-result-object v1

    .line 430
    if-eqz v1, :cond_1

    .line 431
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 432
    new-instance v3, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;

    iget-object v4, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->mParams:Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    iget-wide v4, v4, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->directoryId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;-><init>(Landroid/database/Cursor;Ljava/lang/Long;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 436
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 437
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 436
    :cond_1
    if-eqz v1, :cond_2

    .line 437
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 440
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 441
    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 442
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 451
    :cond_3
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 8

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/android/ex/chips/BaseRecipientAdapter;->mDelayedMessageHandler:Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;
    invoke-static {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$900(Lcom/android/ex/chips/BaseRecipientAdapter;)Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->removeDelayedLoadMessage()V

    .line 465
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    iget-object v0, v0, Lcom/android/ex/chips/BaseRecipientAdapter;->mCurrentConstraint:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 466
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_1

    .line 468
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 471
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;

    .line 472
    iget-object v3, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    iget-object v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->mParams:Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    iget-wide v4, v1, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->directoryId:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v0, v1}, Lcom/android/ex/chips/BaseRecipientAdapter;->putOneEntry(Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    # operator-- for: Lcom/android/ex/chips/BaseRecipientAdapter;->mRemainingDirectoryCount:I
    invoke-static {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$1010(Lcom/android/ex/chips/BaseRecipientAdapter;)I

    .line 478
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/android/ex/chips/BaseRecipientAdapter;->mRemainingDirectoryCount:I
    invoke-static {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$1000(Lcom/android/ex/chips/BaseRecipientAdapter;)I

    move-result v0

    if-lez v0, :cond_2

    .line 483
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/android/ex/chips/BaseRecipientAdapter;->mDelayedMessageHandler:Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;
    invoke-static {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$900(Lcom/android/ex/chips/BaseRecipientAdapter;)Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->sendDelayedLoadMessage()V

    .line 488
    :cond_2
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/android/ex/chips/BaseRecipientAdapter;->mRemainingDirectoryCount:I
    invoke-static {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$1000(Lcom/android/ex/chips/BaseRecipientAdapter;)I

    move-result v0

    if-nez v0, :cond_4

    .line 490
    :cond_3
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->clearTempEntries()V

    .line 495
    :cond_4
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    iget-object v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v1}, Lcom/android/ex/chips/BaseRecipientAdapter;->constructEntryList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/BaseRecipientAdapter;->updateEntries(Ljava/util/List;)V

    .line 496
    return-void
.end method

.method public declared-synchronized setLimit(I)V
    .locals 1

    .prologue
    .line 403
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryFilter;->mLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    monitor-exit p0

    return-void

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
