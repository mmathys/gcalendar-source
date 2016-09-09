.class Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FindTimeGridDayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FindTimeGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener;->this$0:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener;->this$0:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    # getter for: Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mIsSuggestionView:Z
    invoke-static {v0}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->access$000(Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    const/16 v5, 0x1e

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 176
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener;->this$0:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    # getter for: Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mIsSuggestionView:Z
    invoke-static {v0}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->access$000(Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    :goto_0
    return v7

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener;->this$0:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->getHourFromPosition(I)I

    move-result v4

    .line 180
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener;->this$0:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    # invokes: Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->getMinuteFromPosition(I)I
    invoke-static {v0, v1}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->access$100(Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;I)I

    move-result v0

    .line 181
    mul-int/lit8 v1, v4, 0x3c

    add-int v9, v1, v0

    .line 182
    if-ge v0, v5, :cond_1

    move v5, v7

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener;->this$0:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    # getter for: Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->access$500(Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeUtil;->getInstance(Landroid/content/Context;)Lcom/android/calendar/timely/FindTimeUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener;->this$0:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    .line 185
    # getter for: Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mAccountType:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->access$200(Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener;->this$0:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    # getter for: Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;
    invoke-static {v2}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->access$300(Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;)Lcom/android/calendar/timely/TimelineSuggestion;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener;->this$0:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    iget v3, v3, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mJulianDay:I

    iget-object v6, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener;->this$0:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    .line 186
    # getter for: Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mTimezone:Ljava/util/TimeZone;
    invoke-static {v6}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->access$400(Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;)Ljava/util/TimeZone;

    move-result-object v6

    .line 185
    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/timely/FindTimeUtil;->createCustomSuggestion(Ljava/lang/String;Lcom/android/calendar/timely/TimelineSuggestion;IIILjava/util/TimeZone;)Lcom/android/calendar/timely/TimelineSuggestion;

    move-result-object v2

    .line 187
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener;->this$0:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    # getter for: Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;
    invoke-static {v0}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->access$300(Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;)Lcom/android/calendar/timely/TimelineSuggestion;

    move-result-object v0

    iget v0, v0, Lcom/android/calendar/timely/TimelineSuggestion;->startTime:I

    if-ge v9, v0, :cond_4

    move v0, v8

    .line 188
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener;->this$0:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    # getter for: Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;
    invoke-static {v1}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->access$300(Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;)Lcom/android/calendar/timely/TimelineSuggestion;

    move-result-object v1

    iget v1, v1, Lcom/android/calendar/timely/TimelineSuggestion;->endDay:I

    iget-object v3, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener;->this$0:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    iget v3, v3, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mJulianDay:I

    if-ne v1, v3, :cond_6

    .line 189
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener;->this$0:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    # getter for: Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->mSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;
    invoke-static {v1}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->access$300(Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;)Lcom/android/calendar/timely/TimelineSuggestion;

    move-result-object v1

    iget v1, v1, Lcom/android/calendar/timely/TimelineSuggestion;->endTime:I

    if-gt v1, v9, :cond_5

    move v1, v8

    .line 192
    :goto_2
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener;->this$0:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    invoke-virtual {v0, v7}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->playSoundEffect(I)V

    .line 194
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener;->this$0:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener$1;

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener$1;-><init>(Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$FindTimeGestureListener;Lcom/android/calendar/timely/TimelineSuggestion;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    move v7, v8

    .line 203
    goto/16 :goto_0

    :cond_4
    move v0, v7

    .line 187
    goto :goto_1

    :cond_5
    move v1, v7

    .line 189
    goto :goto_2

    :cond_6
    move v1, v7

    .line 190
    goto :goto_2
.end method
