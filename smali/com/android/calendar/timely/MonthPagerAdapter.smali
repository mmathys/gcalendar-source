.class public Lcom/android/calendar/timely/MonthPagerAdapter;
.super Lcom/android/calendar/timely/ViewPagerFragment$ViewPagerAdapter;
.source "MonthPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/MonthPagerAdapter$MonthViewRecyclerManager;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

.field private final mHandler:Landroid/os/Handler;

.field private final mItemsAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/timely/CalendarMonthView;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemsToAdd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/timely/CalendarMonthView;",
            ">;"
        }
    .end annotation
.end field

.field private final mMonthRecycler:Lcom/android/calendar/timely/Recycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/timely/Recycler",
            "<",
            "Lcom/android/calendar/timely/CalendarMonthView;",
            ">;"
        }
    .end annotation
.end field

.field private mOnDayClickListener:Lcom/android/datetimepicker/date/MonthView$OnDayClickListener;

.field private mPrimaryMonthView:Lcom/android/calendar/timely/CalendarMonthView;

.field private final mRequestAccessibilityFocus:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/calendar/timely/ChipRecycler;)V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/calendar/timely/ViewPagerFragment$ViewPagerAdapter;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/calendar/timely/MonthPagerAdapter;->mHandler:Landroid/os/Handler;

    .line 27
    new-instance v0, Lcom/android/calendar/timely/MonthPagerAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/MonthPagerAdapter$1;-><init>(Lcom/android/calendar/timely/MonthPagerAdapter;)V

    iput-object v0, p0, Lcom/android/calendar/timely/MonthPagerAdapter;->mRequestAccessibilityFocus:Ljava/lang/Runnable;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/MonthPagerAdapter;->mItemsToAdd:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/MonthPagerAdapter;->mItemsAdded:Ljava/util/ArrayList;

    .line 43
    iput-object p1, p0, Lcom/android/calendar/timely/MonthPagerAdapter;->mActivity:Landroid/app/Activity;

    .line 44
    iput-object p2, p0, Lcom/android/calendar/timely/MonthPagerAdapter;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    .line 45
    new-instance v0, Lcom/android/calendar/timely/Recycler;

    new-instance v1, Lcom/android/calendar/timely/MonthPagerAdapter$MonthViewRecyclerManager;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/timely/MonthPagerAdapter$MonthViewRecyclerManager;-><init>(Lcom/android/calendar/timely/MonthPagerAdapter;Lcom/android/calendar/timely/MonthPagerAdapter$1;)V

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/timely/Recycler;-><init>(Lcom/android/calendar/timely/Recycler$RecyclerManager;I)V

    iput-object v0, p0, Lcom/android/calendar/timely/MonthPagerAdapter;->mMonthRecycler:Lcom/android/calendar/timely/Recycler;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/MonthPagerAdapter;)Lcom/android/calendar/timely/CalendarMonthView;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/calendar/timely/MonthPagerAdapter;->mPrimaryMonthView:Lcom/android/calendar/timely/CalendarMonthView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/timely/MonthPagerAdapter;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/calendar/timely/MonthPagerAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private init(Lcom/android/calendar/timely/CalendarMonthView;)V
    .locals 1

    .prologue
    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/android/calendar/timely/CalendarMonthView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 97
    invoke-static {v0}, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->getDayFromPosition(I)Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/calendar/timely/CalendarMonthView;->initMonth(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)V

    .line 99
    invoke-virtual {p1}, Lcom/android/calendar/timely/CalendarMonthView;->updateView()V

    .line 100
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/calendar/timely/MonthPagerAdapter;->mItemsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/android/calendar/timely/MonthPagerAdapter;->mItemsAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/android/calendar/timely/MonthPagerAdapter;->mPrimaryMonthView:Lcom/android/calendar/timely/CalendarMonthView;

    if-ne p3, v0, :cond_0

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/timely/MonthPagerAdapter;->mPrimaryMonthView:Lcom/android/calendar/timely/CalendarMonthView;

    .line 73
    :cond_0
    check-cast p3, Lcom/android/calendar/timely/CalendarMonthView;

    .line 74
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 75
    iget-object v0, p0, Lcom/android/calendar/timely/MonthPagerAdapter;->mMonthRecycler:Lcom/android/calendar/timely/Recycler;

    invoke-virtual {v0, p3}, Lcom/android/calendar/timely/Recycler;->recycle(Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 80
    const-string v0, "MonthPagerAdapter-finishUpdate"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/android/calendar/timely/MonthPagerAdapter;->mItemsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/CalendarMonthView;

    .line 82
    iget-object v2, p0, Lcom/android/calendar/timely/MonthPagerAdapter;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/CalendarMonthView;->setDataFactory(Lcom/android/calendar/timely/DataFactory;)V

    .line 83
    iget-object v2, p0, Lcom/android/calendar/timely/MonthPagerAdapter;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/CalendarMonthView;->setChipRecycler(Lcom/android/calendar/timely/ChipRecycler;)V

    .line 85
    iget-object v2, p0, Lcom/android/calendar/timely/MonthPagerAdapter;->mOnDayClickListener:Lcom/android/datetimepicker/date/MonthView$OnDayClickListener;

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/android/calendar/timely/MonthPagerAdapter;->mOnDayClickListener:Lcom/android/datetimepicker/date/MonthView$OnDayClickListener;

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/CalendarMonthView;->setOnDayClickListener(Lcom/android/datetimepicker/date/MonthView$OnDayClickListener;)V

    .line 89
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/MonthPagerAdapter;->init(Lcom/android/calendar/timely/CalendarMonthView;)V

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 93
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 94
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 111
    const/16 v0, 0x324

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 55
    const-string v0, "MonthPagerAdapter-instantiateItem"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/android/calendar/timely/MonthPagerAdapter;->mMonthRecycler:Lcom/android/calendar/timely/Recycler;

    invoke-virtual {v0}, Lcom/android/calendar/timely/Recycler;->getOrCreateObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/CalendarMonthView;

    .line 57
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/CalendarMonthView;->setTag(Ljava/lang/Object;)V

    .line 59
    iget-object v1, p0, Lcom/android/calendar/timely/MonthPagerAdapter;->mItemsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v1, p0, Lcom/android/calendar/timely/MonthPagerAdapter;->mItemsAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 62
    return-object v0
.end method

.method public scheduleRequestInitialAccessibilityFocus()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/calendar/timely/MonthPagerAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/timely/MonthPagerAdapter;->mRequestAccessibilityFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    return-void
.end method

.method public setOnDayClickListener(Lcom/android/datetimepicker/date/MonthView$OnDayClickListener;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/calendar/timely/MonthPagerAdapter;->mOnDayClickListener:Lcom/android/datetimepicker/date/MonthView$OnDayClickListener;

    .line 116
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 124
    check-cast p3, Lcom/android/calendar/timely/CalendarMonthView;

    iput-object p3, p0, Lcom/android/calendar/timely/MonthPagerAdapter;->mPrimaryMonthView:Lcom/android/calendar/timely/CalendarMonthView;

    .line 125
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/calendar/timely/MonthPagerAdapter;->mItemsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 51
    return-void
.end method

.method public updateVisibleViews()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/calendar/timely/MonthPagerAdapter;->mItemsAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/CalendarMonthView;

    .line 105
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/MonthPagerAdapter;->init(Lcom/android/calendar/timely/CalendarMonthView;)V

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method
