.class Lcom/android/calendar/timely/AbstractTimelineGridFragment$3;
.super Ljava/lang/Object;
.source "AbstractTimelineGridFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/AbstractTimelineGridFragment;->onDatePickerVisibilityChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/AbstractTimelineGridFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/AbstractTimelineGridFragment;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment$3;->this$0:Lcom/android/calendar/timely/AbstractTimelineGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 284
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment$3;->this$0:Lcom/android/calendar/timely/AbstractTimelineGridFragment;

    invoke-virtual {v0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimeline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment$3;->this$0:Lcom/android/calendar/timely/AbstractTimelineGridFragment;

    # getter for: Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;
    invoke-static {v0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->access$000(Lcom/android/calendar/timely/AbstractTimelineGridFragment;)Lcom/android/calendar/timely/TimelineRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->invalidate()V

    .line 286
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment$3;->this$0:Lcom/android/calendar/timely/AbstractTimelineGridFragment;

    # getter for: Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;
    invoke-static {v0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->access$000(Lcom/android/calendar/timely/AbstractTimelineGridFragment;)Lcom/android/calendar/timely/TimelineRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelineRecyclerView;->setEnabled(Z)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment$3;->this$0:Lcom/android/calendar/timely/AbstractTimelineGridFragment;

    invoke-virtual {v0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimegrid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment$3;->this$0:Lcom/android/calendar/timely/AbstractTimelineGridFragment;

    # getter for: Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDayPager:Lcom/android/calendar/timely/TimelyDayViewPager;
    invoke-static {v0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->access$100(Lcom/android/calendar/timely/AbstractTimelineGridFragment;)Lcom/android/calendar/timely/TimelyDayViewPager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyDayViewPager;->setEnabled(Z)V

    .line 291
    :cond_1
    return-void
.end method
