.class public Lcom/android/calendar/timely/FindTimeGridViewPager;
.super Lcom/android/calendar/LayoutDirectionAwareViewPager;
.source "FindTimeGridViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/FindTimeGridViewPager$OnPageChangeListenerAdapter;,
        Lcom/android/calendar/timely/FindTimeGridViewPager$SwipeAwareOnPageChangeListener;
    }
.end annotation


# static fields
.field private static final DISPATCHABLE_VIEW_IDS:[I


# instance fields
.field private mDispatchOnPager:Z

.field private mIsCurrentItemChangeFromSwipe:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/calendar/R$id;->slab_bar:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/android/calendar/R$id;->floating_action_button:I

    aput v2, v0, v1

    sput-object v0, Lcom/android/calendar/timely/FindTimeGridViewPager;->DISPATCHABLE_VIEW_IDS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/calendar/LayoutDirectionAwareViewPager;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/FindTimeGridViewPager;->mIsCurrentItemChangeFromSwipe:Z

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/FindTimeGridViewPager;->mDispatchOnPager:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/LayoutDirectionAwareViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/FindTimeGridViewPager;->mIsCurrentItemChangeFromSwipe:Z

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/FindTimeGridViewPager;->mDispatchOnPager:Z

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/FindTimeGridViewPager;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/android/calendar/timely/FindTimeGridViewPager;->mIsCurrentItemChangeFromSwipe:Z

    return v0
.end method


# virtual methods
.method public isDispatchingOnPager()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/calendar/timely/FindTimeGridViewPager;->mDispatchOnPager:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 52
    packed-switch v2, :pswitch_data_0

    .line 74
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/calendar/timely/FindTimeGridViewPager;->mDispatchOnPager:Z

    if-eqz v2, :cond_2

    invoke-super {p0, p1}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    return v0

    .line 57
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeGridViewPager;->getCurrentItem()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/calendar/timely/FindTimeGridViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .line 58
    if-eqz v3, :cond_0

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 61
    sget-object v6, Lcom/android/calendar/timely/FindTimeGridViewPager;->DISPATCHABLE_VIEW_IDS:[I

    array-length v7, v6

    move v2, v1

    :goto_2
    if-ge v2, v7, :cond_0

    aget v8, v6, v2

    .line 62
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 63
    if-eqz v8, :cond_1

    .line 64
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v9, v4

    if-gez v9, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v4, v9

    if-gtz v9, :cond_1

    .line 65
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v9, v5

    if-gez v9, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v5, v8

    if-gtz v8, :cond_1

    .line 66
    iput-boolean v0, p0, Lcom/android/calendar/timely/FindTimeGridViewPager;->mDispatchOnPager:Z

    goto :goto_0

    .line 61
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    .line 74
    goto :goto_1

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 80
    packed-switch v1, :pswitch_data_0

    .line 88
    iget-boolean v1, p0, Lcom/android/calendar/timely/FindTimeGridViewPager;->mDispatchOnPager:Z

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    .line 82
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/calendar/timely/FindTimeGridViewPager;->mDispatchOnPager:Z

    if-eqz v1, :cond_0

    .line 83
    iput-boolean v0, p0, Lcom/android/calendar/timely/FindTimeGridViewPager;->mDispatchOnPager:Z

    .line 84
    invoke-super {p0, p1}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setCurrentItem(I)V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/FindTimeGridViewPager;->mIsCurrentItemChangeFromSwipe:Z

    .line 95
    invoke-super {p0, p1}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->setCurrentItem(I)V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/FindTimeGridViewPager;->mIsCurrentItemChangeFromSwipe:Z

    .line 97
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/FindTimeGridViewPager;->mIsCurrentItemChangeFromSwipe:Z

    .line 102
    invoke-super {p0, p1, p2}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->setCurrentItem(IZ)V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/FindTimeGridViewPager;->mIsCurrentItemChangeFromSwipe:Z

    .line 104
    return-void
.end method

.method public setSwipeAwareOnPageChangeListener(Lcom/android/calendar/timely/FindTimeGridViewPager$SwipeAwareOnPageChangeListener;)V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/android/calendar/timely/FindTimeGridViewPager$OnPageChangeListenerAdapter;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/timely/FindTimeGridViewPager$OnPageChangeListenerAdapter;-><init>(Lcom/android/calendar/timely/FindTimeGridViewPager;Lcom/android/calendar/timely/FindTimeGridViewPager$SwipeAwareOnPageChangeListener;)V

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/FindTimeGridViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 137
    return-void
.end method
