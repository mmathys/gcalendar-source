.class Lcom/android/calendar/timely/TimelineRecyclerView$2;
.super Ljava/lang/Object;
.source "TimelineRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/TimelineRecyclerView;->onSwipeGestureEnd(Lcom/android/calendar/timely/TimelyChip;)V
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
    .line 144
    iput-object p1, p0, Lcom/android/calendar/timely/TimelineRecyclerView$2;->this$0:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView$2;->this$0:Lcom/android/calendar/timely/TimelineRecyclerView;

    # invokes: Lcom/android/calendar/timely/TimelineRecyclerView;->updateIfIdleAndNeeded()V
    invoke-static {v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->access$200(Lcom/android/calendar/timely/TimelineRecyclerView;)V

    .line 148
    return-void
.end method
