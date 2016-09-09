.class Lcom/android/calendar/timely/TimelineRecyclerView$ClearSelectedHourListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TimelineRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/TimelineRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClearSelectedHourListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/TimelineRecyclerView;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/TimelineRecyclerView;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/calendar/timely/TimelineRecyclerView$ClearSelectedHourListener;->this$0:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .prologue
    .line 162
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x453b8000    # 3000.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView$ClearSelectedHourListener;->this$0:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/timely/TimelineRecyclerView$ClearSelectedHourListener$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/TimelineRecyclerView$ClearSelectedHourListener$1;-><init>(Lcom/android/calendar/timely/TimelineRecyclerView$ClearSelectedHourListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
