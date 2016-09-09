.class public Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;
.super Ljava/lang/Object;
.source "ViewScreenOpenCloseHelper.java"


# instance fields
.field private mAnimationData:Lcom/android/calendar/timely/animations/EventInfoAnimationData;

.field private mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;

.field private final mContentView:Lcom/android/calendar/newapi/screen/ViewScreen;

.field private final mController:Lcom/android/calendar/newapi/screen/ViewScreenController;

.field private final mFullscreen:Z

.field private final mOverlayView:Landroid/view/View;

.field private final mRootView:Landroid/view/View;

.field private final mTimelineItem:Lcom/android/calendar/timely/TimelineEvent;

.field private mTopSystemWindowInset:I


# direct methods
.method public constructor <init>(Lcom/android/calendar/newapi/screen/ViewScreenController;Lcom/android/calendar/timely/animations/EventInfoAnimationData;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/newapi/screen/ViewScreenController",
            "<*****>;",
            "Lcom/android/calendar/timely/animations/EventInfoAnimationData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mTopSystemWindowInset:I

    .line 51
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mController:Lcom/android/calendar/newapi/screen/ViewScreenController;

    .line 52
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mController:Lcom/android/calendar/newapi/screen/ViewScreenController;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getViewScreen()Lcom/android/calendar/newapi/screen/ViewScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mContentView:Lcom/android/calendar/newapi/screen/ViewScreen;

    .line 53
    iput-object p2, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mAnimationData:Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    .line 54
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mController:Lcom/android/calendar/newapi/screen/ViewScreenController;

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mController:Lcom/android/calendar/newapi/screen/ViewScreenController;

    invoke-virtual {v1}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/screen/ViewScreenController;->isFullScreen(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mFullscreen:Z

    .line 55
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mController:Lcom/android/calendar/newapi/screen/ViewScreenController;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mRootView:Landroid/view/View;

    .line 56
    iget-boolean v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mFullscreen:Z

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mRootView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mOverlayView:Landroid/view/View;

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mController:Lcom/android/calendar/newapi/screen/ViewScreenController;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getTimelineItem()Lcom/android/calendar/timely/TimelineEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mTimelineItem:Lcom/android/calendar/timely/TimelineEvent;

    .line 62
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/calendar/R$id;->event_info_overlay_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mOverlayView:Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;I)I
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mTopSystemWindowInset:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->startOpenAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;)Landroid/view/View;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;)Lcom/android/calendar/timely/animations/EventInfoAnimationView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;)Lcom/android/calendar/newapi/screen/ViewScreenController;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mController:Lcom/android/calendar/newapi/screen/ViewScreenController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;)Landroid/view/View;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mOverlayView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;)Lcom/android/calendar/newapi/screen/ViewScreen;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mContentView:Lcom/android/calendar/newapi/screen/ViewScreen;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mFullscreen:Z

    return v0
.end method

.method private areAnimationsEnabled()Z
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mAnimationData:Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method private isControllerAttached()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mController:Lcom/android/calendar/newapi/screen/ViewScreenController;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->isAdded()Z

    move-result v0

    return v0
.end method

.method private setupAnimationView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 93
    new-instance v0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    .line 94
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 96
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->setBackgroundColor(I)V

    .line 97
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 99
    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mRootView:Landroid/view/View;

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 106
    :cond_0
    iget-boolean v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mFullscreen:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    new-instance v1, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$1;-><init>(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;)V

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 117
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_1
    iput v2, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mTopSystemWindowInset:I

    goto :goto_0
.end method

.method private showContent()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 288
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/calendar/R$id;->event_info_overlay_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 289
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mContentView:Lcom/android/calendar/newapi/screen/ViewScreen;

    sget v1, Lcom/android/calendar/R$id;->event_info:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/screen/ViewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 290
    invoke-static {v0, v2}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 291
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 292
    return-void
.end method

.method private startCloseAnimation()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 234
    .line 235
    iget-boolean v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mFullscreen:Z

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mOverlayView:Landroid/view/View;

    const v2, 0x106000d

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    move-object v0, v1

    .line 243
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mTimelineItem:Lcom/android/calendar/timely/TimelineEvent;

    iget-object v3, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    invoke-virtual {v3}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 244
    iget-object v2, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    iget-object v3, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mTimelineItem:Lcom/android/calendar/timely/TimelineEvent;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->createAnimationHeader()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->reset(Lcom/android/calendar/timely/TimelineItem;Landroid/view/View;)V

    .line 247
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    .line 248
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->getHeaderHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->getStatusbarAnimator()Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;

    move-result-object v4

    .line 247
    invoke-virtual {v2, v0, v3, v1, v4}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->startCloseAnimation(Landroid/graphics/Rect;ILandroid/animation/Animator$AnimatorListener;Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;)V

    .line 249
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mContentView:Lcom/android/calendar/newapi/screen/ViewScreen;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/ViewScreen;->hideContentAnimated()V

    .line 250
    return-void

    .line 238
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 239
    iget-object v2, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mController:Lcom/android/calendar/newapi/screen/ViewScreenController;

    invoke-virtual {v2}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getOverlayBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mController:Lcom/android/calendar/newapi/screen/ViewScreenController;

    invoke-virtual {v2, v3, v0}, Lcom/android/calendar/OverlayFragment$OverlayBackground;->startRectAnimation(Lcom/android/calendar/OverlayFragment;Landroid/graphics/Rect;)V

    .line 240
    iget-object v2, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mOverlayView:Landroid/view/View;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 241
    iget-object v2, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mOverlayView:Landroid/view/View;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0
.end method

.method private startOpenAnimation()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 148
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->isControllerAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-boolean v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mFullscreen:Z

    if-eqz v0, :cond_1

    move-object v4, v6

    .line 153
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mAnimationData:Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    iget-object v2, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mTimelineItem:Lcom/android/calendar/timely/TimelineEvent;

    .line 156
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->createAnimationHeader()Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mFullscreen:Z

    .line 153
    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->init(Lcom/android/calendar/timely/animations/EventInfoAnimationData;Lcom/android/calendar/timely/TimelineItem;Landroid/view/View;Landroid/view/View;Z)V

    .line 161
    iget-boolean v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mFullscreen:Z

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->getHeaderHeight()I

    move-result v1

    new-instance v2, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$3;

    invoke-direct {v2, p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$3;-><init>(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->getStatusbarAnimator()Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;

    move-result-object v3

    .line 163
    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->startOpenAnimation(Landroid/graphics/Rect;ILandroid/animation/Animator$AnimatorListener;Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;)V

    .line 202
    :goto_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$6;

    invoke-direct {v1, p0, v6}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$6;-><init>(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 152
    :cond_1
    iget-object v4, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mOverlayView:Landroid/view/View;

    goto :goto_1

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mOverlayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 174
    new-instance v6, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$4;

    invoke-direct {v6, p0, v0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$4;-><init>(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 187
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 188
    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mController:Lcom/android/calendar/newapi/screen/ViewScreenController;

    invoke-virtual {v1}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getOverlayBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mController:Lcom/android/calendar/newapi/screen/ViewScreenController;

    invoke-virtual {v1, v2, v0}, Lcom/android/calendar/OverlayFragment$OverlayBackground;->startRectAnimation(Lcom/android/calendar/OverlayFragment;Landroid/graphics/Rect;)V

    .line 189
    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->getHeaderHeight()I

    move-result v2

    new-instance v3, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$5;

    invoke-direct {v3, p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$5;-><init>(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->getStatusbarAnimator()Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;

    move-result-object v4

    .line 189
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->startOpenAnimation(Landroid/graphics/Rect;ILandroid/animation/Animator$AnimatorListener;Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;)V

    goto :goto_2
.end method


# virtual methods
.method public close(Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;)V
    .locals 2

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->areAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 227
    :goto_0
    if-eqz v0, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->startCloseAnimation()V

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mController:Lcom/android/calendar/newapi/screen/ViewScreenController;

    invoke-interface {p1, v1, v0}, Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;->onInfoCancel(Landroid/app/DialogFragment;Z)V

    .line 231
    return-void

    .line 226
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected createAnimationHeader()Landroid/view/View;
    .locals 4

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mTimelineItem:Lcom/android/calendar/timely/TimelineEvent;

    invoke-static {v0, v1}, Lcom/android/calendar/event/ImageHelper;->shouldHaveImage(Landroid/content/res/Resources;Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 277
    new-instance v1, Lcom/android/calendar/event/ImageHelper;

    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mTimelineItem:Lcom/android/calendar/timely/TimelineEvent;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/calendar/event/ImageHelper;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Landroid/view/LayoutInflater;)V

    .line 278
    invoke-virtual {v1}, Lcom/android/calendar/event/ImageHelper;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 283
    :goto_0
    return-object v0

    .line 281
    :cond_0
    new-instance v0, Landroid/view/View;

    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 282
    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mTimelineItem:Lcom/android/calendar/timely/TimelineEvent;

    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelineEvent;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public disableAnimations()V
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mAnimationData:Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    .line 332
    return-void
.end method

.method protected getHeaderHeight()I
    .locals 3

    .prologue
    .line 265
    .line 266
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mTimelineItem:Lcom/android/calendar/timely/TimelineEvent;

    iget-object v2, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mController:Lcom/android/calendar/newapi/screen/ViewScreenController;

    invoke-virtual {v2}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getData()Lcom/android/calendar/newapi/model/ScreenData;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/calendar/newapi/screen/ViewScreenUtils;->getHeaderHeight(Landroid/content/res/Resources;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/newapi/model/ScreenData;)I

    move-result v0

    .line 267
    iget v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mTopSystemWindowInset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getOverlayView()Landroid/view/View;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mOverlayView:Landroid/view/View;

    return-object v0
.end method

.method protected getStatusbarAnimator()Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mFullscreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mController:Lcom/android/calendar/newapi/screen/ViewScreenController;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mController:Lcom/android/calendar/newapi/screen/ViewScreenController;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->createInstance(Landroid/view/Window;)Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;

    move-result-object v0

    .line 327
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 65
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->areAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->getStatusbarAnimator()Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, v3}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->setLightStatusbar(Z)V

    .line 72
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$color;->mainview_status_bar_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 71
    invoke-virtual {v0, v1}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->setStatusbarColor(I)V

    .line 74
    :cond_0
    iget-boolean v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mFullscreen:Z

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mRootView:Landroid/view/View;

    sget v1, Lcom/android/calendar/R$id;->event_info_overlay_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 79
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->setupAnimationView()V

    .line 88
    :cond_2
    :goto_0
    return-void

    .line 85
    :cond_3
    iget-boolean v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mFullscreen:Z

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mRootView:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public open()V
    .locals 2

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->areAnimationsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->showContent()V

    .line 130
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mContentView:Lcom/android/calendar/newapi/screen/ViewScreen;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/ViewScreen;->adjustScrollViewBounds()V

    .line 143
    :goto_0
    return-void

    .line 137
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$2;-><init>(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public reinitialize()V
    .locals 3

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->areAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mTimelineItem:Lcom/android/calendar/timely/TimelineEvent;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->createAnimationHeader()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->reinitialize(Lcom/android/calendar/timely/TimelineItem;Landroid/view/View;)V

    .line 257
    :cond_0
    return-void
.end method
