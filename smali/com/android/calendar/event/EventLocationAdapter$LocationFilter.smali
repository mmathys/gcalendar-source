.class public Lcom/android/calendar/event/EventLocationAdapter$LocationFilter;
.super Landroid/widget/Filter;
.source "EventLocationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EventLocationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocationFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EventLocationAdapter;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/EventLocationAdapter;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/calendar/event/EventLocationAdapter$LocationFilter;->this$0:Lcom/android/calendar/event/EventLocationAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 366
    if-nez p1, :cond_0

    const-string v0, ""

    .line 367
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    const/4 v0, 0x0

    .line 425
    :goto_1
    return-object v0

    .line 366
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 371
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/event/EventLocationAdapter$LocationFilter;->this$0:Lcom/android/calendar/event/EventLocationAdapter;

    # getter for: Lcom/android/calendar/event/EventLocationAdapter;->mSuggestionFetcher:Lcom/android/calendar/timely/SuggestionFetcher;
    invoke-static {v1}, Lcom/android/calendar/event/EventLocationAdapter;->access$700(Lcom/android/calendar/event/EventLocationAdapter;)Lcom/android/calendar/timely/SuggestionFetcher;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 372
    iget-object v1, p0, Lcom/android/calendar/event/EventLocationAdapter$LocationFilter;->this$0:Lcom/android/calendar/event/EventLocationAdapter;

    # getter for: Lcom/android/calendar/event/EventLocationAdapter;->mSuggestionFetcher:Lcom/android/calendar/timely/SuggestionFetcher;
    invoke-static {v1}, Lcom/android/calendar/event/EventLocationAdapter;->access$700(Lcom/android/calendar/event/EventLocationAdapter;)Lcom/android/calendar/timely/SuggestionFetcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/SuggestionFetcher;->startFetchingSuggestions(Ljava/lang/String;)V

    .line 376
    :cond_2
    new-instance v1, Lcom/android/calendar/event/EventLocationAdapter$LocationFilter$1;

    invoke-direct {v1, p0, v0}, Lcom/android/calendar/event/EventLocationAdapter$LocationFilter$1;-><init>(Lcom/android/calendar/event/EventLocationAdapter$LocationFilter;Ljava/lang/String;)V

    new-array v4, v7, [Ljava/lang/Void;

    .line 382
    invoke-virtual {v1, v4}, Lcom/android/calendar/event/EventLocationAdapter$LocationFilter$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    .line 385
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 386
    iget-object v5, p0, Lcom/android/calendar/event/EventLocationAdapter$LocationFilter;->this$0:Lcom/android/calendar/event/EventLocationAdapter;

    .line 387
    invoke-virtual {v5}, Lcom/android/calendar/event/EventLocationAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/calendar/event/EventLocationAdapter$LocationFilter;->this$0:Lcom/android/calendar/event/EventLocationAdapter;

    # getter for: Lcom/android/calendar/event/EventLocationAdapter;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/android/calendar/event/EventLocationAdapter;->access$500(Lcom/android/calendar/event/EventLocationAdapter;)Landroid/content/ContentResolver;

    move-result-object v6

    # invokes: Lcom/android/calendar/event/EventLocationAdapter;->queryContacts(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/List;
    invoke-static {v5, v6, v0, v4}, Lcom/android/calendar/event/EventLocationAdapter;->access$900(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/HashSet;)Ljava/util/List;

    move-result-object v0

    .line 389
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 392
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 393
    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 416
    :cond_3
    :goto_2
    const-string v0, "EventLocationAdapter"

    invoke-static {v0, v8}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    .line 418
    const-string v2, "EventLocationAdapter"

    const-string v3, "Autocomplete of %s: location query match took %dms (%d results)"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v7

    const/4 v6, 0x1

    .line 419
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v0, 0x2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    .line 418
    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 422
    :cond_4
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 423
    iput-object v5, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 424
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_1

    .line 397
    :cond_5
    :try_start_0
    invoke-virtual {v1}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 402
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/EventLocationAdapter$Result;

    .line 403
    # getter for: Lcom/android/calendar/event/EventLocationAdapter$Result;->mAddress:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/calendar/event/EventLocationAdapter$Result;->access$200(Lcom/android/calendar/event/EventLocationAdapter$Result;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 404
    # getter for: Lcom/android/calendar/event/EventLocationAdapter$Result;->mAddress:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/calendar/event/EventLocationAdapter$Result;->access$200(Lcom/android/calendar/event/EventLocationAdapter$Result;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 405
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 408
    :catch_0
    move-exception v0

    .line 409
    const-string v1, "EventLocationAdapter"

    const-string v4, "Failed waiting for locations query results."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v4, v6}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 410
    :catch_1
    move-exception v0

    .line 411
    const-string v1, "EventLocationAdapter"

    const-string v4, "Failed waiting for locations query results."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v1, v0, v4, v6}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    .prologue
    .line 430
    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 431
    iget-object v1, p0, Lcom/android/calendar/event/EventLocationAdapter$LocationFilter;->this$0:Lcom/android/calendar/event/EventLocationAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    # setter for: Lcom/android/calendar/event/EventLocationAdapter;->mQueryResults:Ljava/util/List;
    invoke-static {v1, v0}, Lcom/android/calendar/event/EventLocationAdapter;->access$1002(Lcom/android/calendar/event/EventLocationAdapter;Ljava/util/List;)Ljava/util/List;

    .line 435
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter$LocationFilter;->this$0:Lcom/android/calendar/event/EventLocationAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventLocationAdapter;->buildResultSet()V

    .line 436
    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EventLocationAdapter$LocationFilter;->this$0:Lcom/android/calendar/event/EventLocationAdapter;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/android/calendar/event/EventLocationAdapter;->mQueryResults:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/android/calendar/event/EventLocationAdapter;->access$1002(Lcom/android/calendar/event/EventLocationAdapter;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method
