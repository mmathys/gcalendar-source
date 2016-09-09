.class Lcom/android/calendar/timely/WeekRecyclerView$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WeekRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/WeekRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field private mActionDownOffset:I

.field private mCurrentOffset:I

.field private mReceivedOnTouchEvent:Z

.field final synthetic this$0:Lcom/android/calendar/timely/WeekRecyclerView;


# direct methods
.method private constructor <init>(Lcom/android/calendar/timely/WeekRecyclerView;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/calendar/timely/WeekRecyclerView$MyGestureListener;->this$0:Lcom/android/calendar/timely/WeekRecyclerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/timely/WeekRecyclerView;Lcom/android/calendar/timely/WeekRecyclerView$1;)V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/WeekRecyclerView$MyGestureListener;-><init>(Lcom/android/calendar/timely/WeekRecyclerView;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 286
    iget-boolean v0, p0, Lcom/android/calendar/timely/WeekRecyclerView$MyGestureListener;->mReceivedOnTouchEvent:Z

    if-eqz v0, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x44fa0000    # 2000.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v2

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/WeekRecyclerView$MyGestureListener;->this$0:Lcom/android/calendar/timely/WeekRecyclerView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/WeekRecyclerView;->getWidth()I

    move-result v1

    .line 294
    iget-object v0, p0, Lcom/android/calendar/timely/WeekRecyclerView$MyGestureListener;->this$0:Lcom/android/calendar/timely/WeekRecyclerView;

    iget v0, v0, Lcom/android/calendar/timely/WeekRecyclerView;->mNumVisibleDays:I

    const/4 v3, 0x7

    if-ne v0, v3, :cond_4

    .line 297
    cmpl-float v0, p3, v4

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/calendar/timely/WeekRecyclerView$MyGestureListener;->mCurrentOffset:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 298
    iget v0, p0, Lcom/android/calendar/timely/WeekRecyclerView$MyGestureListener;->mCurrentOffset:I

    sub-int/2addr v0, v1

    .line 310
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/timely/WeekRecyclerView$MyGestureListener;->this$0:Lcom/android/calendar/timely/WeekRecyclerView;

    iget v3, p0, Lcom/android/calendar/timely/WeekRecyclerView$MyGestureListener;->mCurrentOffset:I

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0, v2}, Lcom/android/calendar/timely/WeekRecyclerView;->smoothScrollBy(II)V

    .line 311
    const/4 v2, 0x1

    goto :goto_0

    .line 302
    :cond_2
    cmpg-float v0, p3, v4

    if-gez v0, :cond_3

    move v0, v1

    .line 303
    :goto_2
    iget v3, p0, Lcom/android/calendar/timely/WeekRecyclerView$MyGestureListener;->mCurrentOffset:I

    div-int/2addr v3, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 304
    goto :goto_1

    :cond_3
    move v0, v2

    .line 302
    goto :goto_2

    .line 307
    :cond_4
    cmpg-float v0, p3, v4

    if-gez v0, :cond_5

    .line 308
    :goto_3
    iget v0, p0, Lcom/android/calendar/timely/WeekRecyclerView$MyGestureListener;->mActionDownOffset:I

    add-int/2addr v0, v1

    goto :goto_1

    .line 307
    :cond_5
    neg-int v1, v1

    goto :goto_3
.end method

.method public receivedOnTouchEvent()V
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/WeekRecyclerView$MyGestureListener;->mReceivedOnTouchEvent:Z

    .line 325
    return-void
.end method

.method public setActionDownOffset(I)V
    .locals 1

    .prologue
    .line 315
    iput p1, p0, Lcom/android/calendar/timely/WeekRecyclerView$MyGestureListener;->mActionDownOffset:I

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/WeekRecyclerView$MyGestureListener;->mReceivedOnTouchEvent:Z

    .line 317
    return-void
.end method

.method public setCurrentOffset(I)V
    .locals 0

    .prologue
    .line 320
    iput p1, p0, Lcom/android/calendar/timely/WeekRecyclerView$MyGestureListener;->mCurrentOffset:I

    .line 321
    return-void
.end method
