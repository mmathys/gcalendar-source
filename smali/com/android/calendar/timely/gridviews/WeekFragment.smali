.class public Lcom/android/calendar/timely/gridviews/WeekFragment;
.super Lcom/android/calendar/timely/gridviews/GridViewsFragment;
.source "WeekFragment.java"

# interfaces
.implements Lcom/android/calendar/CalendarController$Command$Handler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/gridviews/WeekFragment$WeekViewPageAdapter;,
        Lcom/android/calendar/timely/gridviews/WeekFragment$MenuListAdapter;
    }
.end annotation


# instance fields
.field private mHoursContainer:Landroid/view/ViewGroup;

.field private mOverflowAdapter:Lcom/android/calendar/timely/gridviews/WeekFragment$MenuListAdapter;

.field private mOverflowButton:Landroid/view/View;

.field private mOverflowCircleBackground:Landroid/graphics/drawable/Drawable;

.field private mOverflowEmptyBackground:Landroid/graphics/drawable/Drawable;

.field private mShowingBackground:Z

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerAdapter:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/gridviews/GridViewsFragment;-><init>(I)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/gridviews/WeekFragment;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/calendar/timely/gridviews/WeekFragment;->createOverflowAdapterIfNeeded()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/gridviews/WeekFragment;)Lcom/android/calendar/timely/gridviews/WeekFragment$MenuListAdapter;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mOverflowAdapter:Lcom/android/calendar/timely/gridviews/WeekFragment$MenuListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/timely/gridviews/WeekFragment;)Lcom/android/calendar/timely/ChipRecycler;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    return-object v0
.end method

.method private createOverflowAdapterIfNeeded()V
    .locals 6

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mOverflowAdapter:Lcom/android/calendar/timely/gridviews/WeekFragment$MenuListAdapter;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/android/calendar/timely/gridviews/WeekFragment$MenuListAdapter;

    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/WeekFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$menu;->all_in_one_title_bar:I

    iget-object v4, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mOverflowButton:Landroid/view/View;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/timely/gridviews/WeekFragment$MenuListAdapter;-><init>(Lcom/android/calendar/timely/gridviews/WeekFragment;Landroid/app/Activity;ILandroid/view/View;Lcom/android/calendar/timely/gridviews/WeekFragment$1;)V

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mOverflowAdapter:Lcom/android/calendar/timely/gridviews/WeekFragment$MenuListAdapter;

    .line 147
    :cond_0
    return-void
.end method


# virtual methods
.method protected getFirstJulianDay(I)I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mViewPagerAdapter:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->getFirstJulianDayOfItem(I)I

    move-result v0

    return v0
.end method

.method protected getItemPositionFromTime(Lcom/android/calendar/time/Time;Landroid/app/Activity;)I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    invoke-static {v0, p2}, Lcom/android/calendar/Utils;->getWeekNumberFromTime(Lcom/android/calendar/time/Time;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method protected getPrimesLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "WeekView"

    return-object v0
.end method

.method protected getViewPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method protected bridge synthetic getViewPagerAdapter()Lcom/android/calendar/timely/ViewPagerFragment$ViewPagerAdapter;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/WeekFragment;->getViewPagerAdapter()Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getViewPagerAdapter()Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mViewPagerAdapter:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;

    return-object v0
.end method

.method public hasMinimonth()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mIsPortrait:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mIsTabletConfig:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDatePickerVisibilityChanged(Z)V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/android/calendar/timely/gridviews/GridViewsFragment;->onDatePickerVisibilityChanged(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/WeekFragment;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/gridviews/WeekFragment;->updateTitle(I)V

    .line 127
    return-void
.end method

.method public onInitView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 72
    new-instance v0, Lcom/android/calendar/timely/gridviews/WeekFragment$WeekViewPageAdapter;

    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/WeekFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/timely/gridviews/WeekFragment$WeekViewPageAdapter;-><init>(Lcom/android/calendar/timely/gridviews/WeekFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mViewPagerAdapter:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;

    .line 75
    sget v0, Lcom/android/calendar/R$id;->sticky_hours_container:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mHoursContainer:Landroid/view/ViewGroup;

    .line 76
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mHoursContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mViewPagerAdapter:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mHoursContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->setStickyColumn(Landroid/view/ViewGroup;)V

    .line 80
    :cond_0
    sget v0, Lcom/android/calendar/R$id;->view_pager:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 81
    invoke-super {p0, p1, p2}, Lcom/android/calendar/timely/gridviews/GridViewsFragment;->onInitView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 83
    sget v0, Lcom/android/calendar/R$id;->overflow:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mOverflowButton:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mOverflowButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/WeekFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$drawable;->circle_bg_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mOverflowButton:Landroid/view/View;

    new-instance v2, Lcom/android/calendar/timely/gridviews/WeekFragment$1;

    invoke-direct {v2, p0}, Lcom/android/calendar/timely/gridviews/WeekFragment$1;-><init>(Lcom/android/calendar/timely/gridviews/WeekFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mOverflowEmptyBackground:Landroid/graphics/drawable/Drawable;

    .line 118
    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mOverflowCircleBackground:Landroid/graphics/drawable/Drawable;

    .line 120
    :cond_1
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/android/calendar/timely/gridviews/GridViewsFragment;->onPageScrollStateChanged(I)V

    .line 153
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mOverflowButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 154
    packed-switch p1, :pswitch_data_0

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 157
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mShowingBackground:Z

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mOverflowButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mOverflowCircleBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mShowingBackground:Z

    goto :goto_0

    .line 163
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mShowingBackground:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mOverflowButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mOverflowEmptyBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mShowingBackground:Z

    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setViewTranslationY(F)V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0, p1}, Lcom/android/calendar/timely/gridviews/GridViewsFragment;->setViewTranslationY(F)V

    .line 185
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mHoursContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mHoursContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 188
    :cond_0
    return-void
.end method

.method public updateTitle(I)V
    .locals 4

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mMinimonthToggledOpen:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    iget-wide v2, v2, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v0

    .line 205
    invoke-virtual {p0, v0, v0}, Lcom/android/calendar/timely/gridviews/WeekFragment;->updateTitle(II)V

    .line 210
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mViewPagerAdapter:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->getFirstJulianDayOfItem(I)I

    move-result v0

    .line 208
    add-int/lit8 v1, v0, 0x7

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/timely/gridviews/WeekFragment;->updateTitle(II)V

    goto :goto_0
.end method

.method public updateTitle(II)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 213
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/WeekFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 215
    new-instance v2, Lcom/android/calendar/time/Time;

    invoke-direct {v2, v0}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v2, p1}, Lcom/android/calendar/time/Time;->setJulianDaySafe(I)V

    .line 217
    invoke-virtual {v2, v1}, Lcom/android/calendar/time/Time;->normalize(Z)J

    .line 219
    new-instance v3, Lcom/android/calendar/time/Time;

    invoke-direct {v3, v0}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 221
    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mMinimonthToggledOpen:Z

    if-eqz v0, :cond_0

    move-object v3, v2

    .line 236
    :goto_0
    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mIsTabletConfig:Z

    if-eqz v0, :cond_1

    .line 237
    const-wide/16 v6, 0x34

    .line 245
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mController:Lcom/android/calendar/CalendarController;

    iget-boolean v1, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mMinimonthToggledOpen:Z

    if-eqz v1, :cond_3

    .line 246
    iget-object v4, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    :goto_2
    iget-boolean v5, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mIsTabletConfig:Z

    move-object v1, p0

    .line 245
    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/CalendarController;->updateVisibleRange(Ljava/lang/Object;Lcom/android/calendar/time/Time;Lcom/android/calendar/time/Time;Lcom/android/calendar/time/Time;ZJ)V

    .line 262
    return-void

    .line 224
    :cond_0
    invoke-virtual {v3, p2}, Lcom/android/calendar/time/Time;->setJulianDay(I)J

    .line 227
    const/4 v0, 0x1

    iput v0, v3, Lcom/android/calendar/time/Time;->hour:I

    .line 228
    invoke-virtual {v3, v1}, Lcom/android/calendar/time/Time;->normalize(Z)J

    goto :goto_0

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    iget v0, v0, Lcom/android/calendar/time/Time;->year:I

    iget v1, p0, Lcom/android/calendar/timely/gridviews/WeekFragment;->mTodayYear:I

    if-eq v0, v1, :cond_2

    .line 239
    const-wide/32 v6, 0x10034

    goto :goto_1

    .line 241
    :cond_2
    const-wide/16 v6, 0x30

    goto :goto_1

    .line 246
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method
