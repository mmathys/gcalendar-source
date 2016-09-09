.class Lcom/android/calendar/timely/TimelineRecyclerView$7;
.super Ljava/lang/Object;
.source "TimelineRecyclerView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/TimelineRecyclerView;->setSelectionFromTop(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/TimelineRecyclerView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/TimelineRecyclerView;I)V
    .locals 0

    .prologue
    .line 786
    iput-object p1, p0, Lcom/android/calendar/timely/TimelineRecyclerView$7;->this$0:Lcom/android/calendar/timely/TimelineRecyclerView;

    iput p2, p0, Lcom/android/calendar/timely/TimelineRecyclerView$7;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 789
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView$7;->this$0:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 790
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 796
    :goto_0
    return v2

    .line 793
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 795
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView$7;->this$0:Lcom/android/calendar/timely/TimelineRecyclerView;

    # getter for: Lcom/android/calendar/timely/TimelineRecyclerView;->mTimelinePositionChangedListener:Lcom/android/calendar/timely/TimelineRecyclerView$OnTimelinePositionChangedListener;
    invoke-static {v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->access$700(Lcom/android/calendar/timely/TimelineRecyclerView;)Lcom/android/calendar/timely/TimelineRecyclerView$OnTimelinePositionChangedListener;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/timely/TimelineRecyclerView$7;->val$position:I

    invoke-interface {v0, v1}, Lcom/android/calendar/timely/TimelineRecyclerView$OnTimelinePositionChangedListener;->onTimelinePositionChanged(I)V

    goto :goto_0
.end method
