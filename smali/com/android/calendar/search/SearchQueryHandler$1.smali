.class Lcom/android/calendar/search/SearchQueryHandler$1;
.super Ljava/lang/Object;
.source "SearchQueryHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/search/SearchQueryHandler;->processEventAndTaskResults()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/search/SearchQueryHandler;

.field final synthetic val$results:Lcom/android/calendar/search/SearchQueryHandler$SearchResults;


# direct methods
.method constructor <init>(Lcom/android/calendar/search/SearchQueryHandler;Lcom/android/calendar/search/SearchQueryHandler$SearchResults;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/calendar/search/SearchQueryHandler$1;->this$0:Lcom/android/calendar/search/SearchQueryHandler;

    iput-object p2, p0, Lcom/android/calendar/search/SearchQueryHandler$1;->val$results:Lcom/android/calendar/search/SearchQueryHandler$SearchResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/calendar/search/SearchQueryHandler$1;->this$0:Lcom/android/calendar/search/SearchQueryHandler;

    # getter for: Lcom/android/calendar/search/SearchQueryHandler;->mSearchOnQueryFinishedListener:Lcom/android/calendar/search/OnSearchQueryFinishedListener;
    invoke-static {v0}, Lcom/android/calendar/search/SearchQueryHandler;->access$100(Lcom/android/calendar/search/SearchQueryHandler;)Lcom/android/calendar/search/OnSearchQueryFinishedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/search/SearchQueryHandler$1;->val$results:Lcom/android/calendar/search/SearchQueryHandler$SearchResults;

    invoke-interface {v0, v1}, Lcom/android/calendar/search/OnSearchQueryFinishedListener;->onSearchQueryFinished(Lcom/android/calendar/search/SearchQueryHandler$SearchResults;)V

    .line 109
    return-void
.end method
