.class public Lcom/android/calendar/timely/TimelineAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TimelineAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/TimelineAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/calendar/timely/TimelineAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimAllDayEventsHeight:I

.field private mAnimAllDayEventsScroll:I

.field private mAnimGridOffset:I

.field private mAnimPosition:I

.field private mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

.field private mDataFactory:Lcom/android/calendar/timely/DataFactory;

.field private mForceShowPosition:I

.field private final mHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

.field private mOnTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;

.field private mScrollingVelocity:I

.field private mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

.field private mTimelineModeChangedListener:Lcom/android/calendar/timely/OnTimelineModeChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/android/calendar/timely/TimelineAdapter;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/TimelineAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/timely/TimelineAdapter;->mScrollingVelocity:I

    .line 66
    new-instance v0, Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-direct {v0, p1}, Lcom/android/calendar/timely/TimelyDayHeaderView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineAdapter;->mHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    .line 67
    sget v0, Lcom/android/calendar/R$bool;->tablet_config:I

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineAdapter;->mHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    new-instance v1, Lcom/android/calendar/timely/TimelineAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/android/calendar/timely/TimelineAdapter$1;-><init>(Lcom/android/calendar/timely/TimelineAdapter;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyDayHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/timely/TimelineAdapter;->mAnimPosition:I

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/TimelineAdapter;)Lcom/android/calendar/timely/TimelyDayHeaderView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineAdapter;->mHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/TimelineAdapter;)Lcom/android/calendar/timely/OnTimelineModeChangedListener;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineAdapter;->mTimelineModeChangedListener:Lcom/android/calendar/timely/OnTimelineModeChangedListener;

    return-object v0
.end method


# virtual methods
.method public clearForceShowPosition()V
    .locals 1

    .prologue
    .line 249
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/timely/TimelineAdapter;->mForceShowPosition:I

    .line 250
    return-void
.end method

.method public getHeaderView(I)Lcom/android/calendar/timely/TimelineRecyclerView$HeaderViewDescriptor;
    .locals 3

    .prologue
    .line 168
    invoke-static {p1}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->getJulianDayFromPosition(I)I

    move-result v0

    .line 169
    iget-object v1, p0, Lcom/android/calendar/timely/TimelineAdapter;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/calendar/timely/DataFactory;->getData(IZ)Lcom/android/calendar/timely/MonthData;

    move-result-object v1

    .line 170
    iget-object v2, p0, Lcom/android/calendar/timely/TimelineAdapter;->mHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v2, p1}, Lcom/android/calendar/timely/TimelyDayHeaderView;->setPosition(I)V

    .line 171
    iget-object v2, p0, Lcom/android/calendar/timely/TimelineAdapter;->mHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/MonthData;->getDateInfo(I)[I

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lcom/android/calendar/timely/TimelyDayHeaderView;->setDateInfo([IZ)V

    .line 172
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineAdapter;->mHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->initializeText()V

    .line 173
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineAdapter;->mHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->updateContentDescription()V

    .line 175
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineAdapter;->mHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 92
    const/16 v0, 0x5f9f

    return v0
.end method

.method public initialize(Lcom/android/calendar/timely/DataFactory;Lcom/android/calendar/timely/ChipRecycler;Lcom/android/calendar/timely/TimelineInfo;Lcom/android/calendar/timely/OnTimelineModeChangedListener;Lcom/android/calendar/timely/OnTimelineGestureListener;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/calendar/timely/TimelineAdapter;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    .line 184
    iput-object p3, p0, Lcom/android/calendar/timely/TimelineAdapter;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    .line 185
    iput-object p4, p0, Lcom/android/calendar/timely/TimelineAdapter;->mTimelineModeChangedListener:Lcom/android/calendar/timely/OnTimelineModeChangedListener;

    .line 186
    iput-object p5, p0, Lcom/android/calendar/timely/TimelineAdapter;->mOnTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;

    .line 187
    iput-object p2, p0, Lcom/android/calendar/timely/TimelineAdapter;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    .line 188
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lcom/android/calendar/timely/TimelineAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/TimelineAdapter;->onBindViewHolder(Lcom/android/calendar/timely/TimelineAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/calendar/timely/TimelineAdapter$ViewHolder;I)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 107
    iget-object v0, p1, Lcom/android/calendar/timely/TimelineAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/calendar/timely/TimelyDayView;

    .line 108
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayView;->getListenerTag()I

    move-result v2

    .line 109
    if-eq v2, v5, :cond_1

    .line 111
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayView;->recycleDayView()V

    .line 113
    iget-object v3, p0, Lcom/android/calendar/timely/TimelineAdapter;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {v3, v2}, Lcom/android/calendar/timely/DataFactory;->getDataAllowNull(I)Lcom/android/calendar/timely/MonthData;

    move-result-object v3

    .line 114
    if-eqz v3, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayView;->getListenerTagType()I

    move-result v4

    .line 119
    invoke-virtual {v3, v2, v4}, Lcom/android/calendar/timely/MonthData;->unregisterListener(II)Z

    .line 122
    :cond_0
    invoke-static {v2}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->getPositionFromJulianDay(I)I

    move-result v2

    .line 125
    if-eq v2, p2, :cond_1

    iget v3, p0, Lcom/android/calendar/timely/TimelineAdapter;->mForceShowPosition:I

    if-ne v3, v2, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineAdapter;->clearForceShowPosition()V

    .line 130
    :cond_1
    if-nez p2, :cond_2

    .line 133
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 162
    :goto_0
    return-void

    .line 137
    :cond_2
    iget v2, p0, Lcom/android/calendar/timely/TimelineAdapter;->mAnimPosition:I

    if-ne p2, v2, :cond_3

    .line 138
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayView;->getStickyAllDayEventsView()Lcom/android/calendar/timely/StickyAllDayEventsView;

    move-result-object v2

    .line 139
    iget v3, p0, Lcom/android/calendar/timely/TimelineAdapter;->mAnimGridOffset:I

    invoke-virtual {v2, v3}, Lcom/android/calendar/timely/StickyAllDayEventsView;->setGridOffset(I)V

    .line 140
    iget v3, p0, Lcom/android/calendar/timely/TimelineAdapter;->mAnimAllDayEventsHeight:I

    invoke-virtual {v2, v3}, Lcom/android/calendar/timely/StickyAllDayEventsView;->setGridHeight(I)V

    .line 141
    iget v3, p0, Lcom/android/calendar/timely/TimelineAdapter;->mAnimAllDayEventsScroll:I

    invoke-virtual {v2, v3}, Lcom/android/calendar/timely/StickyAllDayEventsView;->setGridScrollPosition(I)V

    .line 142
    iput v5, p0, Lcom/android/calendar/timely/TimelineAdapter;->mAnimPosition:I

    .line 145
    :cond_3
    invoke-virtual {p0, p2, v0}, Lcom/android/calendar/timely/TimelineAdapter;->updateView(ILcom/android/calendar/timely/TimelyDayView;)Lcom/android/calendar/timely/MonthData;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthData;->getStartDay()I

    move-result v2

    .line 149
    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthData;->getEndDay()I

    move-result v0

    .line 150
    iget v3, p0, Lcom/android/calendar/timely/TimelineAdapter;->mScrollingVelocity:I

    if-eqz v3, :cond_5

    move v3, v2

    move v2, v0

    move v0, v1

    .line 151
    :goto_1
    iget-object v4, p0, Lcom/android/calendar/timely/TimelineAdapter;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {v4}, Lcom/android/calendar/timely/DataFactory;->getNumData()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-ge v0, v4, :cond_5

    .line 152
    iget v4, p0, Lcom/android/calendar/timely/TimelineAdapter;->mScrollingVelocity:I

    if-lez v4, :cond_4

    .line 153
    iget-object v4, p0, Lcom/android/calendar/timely/TimelineAdapter;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2, v1}, Lcom/android/calendar/timely/DataFactory;->getData(IZ)Lcom/android/calendar/timely/MonthData;

    move-result-object v2

    .line 154
    invoke-virtual {v2}, Lcom/android/calendar/timely/MonthData;->getEndDay()I

    move-result v2

    .line 151
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
    :cond_4
    iget-object v4, p0, Lcom/android/calendar/timely/TimelineAdapter;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v4, v3, v1}, Lcom/android/calendar/timely/DataFactory;->getData(IZ)Lcom/android/calendar/timely/MonthData;

    move-result-object v3

    .line 157
    invoke-virtual {v3}, Lcom/android/calendar/timely/MonthData;->getStartDay()I

    move-result v3

    goto :goto_2

    .line 161
    :cond_5
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/TimelineAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/calendar/timely/TimelineAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/calendar/timely/TimelineAdapter$ViewHolder;
    .locals 6

    .prologue
    .line 97
    new-instance v0, Lcom/android/calendar/timely/TimelyDayView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/TimelineAdapter;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    iget-object v3, p0, Lcom/android/calendar/timely/TimelineAdapter;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    iget-object v4, p0, Lcom/android/calendar/timely/TimelineAdapter;->mTimelineModeChangedListener:Lcom/android/calendar/timely/OnTimelineModeChangedListener;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/timely/TimelyDayView;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/ChipRecycler;Lcom/android/calendar/timely/TimelineInfo;Lcom/android/calendar/timely/OnTimelineModeChangedListener;I)V

    .line 99
    iget-object v1, p0, Lcom/android/calendar/timely/TimelineAdapter;->mOnTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyDayView;->setOnTimelineGestureListener(Lcom/android/calendar/timely/OnTimelineGestureListener;)V

    .line 100
    new-instance v1, Lcom/android/calendar/timely/TimelineAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/android/calendar/timely/TimelineAdapter$ViewHolder;-><init>(Lcom/android/calendar/timely/TimelineAdapter;Landroid/view/View;)V

    .line 101
    return-object v1
.end method

.method public refresh(IZ)V
    .locals 3

    .prologue
    .line 191
    const-string v0, "DayViewListAdapter.refresh"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 192
    if-eqz p2, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineAdapter;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {v0}, Lcom/android/calendar/timely/DataFactory;->updateToday()V

    .line 197
    :cond_0
    invoke-static {p1}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->getJulianDayFromPosition(I)I

    move-result v0

    .line 198
    iget-object v1, p0, Lcom/android/calendar/timely/TimelineAdapter;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p2, v2}, Lcom/android/calendar/timely/DataFactory;->refreshDataAroundDay(IZZ)V

    .line 199
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 200
    return-void
.end method

.method public setAnimationValues(IIII)V
    .locals 0

    .prologue
    .line 254
    iput p1, p0, Lcom/android/calendar/timely/TimelineAdapter;->mAnimPosition:I

    .line 255
    iput p2, p0, Lcom/android/calendar/timely/TimelineAdapter;->mAnimAllDayEventsHeight:I

    .line 256
    iput p3, p0, Lcom/android/calendar/timely/TimelineAdapter;->mAnimAllDayEventsScroll:I

    .line 257
    iput p4, p0, Lcom/android/calendar/timely/TimelineAdapter;->mAnimGridOffset:I

    .line 258
    return-void
.end method

.method public setForceShowPosition(I)V
    .locals 2

    .prologue
    .line 238
    iget v0, p0, Lcom/android/calendar/timely/TimelineAdapter;->mForceShowPosition:I

    .line 239
    iput p1, p0, Lcom/android/calendar/timely/TimelineAdapter;->mForceShowPosition:I

    .line 242
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 243
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelineAdapter;->notifyItemChanged(I)V

    .line 245
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/TimelineAdapter;->notifyItemChanged(I)V

    .line 246
    return-void
.end method

.method public setHideDeclinedEvents(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineAdapter;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    if-nez v0, :cond_0

    .line 231
    sget-object v0, Lcom/android/calendar/timely/TimelineAdapter;->TAG:Ljava/lang/String;

    const-string v1, "DataFactory is null, unable to set Hide Declined preference."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 235
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineAdapter;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/DataFactory;->setHideDeclinedEvents(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public setScrollingVelocity(II)V
    .locals 2

    .prologue
    .line 209
    iput p1, p0, Lcom/android/calendar/timely/TimelineAdapter;->mScrollingVelocity:I

    .line 210
    invoke-static {p2}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->getJulianDayFromPosition(I)I

    move-result v0

    .line 211
    iget-object v1, p0, Lcom/android/calendar/timely/TimelineAdapter;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {v1, p1, v0}, Lcom/android/calendar/timely/DataFactory;->setTimePassage(II)V

    .line 212
    return-void
.end method

.method public updateView(ILcom/android/calendar/timely/TimelyDayView;)Lcom/android/calendar/timely/MonthData;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 215
    const-string v1, "ListAdapter updateView"

    invoke-static {v1}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 216
    invoke-static {p1}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->getJulianDayFromPosition(I)I

    move-result v1

    .line 218
    iget-object v2, p0, Lcom/android/calendar/timely/TimelineAdapter;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {v2, v1, v0}, Lcom/android/calendar/timely/DataFactory;->getData(IZ)Lcom/android/calendar/timely/MonthData;

    move-result-object v2

    .line 219
    invoke-virtual {p2, v1}, Lcom/android/calendar/timely/TimelyDayView;->setJulianDay(I)V

    .line 220
    invoke-virtual {v2, v1, p2}, Lcom/android/calendar/timely/MonthData;->registerListener(ILcom/android/calendar/timely/DataFactory$OnUpdateListener;)V

    .line 221
    iget v3, p0, Lcom/android/calendar/timely/TimelineAdapter;->mForceShowPosition:I

    if-ne v3, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p2, v2, v1, v0}, Lcom/android/calendar/timely/TimelyDayView;->onUpdate(Lcom/android/calendar/timely/MonthData;IZ)V

    .line 222
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 223
    return-object v2
.end method
