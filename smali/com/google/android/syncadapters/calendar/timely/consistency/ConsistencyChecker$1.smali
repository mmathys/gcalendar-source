.class Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$1;
.super Ljava/lang/Object;
.source "ConsistencyChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->performConsistencyCheckIfPossible()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;

.field final synthetic val$backendFetcher:Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;

.field final synthetic val$backendFuture:Ljava/util/concurrent/Future;

.field final synthetic val$providerFetcher:Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;

.field final synthetic val$providerFuture:Ljava/util/concurrent/Future;


# direct methods
.method constructor <init>(Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$1;->this$0:Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;

    iput-object p2, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$1;->val$providerFuture:Ljava/util/concurrent/Future;

    iput-object p3, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$1;->val$backendFuture:Ljava/util/concurrent/Future;

    iput-object p4, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$1;->val$backendFetcher:Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;

    iput-object p5, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$1;->val$providerFetcher:Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/16 v2, 0x1

    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 315
    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$1;->val$providerFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    .line 322
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$1;->val$backendFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v0

    .line 326
    :goto_1
    if-nez v7, :cond_0

    .line 327
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$1;->this$0:Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;

    const-string v1, "FailedClientFetch"

    # invokes: Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->registerAttemptAsFailed(Ljava/lang/String;JJ)V
    invoke-static/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->access$200(Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;Ljava/lang/String;JJ)V

    .line 329
    :cond_0
    if-nez v6, :cond_1

    .line 330
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$1;->this$0:Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;

    const-string v1, "FailedBackendFetch"

    # invokes: Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->registerAttemptAsFailed(Ljava/lang/String;JJ)V
    invoke-static/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->access$200(Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;Ljava/lang/String;JJ)V

    .line 332
    :cond_1
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;-><init>()V

    .line 333
    iget-object v1, v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;->requests:Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Requests;

    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$1;->val$backendFetcher:Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;

    invoke-virtual {v2}, Lcom/google/android/syncadapters/calendar/timely/consistency/BackendEventFetcher;->getExecutedRequests()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Requests;->backendRequests:Ljava/util/List;

    .line 334
    iget-object v1, v0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;->requests:Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Requests;

    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$1;->val$providerFetcher:Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;

    invoke-virtual {v2}, Lcom/google/android/syncadapters/calendar/timely/consistency/ProviderEventFetcher;->getExecutedRequests()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report$Requests;->providerRequests:Ljava/util/List;

    .line 335
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$1;->this$0:Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;

    invoke-virtual {v1, v7, v6, v0}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->compareEventsIfBothFetched(Ljava/util/Map;Ljava/util/Map;Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker$Report;)V

    .line 336
    return-void

    .line 318
    :catch_0
    move-exception v0

    .line 319
    # getter for: Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Exception in Client Fetch"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v0, v7, v8}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v7, v1

    goto :goto_0

    .line 323
    :catch_1
    move-exception v0

    .line 324
    # getter for: Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/consistency/ConsistencyChecker;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Exception in Backend Fetch"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v0, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v6, v1

    goto :goto_1
.end method
