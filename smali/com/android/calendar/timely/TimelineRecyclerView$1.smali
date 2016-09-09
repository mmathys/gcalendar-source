.class Lcom/android/calendar/timely/TimelineRecyclerView$1;
.super Ljava/lang/Object;
.source "TimelineRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/TimelineRecyclerView;
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
    .line 105
    iput-object p1, p0, Lcom/android/calendar/timely/TimelineRecyclerView$1;->this$0:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView$1;->this$0:Lcom/android/calendar/timely/TimelineRecyclerView;

    .line 109
    # getter for: Lcom/android/calendar/timely/TimelineRecyclerView;->mTimelineAdapter:Lcom/android/calendar/timely/TimelineAdapter;
    invoke-static {v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->access$100(Lcom/android/calendar/timely/TimelineRecyclerView;)Lcom/android/calendar/timely/TimelineAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/TimelineRecyclerView$1;->this$0:Lcom/android/calendar/timely/TimelineRecyclerView;

    # getter for: Lcom/android/calendar/timely/TimelineRecyclerView;->mCurrentItemPosition:I
    invoke-static {v1}, Lcom/android/calendar/timely/TimelineRecyclerView;->access$000(Lcom/android/calendar/timely/TimelineRecyclerView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelineAdapter;->getHeaderView(I)Lcom/android/calendar/timely/TimelineRecyclerView$HeaderViewDescriptor;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/calendar/timely/TimelineRecyclerView$1;->this$0:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineRecyclerView$HeaderViewDescriptor;->getAnnounceableDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 113
    :cond_0
    return-void
.end method
