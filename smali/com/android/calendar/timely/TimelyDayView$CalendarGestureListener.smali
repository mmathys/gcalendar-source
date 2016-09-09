.class Lcom/android/calendar/timely/TimelyDayView$CalendarGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TimelyDayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/TimelyDayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CalendarGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/TimelyDayView;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/TimelyDayView;)V
    .locals 0

    .prologue
    .line 587
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyDayView$CalendarGestureListener;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 590
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 591
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView$CalendarGestureListener;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    # getter for: Lcom/android/calendar/timely/TimelyDayView;->mStartOfGrid:I
    invoke-static {v1}, Lcom/android/calendar/timely/TimelyDayView;->access$100(Lcom/android/calendar/timely/TimelyDayView;)I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView$CalendarGestureListener;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    # getter for: Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;
    invoke-static {v1}, Lcom/android/calendar/timely/TimelyDayView;->access$200(Lcom/android/calendar/timely/TimelyDayView;)Lcom/android/calendar/timely/TimelineInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineInfo;->inGridMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 592
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView$CalendarGestureListener;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    # getter for: Lcom/android/calendar/timely/TimelyDayView;->mStartOfGrid:I
    invoke-static {v1}, Lcom/android/calendar/timely/TimelyDayView;->access$100(Lcom/android/calendar/timely/TimelyDayView;)I

    move-result v1

    sub-int v1, v0, v1

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyDayView$CalendarGestureListener;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    # invokes: Lcom/android/calendar/timely/TimelyDayView;->getGridHourHeight()I
    invoke-static {v2}, Lcom/android/calendar/timely/TimelyDayView;->access$300(Lcom/android/calendar/timely/TimelyDayView;)I

    move-result v2

    div-int/2addr v1, v2

    .line 593
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyDayView$CalendarGestureListener;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    invoke-virtual {v2, v1}, Lcom/android/calendar/timely/TimelyDayView;->getSelectedTimeInMillis(I)J

    move-result-wide v2

    .line 594
    iget-object v4, p0, Lcom/android/calendar/timely/TimelyDayView$CalendarGestureListener;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    invoke-virtual {v4}, Lcom/android/calendar/timely/TimelyDayView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/calendar/timely/TimelyDayView$CalendarGestureListener;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    # getter for: Lcom/android/calendar/timely/TimelyDayView;->mJulianDay:I
    invoke-static {v5}, Lcom/android/calendar/timely/TimelyDayView;->access$400(Lcom/android/calendar/timely/TimelyDayView;)I

    move-result v5

    invoke-static {v4, v5, v1}, Lcom/android/calendar/timely/CreateNewEventView;->setSelectedTime(Landroid/content/Context;II)V

    .line 595
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView$CalendarGestureListener;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    # getter for: Lcom/android/calendar/timely/TimelyDayView;->mCreateNewEventView:Lcom/android/calendar/timely/CreateNewEventView;
    invoke-static {v1}, Lcom/android/calendar/timely/TimelyDayView;->access$500(Lcom/android/calendar/timely/TimelyDayView;)Lcom/android/calendar/timely/CreateNewEventView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 596
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView$CalendarGestureListener;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    # getter for: Lcom/android/calendar/timely/TimelyDayView;->mCreateNewEventView:Lcom/android/calendar/timely/CreateNewEventView;
    invoke-static {v1}, Lcom/android/calendar/timely/TimelyDayView;->access$500(Lcom/android/calendar/timely/TimelyDayView;)Lcom/android/calendar/timely/CreateNewEventView;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/android/calendar/timely/CreateNewEventView;->setStartTime(J)V

    .line 597
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView$CalendarGestureListener;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    # invokes: Lcom/android/calendar/timely/TimelyDayView;->installCreateEventView()V
    invoke-static {v1}, Lcom/android/calendar/timely/TimelyDayView;->access$600(Lcom/android/calendar/timely/TimelyDayView;)V

    .line 600
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView$CalendarGestureListener;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    # invokes: Lcom/android/calendar/timely/TimelyDayView;->getMonthHeaderSize()I
    invoke-static {v1}, Lcom/android/calendar/timely/TimelyDayView;->access$700(Lcom/android/calendar/timely/TimelyDayView;)I

    move-result v1

    .line 601
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyDayView$CalendarGestureListener;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    # getter for: Lcom/android/calendar/timely/TimelyDayView;->mWeekHeaderHeight:I
    invoke-static {v2}, Lcom/android/calendar/timely/TimelyDayView;->access$800(Lcom/android/calendar/timely/TimelyDayView;)I

    move-result v2

    add-int/2addr v2, v1

    .line 602
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyDayView$CalendarGestureListener;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    # getter for: Lcom/android/calendar/timely/TimelyDayView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;
    invoke-static {v3}, Lcom/android/calendar/timely/TimelyDayView;->access$200(Lcom/android/calendar/timely/TimelyDayView;)Lcom/android/calendar/timely/TimelineInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/calendar/timely/TimelineInfo;->inListView()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyDayView$CalendarGestureListener;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    # invokes: Lcom/android/calendar/timely/TimelyDayView;->shouldDrawWeekHeader()Z
    invoke-static {v3}, Lcom/android/calendar/timely/TimelyDayView;->access$900(Lcom/android/calendar/timely/TimelyDayView;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-le v0, v1, :cond_1

    if-ge v0, v2, :cond_1

    .line 603
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView$CalendarGestureListener;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    iget-object v0, v0, Lcom/android/calendar/timely/TimelyDayView;->mDelayedUpdateHelper:Lcom/android/calendar/timely/DelayedUpdateHelper;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView$CalendarGestureListener;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/DelayedUpdateHelper;->onWeekDividerTap(Lcom/android/calendar/timely/TimelyDayView;)V

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView$CalendarGestureListener;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayView;->requestLayout()V

    .line 606
    const/4 v0, 0x1

    return v0
.end method
