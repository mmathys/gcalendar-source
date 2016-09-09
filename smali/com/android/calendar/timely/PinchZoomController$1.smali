.class Lcom/android/calendar/timely/PinchZoomController$1;
.super Ljava/lang/Object;
.source "PinchZoomController.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/PinchZoomController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAdjustedMinimumCellHeight:I

.field final synthetic this$0:Lcom/android/calendar/timely/PinchZoomController;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/PinchZoomController;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculateAdjustedMinimumCellHeight()I
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mMinCellHeight:I
    invoke-static {v0}, Lcom/android/calendar/timely/PinchZoomController;->access$1100(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mGridlineHeight:I
    invoke-static {v1}, Lcom/android/calendar/timely/PinchZoomController;->access$1200(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    .line 87
    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mBottomPadding:I
    invoke-static {v1}, Lcom/android/calendar/timely/PinchZoomController;->access$700(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    iget-object v1, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mScrollViewHeight:I
    invoke-static {v1}, Lcom/android/calendar/timely/PinchZoomController;->access$600(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mMinCellHeight:I
    invoke-static {v0}, Lcom/android/calendar/timely/PinchZoomController;->access$1100(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v0

    .line 103
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mScrollViewHeight:I
    invoke-static {v0}, Lcom/android/calendar/timely/PinchZoomController;->access$600(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mBottomPadding:I
    invoke-static {v1}, Lcom/android/calendar/timely/PinchZoomController;->access$700(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private getDayHeight()I
    .locals 2

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/calendar/timely/PinchZoomController$1;->getHourHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mBottomPadding:I
    invoke-static {v1}, Lcom/android/calendar/timely/PinchZoomController;->access$700(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getHourHeight()I
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mCellHeight:I
    invoke-static {v0}, Lcom/android/calendar/timely/PinchZoomController;->access$300(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mGridlineHeight:I
    invoke-static {v1}, Lcom/android/calendar/timely/PinchZoomController;->access$1200(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mMinYSpan:I
    invoke-static {v0}, Lcom/android/calendar/timely/PinchZoomController;->access$200(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 110
    iget-object v2, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mCellHeight:I
    invoke-static {v2}, Lcom/android/calendar/timely/PinchZoomController;->access$300(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v4

    .line 111
    iget-object v2, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    iget-object v5, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mCellHeightBeforeScaleGesture:F
    invoke-static {v5}, Lcom/android/calendar/timely/PinchZoomController;->access$500(Lcom/android/calendar/timely/PinchZoomController;)F

    move-result v5

    mul-float/2addr v5, v0

    iget-object v6, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mStartingSpanY:F
    invoke-static {v6}, Lcom/android/calendar/timely/PinchZoomController;->access$100(Lcom/android/calendar/timely/PinchZoomController;)F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    # setter for: Lcom/android/calendar/timely/PinchZoomController;->mCellHeight:I
    invoke-static {v2, v5}, Lcom/android/calendar/timely/PinchZoomController;->access$302(Lcom/android/calendar/timely/PinchZoomController;I)I

    .line 112
    iget-object v2, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mScrollRemainder:F
    invoke-static {v2}, Lcom/android/calendar/timely/PinchZoomController;->access$900(Lcom/android/calendar/timely/PinchZoomController;)F

    move-result v2

    mul-float/2addr v2, v0

    iget-object v5, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mStartingSpanY:F
    invoke-static {v5}, Lcom/android/calendar/timely/PinchZoomController;->access$100(Lcom/android/calendar/timely/PinchZoomController;)F

    move-result v5

    div-float/2addr v2, v5

    .line 114
    iget-object v5, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mCellHeight:I
    invoke-static {v5}, Lcom/android/calendar/timely/PinchZoomController;->access$300(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v5

    iget v6, p0, Lcom/android/calendar/timely/PinchZoomController$1;->mAdjustedMinimumCellHeight:I

    if-gt v5, v6, :cond_2

    .line 115
    # getter for: Lcom/android/calendar/timely/PinchZoomController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/timely/PinchZoomController;->access$1000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Cell height <= Min Cell Height"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 116
    iget-object v5, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # setter for: Lcom/android/calendar/timely/PinchZoomController;->mStartingSpanY:F
    invoke-static {v5, v0}, Lcom/android/calendar/timely/PinchZoomController;->access$102(Lcom/android/calendar/timely/PinchZoomController;F)F

    .line 117
    iget-object v0, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    iget v5, p0, Lcom/android/calendar/timely/PinchZoomController$1;->mAdjustedMinimumCellHeight:I

    # setter for: Lcom/android/calendar/timely/PinchZoomController;->mCellHeight:I
    invoke-static {v0, v5}, Lcom/android/calendar/timely/PinchZoomController;->access$302(Lcom/android/calendar/timely/PinchZoomController;I)I

    .line 118
    iget-object v0, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    iget v5, p0, Lcom/android/calendar/timely/PinchZoomController$1;->mAdjustedMinimumCellHeight:I

    int-to-float v5, v5

    # setter for: Lcom/android/calendar/timely/PinchZoomController;->mCellHeightBeforeScaleGesture:F
    invoke-static {v0, v5}, Lcom/android/calendar/timely/PinchZoomController;->access$502(Lcom/android/calendar/timely/PinchZoomController;F)F

    .line 119
    iget-object v0, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # setter for: Lcom/android/calendar/timely/PinchZoomController;->mScrollRemainder:F
    invoke-static {v0, v2}, Lcom/android/calendar/timely/PinchZoomController;->access$902(Lcom/android/calendar/timely/PinchZoomController;F)F

    .line 132
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mScrollViewHeight:I
    invoke-static {v0}, Lcom/android/calendar/timely/PinchZoomController;->access$600(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v5

    sub-float v5, v0, v5

    .line 134
    iget-object v0, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mGestureCenterHourFromBottom:I
    invoke-static {v0}, Lcom/android/calendar/timely/PinchZoomController;->access$800(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v0

    invoke-direct {p0}, Lcom/android/calendar/timely/PinchZoomController$1;->getHourHeight()I

    move-result v6

    mul-int/2addr v0, v6

    int-to-float v0, v0

    sub-float/2addr v0, v5

    iget-object v6, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    .line 135
    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mBottomPadding:I
    invoke-static {v6}, Lcom/android/calendar/timely/PinchZoomController;->access$700(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v0, v6

    add-float/2addr v0, v2

    float-to-int v2, v0

    .line 137
    invoke-direct {p0}, Lcom/android/calendar/timely/PinchZoomController$1;->getDayHeight()I

    move-result v0

    iget-object v6, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mScrollViewHeight:I
    invoke-static {v6}, Lcom/android/calendar/timely/PinchZoomController;->access$600(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v6

    sub-int/2addr v0, v6

    .line 138
    if-gez v2, :cond_3

    .line 139
    # getter for: Lcom/android/calendar/timely/PinchZoomController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/timely/PinchZoomController;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x2c

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "onScale: n<0: newScrollPosition: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v6}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 146
    :goto_1
    # getter for: Lcom/android/calendar/timely/PinchZoomController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/timely/PinchZoomController;->access$1000()Ljava/lang/String;

    move-result-object v2

    const-string v6, "onScale: deltaY: %f, original cell height: %d, cell height: %d, day height: %d, new scroll position: %d"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    .line 147
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v7, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v3

    const/4 v5, 0x2

    iget-object v8, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    .line 148
    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mCellHeight:I
    invoke-static {v8}, Lcom/android/calendar/timely/PinchZoomController;->access$300(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v5, 0x3

    invoke-direct {p0}, Lcom/android/calendar/timely/PinchZoomController$1;->getDayHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v5, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    .line 146
    invoke-static {v2, v6, v7}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 150
    iget-object v2, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;
    invoke-static {v2}, Lcom/android/calendar/timely/PinchZoomController;->access$1400(Lcom/android/calendar/timely/PinchZoomController;)Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    move-result-object v2

    iget-object v5, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mCellHeight:I
    invoke-static {v5}, Lcom/android/calendar/timely/PinchZoomController;->access$300(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v5

    if-eq v4, v5, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {v2, v1}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->setIsScaleInProgress(Z)V

    .line 152
    iget-object v1, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;
    invoke-static {v1}, Lcom/android/calendar/timely/PinchZoomController;->access$400(Lcom/android/calendar/timely/PinchZoomController;)Lcom/android/calendar/timely/settings/data/CalendarProperties;

    move-result-object v1

    const/16 v2, 0xa

    iget-object v4, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mCellHeight:I
    invoke-static {v4}, Lcom/android/calendar/timely/PinchZoomController;->access$300(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->setPropertyValue(ILjava/lang/Object;)Z

    .line 154
    iget-object v1, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;
    invoke-static {v1}, Lcom/android/calendar/timely/PinchZoomController;->access$1400(Lcom/android/calendar/timely/PinchZoomController;)Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->onVerticalScrollChanged(Landroid/view/View;I)V

    .line 155
    return v3

    .line 122
    :cond_2
    iget-object v5, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mCellHeight:I
    invoke-static {v5}, Lcom/android/calendar/timely/PinchZoomController;->access$300(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v5

    iget-object v6, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mMaxCellHeight:I
    invoke-static {v6}, Lcom/android/calendar/timely/PinchZoomController;->access$1300(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 123
    # getter for: Lcom/android/calendar/timely/PinchZoomController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/timely/PinchZoomController;->access$1000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Cell height >= Max Cell Height"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 124
    iget-object v5, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # setter for: Lcom/android/calendar/timely/PinchZoomController;->mStartingSpanY:F
    invoke-static {v5, v0}, Lcom/android/calendar/timely/PinchZoomController;->access$102(Lcom/android/calendar/timely/PinchZoomController;F)F

    .line 125
    iget-object v0, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    iget-object v5, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mMaxCellHeight:I
    invoke-static {v5}, Lcom/android/calendar/timely/PinchZoomController;->access$1300(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v5

    # setter for: Lcom/android/calendar/timely/PinchZoomController;->mCellHeight:I
    invoke-static {v0, v5}, Lcom/android/calendar/timely/PinchZoomController;->access$302(Lcom/android/calendar/timely/PinchZoomController;I)I

    .line 126
    iget-object v0, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    iget-object v5, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mMaxCellHeight:I
    invoke-static {v5}, Lcom/android/calendar/timely/PinchZoomController;->access$1300(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v5

    int-to-float v5, v5

    # setter for: Lcom/android/calendar/timely/PinchZoomController;->mCellHeightBeforeScaleGesture:F
    invoke-static {v0, v5}, Lcom/android/calendar/timely/PinchZoomController;->access$502(Lcom/android/calendar/timely/PinchZoomController;F)F

    .line 127
    iget-object v0, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # setter for: Lcom/android/calendar/timely/PinchZoomController;->mScrollRemainder:F
    invoke-static {v0, v2}, Lcom/android/calendar/timely/PinchZoomController;->access$902(Lcom/android/calendar/timely/PinchZoomController;F)F

    goto/16 :goto_0

    .line 141
    :cond_3
    if-le v2, v0, :cond_4

    .line 142
    # getter for: Lcom/android/calendar/timely/PinchZoomController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/timely/PinchZoomController;->access$1000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x4c

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "onScale: n>m: newScrollPosition: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", maxScrollPosition: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v6, v2, v7}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1

    :cond_4
    move v0, v2

    goto/16 :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 51
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v0

    iget-object v3, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mScrollView:Lcom/android/calendar/timely/PagedScrollView;
    invoke-static {v3}, Lcom/android/calendar/timely/PinchZoomController;->access$000(Lcom/android/calendar/timely/PinchZoomController;)Lcom/android/calendar/timely/PagedScrollView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/calendar/timely/PagedScrollView;->getY()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    move v0, v1

    .line 76
    :goto_0
    return v0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    iget-object v3, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mMinYSpan:I
    invoke-static {v3}, Lcom/android/calendar/timely/PinchZoomController;->access$200(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    # setter for: Lcom/android/calendar/timely/PinchZoomController;->mStartingSpanY:F
    invoke-static {v0, v3}, Lcom/android/calendar/timely/PinchZoomController;->access$102(Lcom/android/calendar/timely/PinchZoomController;F)F

    .line 56
    iget-object v3, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    iget-object v0, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;
    invoke-static {v0}, Lcom/android/calendar/timely/PinchZoomController;->access$400(Lcom/android/calendar/timely/PinchZoomController;)Lcom/android/calendar/timely/settings/data/CalendarProperties;

    move-result-object v0

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getPropertyValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/android/calendar/timely/PinchZoomController;->mCellHeight:I
    invoke-static {v3, v0}, Lcom/android/calendar/timely/PinchZoomController;->access$302(Lcom/android/calendar/timely/PinchZoomController;I)I

    .line 58
    iget-object v0, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    iget-object v3, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mCellHeight:I
    invoke-static {v3}, Lcom/android/calendar/timely/PinchZoomController;->access$300(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v3

    int-to-float v3, v3

    # setter for: Lcom/android/calendar/timely/PinchZoomController;->mCellHeightBeforeScaleGesture:F
    invoke-static {v0, v3}, Lcom/android/calendar/timely/PinchZoomController;->access$502(Lcom/android/calendar/timely/PinchZoomController;F)F

    .line 61
    iget-object v0, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    iget-object v3, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mScrollView:Lcom/android/calendar/timely/PagedScrollView;
    invoke-static {v3}, Lcom/android/calendar/timely/PinchZoomController;->access$000(Lcom/android/calendar/timely/PinchZoomController;)Lcom/android/calendar/timely/PagedScrollView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/calendar/timely/PagedScrollView;->getHeight()I

    move-result v3

    # setter for: Lcom/android/calendar/timely/PinchZoomController;->mScrollViewHeight:I
    invoke-static {v0, v3}, Lcom/android/calendar/timely/PinchZoomController;->access$602(Lcom/android/calendar/timely/PinchZoomController;I)I

    .line 63
    invoke-direct {p0}, Lcom/android/calendar/timely/PinchZoomController$1;->calculateAdjustedMinimumCellHeight()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/PinchZoomController$1;->mAdjustedMinimumCellHeight:I

    .line 66
    iget-object v0, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mScrollViewHeight:I
    invoke-static {v0}, Lcom/android/calendar/timely/PinchZoomController;->access$600(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    sub-float/2addr v0, v3

    .line 68
    iget-object v3, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mScrollView:Lcom/android/calendar/timely/PagedScrollView;
    invoke-static {v3}, Lcom/android/calendar/timely/PinchZoomController;->access$000(Lcom/android/calendar/timely/PinchZoomController;)Lcom/android/calendar/timely/PagedScrollView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/calendar/timely/PagedScrollView;->getVerticalScrollPositionFromBottom()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget-object v4, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    .line 69
    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mBottomPadding:I
    invoke-static {v4}, Lcom/android/calendar/timely/PinchZoomController;->access$700(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 71
    iget-object v4, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    invoke-direct {p0}, Lcom/android/calendar/timely/PinchZoomController$1;->getHourHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v3, v5

    float-to-int v5, v5

    # setter for: Lcom/android/calendar/timely/PinchZoomController;->mGestureCenterHourFromBottom:I
    invoke-static {v4, v5}, Lcom/android/calendar/timely/PinchZoomController;->access$802(Lcom/android/calendar/timely/PinchZoomController;I)I

    .line 72
    iget-object v4, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    iget-object v5, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mGestureCenterHourFromBottom:I
    invoke-static {v5}, Lcom/android/calendar/timely/PinchZoomController;->access$800(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v5

    invoke-direct {p0}, Lcom/android/calendar/timely/PinchZoomController$1;->getHourHeight()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v3, v5

    # setter for: Lcom/android/calendar/timely/PinchZoomController;->mScrollRemainder:F
    invoke-static {v4, v3}, Lcom/android/calendar/timely/PinchZoomController;->access$902(Lcom/android/calendar/timely/PinchZoomController;F)F

    .line 73
    # getter for: Lcom/android/calendar/timely/PinchZoomController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/timely/PinchZoomController;->access$1000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onScaleBegin: deltaY: %f, hourInPx: %d, focused hour from bottom: %d, scroll pos: %d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 74
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-direct {p0}, Lcom/android/calendar/timely/PinchZoomController$1;->getHourHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mGestureCenterHourFromBottom:I
    invoke-static {v1}, Lcom/android/calendar/timely/PinchZoomController;->access$800(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    .line 75
    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mScrollView:Lcom/android/calendar/timely/PagedScrollView;
    invoke-static {v1}, Lcom/android/calendar/timely/PinchZoomController;->access$000(Lcom/android/calendar/timely/PinchZoomController;)Lcom/android/calendar/timely/PagedScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/timely/PagedScrollView;->getVerticalScrollPositionFromBottom()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    .line 73
    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v2

    .line 76
    goto/16 :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 160
    # getter for: Lcom/android/calendar/timely/PinchZoomController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/timely/PinchZoomController;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScaleEnd"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 161
    const-string v0, "preferences_grid_hour_height_p"

    .line 162
    iget-object v1, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mOrientation:I
    invoke-static {v1}, Lcom/android/calendar/timely/PinchZoomController;->access$1500(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 163
    const-string v0, "preferences_grid_hour_height_l"

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/calendar/timely/PinchZoomController;->access$1600(Lcom/android/calendar/timely/PinchZoomController;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mCellHeight:I
    invoke-static {v2}, Lcom/android/calendar/timely/PinchZoomController;->access$300(Lcom/android/calendar/timely/PinchZoomController;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 166
    iget-object v0, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/calendar/timely/PinchZoomController;->access$1600(Lcom/android/calendar/timely/PinchZoomController;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 167
    iget-object v0, p0, Lcom/android/calendar/timely/PinchZoomController$1;->this$0:Lcom/android/calendar/timely/PinchZoomController;

    # getter for: Lcom/android/calendar/timely/PinchZoomController;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;
    invoke-static {v0}, Lcom/android/calendar/timely/PinchZoomController;->access$1400(Lcom/android/calendar/timely/PinchZoomController;)Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->setIsScaleInProgress(Z)V

    .line 168
    return-void
.end method
