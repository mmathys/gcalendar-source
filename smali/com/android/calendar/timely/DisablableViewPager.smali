.class public Lcom/android/calendar/timely/DisablableViewPager;
.super Lcom/android/calendar/LayoutDirectionAwareViewPager;
.source "DisablableViewPager.java"


# instance fields
.field private mHasScrolledLeft:Z

.field private mHasScrolledRight:Z

.field private mInitialX:F

.field private mLastMotionX:F

.field public mLeftScrollEnabled:Z

.field public mRightScrollEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/LayoutDirectionAwareViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-boolean v0, p0, Lcom/android/calendar/timely/DisablableViewPager;->mLeftScrollEnabled:Z

    .line 32
    iput-boolean v0, p0, Lcom/android/calendar/timely/DisablableViewPager;->mRightScrollEnabled:Z

    .line 40
    return-void
.end method

.method private swipeDirectionEnabled(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 75
    iget-boolean v0, p0, Lcom/android/calendar/timely/DisablableViewPager;->mLeftScrollEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/calendar/timely/DisablableViewPager;->mRightScrollEnabled:Z

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v1

    .line 79
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/DisablableViewPager;->mInitialX:F

    .line 81
    iput-boolean v2, p0, Lcom/android/calendar/timely/DisablableViewPager;->mHasScrolledLeft:Z

    .line 82
    iput-boolean v2, p0, Lcom/android/calendar/timely/DisablableViewPager;->mHasScrolledRight:Z

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/android/calendar/timely/DisablableViewPager;->mInitialX:F

    sub-float v4, v0, v3

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/android/calendar/timely/DisablableViewPager;->mLastMotionX:F

    sub-float v5, v0, v3

    .line 87
    cmpl-float v0, v4, v7

    if-lez v0, :cond_5

    move v3, v1

    .line 88
    :goto_1
    cmpg-float v0, v4, v7

    if-gez v0, :cond_6

    move v0, v1

    .line 89
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/android/calendar/timely/DisablableViewPager;->mLastMotionX:F

    .line 91
    if-eqz v3, :cond_3

    .line 92
    iput-boolean v1, p0, Lcom/android/calendar/timely/DisablableViewPager;->mHasScrolledLeft:Z

    .line 94
    :cond_3
    if-eqz v0, :cond_4

    .line 95
    iput-boolean v1, p0, Lcom/android/calendar/timely/DisablableViewPager;->mHasScrolledRight:Z

    .line 99
    :cond_4
    if-eqz v0, :cond_7

    iget-boolean v6, p0, Lcom/android/calendar/timely/DisablableViewPager;->mLeftScrollEnabled:Z

    if-nez v6, :cond_7

    invoke-virtual {p0}, Lcom/android/calendar/timely/DisablableViewPager;->getCurrentItem()I

    move-result v6

    if-nez v6, :cond_7

    move v1, v2

    .line 100
    goto :goto_0

    :cond_5
    move v3, v2

    .line 87
    goto :goto_1

    :cond_6
    move v0, v2

    .line 88
    goto :goto_2

    .line 101
    :cond_7
    if-eqz v3, :cond_8

    iget-boolean v6, p0, Lcom/android/calendar/timely/DisablableViewPager;->mRightScrollEnabled:Z

    if-nez v6, :cond_8

    invoke-virtual {p0}, Lcom/android/calendar/timely/DisablableViewPager;->getCurrentItem()I

    move-result v6

    if-nez v6, :cond_8

    move v1, v2

    .line 102
    goto :goto_0

    .line 107
    :cond_8
    iget-boolean v6, p0, Lcom/android/calendar/timely/DisablableViewPager;->mHasScrolledRight:Z

    if-eqz v6, :cond_9

    cmpl-float v6, v5, v7

    if-lez v6, :cond_9

    iget-boolean v6, p0, Lcom/android/calendar/timely/DisablableViewPager;->mRightScrollEnabled:Z

    if-eqz v6, :cond_9

    .line 109
    cmpl-float v0, v4, v7

    if-lez v0, :cond_0

    .line 110
    iget v0, p0, Lcom/android/calendar/timely/DisablableViewPager;->mInitialX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 111
    iget v0, p0, Lcom/android/calendar/timely/DisablableViewPager;->mInitialX:F

    iput v0, p0, Lcom/android/calendar/timely/DisablableViewPager;->mLastMotionX:F

    goto :goto_0

    .line 118
    :cond_9
    iget-boolean v6, p0, Lcom/android/calendar/timely/DisablableViewPager;->mHasScrolledLeft:Z

    if-eqz v6, :cond_a

    cmpg-float v5, v5, v7

    if-gez v5, :cond_a

    iget-boolean v5, p0, Lcom/android/calendar/timely/DisablableViewPager;->mLeftScrollEnabled:Z

    if-eqz v5, :cond_a

    .line 120
    cmpg-float v0, v4, v7

    if-gez v0, :cond_0

    .line 121
    iget v0, p0, Lcom/android/calendar/timely/DisablableViewPager;->mInitialX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 122
    iget v0, p0, Lcom/android/calendar/timely/DisablableViewPager;->mInitialX:F

    iput v0, p0, Lcom/android/calendar/timely/DisablableViewPager;->mLastMotionX:F

    goto/16 :goto_0

    .line 128
    :cond_a
    if-eqz v3, :cond_b

    iget-boolean v3, p0, Lcom/android/calendar/timely/DisablableViewPager;->mLeftScrollEnabled:Z

    if-nez v3, :cond_b

    move v1, v2

    .line 129
    goto/16 :goto_0

    .line 130
    :cond_b
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/timely/DisablableViewPager;->mRightScrollEnabled:Z

    if-nez v0, :cond_0

    move v1, v2

    .line 131
    goto/16 :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/calendar/timely/DisablableViewPager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/calendar/timely/DisablableViewPager;->swipeDirectionEnabled(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 68
    :goto_0
    return v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/calendar/timely/DisablableViewPager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/calendar/timely/DisablableViewPager;->swipeDirectionEnabled(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 55
    :goto_0
    return v0

    .line 47
    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
