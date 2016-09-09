.class Lcom/android/calendar/SearchActivity$1;
.super Landroid/database/ContentObserver;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/SearchActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/SearchActivity;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/calendar/SearchActivity$1;->this$0:Lcom/android/calendar/SearchActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/calendar/SearchActivity$1;->this$0:Lcom/android/calendar/SearchActivity;

    # getter for: Lcom/android/calendar/SearchActivity;->mSearchFragment:Lcom/android/calendar/search/SearchFragment;
    invoke-static {v0}, Lcom/android/calendar/SearchActivity;->access$000(Lcom/android/calendar/SearchActivity;)Lcom/android/calendar/search/SearchFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/SearchActivity$1;->this$0:Lcom/android/calendar/SearchActivity;

    # getter for: Lcom/android/calendar/SearchActivity;->mQuery:Lcom/android/calendar/search/Query;
    invoke-static {v0}, Lcom/android/calendar/SearchActivity;->access$100(Lcom/android/calendar/SearchActivity;)Lcom/android/calendar/search/Query;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/calendar/SearchActivity$1;->this$0:Lcom/android/calendar/SearchActivity;

    # getter for: Lcom/android/calendar/SearchActivity;->mSearchFragment:Lcom/android/calendar/search/SearchFragment;
    invoke-static {v0}, Lcom/android/calendar/SearchActivity;->access$000(Lcom/android/calendar/SearchActivity;)Lcom/android/calendar/search/SearchFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/search/SearchFragment;->doSearch()V

    .line 92
    :cond_0
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/android/calendar/SearchActivity$1;->onChange(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/calendar/SearchActivity$1;->this$0:Lcom/android/calendar/SearchActivity;

    invoke-virtual {v0}, Lcom/android/calendar/SearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/calendar/newapi/screen/ViewScreenController;->notifyContentProviderUpdateIfAvailable(Landroid/app/FragmentManager;Landroid/net/Uri;)V

    .line 98
    return-void
.end method
