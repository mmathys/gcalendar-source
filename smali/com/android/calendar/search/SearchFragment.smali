.class public Lcom/android/calendar/search/SearchFragment;
.super Landroid/app/Fragment;
.source "SearchFragment.java"

# interfaces
.implements Lcom/android/calendar/search/OnSearchQueryFinishedListener;


# instance fields
.field private mCard:Landroid/view/View;

.field private mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

.field private final mHomeTimeUpdater:Ljava/lang/Runnable;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mNoResultsView:Landroid/widget/LinearLayout;

.field private mQuery:Lcom/android/calendar/search/Query;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSearchQueryHandler:Lcom/android/calendar/search/SearchQueryHandler;

.field private mSearchingText:Ljava/lang/String;

.field private mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 90
    new-instance v0, Lcom/android/calendar/search/SearchFragment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/search/SearchFragment$1;-><init>(Lcom/android/calendar/search/SearchFragment;)V

    iput-object v0, p0, Lcom/android/calendar/search/SearchFragment;->mHomeTimeUpdater:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcom/android/calendar/search/SearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/calendar/search/SearchFragment;->mTimeZone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calendar/search/SearchFragment;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/calendar/search/SearchFragment;->mHomeTimeUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/search/SearchFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/calendar/search/SearchFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method


# virtual methods
.method public doSearch()V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/calendar/search/SearchFragment;->mNoResultsView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 140
    invoke-virtual {p0}, Lcom/android/calendar/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/SearchActivity;

    invoke-virtual {v0}, Lcom/android/calendar/SearchActivity;->getQuery()Lcom/android/calendar/search/Query;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/search/SearchFragment;->mQuery:Lcom/android/calendar/search/Query;

    .line 142
    iget-object v0, p0, Lcom/android/calendar/search/SearchFragment;->mQuery:Lcom/android/calendar/search/Query;

    if-nez v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/search/SearchFragment;->mQuery:Lcom/android/calendar/search/Query;

    invoke-virtual {v0}, Lcom/android/calendar/search/Query;->getWhat()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getExtensions()Lcom/android/calendar/UnifiedExtensions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendar/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/calendar/UnifiedExtensions;->handleMagicSearch(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/calendar/search/SearchFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object v2, p0, Lcom/android/calendar/search/SearchFragment;->mSearchingText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v1, p0, Lcom/android/calendar/search/SearchFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 149
    iget-object v1, p0, Lcom/android/calendar/search/SearchFragment;->mSearchQueryHandler:Lcom/android/calendar/search/SearchQueryHandler;

    invoke-virtual {v1, v0}, Lcom/android/calendar/search/SearchQueryHandler;->refreshData(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 64
    new-instance v0, Lcom/android/calendar/search/SearchQueryHandler;

    invoke-virtual {p0}, Lcom/android/calendar/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/search/SearchQueryHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/search/SearchFragment;->mSearchQueryHandler:Lcom/android/calendar/search/SearchQueryHandler;

    .line 65
    iget-object v0, p0, Lcom/android/calendar/search/SearchFragment;->mSearchQueryHandler:Lcom/android/calendar/search/SearchQueryHandler;

    invoke-virtual {v0, p0}, Lcom/android/calendar/search/SearchQueryHandler;->setOnQueryFinishedListener(Lcom/android/calendar/search/OnSearchQueryFinishedListener;)V

    .line 67
    if-eqz p1, :cond_1

    .line 68
    const-string v0, "bundleRotation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/calendar/search/SearchFragment;->doSearch()V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/search/SearchFragment;->doSearch()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 80
    check-cast p1, Lcom/android/calendar/timely/ChipRecycler$ChipRecyclerProvider;

    invoke-interface {p1}, Lcom/android/calendar/timely/ChipRecycler$ChipRecyclerProvider;->getChipRecycler()Lcom/android/calendar/timely/ChipRecycler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/search/SearchFragment;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    .line 81
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/calendar/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/search/SearchFragment;->mHomeTimeUpdater:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/search/SearchFragment;->mTimeZone:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 109
    sget v0, Lcom/android/calendar/R$layout;->search_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 110
    sget v1, Lcom/android/calendar/R$id;->search_list:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/android/calendar/search/SearchFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 111
    iget-object v1, p0, Lcom/android/calendar/search/SearchFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/android/calendar/search/SearchResultsAdapter;

    invoke-virtual {p0}, Lcom/android/calendar/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/search/SearchFragment;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    invoke-direct {v2, v3, v4}, Lcom/android/calendar/search/SearchResultsAdapter;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/ChipRecycler;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 112
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/calendar/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/calendar/search/SearchFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 113
    iget-object v1, p0, Lcom/android/calendar/search/SearchFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/calendar/search/SearchFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 114
    sget v1, Lcom/android/calendar/R$id;->no_results:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/calendar/search/SearchFragment;->mNoResultsView:Landroid/widget/LinearLayout;

    .line 115
    sget v1, Lcom/android/calendar/R$id;->swipe_refresh_layout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/android/calendar/search/SearchFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 117
    sget v1, Lcom/android/calendar/R$id;->search_card:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/search/SearchFragment;->mCard:Landroid/view/View;

    .line 118
    iget-object v1, p0, Lcom/android/calendar/search/SearchFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 119
    iget-object v1, p0, Lcom/android/calendar/search/SearchFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 120
    iget-object v1, p0, Lcom/android/calendar/search/SearchFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v2, 0x4

    new-array v2, v2, [I

    sget v3, Lcom/android/calendar/R$color;->swipe_refresh_color1:I

    aput v3, v2, v5

    const/4 v3, 0x1

    sget v4, Lcom/android/calendar/R$color;->swipe_refresh_color2:I

    aput v4, v2, v3

    const/4 v3, 0x2

    sget v4, Lcom/android/calendar/R$color;->swipe_refresh_color3:I

    aput v4, v2, v3

    const/4 v3, 0x3

    sget v4, Lcom/android/calendar/R$color;->swipe_refresh_color4:I

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 123
    invoke-virtual {p0}, Lcom/android/calendar/search/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->searching:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/search/SearchFragment;->mSearchingText:Ljava/lang/String;

    .line 125
    sget v1, Lcom/android/calendar/R$id;->no_result_label:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 126
    sget v2, Lcom/android/calendar/R$string;->no_results_events_and_reminders:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 128
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 87
    const-string v0, "bundleRotation"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    return-void
.end method

.method public onSearchQueryFinished(Lcom/android/calendar/search/SearchQueryHandler$SearchResults;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Lcom/android/calendar/search/SearchFragment;->mCard:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/calendar/search/SearchFragment;->mCard:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/search/SearchFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 161
    if-nez p1, :cond_2

    const/4 v0, 0x0

    move-object v3, v0

    .line 162
    :goto_0
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    .line 163
    :goto_1
    if-lez v1, :cond_4

    .line 164
    iget-object v0, p0, Lcom/android/calendar/search/SearchFragment;->mNoResultsView:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    :goto_2
    iget-object v0, p0, Lcom/android/calendar/search/SearchFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/search/SearchResultsAdapter;

    .line 171
    invoke-virtual {v0, v3}, Lcom/android/calendar/search/SearchResultsAdapter;->swapItemList(Ljava/util/List;)V

    .line 172
    invoke-virtual {v0}, Lcom/android/calendar/search/SearchResultsAdapter;->notifyDataSetChanged()V

    .line 176
    iget-object v3, p0, Lcom/android/calendar/search/SearchFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Lcom/android/calendar/search/SearchResultsAdapter;->getPositionToScroll()I

    move-result v0

    invoke-virtual {v3, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 178
    invoke-virtual {p0}, Lcom/android/calendar/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/calendar/Utils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    if-lez v1, :cond_5

    .line 182
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/calendar/R$plurals;->search_available_announce:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 183
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    .line 182
    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 187
    :goto_3
    iget-object v1, p0, Lcom/android/calendar/search/SearchFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 189
    :cond_1
    return-void

    .line 161
    :cond_2
    invoke-virtual {p1}, Lcom/android/calendar/search/SearchQueryHandler$SearchResults;->getItems()Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_3
    move v1, v2

    .line 162
    goto :goto_1

    .line 167
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/search/SearchFragment;->mNoResultsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 185
    :cond_5
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->no_results:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
