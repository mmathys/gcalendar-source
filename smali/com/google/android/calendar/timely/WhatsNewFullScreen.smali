.class public abstract Lcom/google/android/calendar/timely/WhatsNewFullScreen;
.super Landroid/app/Activity;
.source "WhatsNewFullScreen.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;,
        Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;

.field private mBasePage:Landroid/view/ViewGroup;

.field private mDoneButton:Landroid/widget/Button;

.field private mFadeDuration:I

.field private mFooter:Landroid/widget/FrameLayout;

.field private mMainFrame:Landroid/widget/FrameLayout;

.field private mPaginationView:Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;

.field private mRightArrow:Landroid/widget/ImageView;

.field private mViewPager:Lcom/android/calendar/LayoutDirectionAwareViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/calendar/timely/WhatsNewFullScreen;)Lcom/android/calendar/LayoutDirectionAwareViewPager;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mViewPager:Lcom/android/calendar/LayoutDirectionAwareViewPager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/calendar/timely/WhatsNewFullScreen;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->crossfadeViews()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/calendar/timely/WhatsNewFullScreen;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mBasePage:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/calendar/timely/WhatsNewFullScreen;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mFooter:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/calendar/timely/WhatsNewFullScreen;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->focusPagerForAccessibility()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/calendar/timely/WhatsNewFullScreen;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mDoneButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/calendar/timely/WhatsNewFullScreen;)Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mAdapter:Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;

    return-object v0
.end method

.method private alphaFade(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;
    .locals 4

    .prologue
    .line 305
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 310
    cmpl-float v1, v0, p2

    if-nez v1, :cond_0

    .line 311
    const/4 v0, 0x0

    .line 316
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    return-object v0

    .line 313
    :cond_0
    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mFadeDuration:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method private crossfadeViews()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 228
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mBasePage:Landroid/view/ViewGroup;

    sget v2, Lcom/android/calendar/R$id;->texts_frame:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->alphaFade(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;

    .line 232
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mAdapter:Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;

    const/4 v2, -0x1

    .line 233
    invoke-virtual {v0, v2}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->getImageResource(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mAdapter:Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;

    invoke-virtual {v2, v1}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->getImageResource(I)I

    move-result v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    .line 235
    :goto_0
    if-nez v0, :cond_0

    .line 236
    iget-object v2, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mBasePage:Landroid/view/ViewGroup;

    sget v3, Lcom/android/calendar/R$id;->image:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->alphaFade(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;

    .line 237
    iget-object v2, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mBasePage:Landroid/view/ViewGroup;

    sget v3, Lcom/android/calendar/R$id;->custom_frame:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 238
    if-eqz v2, :cond_0

    .line 239
    invoke-direct {p0, v2, v4}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->alphaFade(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mDoneButton:Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 245
    iget-object v2, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setAlpha(F)V

    .line 246
    iget-object v2, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 248
    :cond_1
    iget-object v2, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mPaginationView:Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;

    invoke-virtual {v2, v4}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->setAlpha(F)V

    .line 249
    iget-object v2, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mPaginationView:Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;

    invoke-direct {p0, v2, v5}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->alphaFade(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;

    .line 250
    iget-object v2, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mRightArrow:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v5}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->alphaFade(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;

    .line 253
    iget-object v2, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mViewPager:Lcom/android/calendar/LayoutDirectionAwareViewPager;

    invoke-virtual {v2, v4}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->setAlpha(F)V

    .line 254
    iget-object v2, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mViewPager:Lcom/android/calendar/LayoutDirectionAwareViewPager;

    invoke-virtual {v2, v1}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->setVisibility(I)V

    .line 255
    iget-object v1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mViewPager:Lcom/android/calendar/LayoutDirectionAwareViewPager;

    invoke-direct {p0, v1, v5}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->alphaFade(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/google/android/calendar/timely/WhatsNewFullScreen$4;

    invoke-direct {v2, p0, v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$4;-><init>(Lcom/google/android/calendar/timely/WhatsNewFullScreen;Z)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 273
    return-void

    :cond_2
    move v0, v1

    .line 233
    goto :goto_0
.end method

.method private directlyShowViews()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 276
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mPaginationView:Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->setAlpha(F)V

    .line 277
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mRightArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 278
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mViewPager:Lcom/android/calendar/LayoutDirectionAwareViewPager;

    invoke-virtual {v0, v1}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->setAlpha(F)V

    .line 279
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mDoneButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAlpha(F)V

    .line 281
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mBasePage:Landroid/view/ViewGroup;

    sget v1, Lcom/android/calendar/R$id;->texts_frame:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 285
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mBasePage:Landroid/view/ViewGroup;

    sget v1, Lcom/android/calendar/R$id;->image:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 286
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mBasePage:Landroid/view/ViewGroup;

    sget v1, Lcom/android/calendar/R$id;->custom_frame:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mViewPager:Lcom/android/calendar/LayoutDirectionAwareViewPager;

    invoke-virtual {v0, v3}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mViewPager:Lcom/android/calendar/LayoutDirectionAwareViewPager;

    invoke-virtual {v0, v4}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->setEnabled(Z)V

    .line 293
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mFooter:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 294
    return-void
.end method

.method private focusPagerForAccessibility()V
    .locals 2

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mViewPager:Lcom/android/calendar/LayoutDirectionAwareViewPager;

    new-instance v1, Lcom/google/android/calendar/timely/WhatsNewFullScreen$6;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$6;-><init>(Lcom/google/android/calendar/timely/WhatsNewFullScreen;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->post(Ljava/lang/Runnable;)Z

    .line 407
    :cond_0
    return-void
.end method

.method private setupStatusbar()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 173
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/lit16 v2, v2, 0x400

    or-int/lit16 v2, v2, 0x100

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 182
    new-instance v1, Lcom/android/calendar/utils/SystemWindowInsetApplier;

    invoke-direct {v1, v4}, Lcom/android/calendar/utils/SystemWindowInsetApplier;-><init>(Z)V

    .line 184
    iget-object v2, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mBasePage:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/calendar/utils/SystemWindowInsetApplier;->addView(Landroid/view/View;II)V

    .line 186
    iget-object v2, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mViewPager:Lcom/android/calendar/LayoutDirectionAwareViewPager;

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/calendar/utils/SystemWindowInsetApplier;->addView(Landroid/view/View;II)V

    .line 188
    iget-object v2, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mMainFrame:Landroid/widget/FrameLayout;

    invoke-static {v2, v1}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 192
    invoke-static {v0}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->createInstance(Landroid/view/Window;)Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;

    move-result-object v0

    .line 194
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$color;->transparent_black_04:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 195
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$color;->transparent_black_20:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 192
    invoke-virtual {v0, v4, v1, v2}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->tryApplyLightStatusbar(ZII)V

    .line 196
    return-void
.end method


# virtual methods
.method protected finishWhatsNew()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mAdapter:Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;

    invoke-virtual {v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mAdapter:Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;

    iget-object v1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mViewPager:Lcom/android/calendar/LayoutDirectionAwareViewPager;

    .line 321
    invoke-virtual {v1}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->isLastPage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->onSuccessfulCompletion()V

    .line 324
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->setResult(I)V

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mViewPager:Lcom/android/calendar/LayoutDirectionAwareViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->setEnabled(Z)V

    .line 328
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->finish()V

    .line 329
    return-void
.end method

.method protected abstract getAdapter()Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->getAdapter()Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mAdapter:Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;

    .line 88
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mAdapter:Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;

    invoke-virtual {v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->getCount()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->finishWhatsNew()V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mAdapter:Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;

    invoke-virtual {v0, p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->initialize(Landroid/content/Context;)V

    .line 94
    sget v0, Lcom/android/calendar/R$bool;->tablet_config:I

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    .line 95
    if-nez v0, :cond_1

    .line 97
    invoke-virtual {p0, v1}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->setRequestedOrientation(I)V

    .line 100
    :cond_1
    sget v0, Lcom/android/calendar/R$layout;->whats_new_full_screen:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->setContentView(I)V

    .line 102
    sget v0, Lcom/android/calendar/R$id;->main_frame:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mMainFrame:Landroid/widget/FrameLayout;

    .line 103
    sget v0, Lcom/android/calendar/R$id;->base_page:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mBasePage:Landroid/view/ViewGroup;

    .line 104
    sget v0, Lcom/android/calendar/R$id;->footer:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mFooter:Landroid/widget/FrameLayout;

    .line 105
    sget v0, Lcom/android/calendar/R$id;->right_arrow:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mRightArrow:Landroid/widget/ImageView;

    .line 106
    sget v0, Lcom/android/calendar/R$id;->done_button:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 107
    instance-of v1, v0, Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 109
    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mDoneButton:Landroid/widget/Button;

    .line 111
    :cond_2
    sget v0, Lcom/android/calendar/R$id;->pager:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/LayoutDirectionAwareViewPager;

    iput-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mViewPager:Lcom/android/calendar/LayoutDirectionAwareViewPager;

    .line 114
    new-instance v0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;

    invoke-direct {v0, p0, p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;-><init>(Lcom/google/android/calendar/timely/WhatsNewFullScreen;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mPaginationView:Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;

    .line 115
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 118
    iget-object v1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mPaginationView:Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;

    invoke-virtual {v1, v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mFooter:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mPaginationView:Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 120
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mPaginationView:Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->setAlpha(F)V

    .line 123
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mViewPager:Lcom/android/calendar/LayoutDirectionAwareViewPager;

    iget-object v1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mAdapter:Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;

    invoke-virtual {v0, v1}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 124
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mViewPager:Lcom/android/calendar/LayoutDirectionAwareViewPager;

    invoke-virtual {v0, p0}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 125
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mViewPager:Lcom/android/calendar/LayoutDirectionAwareViewPager;

    invoke-virtual {v0, v3}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->setEnabled(Z)V

    .line 127
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mBasePage:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mAdapter:Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;

    invoke-virtual {v1, v2}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->getBackgroundColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 128
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mAdapter:Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;

    iget-object v1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mBasePage:Landroid/view/ViewGroup;

    # invokes: Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->setViews(Landroid/view/View;I)V
    invoke-static {v0, v1, v2}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->access$000(Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;Landroid/view/View;I)V

    .line 131
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mFadeDuration:I

    .line 133
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mDoneButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 134
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 135
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mDoneButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/calendar/timely/WhatsNewFullScreen$1;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$1;-><init>(Lcom/google/android/calendar/timely/WhatsNewFullScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mDoneButton:Landroid/widget/Button;

    invoke-static {p0}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mFooter:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 145
    sget v0, Lcom/android/calendar/R$id;->right_arrow_touch:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 146
    new-instance v1, Lcom/google/android/calendar/timely/WhatsNewFullScreen$2;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$2;-><init>(Lcom/google/android/calendar/timely/WhatsNewFullScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    if-eqz p1, :cond_5

    const-string v0, "key_current_page"

    .line 155
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-le v0, v2, :cond_5

    .line 156
    invoke-direct {p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->directlyShowViews()V

    .line 166
    :goto_0
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    invoke-direct {p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->setupStatusbar()V

    .line 169
    :cond_4
    return-void

    .line 158
    :cond_5
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mViewPager:Lcom/android/calendar/LayoutDirectionAwareViewPager;

    new-instance v1, Lcom/google/android/calendar/timely/WhatsNewFullScreen$3;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$3;-><init>(Lcom/google/android/calendar/timely/WhatsNewFullScreen;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 410
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4

    .prologue
    .line 343
    invoke-static {p0}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    add-int/lit8 p1, p1, -0x1

    .line 347
    neg-float v0, p2

    .line 352
    :goto_0
    iget-object v1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mMainFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mAdapter:Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->getBackgroundColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 353
    iget-object v1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mBasePage:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mAdapter:Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;

    invoke-virtual {v2, p1}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->getBackgroundColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 354
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 355
    iget-object v1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mBasePage:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 356
    return-void

    .line 350
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 363
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mPaginationView:Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;

    invoke-virtual {v0, p1}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$PaginationView;->setCurrentPage(I)V

    .line 366
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mAdapter:Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->isLastPage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mRightArrow:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->alphaFade(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;

    .line 368
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mDoneButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mFooter:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, v1}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->alphaFade(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;

    .line 370
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mDoneButton:Landroid/widget/Button;

    invoke-direct {p0, v0, v2}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->alphaFade(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/calendar/timely/WhatsNewFullScreen$5;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$5;-><init>(Lcom/google/android/calendar/timely/WhatsNewFullScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 387
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->focusPagerForAccessibility()V

    .line 388
    return-void

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mRightArrow:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->alphaFade(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;

    .line 380
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mDoneButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mFooter:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, v2}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->alphaFade(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;

    .line 382
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mDoneButton:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->alphaFade(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;

    .line 383
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mDoneButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 200
    const-string v0, "key_current_page"

    iget-object v1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen;->mViewPager:Lcom/android/calendar/LayoutDirectionAwareViewPager;

    invoke-virtual {v1}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 202
    return-void
.end method

.method protected abstract onSuccessfulCompletion()V
.end method
