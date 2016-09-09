.class final Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;
.super Landroid/widget/Filter;
.source "BaseRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/BaseRecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/BaseRecipientAdapter;


# direct methods
.method private constructor <init>(Lcom/android/ex/chips/BaseRecipientAdapter;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/chips/BaseRecipientAdapter;Lcom/android/ex/chips/BaseRecipientAdapter$1;)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;-><init>(Lcom/android/ex/chips/BaseRecipientAdapter;)V

    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 340
    check-cast p1, Lcom/android/ex/chips/RecipientEntry;

    .line 341
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Landroid/text/util/Rfc822Token;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 235
    new-instance v6, Landroid/widget/Filter$FilterResults;

    invoke-direct {v6}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->clearTempEntries()V

    move-object v0, v6

    .line 306
    :goto_0
    return-object v0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/android/ex/chips/BaseRecipientAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$000(Lcom/android/ex/chips/BaseRecipientAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/android/ex/chips/BaseRecipientAdapter;->mPermissionsCheckListener:Lcom/android/ex/chips/ChipsUtil$PermissionsCheckListener;
    invoke-static {v2}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$100(Lcom/android/ex/chips/BaseRecipientAdapter;)Lcom/android/ex/chips/ChipsUtil$PermissionsCheckListener;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/ex/chips/ChipsUtil;->hasPermissions(Landroid/content/Context;Lcom/android/ex/chips/ChipsUtil$PermissionsCheckListener;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->clearTempEntries()V

    .line 249
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    iget-boolean v0, v0, Lcom/android/ex/chips/BaseRecipientAdapter;->mShowRequestPermissionsItem:Z

    if-nez v0, :cond_1

    move-object v0, v6

    .line 251
    goto :goto_0

    .line 255
    :cond_1
    sget-object v0, Lcom/android/ex/chips/ChipsUtil;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    .line 256
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEntry;->constructPermissionEntry([Ljava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    .line 255
    # invokes: Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->createResultWithNonAggregatedEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;
    invoke-static {v0}, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->access$200(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;

    move-result-object v0

    iput-object v0, v6, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 257
    iput v3, v6, Landroid/widget/Filter$FilterResults;->count:I

    move-object v0, v6

    .line 258
    goto :goto_0

    .line 264
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    iget-object v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    iget v2, v2, Lcom/android/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I

    const/4 v3, 0x0

    # invokes: Lcom/android/ex/chips/BaseRecipientAdapter;->doQuery(Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;
    invoke-static {v0, p1, v2, v3}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$300(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/lang/CharSequence;ILjava/lang/Long;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .line 267
    if-nez v7, :cond_4

    .line 302
    :goto_1
    if-eqz v7, :cond_3

    .line 303
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    .line 306
    goto :goto_0

    .line 275
    :cond_4
    :try_start_1
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 277
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 279
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 281
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 284
    new-instance v0, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v7, v1}, Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;-><init>(Landroid/database/Cursor;Ljava/lang/Long;)V

    const/4 v1, 0x1

    # invokes: Lcom/android/ex/chips/BaseRecipientAdapter;->putOneEntry(Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$400(Lcom/android/ex/chips/BaseRecipientAdapter$TemporaryEntry;ZLjava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 302
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_5

    .line 303
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 290
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    # invokes: Lcom/android/ex/chips/BaseRecipientAdapter;->constructEntryList(Ljava/util/LinkedHashMap;Ljava/util/List;)Ljava/util/List;
    invoke-static {v0, v2, v3}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$500(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/LinkedHashMap;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 293
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    .line 294
    invoke-virtual {v0, v4}, Lcom/android/ex/chips/BaseRecipientAdapter;->searchOtherDirectories(Ljava/util/Set;)Ljava/util/List;

    move-result-object v5

    .line 296
    new-instance v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;

    invoke-direct/range {v0 .. v5}, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;-><init>(Ljava/util/List;Ljava/util/LinkedHashMap;Ljava/util/List;Ljava/util/Set;Ljava/util/List;)V

    iput-object v0, v6, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 299
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v6, Landroid/widget/Filter$FilterResults;->count:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 302
    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    iput-object p1, v0, Lcom/android/ex/chips/BaseRecipientAdapter;->mCurrentConstraint:Ljava/lang/CharSequence;

    .line 313
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->clearTempEntries()V

    .line 315
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 316
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;

    .line 317
    iget-object v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    iget-object v2, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->entryMap:Ljava/util/LinkedHashMap;

    # setter for: Lcom/android/ex/chips/BaseRecipientAdapter;->mEntryMap:Ljava/util/LinkedHashMap;
    invoke-static {v1, v2}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$602(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    .line 318
    iget-object v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    iget-object v2, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->nonAggregatedEntries:Ljava/util/List;

    # setter for: Lcom/android/ex/chips/BaseRecipientAdapter;->mNonAggregatedEntries:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$702(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/List;)Ljava/util/List;

    .line 319
    iget-object v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    iget-object v2, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->existingDestinations:Ljava/util/Set;

    # setter for: Lcom/android/ex/chips/BaseRecipientAdapter;->mExistingDestinations:Ljava/util/Set;
    invoke-static {v1, v2}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$802(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/Set;)Ljava/util/Set;

    .line 321
    iget-object v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    iget-object v1, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v1, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->paramsList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 322
    const/4 v1, 0x0

    .line 321
    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/android/ex/chips/BaseRecipientAdapter;->cacheCurrentEntriesIfNeeded(II)V

    .line 325
    iget-object v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    iget-object v2, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->entries:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/ex/chips/BaseRecipientAdapter;->updateEntries(Ljava/util/List;)V

    .line 328
    iget-object v1, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->paramsList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    iget v1, v1, Lcom/android/ex/chips/BaseRecipientAdapter;->mPreferredMaxResultCount:I

    iget-object v2, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->existingDestinations:Ljava/util/Set;

    .line 330
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    sub-int/2addr v1, v2

    .line 331
    iget-object v2, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    iget-object v0, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->paramsList:Ljava/util/List;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/ex/chips/BaseRecipientAdapter;->startSearchOtherDirectories(Ljava/lang/CharSequence;Ljava/util/List;I)V

    .line 336
    :cond_0
    :goto_1
    return-void

    .line 323
    :cond_1
    iget-object v1, v0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilterResult;->paramsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DefaultFilter;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/BaseRecipientAdapter;->updateEntries(Ljava/util/List;)V

    goto :goto_1
.end method
