.class public Lcom/android/calendar/groove/GrooveScheduleFragment;
.super Lcom/android/calendar/groove/GrooveWizardFragment;
.source "GrooveScheduleFragment.java"


# static fields
.field private static final FAB_TARGET:Landroid/support/v7/graphics/Target;

.field public static final TAG:Ljava/lang/String;

.field private static mCache:Lcom/android/bitmap/BitmapCache;


# instance fields
.field private mBackArrow:Lcom/android/calendar/groove/BackButtonView;

.field private mBackgroundDrawable:Lcom/android/calendar/timely/ListenableBitmapDrawable;

.field private mBackgroundFrame:Landroid/view/ViewGroup;

.field private mBackgroundImage:Landroid/widget/ImageView;

.field private mColorTheme:I

.field private mDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

.field private mDurationView:Lcom/android/calendar/groove/GrooveScheduleView;

.field private mFrequencyView:Lcom/android/calendar/groove/GrooveScheduleView;

.field private mIsRtl:Z

.field private mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mPreferredTimesView:Lcom/android/calendar/groove/GrooveScheduleView;

.field private mSummaryView:Lcom/android/calendar/groove/GrooveSummaryView;

.field private mTitle:Ljava/lang/String;

.field private mType:I

.field private mViewPager:Lcom/android/calendar/timely/DisablableViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    const-class v0, Lcom/android/calendar/groove/GrooveScheduleFragment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/groove/GrooveScheduleFragment;->TAG:Ljava/lang/String;

    .line 86
    new-instance v0, Landroid/support/v7/graphics/Target$Builder;

    invoke-direct {v0}, Landroid/support/v7/graphics/Target$Builder;-><init>()V

    const v1, 0x3e99999a    # 0.3f

    .line 87
    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/Target$Builder;->setTargetSaturation(F)Landroid/support/v7/graphics/Target$Builder;

    move-result-object v0

    const v1, 0x3f266666    # 0.65f

    .line 88
    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/Target$Builder;->setTargetLightness(F)Landroid/support/v7/graphics/Target$Builder;

    move-result-object v0

    const v1, 0x3d4ccccd    # 0.05f

    .line 89
    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/Target$Builder;->setPopulationWeight(F)Landroid/support/v7/graphics/Target$Builder;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    .line 90
    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/Target$Builder;->setMaximumLightness(F)Landroid/support/v7/graphics/Target$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/support/v7/graphics/Target$Builder;->build()Landroid/support/v7/graphics/Target;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/groove/GrooveScheduleFragment;->FAB_TARGET:Landroid/support/v7/graphics/Target;

    .line 86
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveWizardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/groove/GrooveScheduleFragment;)Lcom/android/calendar/groove/GrooveScheduleView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mFrequencyView:Lcom/android/calendar/groove/GrooveScheduleView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/groove/GrooveScheduleFragment;)Lcom/android/calendar/groove/GrooveScheduleView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mDurationView:Lcom/android/calendar/groove/GrooveScheduleView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/groove/GrooveScheduleFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mBackgroundImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/view/View;IILandroid/view/View;)V
    .locals 0

    .prologue
    .line 70
    invoke-static {p0, p1, p2, p3}, Lcom/android/calendar/groove/GrooveScheduleFragment;->startBackgroundTransitionAnimation(Landroid/view/View;IILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/calendar/groove/GrooveScheduleFragment;I)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/calendar/groove/GrooveScheduleFragment;->matchColorThemeToBackgroundColor(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/calendar/groove/GrooveScheduleFragment;Landroid/graphics/Bitmap;I)I
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/groove/GrooveScheduleFragment;->getFabColor(Landroid/graphics/Bitmap;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 70
    invoke-static {p0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->createImageEnterAnimator(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/groove/GrooveScheduleFragment;)Lcom/android/calendar/groove/GrooveScheduleView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mPreferredTimesView:Lcom/android/calendar/groove/GrooveScheduleView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/groove/GrooveScheduleFragment;)Lcom/android/calendar/groove/GrooveSummaryView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mSummaryView:Lcom/android/calendar/groove/GrooveSummaryView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/groove/GrooveScheduleFragment;)Lcom/android/calendar/timely/ListenableBitmapDrawable;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mBackgroundDrawable:Lcom/android/calendar/timely/ListenableBitmapDrawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/groove/GrooveScheduleFragment;)Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mIsRtl:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/calendar/groove/GrooveScheduleFragment;I)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/calendar/groove/GrooveScheduleFragment;->requestInitialScreenFocus(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/calendar/groove/GrooveScheduleFragment;)Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/calendar/groove/GrooveScheduleFragment;I)I
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/calendar/groove/GrooveScheduleFragment;->getFocusViewId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/calendar/groove/GrooveScheduleFragment;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mBackgroundFrame:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private static createImageEnterAnimator(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 507
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 508
    const-string v1, "alpha"

    new-array v2, v6, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 509
    const-wide/16 v2, 0x69

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 510
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 511
    const-string v2, "translationX"

    new-array v3, v6, [F

    .line 512
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    aput v4, v3, v7

    const/4 v4, 0x0

    aput v4, v3, v8

    .line 511
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 513
    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 514
    new-instance v3, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v3}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 515
    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v1, v3, v7

    aput-object v2, v3, v8

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 516
    return-object v0

    .line 508
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createTransition(Landroid/app/Activity;Z)Landroid/transition/TransitionSet;
    .locals 6

    .prologue
    const-wide/16 v4, 0x69

    .line 522
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/calendar/groove/AnimatorHelper;->createSlideTransition(Landroid/app/Activity;Z)Landroid/transition/TransitionSet;

    move-result-object v0

    .line 523
    const-class v1, Lcom/android/calendar/groove/GrooveFrequencySelectionView;

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTarget(Ljava/lang/Class;)Landroid/transition/TransitionSet;

    .line 525
    if-nez p2, :cond_0

    .line 545
    :goto_0
    return-object v0

    .line 529
    :cond_0
    new-instance v1, Landroid/transition/Fade;

    invoke-direct {v1}, Landroid/transition/Fade;-><init>()V

    sget v2, Lcom/android/calendar/R$id;->schedule_background_frame:I

    .line 530
    invoke-virtual {v1, v2}, Landroid/transition/Fade;->addTarget(I)Landroid/transition/Transition;

    move-result-object v1

    .line 531
    invoke-virtual {v1, v4, v5}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    move-result-object v2

    .line 536
    new-instance v1, Lcom/android/calendar/groove/GrooveScheduleFragment$8;

    invoke-direct {v1, p0}, Lcom/android/calendar/groove/GrooveScheduleFragment$8;-><init>(Lcom/android/calendar/groove/GrooveScheduleFragment;)V

    sget v3, Lcom/android/calendar/R$id;->back_arrow:I

    .line 537
    invoke-virtual {v1, v3}, Lcom/android/calendar/groove/GrooveScheduleFragment$8;->addTarget(I)Landroid/transition/Transition;

    move-result-object v1

    .line 538
    invoke-virtual {v1, v4, v5}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    move-result-object v3

    .line 540
    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    .line 541
    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 542
    invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 543
    invoke-virtual {v1, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-object v0, v1

    .line 545
    goto :goto_0
.end method

.method private getFabColor(Landroid/graphics/Bitmap;I)I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 445
    invoke-static {p1}, Landroid/support/v7/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/groove/GrooveScheduleFragment;->FAB_TARGET:Landroid/support/v7/graphics/Target;

    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/Palette$Builder;->addTarget(Landroid/support/v7/graphics/Target;)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/groove/GrooveScheduleFragment$6;

    invoke-direct {v1, p0, p2}, Lcom/android/calendar/groove/GrooveScheduleFragment$6;-><init>(Lcom/android/calendar/groove/GrooveScheduleFragment;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/Palette$Builder;->addFilter(Landroid/support/v7/graphics/Palette$Filter;)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v0

    .line 450
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Builder;->generate()Landroid/support/v7/graphics/Palette;

    move-result-object v1

    .line 451
    invoke-virtual {v1, v2}, Landroid/support/v7/graphics/Palette;->getVibrantColor(I)I

    move-result v0

    .line 452
    if-eq v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1, v2}, Landroid/support/v7/graphics/Palette;->getLightVibrantColor(I)I

    move-result v0

    goto :goto_0
.end method

.method private getFocusViewId(I)I
    .locals 3

    .prologue
    .line 269
    packed-switch p1, :pswitch_data_0

    .line 274
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :pswitch_0
    sget v0, Lcom/android/calendar/R$id;->frequency_title:I

    .line 273
    :goto_0
    return v0

    .line 271
    :pswitch_1
    sget v0, Lcom/android/calendar/R$id;->duration_title:I

    goto :goto_0

    .line 272
    :pswitch_2
    sget v0, Lcom/android/calendar/R$id;->preferred_times_title:I

    goto :goto_0

    .line 273
    :pswitch_3
    sget v0, Lcom/android/calendar/R$id;->summary_title:I

    goto :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private matchColorThemeToBackgroundColor(I)V
    .locals 3

    .prologue
    .line 457
    invoke-virtual {p0, p1}, Lcom/android/calendar/groove/GrooveScheduleFragment;->computeColorTheme(I)I

    move-result v0

    .line 458
    iget v1, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mColorTheme:I

    if-ne v1, v0, :cond_0

    .line 468
    :goto_0
    return-void

    .line 461
    :cond_0
    iput v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mColorTheme:I

    .line 462
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mBackArrow:Lcom/android/calendar/groove/BackButtonView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/calendar/groove/BackButtonView;->setTheme(IZ)V

    .line 463
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mDurationView:Lcom/android/calendar/groove/GrooveScheduleView;

    invoke-virtual {v1, v0}, Lcom/android/calendar/groove/GrooveScheduleView;->changeTheme(I)V

    .line 464
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mFrequencyView:Lcom/android/calendar/groove/GrooveScheduleView;

    invoke-virtual {v1, v0}, Lcom/android/calendar/groove/GrooveScheduleView;->changeTheme(I)V

    .line 465
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mPreferredTimesView:Lcom/android/calendar/groove/GrooveScheduleView;

    invoke-virtual {v1, v0}, Lcom/android/calendar/groove/GrooveScheduleView;->changeTheme(I)V

    .line 466
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mSummaryView:Lcom/android/calendar/groove/GrooveSummaryView;

    invoke-virtual {v1, v0}, Lcom/android/calendar/groove/GrooveSummaryView;->changeTheme(I)V

    .line 467
    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->setStatusBarTheme(I)V

    goto :goto_0
.end method

.method public static newInstance(ILjava/lang/String;Lcom/google/android/calendar/api/HabitDescriptor;)Lcom/android/calendar/groove/GrooveScheduleFragment;
    .locals 3

    .prologue
    .line 120
    new-instance v0, Lcom/android/calendar/groove/GrooveScheduleFragment;

    invoke-direct {v0}, Lcom/android/calendar/groove/GrooveScheduleFragment;-><init>()V

    .line 121
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 122
    const-string v2, "groove_type"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    const-string v2, "title"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v2, "groove_descriptor"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 125
    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/GrooveScheduleFragment;->setArguments(Landroid/os/Bundle;)V

    .line 126
    return-object v0
.end method

.method private requestInitialScreenFocus(I)V
    .locals 4

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_0

    .line 257
    new-instance v1, Lcom/android/calendar/groove/GrooveScheduleFragment$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/calendar/groove/GrooveScheduleFragment$3;-><init>(Lcom/android/calendar/groove/GrooveScheduleFragment;Landroid/view/View;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private static startBackgroundTransitionAnimation(Landroid/view/View;IILandroid/view/View;)V
    .locals 4

    .prologue
    .line 473
    const-string v0, "backgroundColor"

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 476
    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 477
    const-wide/16 v2, 0x69

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 478
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 479
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 480
    if-eqz p3, :cond_0

    .line 481
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 482
    new-instance v1, Lcom/android/calendar/groove/GrooveScheduleFragment$7;

    invoke-direct {v1, p3}, Lcom/android/calendar/groove/GrooveScheduleFragment$7;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 503
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 504
    return-void
.end method


# virtual methods
.method public changeSelection(I)V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 310
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mViewPager:Lcom/android/calendar/timely/DisablableViewPager;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/DisablableViewPager;->setCurrentItem(I)V

    .line 311
    return-void
.end method

.method public getSelectionIndex()I
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mViewPager:Lcom/android/calendar/timely/DisablableViewPager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/DisablableViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method initializeImageBackground(Z)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 345
    new-instance v1, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    const/4 v0, 0x2

    invoke-direct {v1, v0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;-><init>(I)V

    .line 346
    const v0, 0x3f866666    # 1.05f

    iput v0, v1, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->parallaxSpeedMultiplier:F

    .line 347
    iput v6, v1, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->parallaxDirection:I

    .line 349
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 350
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 351
    invoke-static {v0}, Lcom/android/calendar/Utils;->getMaximumDisplayDimension(Landroid/view/Display;)I

    move-result v3

    .line 352
    new-instance v0, Lcom/android/calendar/timely/ListenableBitmapDrawable;

    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v4, Lcom/android/calendar/groove/GrooveScheduleFragment;->mCache:Lcom/android/bitmap/BitmapCache;

    invoke-direct {v0, v2, v4, v6, v1}, Lcom/android/calendar/timely/ListenableBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mBackgroundDrawable:Lcom/android/calendar/timely/ListenableBitmapDrawable;

    .line 354
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/groove/GrooveCategories;->getInstance(Landroid/content/res/Resources;)Lcom/android/calendar/groove/GrooveCategories;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->getFlairUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    iget v2, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mType:I

    invoke-static {v2}, Lcom/google/android/calendar/api/HabitUtil;->getParentType(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/calendar/groove/GrooveCategories;->getCategory(I)Lcom/android/calendar/groove/GrooveCategories$Category;

    move-result-object v4

    .line 359
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mType:I

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->getGrooveFlairUrlString(I)Ljava/lang/String;

    move-result-object v1

    .line 363
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 366
    invoke-static {}, Lcom/android/calendar/timely/data/CalendarsCache;->getInstance()Lcom/android/calendar/timely/data/CalendarsCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarsCache;->getData()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/CalendarItem;

    .line 367
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    iget-object v2, v2, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v2}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    iget-object v2, v2, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 368
    invoke-virtual {v2}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v2

    .line 369
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getOwnerAccount()Ljava/lang/String;

    move-result-object v3

    .line 368
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 370
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getColor()I

    move-result v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v0

    .line 371
    if-eqz p1, :cond_3

    .line 372
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mBackgroundFrame:Landroid/view/ViewGroup;

    iget v2, v4, Lcom/android/calendar/groove/GrooveCategories$Category;->backgroundColor:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 373
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mBackgroundFrame:Landroid/view/ViewGroup;

    iget v2, v4, Lcom/android/calendar/groove/GrooveCategories$Category;->backgroundColor:I

    invoke-static {v1, v2, v0, v5}, Lcom/android/calendar/groove/GrooveScheduleFragment;->startBackgroundTransitionAnimation(Landroid/view/View;IILandroid/view/View;)V

    .line 378
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mSummaryView:Lcom/android/calendar/groove/GrooveSummaryView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/calendar/groove/GrooveSummaryView;->setFabColor(I)V

    .line 379
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mBackgroundImage:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 380
    invoke-direct {p0, v0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->matchColorThemeToBackgroundColor(I)V

    .line 442
    :cond_2
    :goto_1
    return-void

    .line 376
    :cond_3
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mBackgroundFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_0

    .line 385
    :cond_4
    if-eqz p1, :cond_6

    .line 386
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mBackgroundFrame:Landroid/view/ViewGroup;

    iget v2, v4, Lcom/android/calendar/groove/GrooveCategories$Category;->backgroundColor:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 387
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 389
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 390
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v6, v4, Lcom/android/calendar/groove/GrooveCategories$Category;->backgroundDrawableResId:I

    invoke-static {v2, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 389
    invoke-static {v0, v2}, Lcom/android/calendar/Utils;->getRtlAdjustedImage(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 392
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v2, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 393
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mBackgroundImage:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 394
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 398
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mSummaryView:Lcom/android/calendar/groove/GrooveSummaryView;

    iget v2, v4, Lcom/android/calendar/groove/GrooveCategories$Category;->fabColor:I

    invoke-virtual {v0, v2}, Lcom/android/calendar/groove/GrooveSummaryView;->setFabColor(I)V

    .line 400
    :cond_6
    new-instance v0, Lcom/android/volley/toolbox/ImageRequest;

    new-instance v2, Lcom/android/calendar/groove/GrooveScheduleFragment$4;

    invoke-direct {v2, p0, p1, v4}, Lcom/android/calendar/groove/GrooveScheduleFragment$4;-><init>(Lcom/android/calendar/groove/GrooveScheduleFragment;ZLcom/android/calendar/groove/GrooveCategories$Category;)V

    new-instance v7, Lcom/android/calendar/groove/GrooveScheduleFragment$5;

    invoke-direct {v7, p0}, Lcom/android/calendar/groove/GrooveScheduleFragment$5;-><init>(Lcom/android/calendar/groove/GrooveScheduleFragment;)V

    move v4, v3

    move-object v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/android/volley/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V

    .line 439
    const-string v1, "background_target_request"

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/ImageRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 440
    invoke-static {}, Lcom/android/calendar/cache/VolleyQueueHolder;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 290
    invoke-super {p0, p1}, Lcom/android/calendar/groove/GrooveWizardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "groove_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mType:I

    .line 293
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mTitle:Ljava/lang/String;

    .line 294
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "groove_descriptor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitDescriptor;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    .line 295
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mColorTheme:I

    .line 296
    new-instance v0, Lcom/android/calendar/groove/GrooveSummaryView;

    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/groove/GrooveSummaryView;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mSummaryView:Lcom/android/calendar/groove/GrooveSummaryView;

    .line 297
    new-instance v0, Lcom/android/calendar/groove/GrooveFrequencySelectionView;

    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/groove/GrooveFrequencySelectionView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mFrequencyView:Lcom/android/calendar/groove/GrooveScheduleView;

    .line 298
    new-instance v0, Lcom/android/calendar/groove/GrooveDurationSelectionView;

    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/groove/GrooveDurationSelectionView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mDurationView:Lcom/android/calendar/groove/GrooveScheduleView;

    .line 299
    new-instance v0, Lcom/android/calendar/groove/GroovePreferredTimesSelectionView;

    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/groove/GroovePreferredTimesSelectionView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mPreferredTimesView:Lcom/android/calendar/groove/GrooveScheduleView;

    .line 300
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 132
    sget v0, Lcom/android/calendar/R$layout;->groove_schedule_fragment:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 133
    invoke-static {}, Lcom/android/calendar/BitmapCacheHolder;->getBackgroundImageCache()Lcom/android/bitmap/BitmapCache;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mCache:Lcom/android/bitmap/BitmapCache;

    .line 134
    sget v0, Lcom/android/calendar/R$id;->view_pager:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/DisablableViewPager;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mViewPager:Lcom/android/calendar/timely/DisablableViewPager;

    .line 135
    sget v0, Lcom/android/calendar/R$id;->background_image_view:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mBackgroundImage:Landroid/widget/ImageView;

    .line 136
    sget v0, Lcom/android/calendar/R$id;->back_arrow:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/groove/BackButtonView;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mBackArrow:Lcom/android/calendar/groove/BackButtonView;

    .line 137
    sget v0, Lcom/android/calendar/R$id;->frame:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mFrame:Landroid/view/ViewGroup;

    .line 138
    sget v0, Lcom/android/calendar/R$id;->schedule_background_frame:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mBackgroundFrame:Landroid/view/ViewGroup;

    .line 139
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    sget v0, Lcom/android/calendar/R$id;->inset_frame:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->adjustCardUi()V

    .line 144
    new-instance v0, Lcom/android/calendar/groove/GrooveScheduleFragment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/groove/GrooveScheduleFragment$1;-><init>(Lcom/android/calendar/groove/GrooveScheduleFragment;)V

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 183
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mViewPager:Lcom/android/calendar/timely/DisablableViewPager;

    iget-object v3, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, v3}, Lcom/android/calendar/timely/DisablableViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 185
    if-nez p3, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->changeSelection(I)V

    .line 188
    if-eqz p3, :cond_1

    .line 190
    const-string v0, "groove_type"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mType:I

    .line 191
    const-string v0, "groove_descriptor"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitDescriptor;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    .line 194
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/calendar/groove/GrooveScheduleFragment;->initializeImageBackground(Z)V

    .line 195
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mIsRtl:Z

    .line 196
    iget-boolean v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mIsRtl:Z

    if-eqz v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mViewPager:Lcom/android/calendar/timely/DisablableViewPager;

    iput-boolean v1, v0, Lcom/android/calendar/timely/DisablableViewPager;->mLeftScrollEnabled:Z

    .line 201
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mViewPager:Lcom/android/calendar/timely/DisablableViewPager;

    new-instance v1, Lcom/android/calendar/groove/GrooveScheduleFragment$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/groove/GrooveScheduleFragment$2;-><init>(Lcom/android/calendar/groove/GrooveScheduleFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/DisablableViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 237
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mViewPager:Lcom/android/calendar/timely/DisablableViewPager;

    invoke-virtual {v0, v4}, Lcom/android/calendar/timely/DisablableViewPager;->setEnabled(Z)V

    .line 238
    return-object v2

    .line 185
    :cond_2
    const-string v0, "current_page"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mViewPager:Lcom/android/calendar/timely/DisablableViewPager;

    iput-boolean v1, v0, Lcom/android/calendar/timely/DisablableViewPager;->mRightScrollEnabled:Z

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 304
    invoke-super {p0}, Lcom/android/calendar/groove/GrooveWizardFragment;->onDestroy()V

    .line 305
    invoke-static {}, Lcom/android/calendar/cache/VolleyQueueHolder;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    const-string v1, "background_target_request"

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 306
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 280
    invoke-super {p0, p1}, Lcom/android/calendar/groove/GrooveWizardFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 281
    const-string v0, "groove_type"

    iget v1, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 282
    const-string v0, "title"

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v0, "groove_descriptor"

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 284
    const-string v0, "current_page"

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mViewPager:Lcom/android/calendar/timely/DisablableViewPager;

    invoke-virtual {v1}, Lcom/android/calendar/timely/DisablableViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    const-string v0, "color_theme"

    iget v1, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mColorTheme:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 286
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 243
    invoke-super {p0}, Lcom/android/calendar/groove/GrooveWizardFragment;->onStart()V

    .line 244
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->getSelectionIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->requestInitialScreenFocus(I)V

    .line 245
    return-void
.end method

.method public previousSelection()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mViewPager:Lcom/android/calendar/timely/DisablableViewPager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/DisablableViewPager;->getCurrentItem()I

    move-result v0

    if-ltz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mViewPager:Lcom/android/calendar/timely/DisablableViewPager;

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mViewPager:Lcom/android/calendar/timely/DisablableViewPager;

    invoke-virtual {v1}, Lcom/android/calendar/timely/DisablableViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/DisablableViewPager;->setCurrentItem(I)V

    .line 335
    :cond_0
    return-void
.end method

.method public setChangesEnabled(Z)V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mBackArrow:Lcom/android/calendar/groove/BackButtonView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/BackButtonView;->setIcon(I)V

    .line 322
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mViewPager:Lcom/android/calendar/timely/DisablableViewPager;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/DisablableViewPager;->setEnabled(Z)V

    .line 323
    return-void
.end method

.method public setGrooveModifications(Lcom/google/android/calendar/api/HabitModifications;)V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mSummaryView:Lcom/android/calendar/groove/GrooveSummaryView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/groove/GrooveSummaryView;->setGrooveModifications(Lcom/google/android/calendar/api/HabitModifications;)V

    .line 315
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    .line 316
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getSummary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mTitle:Ljava/lang/String;

    .line 317
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getType()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment;->mType:I

    .line 318
    return-void
.end method

.method public useSlideTransitions(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 338
    invoke-static {}, Lcom/android/calendar/Utils;->isLollipopMr1OrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->createTransition(Landroid/app/Activity;Z)Landroid/transition/TransitionSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->setEnterTransition(Landroid/transition/Transition;)V

    .line 340
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->createTransition(Landroid/app/Activity;Z)Landroid/transition/TransitionSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->setReturnTransition(Landroid/transition/Transition;)V

    .line 342
    :cond_0
    return-void
.end method
