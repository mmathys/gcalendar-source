.class public Lcom/android/calendar/timely/PagedScrollView;
.super Landroid/widget/ScrollView;
.source "PagedScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/PagedScrollView$ScrollManager;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBottomPadding:I

.field private mIsInternalScrollChange:Z

.field private mPinchZoomController:Lcom/android/calendar/timely/PinchZoomController;

.field private mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/android/calendar/timely/PagedScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/PagedScrollView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-direct {p0}, Lcom/android/calendar/timely/PagedScrollView;->initialize()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0}, Lcom/android/calendar/timely/PagedScrollView;->initialize()V

    .line 47
    return-void
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/PagedScrollView;->mIsInternalScrollChange:Z

    .line 56
    return-void
.end method


# virtual methods
.method public computeScrollPositionFromBottom(I)I
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/calendar/timely/PagedScrollView;->computeVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calendar/timely/PagedScrollView;->getHeight()I

    move-result v1

    add-int/2addr v1, p1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getVerticalScrollPositionFromBottom()I
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/calendar/timely/PagedScrollView;->computeVerticalScrollOffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/PagedScrollView;->computeScrollPositionFromBottom(I)I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 91
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 93
    sget-object v0, Lcom/android/calendar/timely/PagedScrollView;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-virtual {p0, v4}, Lcom/android/calendar/timely/PagedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/PagedScrollView;->getVerticalScrollPositionFromBottom()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x23

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "PagedScrollView.onDraw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    sget-object v1, Lcom/android/calendar/timely/PagedScrollView;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 102
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/calendar/timely/PagedScrollView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 107
    invoke-virtual {p0}, Lcom/android/calendar/timely/PagedScrollView;->getVerticalScrollPositionFromBottom()I

    move-result v1

    .line 109
    sget-object v0, Lcom/android/calendar/timely/PagedScrollView;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    iget-boolean v0, p0, Lcom/android/calendar/timely/PagedScrollView;->mIsInternalScrollChange:Z

    if-eqz v0, :cond_3

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p0, v4}, Lcom/android/calendar/timely/PagedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_0
    invoke-virtual {p0, p4}, Lcom/android/calendar/timely/PagedScrollView;->computeScrollPositionFromBottom(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " => "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    sget-object v0, Lcom/android/calendar/timely/PagedScrollView;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 120
    :cond_1
    iget-boolean v0, p0, Lcom/android/calendar/timely/PagedScrollView;->mIsInternalScrollChange:Z

    if-nez v0, :cond_2

    .line 122
    invoke-static {}, Lcom/android/calendar/timely/CreateNewEventView;->removeSelectedTime()V

    .line 126
    iget-object v0, p0, Lcom/android/calendar/timely/PagedScrollView;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/timely/PagedScrollView;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->isScaleInProgress()Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/android/calendar/timely/PagedScrollView;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    invoke-virtual {v0, p0, v1}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->onVerticalScrollChanged(Landroid/view/View;I)V

    .line 130
    :cond_2
    return-void

    .line 111
    :cond_3
    const-string v0, "EXTERNAL: "

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/calendar/timely/PagedScrollView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    const/4 v0, 0x0

    .line 144
    :cond_0
    :goto_0
    return v0

    .line 137
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 141
    iget-object v1, p0, Lcom/android/calendar/timely/PagedScrollView;->mPinchZoomController:Lcom/android/calendar/timely/PinchZoomController;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/calendar/timely/PagedScrollView;->mPinchZoomController:Lcom/android/calendar/timely/PinchZoomController;

    invoke-virtual {v1, p1}, Lcom/android/calendar/timely/PinchZoomController;->processTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public removeOnVerticalScrollManager()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/android/calendar/timely/PagedScrollView;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    .line 163
    iput-object v0, p0, Lcom/android/calendar/timely/PagedScrollView;->mPinchZoomController:Lcom/android/calendar/timely/PinchZoomController;

    .line 164
    return-void
.end method

.method public setBottomPadding(I)V
    .locals 1

    .prologue
    .line 167
    iput p1, p0, Lcom/android/calendar/timely/PagedScrollView;->mBottomPadding:I

    .line 168
    iget-object v0, p0, Lcom/android/calendar/timely/PagedScrollView;->mPinchZoomController:Lcom/android/calendar/timely/PinchZoomController;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/calendar/timely/PagedScrollView;->mPinchZoomController:Lcom/android/calendar/timely/PinchZoomController;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/PinchZoomController;->setBottomPadding(I)V

    .line 171
    :cond_0
    return-void
.end method

.method public setOnVerticalScrollManager(Lcom/android/calendar/timely/PagedScrollView$ScrollManager;)V
    .locals 2

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/calendar/timely/PagedScrollView;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    .line 157
    new-instance v0, Lcom/android/calendar/timely/PinchZoomController;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/timely/PinchZoomController;-><init>(Lcom/android/calendar/timely/PagedScrollView;Lcom/android/calendar/timely/PagedScrollView$ScrollManager;)V

    iput-object v0, p0, Lcom/android/calendar/timely/PagedScrollView;->mPinchZoomController:Lcom/android/calendar/timely/PinchZoomController;

    .line 158
    iget-object v0, p0, Lcom/android/calendar/timely/PagedScrollView;->mPinchZoomController:Lcom/android/calendar/timely/PinchZoomController;

    iget v1, p0, Lcom/android/calendar/timely/PagedScrollView;->mBottomPadding:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/PinchZoomController;->setBottomPadding(I)V

    .line 159
    return-void
.end method

.method public setVerticalScrollPositionFromBottom(IZ)V
    .locals 2

    .prologue
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/calendar/timely/PagedScrollView;->computeVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calendar/timely/PagedScrollView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/calendar/timely/PagedScrollView;->mIsInternalScrollChange:Z

    .line 81
    if-eqz p2, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/calendar/timely/PagedScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/timely/PagedScrollView;->smoothScrollTo(II)V

    .line 86
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/PagedScrollView;->mIsInternalScrollChange:Z

    .line 87
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/PagedScrollView;->setScrollY(I)V

    goto :goto_0
.end method
