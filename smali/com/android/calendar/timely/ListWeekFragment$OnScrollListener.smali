.class Lcom/android/calendar/timely/ListWeekFragment$OnScrollListener;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "ListWeekFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/ListWeekFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/ListWeekFragment;


# direct methods
.method private constructor <init>(Lcom/android/calendar/timely/ListWeekFragment;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/calendar/timely/ListWeekFragment$OnScrollListener;->this$0:Lcom/android/calendar/timely/ListWeekFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/timely/ListWeekFragment;Lcom/android/calendar/timely/ListWeekFragment$1;)V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/ListWeekFragment$OnScrollListener;-><init>(Lcom/android/calendar/timely/ListWeekFragment;)V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    .prologue
    .line 388
    if-nez p2, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment$OnScrollListener;->this$0:Lcom/android/calendar/timely/ListWeekFragment;

    # getter for: Lcom/android/calendar/timely/ListWeekFragment;->mRecyclerView:Lcom/android/calendar/timely/WeekRecyclerView;
    invoke-static {v0}, Lcom/android/calendar/timely/ListWeekFragment;->access$100(Lcom/android/calendar/timely/ListWeekFragment;)Lcom/android/calendar/timely/WeekRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/WeekRecyclerView;->correctXOffset()V

    .line 390
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment$OnScrollListener;->this$0:Lcom/android/calendar/timely/ListWeekFragment;

    invoke-virtual {v0}, Lcom/android/calendar/timely/ListWeekFragment;->updateAccessibility()V

    .line 392
    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 4

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment$OnScrollListener;->this$0:Lcom/android/calendar/timely/ListWeekFragment;

    # getter for: Lcom/android/calendar/timely/ListWeekFragment;->mRecyclerView:Lcom/android/calendar/timely/WeekRecyclerView;
    invoke-static {v0}, Lcom/android/calendar/timely/ListWeekFragment;->access$100(Lcom/android/calendar/timely/ListWeekFragment;)Lcom/android/calendar/timely/WeekRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/WeekRecyclerView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment$OnScrollListener;->this$0:Lcom/android/calendar/timely/ListWeekFragment;

    # invokes: Lcom/android/calendar/timely/ListWeekFragment;->getCurrentJulianDay()I
    invoke-static {v0}, Lcom/android/calendar/timely/ListWeekFragment;->access$200(Lcom/android/calendar/timely/ListWeekFragment;)I

    move-result v0

    .line 364
    iget-object v1, p0, Lcom/android/calendar/timely/ListWeekFragment$OnScrollListener;->this$0:Lcom/android/calendar/timely/ListWeekFragment;

    # getter for: Lcom/android/calendar/timely/ListWeekFragment;->mCurrentJulianDay:I
    invoke-static {v1}, Lcom/android/calendar/timely/ListWeekFragment;->access$300(Lcom/android/calendar/timely/ListWeekFragment;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/android/calendar/timely/ListWeekFragment$OnScrollListener;->this$0:Lcom/android/calendar/timely/ListWeekFragment;

    # setter for: Lcom/android/calendar/timely/ListWeekFragment;->mCurrentJulianDay:I
    invoke-static {v1, v0}, Lcom/android/calendar/timely/ListWeekFragment;->access$302(Lcom/android/calendar/timely/ListWeekFragment;I)I

    .line 369
    iget-object v1, p0, Lcom/android/calendar/timely/ListWeekFragment$OnScrollListener;->this$0:Lcom/android/calendar/timely/ListWeekFragment;

    iget-object v1, v1, Lcom/android/calendar/timely/ListWeekFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v1, v0}, Lcom/android/calendar/time/Time;->setJulianDaySafe(I)V

    .line 370
    iget-object v1, p0, Lcom/android/calendar/timely/ListWeekFragment$OnScrollListener;->this$0:Lcom/android/calendar/timely/ListWeekFragment;

    iget-object v1, v1, Lcom/android/calendar/timely/ListWeekFragment;->mController:Lcom/android/calendar/CalendarController;

    iget-object v2, p0, Lcom/android/calendar/timely/ListWeekFragment$OnScrollListener;->this$0:Lcom/android/calendar/timely/ListWeekFragment;

    iget-object v2, v2, Lcom/android/calendar/timely/ListWeekFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/calendar/CalendarController;->setTime(J)V

    .line 373
    iget-object v1, p0, Lcom/android/calendar/timely/ListWeekFragment$OnScrollListener;->this$0:Lcom/android/calendar/timely/ListWeekFragment;

    # getter for: Lcom/android/calendar/timely/ListWeekFragment;->mAllDayArrowView:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;
    invoke-static {v1}, Lcom/android/calendar/timely/ListWeekFragment;->access$400(Lcom/android/calendar/timely/ListWeekFragment;)Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->setJulianDay(I)V

    .line 375
    iget-object v1, p0, Lcom/android/calendar/timely/ListWeekFragment$OnScrollListener;->this$0:Lcom/android/calendar/timely/ListWeekFragment;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/ListWeekFragment;->updateMiniMonth(I)V

    .line 376
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment$OnScrollListener;->this$0:Lcom/android/calendar/timely/ListWeekFragment;

    # invokes: Lcom/android/calendar/timely/ListWeekFragment;->updateTitle()V
    invoke-static {v0}, Lcom/android/calendar/timely/ListWeekFragment;->access$500(Lcom/android/calendar/timely/ListWeekFragment;)V

    .line 380
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment$OnScrollListener;->this$0:Lcom/android/calendar/timely/ListWeekFragment;

    invoke-virtual {v0}, Lcom/android/calendar/timely/ListWeekFragment;->updateAccessibility()V

    goto :goto_0
.end method
