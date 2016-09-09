.class Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;
.super Ljava/lang/Object;
.source "AllInOneCalendarActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AllInOneCalendarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDragDatePickerListener"
.end annotation


# instance fields
.field private final DATE_PICKER_BUTTON:I

.field private mActionBarHeight:I

.field private mActivePointerId:I

.field private mActivePointerIndex:I

.field private mCalendarFragment:Lcom/android/calendar/timely/CalendarFragment;

.field private mDatePicker:Lcom/android/calendar/timely/TimelyMonthViewPager;

.field private mDatePickerContainer:Landroid/view/View;

.field private mDragDirection:I

.field private mIsDraggable:Z

.field private mStartY:F

.field private mTapDetector:Landroid/view/GestureDetector;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final synthetic this$0:Lcom/android/calendar/AllInOneCalendarActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/AllInOneCalendarActivity;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 2823
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2807
    sget v0, Lcom/android/calendar/R$id;->date_picker_button:I

    iput v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->DATE_PICKER_BUTTON:I

    .line 2814
    iput v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mActivePointerId:I

    .line 2815
    iput v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mActivePointerIndex:I

    .line 2824
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener$1;

    invoke-direct {v1, p0, p1}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener$1;-><init>(Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;Lcom/android/calendar/AllInOneCalendarActivity;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mTapDetector:Landroid/view/GestureDetector;

    .line 2832
    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;ZIZZ)V
    .locals 0

    .prologue
    .line 2798
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->setDatePickerVisible(ZIZZ)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;)V
    .locals 0

    .prologue
    .line 2798
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->toggleDatePicker()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;)V
    .locals 0

    .prologue
    .line 2798
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->recalculateDatePickerHeight()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;FZ)V
    .locals 0

    .prologue
    .line 2798
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->setDatePickerBottom(FZ)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;FZ)V
    .locals 0

    .prologue
    .line 2798
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->setDatePickerRight(FZ)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;Z)V
    .locals 0

    .prologue
    .line 2798
    invoke-direct {p0, p1}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->onDatePickerVisibilityChangeDone(Z)V

    return-void
.end method

.method private clear()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 3047
    iput v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mActivePointerId:I

    .line 3048
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mStartY:F

    .line 3049
    iput v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDragDirection:I

    .line 3050
    return-void
.end method

.method private completeMotion(Landroid/view/MotionEvent;)Z
    .locals 13

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 2984
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mCalendarFragment:Lcom/android/calendar/timely/CalendarFragment;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mActivePointerId:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mActivePointerIndex:I

    .line 2985
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2986
    iget v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mActivePointerIndex:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 2987
    iget-object v3, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 2988
    iget-object v3, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mActivePointerId:I

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    .line 2992
    iget v3, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDragDirection:I

    if-nez v3, :cond_2

    .line 2994
    iget v3, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mActionBarHeight:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    .line 2995
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDatePicker:Lcom/android/calendar/timely/TimelyMonthViewPager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyMonthViewPager;->getCurrentMonthHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v3, v0

    move v4, v0

    move v5, v3

    .line 3010
    :goto_0
    cmpl-float v0, v6, v7

    if-nez v0, :cond_5

    .line 3012
    float-to-double v8, v4

    cmpl-double v0, v8, v10

    if-ltz v0, :cond_4

    move v0, v1

    :goto_1
    move v3, v0

    .line 3018
    :goto_2
    cmpl-float v0, v4, v7

    if-lez v0, :cond_7

    cmpg-float v0, v4, v12

    if-gtz v0, :cond_7

    .line 3021
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDatePicker:Lcom/android/calendar/timely/TimelyMonthViewPager;

    .line 3022
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyMonthViewPager;->getCurrentMonthHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v5

    const/high16 v2, 0x43960000    # 300.0f

    div-float v2, v0, v2

    .line 3027
    const/16 v0, 0x12c

    .line 3028
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v6, 0x41200000    # 10.0f

    mul-float/2addr v2, v6

    cmpl-float v2, v4, v2

    if-ltz v2, :cond_0

    .line 3029
    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDatePicker:Lcom/android/calendar/timely/TimelyMonthViewPager;

    .line 3030
    invoke-virtual {v2}, Lcom/android/calendar/timely/TimelyMonthViewPager;->getCurrentMonthHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v5

    iget-object v4, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDatePicker:Lcom/android/calendar/timely/TimelyMonthViewPager;

    .line 3031
    invoke-virtual {v4}, Lcom/android/calendar/timely/TimelyMonthViewPager;->getCurrentMonthHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 3034
    :cond_0
    invoke-direct {p0, v3, v0, v1, v1}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->setDatePickerVisible(ZIZZ)V

    .line 3042
    :cond_1
    :goto_3
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->clear()V

    move v2, v1

    .line 3043
    :goto_4
    return v2

    .line 2998
    :cond_2
    iget-object v3, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 2999
    cmpl-float v4, v6, v7

    if-nez v4, :cond_3

    iget v4, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mStartY:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v4, v3

    if-gtz v3, :cond_3

    .line 3000
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->clear()V

    goto :goto_4

    .line 3005
    :cond_3
    iget v3, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mStartY:F

    sub-float/2addr v3, v0

    .line 3006
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDatePicker:Lcom/android/calendar/timely/TimelyMonthViewPager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyMonthViewPager;->getCurrentMonthHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v3, v0

    sub-float v0, v12, v0

    move v4, v0

    move v5, v3

    goto :goto_0

    :cond_4
    move v0, v2

    .line 3012
    goto :goto_1

    .line 3014
    :cond_5
    cmpl-float v0, v6, v7

    if-lez v0, :cond_6

    move v0, v1

    :goto_5
    move v3, v0

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_5

    .line 3038
    :cond_7
    float-to-double v4, v4

    cmpl-double v0, v4, v10

    if-ltz v0, :cond_8

    move v2, v1

    :cond_8
    invoke-direct {p0, v2}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->onDatePickerVisibilityChangeDone(Z)V

    goto :goto_3
.end method

.method private onDatePickerVisibilityChangeDone(Z)V
    .locals 3

    .prologue
    .line 3194
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerOpen:Z
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$3700(Lcom/android/calendar/AllInOneCalendarActivity;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 3196
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # setter for: Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerOpen:Z
    invoke-static {v0, p1}, Lcom/android/calendar/AllInOneCalendarActivity;->access$3702(Lcom/android/calendar/AllInOneCalendarActivity;Z)Z

    .line 3197
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mCalendarFragment:Lcom/android/calendar/timely/CalendarFragment;

    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerOpen:Z
    invoke-static {v1}, Lcom/android/calendar/AllInOneCalendarActivity;->access$3700(Lcom/android/calendar/AllInOneCalendarActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/CalendarFragment;->onDatePickerVisibilityChanged(Z)V

    .line 3198
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # invokes: Lcom/android/calendar/AllInOneCalendarActivity;->setDatePickerContentDescription()V
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$4900(Lcom/android/calendar/AllInOneCalendarActivity;)V

    .line 3199
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerOpen:Z
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$3700(Lcom/android/calendar/AllInOneCalendarActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    # invokes: Lcom/android/calendar/AllInOneCalendarActivity;->setDatePickerArrow(ZF)V
    invoke-static {v1, v2, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$4800(Lcom/android/calendar/AllInOneCalendarActivity;ZF)V

    .line 3203
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-static {v0}, Lcom/android/calendar/Utils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    .line 3204
    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerOpen:Z
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$3700(Lcom/android/calendar/AllInOneCalendarActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3205
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$2200(Lcom/android/calendar/AllInOneCalendarActivity;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->requestAccessibilityFocus(Landroid/view/View;)V

    .line 3208
    :cond_0
    return-void

    .line 3199
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recalculateDatePickerHeight()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3220
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerOpen:Z
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$3700(Lcom/android/calendar/AllInOneCalendarActivity;)Z

    move-result v0

    const/16 v1, 0x12c

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->setDatePickerVisible(ZIZZ)V

    .line 3223
    return-void
.end method

.method private setDatePickerBottom(FZ)V
    .locals 4

    .prologue
    .line 3150
    iget v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mActionBarHeight:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    .line 3153
    const/4 v1, 0x0

    .line 3154
    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 3158
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDatePickerContainer:Landroid/view/View;

    .line 3159
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDatePickerContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 3160
    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDatePicker:Lcom/android/calendar/timely/TimelyMonthViewPager;

    invoke-virtual {v2}, Lcom/android/calendar/timely/TimelyMonthViewPager;->getCurrentMonthHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3161
    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 3166
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDatePickerContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    .line 3173
    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDatePicker:Lcom/android/calendar/timely/TimelyMonthViewPager;

    neg-float v3, v1

    invoke-virtual {v2, v3}, Lcom/android/calendar/timely/TimelyMonthViewPager;->setTranslationY(F)V

    .line 3174
    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDatePickerContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 3175
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mBackgroundImagesFrame:Lcom/android/calendar/timely/BackgroundImagesFrame;
    invoke-static {v1}, Lcom/android/calendar/AllInOneCalendarActivity;->access$4700(Lcom/android/calendar/AllInOneCalendarActivity;)Lcom/android/calendar/timely/BackgroundImagesFrame;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3176
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mBackgroundImagesFrame:Lcom/android/calendar/timely/BackgroundImagesFrame;
    invoke-static {v1}, Lcom/android/calendar/AllInOneCalendarActivity;->access$4700(Lcom/android/calendar/AllInOneCalendarActivity;)Lcom/android/calendar/timely/BackgroundImagesFrame;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/BackgroundImagesFrame;->setClippingTranslationY(F)V

    .line 3180
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mCalendarFragment:Lcom/android/calendar/timely/CalendarFragment;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/CalendarFragment;->setViewTranslationY(F)V

    .line 3182
    if-eqz p2, :cond_1

    .line 3184
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDatePicker:Lcom/android/calendar/timely/TimelyMonthViewPager;

    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyMonthViewPager;->getCurrentMonthHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 3185
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    const/4 v2, 0x1

    # invokes: Lcom/android/calendar/AllInOneCalendarActivity;->setDatePickerArrow(ZF)V
    invoke-static {v1, v2, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$4800(Lcom/android/calendar/AllInOneCalendarActivity;ZF)V

    .line 3187
    :cond_1
    return-void
.end method

.method private setDatePickerRight(FZ)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 3123
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mIsRtl:Z
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$4600(Lcom/android/calendar/AllInOneCalendarActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    .line 3124
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDatePickerContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 3125
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float v2, v3, v2

    .line 3126
    iget-object v3, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDatePickerContainer:Landroid/view/View;

    int-to-float v4, v0

    mul-float/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 3127
    iget-object v3, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDatePicker:Lcom/android/calendar/timely/TimelyMonthViewPager;

    int-to-float v4, v0

    neg-float v2, v2

    mul-float/2addr v2, v4

    invoke-virtual {v3, v2}, Lcom/android/calendar/timely/TimelyMonthViewPager;->setTranslationX(F)V

    .line 3130
    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mBackgroundImagesFrame:Lcom/android/calendar/timely/BackgroundImagesFrame;
    invoke-static {v2}, Lcom/android/calendar/AllInOneCalendarActivity;->access$4700(Lcom/android/calendar/AllInOneCalendarActivity;)Lcom/android/calendar/timely/BackgroundImagesFrame;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3131
    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mCardLeftMargin:I
    invoke-static {v2}, Lcom/android/calendar/AllInOneCalendarActivity;->access$4100(Lcom/android/calendar/AllInOneCalendarActivity;)I

    move-result v2

    int-to-float v2, v2

    div-float v2, p1, v2

    .line 3132
    iget-object v3, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mBackgroundImagesFrame:Lcom/android/calendar/timely/BackgroundImagesFrame;
    invoke-static {v3}, Lcom/android/calendar/AllInOneCalendarActivity;->access$4700(Lcom/android/calendar/AllInOneCalendarActivity;)Lcom/android/calendar/timely/BackgroundImagesFrame;

    move-result-object v3

    .line 3133
    invoke-virtual {v3}, Lcom/android/calendar/timely/BackgroundImagesFrame;->getTimelineOffsetFromTopLandscape()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 3134
    iget-object v3, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mBackgroundImagesFrame:Lcom/android/calendar/timely/BackgroundImagesFrame;
    invoke-static {v3}, Lcom/android/calendar/AllInOneCalendarActivity;->access$4700(Lcom/android/calendar/AllInOneCalendarActivity;)Lcom/android/calendar/timely/BackgroundImagesFrame;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/calendar/timely/BackgroundImagesFrame;->setClippingTranslationY(F)V

    .line 3137
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mCalendarFragment:Lcom/android/calendar/timely/CalendarFragment;

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {v2, v0}, Lcom/android/calendar/timely/CalendarFragment;->setViewTranslationX(F)V

    .line 3139
    if-eqz p2, :cond_1

    .line 3141
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDatePicker:Lcom/android/calendar/timely/TimelyMonthViewPager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyMonthViewPager;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    .line 3142
    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # invokes: Lcom/android/calendar/AllInOneCalendarActivity;->setDatePickerArrow(ZF)V
    invoke-static {v2, v1, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$4800(Lcom/android/calendar/AllInOneCalendarActivity;ZF)V

    .line 3144
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 3123
    goto :goto_0
.end method

.method private setDatePickerVisible(ZIZZ)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 3062
    iget v3, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mActionBarHeight:I

    if-nez p1, :cond_1

    move v1, v2

    .line 3063
    :goto_0
    add-int/2addr v1, v3

    int-to-float v3, v1

    .line 3064
    if-nez p1, :cond_2

    move v1, v0

    .line 3066
    :goto_1
    if-nez p2, :cond_4

    .line 3067
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mOrientation:I
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$3800(Lcom/android/calendar/AllInOneCalendarActivity;)I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 3068
    invoke-direct {p0, v3, v5}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->setDatePickerBottom(FZ)V

    .line 3072
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->onDatePickerVisibilityChangeDone(Z)V

    .line 3116
    :cond_0
    :goto_3
    return-void

    .line 3063
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDatePicker:Lcom/android/calendar/timely/TimelyMonthViewPager;

    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyMonthViewPager;->getCurrentMonthHeight()I

    move-result v1

    goto :goto_0

    .line 3064
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mCardLeftMargin:I
    invoke-static {v1}, Lcom/android/calendar/AllInOneCalendarActivity;->access$4100(Lcom/android/calendar/AllInOneCalendarActivity;)I

    move-result v1

    int-to-float v1, v1

    goto :goto_1

    .line 3070
    :cond_3
    invoke-direct {p0, v1, v5}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->setDatePickerRight(FZ)V

    goto :goto_2

    .line 3074
    :cond_4
    iget-object v4, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->isDatePickerAnimating:Z
    invoke-static {v4}, Lcom/android/calendar/AllInOneCalendarActivity;->access$4200(Lcom/android/calendar/AllInOneCalendarActivity;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz p4, :cond_0

    .line 3078
    :cond_5
    iget-object v4, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mOrientation:I
    invoke-static {v4}, Lcom/android/calendar/AllInOneCalendarActivity;->access$3800(Lcom/android/calendar/AllInOneCalendarActivity;)I

    move-result v4

    if-ne v4, v5, :cond_6

    .line 3079
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDatePickerContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDatePickerContainer:Landroid/view/View;

    .line 3080
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mActionBarHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 3082
    new-array v1, v6, [F

    aput v0, v1, v2

    aput v3, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3084
    new-instance v1, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener$3;

    invoke-direct {v1, p0, p3}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener$3;-><init>(Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3105
    :goto_4
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # setter for: Lcom/android/calendar/AllInOneCalendarActivity;->isDatePickerAnimating:Z
    invoke-static {v1, v5}, Lcom/android/calendar/AllInOneCalendarActivity;->access$4202(Lcom/android/calendar/AllInOneCalendarActivity;Z)Z

    .line 3106
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3107
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 3108
    new-instance v1, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener$5;

    invoke-direct {v1, p0, p1}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener$5;-><init>(Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_3

    .line 3092
    :cond_6
    if-eqz p1, :cond_7

    .line 3093
    :goto_5
    new-array v3, v6, [F

    aput v0, v3, v2

    aput v1, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    int-to-long v2, p2

    .line 3094
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3096
    new-instance v1, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener$4;

    invoke-direct {v1, p0, p3}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener$4;-><init>(Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_4

    .line 3092
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mCardLeftMargin:I
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$4100(Lcom/android/calendar/AllInOneCalendarActivity;)I

    move-result v0

    int-to-float v0, v0

    goto :goto_5
.end method

.method private toggleDatePicker()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 3214
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    .line 3215
    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerOpen:Z
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$3700(Lcom/android/calendar/AllInOneCalendarActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const/16 v2, 0x12c

    .line 3214
    invoke-direct {p0, v0, v2, v1, v1}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->setDatePickerVisible(ZIZZ)V

    .line 3217
    return-void

    .line 3215
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tryInitialize(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2946
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget v3, Lcom/android/calendar/R$id;->main_pane:I

    .line 2947
    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/CalendarFragment;

    .line 2949
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-static {v3, v0}, Lcom/android/calendar/Utils;->isMinimonthToggleable(Landroid/content/Context;Lcom/android/calendar/timely/CalendarFragment;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2953
    :cond_0
    const-string v0, "AllInOneCalendarAct"

    const-string v1, "Unable to find Timely Fragment for month drag listener."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v2

    .line 2980
    :goto_0
    return v0

    .line 2956
    :cond_1
    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mCalendarFragment:Lcom/android/calendar/timely/CalendarFragment;

    .line 2957
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mCalendarFragment:Lcom/android/calendar/timely/CalendarFragment;

    invoke-virtual {v0}, Lcom/android/calendar/timely/CalendarFragment;->getDatePickerContainer()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDatePickerContainer:Landroid/view/View;

    .line 2958
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mCalendarFragment:Lcom/android/calendar/timely/CalendarFragment;

    invoke-virtual {v0}, Lcom/android/calendar/timely/CalendarFragment;->getDatePicker()Lcom/android/calendar/timely/TimelyMonthViewPager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDatePicker:Lcom/android/calendar/timely/TimelyMonthViewPager;

    .line 2959
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->getActionBarHeight()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mActionBarHeight:I

    .line 2962
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mOrientation:I
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$3800(Lcom/android/calendar/AllInOneCalendarActivity;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 2963
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDatePicker:Lcom/android/calendar/timely/TimelyMonthViewPager;

    new-instance v2, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener$2;

    invoke-direct {v2, p0}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener$2;-><init>(Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;)V

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/TimelyMonthViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 2974
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v2, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->DATE_PICKER_BUTTON:I

    if-ne v0, v2, :cond_3

    .line 2975
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mCalendarFragment:Lcom/android/calendar/timely/CalendarFragment;

    invoke-virtual {v0}, Lcom/android/calendar/timely/CalendarFragment;->getDragUpView()Landroid/view/View;

    move-result-object v0

    .line 2976
    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mDragListener:Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;
    invoke-static {v2}, Lcom/android/calendar/AllInOneCalendarActivity;->access$4000(Lcom/android/calendar/AllInOneCalendarActivity;)Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    move v0, v1

    .line 2980
    goto :goto_0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2836
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mCalendarFragment:Lcom/android/calendar/timely/CalendarFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mCalendarFragment:Lcom/android/calendar/timely/CalendarFragment;

    invoke-virtual {v0}, Lcom/android/calendar/timely/CalendarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2837
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->tryInitialize(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2942
    :cond_1
    :goto_0
    return v2

    .line 2843
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mTapDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2844
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->DATE_PICKER_BUTTON:I

    if-ne v0, v1, :cond_1

    .line 2845
    invoke-direct {p0}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->toggleDatePicker()V

    goto :goto_0

    .line 2851
    :cond_3
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mIsDraggable:Z

    if-nez v0, :cond_4

    .line 2853
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v3, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->DATE_PICKER_BUTTON:I

    if-eq v0, v3, :cond_1

    .line 2858
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerOpen:Z
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$3700(Lcom/android/calendar/AllInOneCalendarActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v1

    .line 2859
    goto :goto_0

    .line 2864
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_5
    :pswitch_0
    move v0, v1

    .line 2942
    :goto_1
    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDragDirection:I

    if-ne v0, v1, :cond_e

    :goto_2
    move v2, v1

    goto :goto_0

    .line 2866
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mActivePointerIndex:I

    .line 2867
    iget v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mActivePointerIndex:I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mActivePointerId:I

    .line 2869
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerOpen:Z
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$3700(Lcom/android/calendar/AllInOneCalendarActivity;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v3, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->DATE_PICKER_BUTTON:I

    if-ne v0, v3, :cond_7

    .line 2871
    iput v2, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDragDirection:I

    move v0, v1

    .line 2883
    :goto_3
    iget v3, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDragDirection:I

    if-nez v3, :cond_9

    .line 2885
    invoke-direct {p0, v2, v2, v1, v1}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->setDatePickerVisible(ZIZZ)V

    .line 2891
    :cond_6
    :goto_4
    iget-object v3, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_a

    .line 2893
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2899
    :goto_5
    iget-object v3, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 2872
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mDatePickerOpen:Z
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$3700(Lcom/android/calendar/AllInOneCalendarActivity;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v3, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->DATE_PICKER_BUTTON:I

    if-eq v0, v3, :cond_8

    .line 2874
    iput v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDragDirection:I

    move v0, v1

    goto :goto_3

    .line 2877
    :cond_8
    const-string v0, "AllInOneCalendarAct"

    const-string v3, "Ignoring drag on other view %d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2878
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDragDirection:I

    move v0, v2

    .line 2879
    goto :goto_3

    .line 2886
    :cond_9
    iget v3, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDragDirection:I

    if-ne v3, v1, :cond_6

    .line 2888
    iget v3, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mActivePointerIndex:I

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mStartY:F

    goto :goto_4

    .line 2896
    :cond_a
    iget-object v3, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_5

    .line 2905
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2906
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v3, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mActivePointerId:I

    if-eq v0, v3, :cond_b

    move v0, v1

    .line 2908
    goto/16 :goto_1

    .line 2911
    :cond_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 2912
    iget v3, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDragDirection:I

    if-nez v3, :cond_d

    .line 2913
    invoke-direct {p0, v0, v1}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->setDatePickerBottom(FZ)V

    .line 2921
    :cond_c
    :goto_6
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    move v0, v1

    .line 2922
    goto/16 :goto_1

    .line 2914
    :cond_d
    iget v3, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDragDirection:I

    if-ne v3, v1, :cond_c

    .line 2915
    iget v3, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mActionBarHeight:I

    iget-object v4, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mDatePicker:Lcom/android/calendar/timely/TimelyMonthViewPager;

    .line 2916
    invoke-virtual {v4}, Lcom/android/calendar/timely/TimelyMonthViewPager;->getCurrentMonthHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 2917
    iget v4, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mStartY:F

    sub-float v0, v4, v0

    .line 2918
    sub-float v0, v3, v0

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->setDatePickerBottom(FZ)V

    goto :goto_6

    .line 2927
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->completeMotion(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_1

    .line 2931
    :pswitch_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2932
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 2933
    iget v3, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mActivePointerId:I

    if-ne v0, v3, :cond_5

    .line 2935
    invoke-direct {p0, p2}, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->completeMotion(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_1

    :cond_e
    move v1, v2

    .line 2942
    goto/16 :goto_2

    .line 2864
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public setIsDraggable(Z)V
    .locals 0

    .prologue
    .line 3226
    iput-boolean p1, p0, Lcom/android/calendar/AllInOneCalendarActivity$OnDragDatePickerListener;->mIsDraggable:Z

    .line 3227
    return-void
.end method
