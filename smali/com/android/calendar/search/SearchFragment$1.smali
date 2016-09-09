.class Lcom/android/calendar/search/SearchFragment$1;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/search/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/search/SearchFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/search/SearchFragment;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/calendar/search/SearchFragment$1;->this$0:Lcom/android/calendar/search/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/calendar/search/SearchFragment$1;->this$0:Lcom/android/calendar/search/SearchFragment;

    iget-object v1, p0, Lcom/android/calendar/search/SearchFragment$1;->this$0:Lcom/android/calendar/search/SearchFragment;

    invoke-virtual {v1}, Lcom/android/calendar/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/search/SearchFragment$1;->this$0:Lcom/android/calendar/search/SearchFragment;

    # getter for: Lcom/android/calendar/search/SearchFragment;->mHomeTimeUpdater:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/calendar/search/SearchFragment;->access$100(Lcom/android/calendar/search/SearchFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/calendar/search/SearchFragment;->mTimeZone:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/calendar/search/SearchFragment;->access$002(Lcom/android/calendar/search/SearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/android/calendar/search/SearchFragment$1;->this$0:Lcom/android/calendar/search/SearchFragment;

    # getter for: Lcom/android/calendar/search/SearchFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/android/calendar/search/SearchFragment;->access$200(Lcom/android/calendar/search/SearchFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/calendar/search/SearchFragment$1;->this$0:Lcom/android/calendar/search/SearchFragment;

    # getter for: Lcom/android/calendar/search/SearchFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/android/calendar/search/SearchFragment;->access$200(Lcom/android/calendar/search/SearchFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 97
    :cond_0
    return-void
.end method
