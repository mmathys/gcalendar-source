.class public abstract Lcom/android/calendar/timely/gridviews/GridViewsFragment;
.super Lcom/android/calendar/timely/ViewPagerFragment;
.source "GridViewsFragment.java"

# interfaces
.implements Lcom/android/calendar/NewEventTimeChangedListenerHolder$OnCreateNewEventTimeChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mNumDays:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/calendar/timely/gridviews/GridViewsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/gridviews/GridViewsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/calendar/timely/ViewPagerFragment;-><init>()V

    .line 46
    iput p1, p0, Lcom/android/calendar/timely/gridviews/GridViewsFragment;->mNumDays:I

    .line 47
    return-void
.end method


# virtual methods
.method protected bridge synthetic getViewPagerAdapter()Lcom/android/calendar/timely/ViewPagerFragment$ViewPagerAdapter;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridViewsFragment;->getViewPagerAdapter()Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getViewPagerAdapter()Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;
.end method

.method protected goTo(Lcom/android/calendar/time/Time;ZZ)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridViewsFragment;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 80
    sget-object v1, Lcom/android/calendar/timely/gridviews/GridViewsFragment;->TAG:Ljava/lang/String;

    const-string v2, "Tried to goto a time but ViewPager hadn\'t been created yet!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/timely/ViewPagerFragment;->goTo(Lcom/android/calendar/time/Time;ZZ)V

    .line 87
    iget-boolean v1, p0, Lcom/android/calendar/timely/gridviews/GridViewsFragment;->mMinimonthToggledOpen:Z

    if-nez v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridViewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/calendar/timely/gridviews/GridViewsFragment;->getItemPositionFromTime(Lcom/android/calendar/time/Time;Landroid/app/Activity;)I

    move-result v2

    .line 91
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridViewsFragment;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v3

    move v1, v0

    .line 92
    :goto_1
    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 94
    invoke-virtual {v3, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;

    .line 96
    iget v4, v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->itemPosition:I

    if-ne v4, v2, :cond_3

    .line 97
    if-eqz p3, :cond_2

    .line 98
    iget-object v0, v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->daysContent:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->autoScroll()V

    goto :goto_0

    .line 100
    :cond_2
    iget-object v0, v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->daysContent:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->scrollTo(Lcom/android/calendar/time/Time;)V

    goto :goto_0

    .line 92
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 107
    :cond_4
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridViewsFragment;->getViewPagerAdapter()Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, v2, p3, p1}, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->setItemToAutoScroll(IZLcom/android/calendar/time/Time;)V

    goto :goto_0
.end method

.method public hasMinimonth()Z
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method public isMiniMonthDraggable(Z)Z
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/gridviews/GridViewsFragment;->isMiniMonthToggleable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMiniMonthToggleable(Z)Z
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridViewsFragment;->hasMinimonth()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/calendar/timely/ViewPagerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    return-void
.end method

.method public onCreateNewEventTimeChanged(J)V
    .locals 0

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridViewsFragment;->updateSelectedHourViews()V

    .line 117
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 64
    if-eqz p3, :cond_0

    .line 65
    const-string v0, "key_num_days"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/gridviews/GridViewsFragment;->mNumDays:I

    .line 68
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/timely/ViewPagerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onInitView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->getInstance()Lcom/android/calendar/NewEventTimeChangedListenerHolder;

    move-result-object v0

    .line 52
    invoke-virtual {v0, p0}, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->registerCreateNewEventTimeListener(Lcom/android/calendar/NewEventTimeChangedListenerHolder$OnCreateNewEventTimeChangedListener;)V

    .line 53
    invoke-super {p0, p1, p2}, Lcom/android/calendar/timely/ViewPagerFragment;->onInitView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 54
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/android/calendar/timely/ViewPagerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 74
    const-string v0, "key_num_days"

    iget v1, p0, Lcom/android/calendar/timely/gridviews/GridViewsFragment;->mNumDays:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    return-void
.end method

.method protected updatePage(Landroid/view/View;)V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 141
    check-cast p1, Landroid/view/ViewGroup;

    .line 142
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridViewsFragment;->getViewPagerAdapter()Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->getWeekPageRecyclerManager()Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridPageRecyclerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridPageRecyclerManager;->clean(Landroid/view/ViewGroup;)V

    .line 145
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;

    .line 146
    iget-object v8, v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->daysContent:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    .line 147
    iget-object v5, v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->allDayContent:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    .line 149
    iget-object v1, v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->daysHeaders:Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;

    iget v2, v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->firstJulianDay:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->setFirstJulianDay(I)V

    .line 150
    iget v1, v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->firstJulianDay:I

    invoke-virtual {v5, v1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->setFirstJulianDay(I)V

    .line 153
    iget v1, p0, Lcom/android/calendar/timely/gridviews/GridViewsFragment;->mNumDays:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget-object v1, v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->allDayHeaderArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->allDayHeaderArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    iget v2, v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->firstJulianDay:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->setJulianDay(I)V

    .line 156
    :cond_0
    iget v2, v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->firstJulianDay:I

    move v6, v7

    :goto_0
    iget v0, p0, Lcom/android/calendar/timely/gridviews/GridViewsFragment;->mNumDays:I

    if-ge v6, v0, :cond_2

    .line 158
    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/timely/gridviews/GridDayView;

    .line 161
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewsFragment;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {v0, v2, v7}, Lcom/android/calendar/timely/DataFactory;->getData(IZ)Lcom/android/calendar/timely/MonthData;

    move-result-object v9

    .line 162
    invoke-virtual {v4, v2}, Lcom/android/calendar/timely/gridviews/GridDayView;->setJulianDay(I)V

    .line 163
    invoke-virtual {v9}, Lcom/android/calendar/timely/MonthData;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget v0, p0, Lcom/android/calendar/timely/gridviews/GridViewsFragment;->mNumDays:I

    invoke-virtual {v4, v9, v2, v0}, Lcom/android/calendar/timely/gridviews/GridDayView;->onUpdate(Lcom/android/calendar/timely/MonthData;II)V

    .line 165
    iget v0, p0, Lcom/android/calendar/timely/gridviews/GridViewsFragment;->mNumDays:I

    invoke-virtual {v5, v9, v2, v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->onUpdate(Lcom/android/calendar/timely/MonthData;II)V

    .line 156
    :goto_1
    add-int/lit8 v0, v6, 0x1

    add-int/lit8 v2, v2, 0x1

    move v6, v0

    goto :goto_0

    .line 173
    :cond_1
    new-instance v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener;

    .line 174
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridViewsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v3, p0, Lcom/android/calendar/timely/gridviews/GridViewsFragment;->mNumDays:I

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener;-><init>(Landroid/content/Context;IILcom/android/calendar/timely/gridviews/GridDayView;Lcom/android/calendar/timely/gridviews/AllDayHeaderView;)V

    .line 173
    invoke-virtual {v9, v2, v0}, Lcom/android/calendar/timely/MonthData;->registerListener(ILcom/android/calendar/timely/DataFactory$OnUpdateListener;)V

    goto :goto_1

    .line 177
    :cond_2
    return-void
.end method

.method public updateSelectedHourViews()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridViewsFragment;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v5

    move v1, v2

    .line 124
    :goto_0
    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 125
    invoke-virtual {v5, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;

    .line 128
    iget-object v6, v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->daysContent:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    .line 130
    iget v0, v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->itemPosition:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/gridviews/GridViewsFragment;->getFirstJulianDay(I)I

    move-result v0

    move v3, v0

    move v4, v2

    :goto_1
    iget v0, p0, Lcom/android/calendar/timely/gridviews/GridViewsFragment;->mNumDays:I

    if-ge v4, v0, :cond_0

    .line 133
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/GridDayView;

    .line 134
    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/GridDayView;->updateCreateNewEventView()V

    .line 131
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 124
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 137
    :cond_1
    return-void
.end method
