.class Lcom/android/calendar/timely/gridviews/GridDayView$CalendarGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GridDayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/gridviews/GridDayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CalendarGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/gridviews/GridDayView;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/gridviews/GridDayView;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/GridDayView$CalendarGestureListener;->this$0:Lcom/android/calendar/timely/gridviews/GridDayView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridDayView$CalendarGestureListener;->this$0:Lcom/android/calendar/timely/gridviews/GridDayView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/gridviews/GridDayView;->getHourFromPosition(I)I

    move-result v1

    .line 326
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridDayView$CalendarGestureListener;->this$0:Lcom/android/calendar/timely/gridviews/GridDayView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/GridDayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/calendar/timely/gridviews/GridDayView$CalendarGestureListener$1;

    invoke-direct {v2, p0, v1}, Lcom/android/calendar/timely/gridviews/GridDayView$CalendarGestureListener$1;-><init>(Lcom/android/calendar/timely/gridviews/GridDayView$CalendarGestureListener;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 334
    const/4 v0, 0x1

    return v0
.end method
