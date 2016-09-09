.class Lcom/android/calendar/timely/gridviews/GridDayView$CalendarGestureListener$1;
.super Ljava/lang/Object;
.source "GridDayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/gridviews/GridDayView$CalendarGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/timely/gridviews/GridDayView$CalendarGestureListener;

.field final synthetic val$hour:I


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/gridviews/GridDayView$CalendarGestureListener;I)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/GridDayView$CalendarGestureListener$1;->this$1:Lcom/android/calendar/timely/gridviews/GridDayView$CalendarGestureListener;

    iput p2, p0, Lcom/android/calendar/timely/gridviews/GridDayView$CalendarGestureListener$1;->val$hour:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridDayView$CalendarGestureListener$1;->this$1:Lcom/android/calendar/timely/gridviews/GridDayView$CalendarGestureListener;

    iget-object v0, v0, Lcom/android/calendar/timely/gridviews/GridDayView$CalendarGestureListener;->this$0:Lcom/android/calendar/timely/gridviews/GridDayView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/GridDayView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridDayView$CalendarGestureListener$1;->this$1:Lcom/android/calendar/timely/gridviews/GridDayView$CalendarGestureListener;

    iget-object v1, v1, Lcom/android/calendar/timely/gridviews/GridDayView$CalendarGestureListener;->this$0:Lcom/android/calendar/timely/gridviews/GridDayView;

    iget v1, v1, Lcom/android/calendar/timely/gridviews/GridDayView;->mJulianDay:I

    iget v2, p0, Lcom/android/calendar/timely/gridviews/GridDayView$CalendarGestureListener$1;->val$hour:I

    invoke-static {v0, v1, v2}, Lcom/android/calendar/timely/CreateNewEventView;->setSelectedTime(Landroid/content/Context;II)V

    .line 331
    return-void
.end method
