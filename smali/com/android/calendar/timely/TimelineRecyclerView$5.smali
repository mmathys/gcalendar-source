.class Lcom/android/calendar/timely/TimelineRecyclerView$5;
.super Ljava/lang/Object;
.source "TimelineRecyclerView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/TimelineRecyclerView;->setAgendaScrollOffsetToNow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/TimelineRecyclerView;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/TimelineRecyclerView;)V
    .locals 0

    .prologue
    .line 726
    iput-object p1, p0, Lcom/android/calendar/timely/TimelineRecyclerView$5;->this$0:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 729
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView$5;->this$0:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    .line 730
    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 747
    :goto_0
    return v0

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView$5;->this$0:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v0, v3}, Lcom/android/calendar/timely/TimelineRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 735
    instance-of v0, v1, Lcom/android/calendar/timely/TimelyDayView;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 736
    check-cast v0, Lcom/android/calendar/timely/TimelyDayView;

    .line 737
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayView;->isToday()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayView;->isWaitingForData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 738
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView$5;->this$0:Lcom/android/calendar/timely/TimelineRecyclerView;

    # getter for: Lcom/android/calendar/timely/TimelineRecyclerView;->mAgendaScrollOffsetNow:I
    invoke-static {v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->access$400(Lcom/android/calendar/timely/TimelineRecyclerView;)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    .line 742
    goto :goto_0

    .line 746
    :cond_1
    invoke-virtual {v4, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    move v0, v2

    .line 747
    goto :goto_0
.end method
