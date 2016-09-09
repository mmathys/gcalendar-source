.class Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener$1;
.super Ljava/lang/Object;
.source "FindTimeGridDayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener;

.field final synthetic val$customSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener;Lcom/android/calendar/timely/TimelineSuggestion;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener$1;->this$1:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener;

    iput-object p2, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener$1;->val$customSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener$1;->this$1:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener;

    iget-object v0, v0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener;->this$0:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener$1;->val$customSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    iget-object v2, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener$1;->this$1:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener;

    iget-object v2, v2, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener;->this$0:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    iget v2, v2, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mJulianDay:I

    iget-object v3, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener$1;->this$1:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener;

    iget-object v3, v3, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener;->this$0:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    # getter for: Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mTimezone:Ljava/util/TimeZone;
    invoke-static {v3}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->access$400(Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->onUpdate(Lcom/android/calendar/timely/TimelineSuggestion;ILjava/util/TimeZone;)V

    .line 198
    invoke-static {}, Lcom/android/calendar/timely/CustomUserSuggestionListenerHolder;->getInstance()Lcom/android/calendar/timely/CustomUserSuggestionListenerHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener$1;->val$customSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    .line 199
    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/CustomUserSuggestionListenerHolder;->setCreateCustomSuggestion(Lcom/android/calendar/timely/TimelineSuggestion;)V

    .line 200
    return-void
.end method
