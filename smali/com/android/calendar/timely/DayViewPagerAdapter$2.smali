.class Lcom/android/calendar/timely/DayViewPagerAdapter$2;
.super Ljava/lang/Object;
.source "DayViewPagerAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/DayViewPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/DayViewPagerAdapter;

.field final synthetic val$view:Lcom/android/calendar/timely/PagedDayView;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/DayViewPagerAdapter;Lcom/android/calendar/timely/PagedDayView;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/calendar/timely/DayViewPagerAdapter$2;->this$0:Lcom/android/calendar/timely/DayViewPagerAdapter;

    iput-object p2, p0, Lcom/android/calendar/timely/DayViewPagerAdapter$2;->val$view:Lcom/android/calendar/timely/PagedDayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 259
    iget-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter$2;->val$view:Lcom/android/calendar/timely/PagedDayView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/PagedDayView;->getTimelyDayView()Lcom/android/calendar/timely/TimelyDayView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayView;->isMeasured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter$2;->val$view:Lcom/android/calendar/timely/PagedDayView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/PagedDayView;->getPagedScrollView()Lcom/android/calendar/timely/PagedScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/DayViewPagerAdapter$2;->val$view:Lcom/android/calendar/timely/PagedDayView;

    .line 261
    invoke-virtual {v1}, Lcom/android/calendar/timely/PagedDayView;->getTimelyDayView()Lcom/android/calendar/timely/TimelyDayView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyDayView;->getGridBottomPadding()I

    move-result v1

    .line 260
    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/PagedScrollView;->setBottomPadding(I)V

    .line 263
    iget-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter$2;->val$view:Lcom/android/calendar/timely/PagedDayView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/PagedDayView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 267
    iget-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter$2;->this$0:Lcom/android/calendar/timely/DayViewPagerAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/timely/DayViewPagerAdapter;->isNextScrollPositionSetManually()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter$2;->this$0:Lcom/android/calendar/timely/DayViewPagerAdapter;

    iget-object v1, p0, Lcom/android/calendar/timely/DayViewPagerAdapter$2;->val$view:Lcom/android/calendar/timely/PagedDayView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/DayViewPagerAdapter;->manuallySetScrollPosition(Lcom/android/calendar/timely/PagedDayView;)V

    .line 269
    iget-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter$2;->this$0:Lcom/android/calendar/timely/DayViewPagerAdapter;

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/DayViewPagerAdapter;->setNextScrollPositionManually(Z)V

    .line 279
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter$2;->val$view:Lcom/android/calendar/timely/PagedDayView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/PagedDayView;->getTimelyDayView()Lcom/android/calendar/timely/TimelyDayView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayView;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/timely/DayViewPagerAdapter$2;->this$0:Lcom/android/calendar/timely/DayViewPagerAdapter;

    .line 271
    invoke-virtual {v1}, Lcom/android/calendar/timely/DayViewPagerAdapter;->getManualScrollPosition()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 272
    iget-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter$2;->this$0:Lcom/android/calendar/timely/DayViewPagerAdapter;

    iget-object v1, p0, Lcom/android/calendar/timely/DayViewPagerAdapter$2;->val$view:Lcom/android/calendar/timely/PagedDayView;

    iget-object v2, p0, Lcom/android/calendar/timely/DayViewPagerAdapter$2;->this$0:Lcom/android/calendar/timely/DayViewPagerAdapter;

    invoke-virtual {v2}, Lcom/android/calendar/timely/DayViewPagerAdapter;->getManualScrollPositionTime()Lcom/android/calendar/time/Time;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/DayViewPagerAdapter;->manuallySetScrollPosition(Lcom/android/calendar/timely/PagedDayView;Lcom/android/calendar/time/Time;)V

    .line 273
    iget-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter$2;->this$0:Lcom/android/calendar/timely/DayViewPagerAdapter;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/calendar/timely/DayViewPagerAdapter$2;->this$0:Lcom/android/calendar/timely/DayViewPagerAdapter;

    invoke-virtual {v2}, Lcom/android/calendar/timely/DayViewPagerAdapter;->getManualScrollPositionTime()Lcom/android/calendar/time/Time;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/DayViewPagerAdapter;->rememberPositionToScrollTo(ILcom/android/calendar/time/Time;)V

    goto :goto_0

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter$2;->this$0:Lcom/android/calendar/timely/DayViewPagerAdapter;

    # getter for: Lcom/android/calendar/timely/DayViewPagerAdapter;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;
    invoke-static {v0}, Lcom/android/calendar/timely/DayViewPagerAdapter;->access$100(Lcom/android/calendar/timely/DayViewPagerAdapter;)Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/DayViewPagerAdapter$2;->val$view:Lcom/android/calendar/timely/PagedDayView;

    invoke-virtual {v1}, Lcom/android/calendar/timely/PagedDayView;->getPagedScrollView()Lcom/android/calendar/timely/PagedScrollView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->updateViewScrollPosition(Lcom/android/calendar/timely/PagedScrollView;Z)V

    goto :goto_0
.end method
