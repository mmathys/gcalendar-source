.class Lcom/android/calendar/timely/TimelineRecyclerView$6;
.super Ljava/lang/Object;
.source "TimelineRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 755
    iput-object p1, p0, Lcom/android/calendar/timely/TimelineRecyclerView$6;->this$0:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView$6;->this$0:Lcom/android/calendar/timely/TimelineRecyclerView;

    # getter for: Lcom/android/calendar/timely/TimelineRecyclerView;->mRecycleTime:Lcom/android/calendar/time/Time;
    invoke-static {v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->access$500(Lcom/android/calendar/timely/TimelineRecyclerView;)Lcom/android/calendar/time/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/time/Time;->setToNow()V

    .line 759
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView$6;->this$0:Lcom/android/calendar/timely/TimelineRecyclerView;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelineRecyclerView$6;->this$0:Lcom/android/calendar/timely/TimelineRecyclerView;

    # getter for: Lcom/android/calendar/timely/TimelineRecyclerView;->mRecycleTime:Lcom/android/calendar/time/Time;
    invoke-static {v1}, Lcom/android/calendar/timely/TimelineRecyclerView;->access$500(Lcom/android/calendar/timely/TimelineRecyclerView;)Lcom/android/calendar/time/Time;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/TimelineRecyclerView;->goTo(Lcom/android/calendar/time/Time;Z)V

    .line 760
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView$6;->this$0:Lcom/android/calendar/timely/TimelineRecyclerView;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/timely/TimelineRecyclerView;->mIsPositioningToToday:Z
    invoke-static {v0, v1}, Lcom/android/calendar/timely/TimelineRecyclerView;->access$602(Lcom/android/calendar/timely/TimelineRecyclerView;Z)Z

    .line 761
    return-void
.end method
