.class public Lcom/android/calendar/search/SearchQueryHandler;
.super Lcom/android/calendar/timely/EventRangedQueryHandler;
.source "SearchQueryHandler.java"

# interfaces
.implements Lcom/android/calendar/search/OnSearchQueryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/search/SearchQueryHandler$SearchData;,
        Lcom/android/calendar/search/SearchQueryHandler$SearchResults;
    }
.end annotation


# instance fields
.field private mEventSearchDone:Z

.field private mEventSearchResults:Lcom/android/calendar/search/SearchQueryHandler$SearchResults;

.field private mHandler:Landroid/os/Handler;

.field private mSearchOnQueryFinishedListener:Lcom/android/calendar/search/OnSearchQueryFinishedListener;

.field private mSearchQuery:Ljava/lang/String;

.field private mTaskSearchDone:Z

.field private mTaskSearchResults:Lcom/android/calendar/search/SearchQueryHandler$SearchResults;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/EventRangedQueryHandler;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/search/SearchQueryHandler;->mHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/search/SearchQueryHandler;)Lcom/android/calendar/search/OnSearchQueryFinishedListener;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/calendar/search/SearchQueryHandler;->mSearchOnQueryFinishedListener:Lcom/android/calendar/search/OnSearchQueryFinishedListener;

    return-object v0
.end method

.method private processEventAndTaskResults()V
    .locals 3

    .prologue
    .line 103
    new-instance v0, Lcom/android/calendar/search/SearchQueryHandler$SearchResults;

    iget-object v1, p0, Lcom/android/calendar/search/SearchQueryHandler;->mEventSearchResults:Lcom/android/calendar/search/SearchQueryHandler$SearchResults;

    iget-object v2, p0, Lcom/android/calendar/search/SearchQueryHandler;->mTaskSearchResults:Lcom/android/calendar/search/SearchQueryHandler$SearchResults;

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/search/SearchQueryHandler$SearchResults;-><init>(Lcom/android/calendar/search/SearchQueryHandler$SearchResults;Lcom/android/calendar/search/SearchQueryHandler$SearchResults;)V

    .line 104
    iget-object v1, p0, Lcom/android/calendar/search/SearchQueryHandler;->mSearchOnQueryFinishedListener:Lcom/android/calendar/search/OnSearchQueryFinishedListener;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/calendar/search/SearchQueryHandler;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/calendar/search/SearchQueryHandler$1;

    invoke-direct {v2, p0, v0}, Lcom/android/calendar/search/SearchQueryHandler$1;-><init>(Lcom/android/calendar/search/SearchQueryHandler;Lcom/android/calendar/search/SearchQueryHandler$SearchResults;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    :cond_0
    return-void
.end method


# virtual methods
.method protected createStorage(I)Lcom/android/calendar/timely/RangedData$EventResults;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/android/calendar/search/SearchQueryHandler$SearchResults;

    invoke-direct {v0, p1}, Lcom/android/calendar/search/SearchQueryHandler$SearchResults;-><init>(I)V

    return-object v0
.end method

.method protected getQueryUri(Lcom/android/calendar/timely/RangedData;)Landroid/net/Uri;
    .locals 4

    .prologue
    .line 62
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_SEARCH_BY_DAY_URI:Landroid/net/Uri;

    .line 63
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 65
    invoke-interface {p1}, Lcom/android/calendar/timely/RangedData;->getStartDay()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 66
    invoke-interface {p1}, Lcom/android/calendar/timely/RangedData;->getEndDay()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 67
    iget-object v1, p0, Lcom/android/calendar/search/SearchQueryHandler;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 69
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onSearchQueryFinished(Lcom/android/calendar/search/SearchQueryHandler$SearchResults;)V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/search/SearchQueryHandler;->mTaskSearchDone:Z

    .line 96
    iput-object p1, p0, Lcom/android/calendar/search/SearchQueryHandler;->mTaskSearchResults:Lcom/android/calendar/search/SearchQueryHandler$SearchResults;

    .line 97
    iget-boolean v0, p0, Lcom/android/calendar/search/SearchQueryHandler;->mEventSearchDone:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/android/calendar/search/SearchQueryHandler;->processEventAndTaskResults()V

    .line 100
    :cond_0
    return-void
.end method

.method protected processResults(Lcom/android/calendar/timely/RangedData;Lcom/android/calendar/timely/RangedData$EventResults;)V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/search/SearchQueryHandler;->mEventSearchDone:Z

    .line 83
    check-cast p2, Lcom/android/calendar/search/SearchQueryHandler$SearchResults;

    iput-object p2, p0, Lcom/android/calendar/search/SearchQueryHandler;->mEventSearchResults:Lcom/android/calendar/search/SearchQueryHandler$SearchResults;

    .line 84
    iget-boolean v0, p0, Lcom/android/calendar/search/SearchQueryHandler;->mTaskSearchDone:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/android/calendar/search/SearchQueryHandler;->processEventAndTaskResults()V

    .line 87
    :cond_0
    return-void
.end method

.method protected bridge synthetic processResults(Lcom/android/calendar/timely/RangedData;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p2, Lcom/android/calendar/timely/RangedData$EventResults;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/search/SearchQueryHandler;->processResults(Lcom/android/calendar/timely/RangedData;Lcom/android/calendar/timely/RangedData$EventResults;)V

    return-void
.end method

.method public refreshData(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    iput-object p1, p0, Lcom/android/calendar/search/SearchQueryHandler;->mSearchQuery:Ljava/lang/String;

    .line 54
    iput-boolean v2, p0, Lcom/android/calendar/search/SearchQueryHandler;->mEventSearchDone:Z

    .line 55
    iput-boolean v2, p0, Lcom/android/calendar/search/SearchQueryHandler;->mTaskSearchDone:Z

    .line 56
    new-instance v0, Lcom/android/calendar/search/SearchQueryHandler$SearchData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/search/SearchQueryHandler$SearchData;-><init>(Lcom/android/calendar/search/SearchQueryHandler$1;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/calendar/search/SearchQueryHandler;->refreshData(Lcom/android/calendar/timely/RangedData;I)V

    .line 57
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getTaskDataFactory()Lcom/android/calendar/task/BaseTaskDataFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/search/SearchQueryHandler;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/task/BaseTaskDataFactory;->searchTasks(Ljava/lang/String;Lcom/android/calendar/search/OnSearchQueryFinishedListener;)V

    .line 58
    return-void
.end method

.method public setOnQueryFinishedListener(Lcom/android/calendar/search/OnSearchQueryFinishedListener;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/calendar/search/SearchQueryHandler;->mSearchOnQueryFinishedListener:Lcom/android/calendar/search/OnSearchQueryFinishedListener;

    .line 116
    return-void
.end method
