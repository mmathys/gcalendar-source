.class public Lcom/android/calendar/search/SearchResultsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SearchResultsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/search/SearchResultsAdapter$SimpleViewHolder;,
        Lcom/android/calendar/search/SearchResultsAdapter$SearchTimelyInfo;
    }
.end annotation


# instance fields
.field private final mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

.field private final mContext:Landroid/content/Context;

.field private mDayToScroll:I

.field private mDaysToItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRecyclerTime:Lcom/android/calendar/time/Time;

.field private mShouldDrawYearHeader:Z

.field private final mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/timely/ChipRecycler;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/android/calendar/search/SearchResultsAdapter$SearchTimelyInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/search/SearchResultsAdapter$SearchTimelyInfo;-><init>(Lcom/android/calendar/search/SearchResultsAdapter$1;)V

    iput-object v0, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    .line 54
    iput-object p2, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mDaysToItems:Landroid/util/SparseArray;

    .line 57
    new-instance v0, Lcom/android/calendar/time/Time;

    iget-object v1, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mRecyclerTime:Lcom/android/calendar/time/Time;

    .line 58
    return-void
.end method

.method private shouldDrawYearHeader(I)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 85
    iget-boolean v2, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mShouldDrawYearHeader:Z

    if-nez v2, :cond_1

    move v0, v1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    if-eqz p1, :cond_0

    .line 94
    iget-object v2, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mRecyclerTime:Lcom/android/calendar/time/Time;

    iget-object v3, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mDaysToItems:Landroid/util/SparseArray;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/calendar/time/Time;->setJulianDay(I)J

    .line 95
    iget-object v2, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mRecyclerTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v2, v0}, Lcom/android/calendar/time/Time;->normalize(Z)J

    .line 96
    iget-object v2, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mRecyclerTime:Lcom/android/calendar/time/Time;

    iget v2, v2, Lcom/android/calendar/time/Time;->year:I

    .line 99
    iget-object v3, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mRecyclerTime:Lcom/android/calendar/time/Time;

    iget-object v4, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mDaysToItems:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/calendar/time/Time;->setJulianDay(I)J

    .line 100
    iget-object v3, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mRecyclerTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v3, v0}, Lcom/android/calendar/time/Time;->normalize(Z)J

    .line 101
    iget-object v3, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mRecyclerTime:Lcom/android/calendar/time/Time;

    iget v3, v3, Lcom/android/calendar/time/Time;->year:I

    .line 104
    if-ne v3, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mDaysToItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getPositionToScroll()I
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mDaysToItems:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mDayToScroll:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/calendar/timely/TimelyDayView;

    .line 71
    iget-object v1, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mDaysToItems:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 72
    iget-object v1, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mDaysToItems:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 74
    invoke-direct {p0, p2}, Lcom/android/calendar/search/SearchResultsAdapter;->shouldDrawYearHeader(I)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/calendar/timely/TimelyDayView;->shouldDrawYearHeader(Z)V

    .line 75
    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/TimelyDayView;->setJulianDay(I)V

    .line 76
    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/TimelyDayView;->onUpdate(Ljava/util/List;I)V

    .line 77
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 6

    .prologue
    .line 62
    new-instance v0, Lcom/android/calendar/timely/TimelyDayView;

    iget-object v1, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    iget-object v3, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/timely/TimelyDayView;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/ChipRecycler;Lcom/android/calendar/timely/TimelineInfo;Lcom/android/calendar/timely/OnTimelineModeChangedListener;I)V

    .line 64
    new-instance v1, Lcom/android/calendar/search/SearchResultsAdapter$SimpleViewHolder;

    invoke-direct {v1, v0}, Lcom/android/calendar/search/SearchResultsAdapter$SimpleViewHolder;-><init>(Landroid/view/View;)V

    .line 65
    return-object v1
.end method

.method public swapItemList(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v8, 0x7fffffff

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 108
    iget-object v0, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mDaysToItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 110
    if-nez p1, :cond_0

    .line 158
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getTodayJulianDay(Landroid/content/Context;)I

    move-result v5

    .line 116
    iput v8, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mDayToScroll:I

    .line 117
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    .line 120
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getStartDay()I

    move-result v1

    move v2, v1

    :goto_1
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getEndDay()I

    move-result v1

    if-gt v2, v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mDaysToItems:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 122
    if-nez v1, :cond_2

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    iget-object v7, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mDaysToItems:Landroid/util/SparseArray;

    invoke-virtual {v7, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    if-lt v2, v5, :cond_3

    iget v1, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mDayToScroll:I

    if-ge v2, v1, :cond_3

    .line 130
    iput v2, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mDayToScroll:I

    .line 120
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 136
    :cond_4
    iget v0, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mDayToScroll:I

    if-ne v0, v8, :cond_5

    .line 137
    iget-object v0, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mDaysToItems:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mDaysToItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mDayToScroll:I

    .line 141
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mRecyclerTime:Lcom/android/calendar/time/Time;

    iget-object v1, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mDaysToItems:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/time/Time;->setJulianDay(I)J

    .line 142
    iget-object v0, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mRecyclerTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0, v3}, Lcom/android/calendar/time/Time;->normalize(Z)J

    .line 143
    iget-object v0, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mRecyclerTime:Lcom/android/calendar/time/Time;

    iget v0, v0, Lcom/android/calendar/time/Time;->year:I

    .line 145
    iget-object v1, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mRecyclerTime:Lcom/android/calendar/time/Time;

    iget-object v2, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mDaysToItems:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mDaysToItems:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/time/Time;->setJulianDay(I)J

    .line 146
    iget-object v1, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mRecyclerTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v1, v3}, Lcom/android/calendar/time/Time;->normalize(Z)J

    .line 147
    iget-object v1, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mRecyclerTime:Lcom/android/calendar/time/Time;

    iget v1, v1, Lcom/android/calendar/time/Time;->year:I

    .line 149
    if-eq v1, v0, :cond_6

    .line 151
    iput-boolean v3, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mShouldDrawYearHeader:Z

    goto/16 :goto_0

    .line 154
    :cond_6
    iget-object v1, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mRecyclerTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v1}, Lcom/android/calendar/time/Time;->setToNow()V

    .line 155
    iget-object v1, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mRecyclerTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v1, v3}, Lcom/android/calendar/time/Time;->normalize(Z)J

    .line 156
    iget-object v1, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mRecyclerTime:Lcom/android/calendar/time/Time;

    iget v1, v1, Lcom/android/calendar/time/Time;->year:I

    if-eq v1, v0, :cond_7

    move v0, v3

    :goto_2
    iput-boolean v0, p0, Lcom/android/calendar/search/SearchResultsAdapter;->mShouldDrawYearHeader:Z

    goto/16 :goto_0

    :cond_7
    move v0, v4

    goto :goto_2
.end method
