.class Lcom/android/calendar/timely/TimelineRecyclerView$4$1;
.super Ljava/lang/Object;
.source "TimelineRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/TimelineRecyclerView$4;->postUpdate(Lcom/android/calendar/timely/MonthData;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/timely/TimelineRecyclerView$4;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/TimelineRecyclerView$4;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/calendar/timely/TimelineRecyclerView$4$1;->this$1:Lcom/android/calendar/timely/TimelineRecyclerView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView$4$1;->this$1:Lcom/android/calendar/timely/TimelineRecyclerView$4;

    iget-object v0, v0, Lcom/android/calendar/timely/TimelineRecyclerView$4;->this$0:Lcom/android/calendar/timely/TimelineRecyclerView;

    # invokes: Lcom/android/calendar/timely/TimelineRecyclerView;->onDataReady()V
    invoke-static {v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->access$300(Lcom/android/calendar/timely/TimelineRecyclerView;)V

    .line 266
    return-void
.end method
