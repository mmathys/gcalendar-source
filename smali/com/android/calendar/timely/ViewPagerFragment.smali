.class public abstract Lcom/android/calendar/timely/ViewPagerFragment;
.super Lcom/android/calendar/timely/CalendarFragment;
.source "ViewPagerFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/android/calendar/timely/DataFactory$OnAllEventsDataReadyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/ViewPagerFragment$ViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mSourceOfPageChange:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/android/calendar/timely/ViewPagerFragment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/ViewPagerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/android/calendar/R$layout;->view_pager_fragment:I

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/CalendarFragment;-><init>(I)V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/timely/ViewPagerFragment;->mSourceOfPageChange:I

    .line 55
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/CalendarFragment;-><init>(I)V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/timely/ViewPagerFragment;->mSourceOfPageChange:I

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/ViewPagerFragment;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/android/calendar/timely/ViewPagerFragment;->mSourceOfPageChange:I

    return v0
.end method


# virtual methods
.method protected eventsChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 102
    iget-object v0, p0, Lcom/android/calendar/timely/ViewPagerFragment;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/calendar/timely/ViewPagerFragment;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {p0}, Lcom/android/calendar/timely/ViewPagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/DataFactory;->setHideDeclinedEvents(Landroid/content/Context;)V

    .line 104
    iget-object v0, p0, Lcom/android/calendar/timely/ViewPagerFragment;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {v0}, Lcom/android/calendar/timely/DataFactory;->updateToday()V

    .line 105
    iget-object v0, p0, Lcom/android/calendar/timely/ViewPagerFragment;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {p0}, Lcom/android/calendar/timely/ViewPagerFragment;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/ViewPagerFragment;->getFirstJulianDay(I)I

    move-result v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/calendar/timely/DataFactory;->refreshDataAroundDay(IZZ)V

    .line 108
    :cond_0
    return-void
.end method

.method protected abstract getFirstJulianDay(I)I
.end method

.method protected abstract getItemPositionFromTime(Lcom/android/calendar/time/Time;Landroid/app/Activity;)I
.end method

.method protected getTimeFromItemPosition(I)J
    .locals 3

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/ViewPagerFragment;->getFirstJulianDay(I)I

    move-result v0

    .line 173
    new-instance v1, Lcom/android/calendar/time/Time;

    invoke-virtual {p0}, Lcom/android/calendar/timely/ViewPagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1, v0}, Lcom/android/calendar/time/Time;->setJulianDaySafe(I)V

    .line 175
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract getViewPager()Landroid/support/v4/view/ViewPager;
.end method

.method protected abstract getViewPagerAdapter()Lcom/android/calendar/timely/ViewPagerFragment$ViewPagerAdapter;
.end method

.method protected goTo(Lcom/android/calendar/time/Time;ZZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/android/calendar/timely/ViewPagerFragment;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 79
    sget-object v0, Lcom/android/calendar/timely/ViewPagerFragment;->TAG:Ljava/lang/String;

    const-string v1, "Tried to goto a time but ViewPager hadn\'t been created yet!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 98
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/timely/CalendarFragment;->goTo(Lcom/android/calendar/time/Time;ZZ)V

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/timely/ViewPagerFragment;->mSourceOfPageChange:I

    .line 85
    invoke-virtual {p0}, Lcom/android/calendar/timely/ViewPagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/timely/ViewPagerFragment;->getItemPositionFromTime(Lcom/android/calendar/time/Time;Landroid/app/Activity;)I

    move-result v0

    .line 89
    invoke-virtual {p0}, Lcom/android/calendar/timely/ViewPagerFragment;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/ViewPagerFragment;->updateTitle(I)V

    .line 94
    :goto_1
    invoke-virtual {p0}, Lcom/android/calendar/timely/ViewPagerFragment;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/timely/ViewPagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/calendar/timely/ViewPagerFragment;->getItemPositionFromTime(Lcom/android/calendar/time/Time;Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 95
    invoke-virtual {p1, v4}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v0

    .line 96
    iget-object v1, p0, Lcom/android/calendar/timely/ViewPagerFragment;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {v1, v4, v0}, Lcom/android/calendar/timely/DataFactory;->setTimePassage(II)V

    .line 97
    iget-object v1, p0, Lcom/android/calendar/timely/ViewPagerFragment;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {v1, v0, v4, v4}, Lcom/android/calendar/timely/DataFactory;->refreshDataAroundDay(IZZ)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/timely/ViewPagerFragment;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_1
.end method

.method public onAllEventsDataReady()V
    .locals 3

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/calendar/timely/ViewPagerFragment;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v1

    .line 200
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 201
    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/calendar/timely/ViewPagerFragment;->updatePage(Landroid/view/View;)V

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_0
    return-void
.end method

.method public onCalendarPropertyChanged(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0, p1, p2}, Lcom/android/calendar/timely/CalendarFragment;->onCalendarPropertyChanged(ILjava/lang/Object;)V

    .line 182
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/ViewPagerFragment;->getViewPagerAdapter()Lcom/android/calendar/timely/ViewPagerFragment$ViewPagerAdapter;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0}, Lcom/android/calendar/timely/ViewPagerFragment$ViewPagerAdapter;->updateVisibleViews()V

    .line 190
    :cond_1
    return-void
.end method

.method public onInitView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/android/calendar/timely/CalendarFragment;->onInitView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/calendar/timely/ViewPagerFragment;->getViewPagerAdapter()Lcom/android/calendar/timely/ViewPagerFragment$ViewPagerAdapter;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/android/calendar/timely/ViewPagerFragment;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {v1, p0}, Lcom/android/calendar/timely/DataFactory;->registerOnAllEventsDataReadyListener(Lcom/android/calendar/timely/DataFactory$OnAllEventsDataReadyListener;)V

    .line 64
    iget-object v1, p0, Lcom/android/calendar/timely/ViewPagerFragment;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/ViewPagerFragment$ViewPagerAdapter;->setDataFactory(Lcom/android/calendar/timely/DataFactory;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/calendar/timely/ViewPagerFragment;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v1

    .line 67
    invoke-virtual {p0}, Lcom/android/calendar/timely/ViewPagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$dimen;->views_margin_between_pages:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 69
    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 70
    iget-object v0, p0, Lcom/android/calendar/timely/ViewPagerFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    invoke-virtual {p0}, Lcom/android/calendar/timely/ViewPagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/calendar/timely/ViewPagerFragment;->getItemPositionFromTime(Lcom/android/calendar/time/Time;Landroid/app/Activity;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 72
    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 73
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/ViewPagerFragment;->updateTitle(I)V

    .line 74
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 247
    if-nez p1, :cond_0

    .line 249
    invoke-static {}, Lcom/android/calendar/timely/CreateNewEventView;->removeSelectedTime()V

    .line 252
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/calendar/timely/ViewPagerFragment;->mSourceOfPageChange:I

    .line 253
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 219
    iget v0, p0, Lcom/android/calendar/timely/ViewPagerFragment;->mSourceOfPageChange:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/calendar/timely/ViewPagerFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0, v4}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/calendar/timely/ViewPagerFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    iget-wide v2, v2, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v0

    .line 223
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/timely/ViewPagerFragment;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {v1, v0, v4, v4}, Lcom/android/calendar/timely/DataFactory;->refreshDataAroundDay(IZZ)V

    .line 225
    invoke-virtual {p0}, Lcom/android/calendar/timely/ViewPagerFragment;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/timely/ViewPagerFragment$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/calendar/timely/ViewPagerFragment$1;-><init>(Lcom/android/calendar/timely/ViewPagerFragment;II)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->post(Ljava/lang/Runnable;)Z

    .line 242
    return-void

    .line 221
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/ViewPagerFragment;->getFirstJulianDay(I)I

    move-result v0

    goto :goto_0
.end method

.method public setViewTranslationX(F)V
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/android/calendar/timely/ViewPagerFragment;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setTranslationX(F)V

    .line 166
    return-void
.end method

.method public setViewTranslationY(F)V
    .locals 1

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/android/calendar/timely/CalendarFragment;->setViewTranslationY(F)V

    .line 160
    invoke-virtual {p0}, Lcom/android/calendar/timely/ViewPagerFragment;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setTranslationY(F)V

    .line 161
    return-void
.end method

.method protected abstract updatePage(Landroid/view/View;)V
.end method

.method public abstract updateTitle(I)V
.end method

.method protected updateTopValues(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/android/calendar/timely/ViewPagerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 115
    invoke-virtual {p0}, Lcom/android/calendar/timely/ViewPagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$id;->view_pager_container:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 116
    if-eqz p1, :cond_2

    .line 117
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v0, :cond_0

    .line 119
    :goto_0
    if-eqz v0, :cond_1

    .line 121
    sget v0, Lcom/android/calendar/R$dimen;->action_bar_mini_month_divider_height:I

    .line 119
    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 123
    invoke-virtual {v3, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 129
    :goto_2
    invoke-virtual {p0}, Lcom/android/calendar/timely/ViewPagerFragment;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v3

    .line 130
    if-nez p1, :cond_3

    .line 133
    :goto_3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 134
    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 135
    return-void

    :cond_0
    move v0, v1

    .line 117
    goto :goto_0

    .line 122
    :cond_1
    sget v0, Lcom/android/calendar/R$dimen;->views_top_margin:I

    goto :goto_1

    .line 125
    :cond_2
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 132
    :cond_3
    sget v0, Lcom/android/calendar/R$dimen;->mini_month_timeline_divider_height:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    move v1, v0

    goto :goto_3
.end method
