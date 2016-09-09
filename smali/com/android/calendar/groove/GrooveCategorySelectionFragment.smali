.class public Lcom/android/calendar/groove/GrooveCategorySelectionFragment;
.super Lcom/android/calendar/groove/GrooveWizardFragment;
.source "GrooveCategorySelectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/groove/GrooveCategorySelectionFragment$Listener;
    }
.end annotation


# static fields
.field public static CATEGORY_BACKGROUND_SHARED_ELEMENT_PREFIX:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;

.field private static mIsTablet:Z


# instance fields
.field private mActionBar:Landroid/view/ViewGroup;

.field private mActionBarTitleShowing:Z

.field private mActionBarTitleView:Landroid/widget/TextView;

.field private mBackButton:Lcom/android/calendar/groove/BackButtonView;

.field private mCategoryTiles:[Landroid/view/View;

.field private mScrollView:Lcom/android/calendar/groove/ObservableScrollView;

.field private mStoreHeader:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->TAG:Ljava/lang/String;

    .line 64
    const-string v0, "category_"

    sput-object v0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->CATEGORY_BACKGROUND_SHARED_ELEMENT_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveWizardFragment;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mActionBarTitleShowing:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/groove/GrooveCategorySelectionFragment;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->maybeShowActionBar()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mIsTablet:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/calendar/groove/GrooveCategorySelectionFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mActionBarTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method private animateActionBarTitleIn()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 355
    iput-boolean v2, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mActionBarTitleShowing:Z

    .line 356
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mActionBarTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 358
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 359
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 360
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$dimen;->groove_actionbar_text_translation_y:I

    .line 361
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v4, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 362
    new-instance v2, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v2}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 363
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 364
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 366
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mActionBarTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 367
    return-void
.end method

.method private animateActionBarTitleOut()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mActionBarTitleShowing:Z

    .line 372
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 373
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 374
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$dimen;->groove_actionbar_text_translation_y:I

    .line 375
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 376
    new-instance v2, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v2}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 377
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 378
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 379
    new-instance v1, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$7;

    invoke-direct {v1, p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$7;-><init>(Lcom/android/calendar/groove/GrooveCategorySelectionFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 392
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mActionBarTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 393
    return-void
.end method

.method private createCategoryView(I)Lcom/android/calendar/groove/GrooveCategoryView;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 276
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/groove/GrooveCategories;->getInstance(Landroid/content/res/Resources;)Lcom/android/calendar/groove/GrooveCategories;

    move-result-object v0

    .line 277
    invoke-virtual {v0, p1}, Lcom/android/calendar/groove/GrooveCategories;->getCategory(I)Lcom/android/calendar/groove/GrooveCategories$Category;

    move-result-object v0

    .line 278
    new-instance v1, Lcom/android/calendar/groove/GrooveCategoryView;

    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/calendar/groove/GrooveCategoryView;-><init>(Landroid/content/Context;)V

    .line 279
    iget-object v2, v0, Lcom/android/calendar/groove/GrooveCategories$Category;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/calendar/groove/GrooveCategoryView;->setTitle(Ljava/lang/String;)V

    .line 280
    iget-object v2, v0, Lcom/android/calendar/groove/GrooveCategories$Category;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/calendar/groove/GrooveCategoryView;->setDescription(Ljava/lang/String;)V

    .line 281
    iget v2, v0, Lcom/android/calendar/groove/GrooveCategories$Category;->backgroundColor:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/groove/GrooveCategoryView;->setBackgroundColor(I)V

    .line 282
    sget v2, Lcom/android/calendar/R$string;->groove_category_a11y:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/calendar/groove/GrooveCategories$Category;->title:Ljava/lang/String;

    aput-object v5, v3, v4

    iget-object v4, v0, Lcom/android/calendar/groove/GrooveCategories$Category;->description:Ljava/lang/String;

    aput-object v4, v3, v6

    .line 283
    invoke-virtual {p0, v2, v3}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 282
    invoke-virtual {v1, v2}, Lcom/android/calendar/groove/GrooveCategoryView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 285
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    invoke-static {p1}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getBackgroundSharedElementName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/groove/GrooveCategoryView;->setTransitionName(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v1, v6}, Lcom/android/calendar/groove/GrooveCategoryView;->setTransitionGroup(Z)V

    .line 290
    :cond_0
    invoke-virtual {v1}, Lcom/android/calendar/groove/GrooveCategoryView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$5;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$5;-><init>(Lcom/android/calendar/groove/GrooveCategorySelectionFragment;Lcom/android/calendar/groove/GrooveCategories$Category;Lcom/android/calendar/groove/GrooveCategoryView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 323
    new-instance v0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$6;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$6;-><init>(Lcom/android/calendar/groove/GrooveCategorySelectionFragment;ILcom/android/calendar/groove/GrooveCategoryView;)V

    invoke-virtual {v1, v0}, Lcom/android/calendar/groove/GrooveCategoryView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mIsTablet:Z

    if-eqz v0, :cond_1

    .line 334
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$dimen;->card_elevation:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/android/calendar/groove/GrooveCategoryView;->setElevation(F)V

    .line 336
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$dimen;->card_corner_radius:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 335
    invoke-static {v1, v0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->configureOutlineProviderForElevationShadow(Landroid/view/View;I)V

    .line 338
    :cond_1
    invoke-virtual {v1, v6}, Lcom/android/calendar/groove/GrooveCategoryView;->setFocusable(Z)V

    .line 339
    invoke-virtual {v1, v6}, Lcom/android/calendar/groove/GrooveCategoryView;->setClickable(Z)V

    .line 340
    return-object v1
.end method

.method private createCategoryViewLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 249
    sget-boolean v0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->getMaximumWindowDimension(Landroid/content/res/Resources;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 271
    :goto_0
    int-to-float v1, v0

    const/high16 v2, 0x41800000    # 16.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x41100000    # 9.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 272
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v2

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/utils/NycUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v0, v0

    .line 258
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    .line 257
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    .line 261
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 262
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 263
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 264
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 265
    iget v0, v1, Landroid/graphics/Point;->x:I

    goto :goto_0
.end method

.method private createEnterAnimation()Landroid/view/animation/AnimationSet;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 344
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 345
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 346
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$dimen;->groove_category_tile_translation_y:I

    .line 347
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v4, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 348
    new-instance v2, Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v2}, Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 349
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 350
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 351
    return-object v0
.end method

.method private createFadeTransitionSet(IZ)Landroid/transition/TransitionSet;
    .locals 6

    .prologue
    .line 466
    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    .line 467
    new-instance v2, Landroid/transition/Fade;

    if-eqz p2, :cond_1

    const/4 v0, 0x2

    :goto_0
    invoke-direct {v2, v0}, Landroid/transition/Fade;-><init>(I)V

    .line 468
    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 470
    sget v0, Lcom/android/calendar/R$id;->action_bar:I

    invoke-virtual {v2, v0}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    .line 471
    sget v0, Lcom/android/calendar/R$id;->store_header:I

    invoke-virtual {v2, v0}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    .line 473
    invoke-static {p1}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getBackgroundSharedElementName(I)Ljava/lang/String;

    move-result-object v3

    .line 474
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mCategoryTiles:[Landroid/view/View;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 475
    iget-object v4, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mCategoryTiles:[Landroid/view/View;

    aget-object v4, v4, v0

    .line 476
    invoke-virtual {v4}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 477
    invoke-virtual {v4}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/transition/Transition;->addTarget(Ljava/lang/String;)Landroid/transition/Transition;

    .line 474
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 467
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 481
    :cond_2
    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 482
    return-object v1
.end method

.method private createTransitionSet(IZ)Landroid/transition/TransitionSet;
    .locals 11

    .prologue
    const-wide/16 v8, 0x12c

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 398
    invoke-static {}, Lcom/android/calendar/Utils;->isLollipopMr1OrLater()Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->createFadeTransitionSet(IZ)Landroid/transition/TransitionSet;

    move-result-object v0

    .line 459
    :goto_0
    return-object v0

    .line 403
    :cond_0
    new-instance v6, Landroid/transition/TransitionSet;

    invoke-direct {v6}, Landroid/transition/TransitionSet;-><init>()V

    .line 404
    new-instance v2, Landroid/transition/Slide;

    const/16 v0, 0x30

    invoke-direct {v2, v0}, Landroid/transition/Slide;-><init>(I)V

    .line 405
    invoke-virtual {v2, v8, v9}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 406
    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 407
    invoke-virtual {v2, v3}, Landroid/transition/Transition;->setPropagation(Landroid/transition/TransitionPropagation;)V

    .line 408
    new-instance v1, Landroid/transition/Slide;

    const/16 v0, 0x50

    invoke-direct {v1, v0}, Landroid/transition/Slide;-><init>(I)V

    .line 409
    invoke-virtual {v1, v8, v9}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 410
    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 411
    invoke-virtual {v1, v3}, Landroid/transition/Transition;->setPropagation(Landroid/transition/TransitionPropagation;)V

    .line 412
    invoke-static {p1}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getBackgroundSharedElementName(I)Ljava/lang/String;

    move-result-object v8

    .line 413
    const/4 v3, 0x1

    .line 417
    if-eqz p2, :cond_1

    move-object v7, v2

    .line 418
    :goto_1
    if-eqz p2, :cond_2

    move-object v0, v1

    .line 420
    :goto_2
    sget v5, Lcom/android/calendar/R$id;->action_bar:I

    invoke-virtual {v7, v5}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    .line 421
    sget v5, Lcom/android/calendar/R$id;->store_header:I

    invoke-virtual {v7, v5}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    move v5, v3

    move v3, v4

    .line 423
    :goto_3
    iget-object v9, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mCategoryTiles:[Landroid/view/View;

    array-length v9, v9

    if-ge v3, v9, :cond_5

    .line 424
    iget-object v9, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mCategoryTiles:[Landroid/view/View;

    aget-object v9, v9, v3

    .line 425
    invoke-virtual {v9}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v5, v4

    .line 423
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_1
    move-object v7, v1

    .line 417
    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 418
    goto :goto_2

    .line 427
    :cond_3
    if-eqz v5, :cond_4

    .line 428
    invoke-virtual {v9}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/transition/Transition;->addTarget(Ljava/lang/String;)Landroid/transition/Transition;

    goto :goto_4

    .line 430
    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/transition/Transition;->addTarget(Ljava/lang/String;)Landroid/transition/Transition;

    goto :goto_4

    .line 434
    :cond_5
    new-instance v0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$8;

    invoke-direct {v0, p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$8;-><init>(Lcom/android/calendar/groove/GrooveCategorySelectionFragment;)V

    .line 454
    invoke-virtual {v6, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 455
    invoke-virtual {v6, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 456
    invoke-virtual {v1}, Landroid/transition/Transition;->getTargetNames()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Landroid/transition/Transition;->getTargetNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 457
    invoke-virtual {v6, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    :cond_6
    move-object v0, v6

    .line 459
    goto/16 :goto_0
.end method

.method public static getBackgroundSharedElementName(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    sget-object v0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->CATEGORY_BACKGROUND_SHARED_ELEMENT_PREFIX:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private maybeShowActionBar()V
    .locals 4

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mScrollView:Lcom/android/calendar/groove/ObservableScrollView;

    invoke-virtual {v1}, Lcom/android/calendar/groove/ObservableScrollView;->getScrollY()I

    move-result v1

    .line 228
    iget-boolean v2, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mActionBarTitleShowing:Z

    if-nez v2, :cond_2

    sget v2, Lcom/android/calendar/R$dimen;->groove_actionbar_animation_threshold_enter:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-le v1, v2, :cond_2

    .line 230
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->animateActionBarTitleIn()V

    .line 236
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 237
    if-lez v1, :cond_3

    .line 238
    sget v2, Lcom/android/calendar/R$dimen;->groove_actionbar_elevation:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 239
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mActionBar:Landroid/view/ViewGroup;

    int-to-float v1, v1

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v1, v3

    int-to-float v0, v0

    .line 240
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 239
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setElevation(F)V

    .line 245
    :cond_1
    :goto_1
    return-void

    .line 232
    :cond_2
    iget-boolean v2, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mActionBarTitleShowing:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/android/calendar/R$dimen;->groove_actionbar_animation_threshold_exit:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->animateActionBarTitleOut()V

    goto :goto_0

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mActionBar:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setElevation(F)V

    goto :goto_1
.end method


# virtual methods
.method protected adjustCardUi()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 212
    sget-boolean v0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 214
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 217
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 216
    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    .line 218
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mScrollView:Lcom/android/calendar/groove/ObservableScrollView;

    invoke-virtual {v0}, Lcom/android/calendar/groove/ObservableScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 220
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mScrollView:Lcom/android/calendar/groove/ObservableScrollView;

    invoke-virtual {v0}, Lcom/android/calendar/groove/ObservableScrollView;->requestLayout()V

    .line 223
    :cond_0
    return-void
.end method

.method public initTransitions(I)V
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->createTransitionSet(IZ)Landroid/transition/TransitionSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->setExitTransition(Landroid/transition/Transition;)V

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->createTransitionSet(IZ)Landroid/transition/TransitionSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->setReturnTransition(Landroid/transition/Transition;)V

    .line 86
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 102
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 103
    invoke-static {v4}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->analytics_goal1_categories:I

    .line 104
    invoke-virtual {p0, v1}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-interface {v0, v4, v1}, Lcom/android/calendar/AnalyticsLogger;->trackView(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    invoke-static {v4}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 106
    sget v0, Lcom/android/calendar/R$bool;->tablet_config:I

    invoke-static {v4, v0}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mIsTablet:Z

    .line 107
    sget v0, Lcom/android/calendar/R$layout;->groove_category_selection_fragment:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 108
    sget v0, Lcom/android/calendar/R$id;->category_list:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 109
    sget v1, Lcom/android/calendar/R$id;->category_scroll_view:I

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/groove/ObservableScrollView;

    iput-object v1, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mScrollView:Lcom/android/calendar/groove/ObservableScrollView;

    .line 110
    sget v1, Lcom/android/calendar/R$id;->store_header:I

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mStoreHeader:Landroid/widget/LinearLayout;

    .line 111
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mStoreHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setTransitionGroup(Z)V

    .line 113
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mScrollView:Lcom/android/calendar/groove/ObservableScrollView;

    invoke-virtual {v1, v3}, Lcom/android/calendar/groove/ObservableScrollView;->setTransitionGroup(Z)V

    .line 114
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setTransitionGroup(Z)V

    .line 117
    :cond_0
    sget v1, Lcom/android/calendar/R$id;->store_title:I

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 118
    sget-boolean v2, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mIsTablet:Z

    if-nez v2, :cond_1

    .line 119
    sget v2, Lcom/android/calendar/R$id;->back_arrow:I

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/groove/BackButtonView;

    iput-object v2, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mBackButton:Lcom/android/calendar/groove/BackButtonView;

    .line 120
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mBackButton:Lcom/android/calendar/groove/BackButtonView;

    invoke-virtual {v2, v8}, Lcom/android/calendar/groove/BackButtonView;->setIcon(I)V

    .line 121
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mBackButton:Lcom/android/calendar/groove/BackButtonView;

    invoke-virtual {v2, v9, v3}, Lcom/android/calendar/groove/BackButtonView;->setTheme(IZ)V

    .line 122
    sget v2, Lcom/android/calendar/R$id;->action_bar:I

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mActionBar:Landroid/view/ViewGroup;

    .line 123
    sget v2, Lcom/android/calendar/R$id;->action_bar_title_view:I

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mActionBarTitleView:Landroid/widget/TextView;

    .line 124
    iget-object v7, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mActionBarTitleView:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mActionBarTitleShowing:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mActionBarTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 126
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mScrollView:Lcom/android/calendar/groove/ObservableScrollView;

    new-instance v7, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$1;

    invoke-direct {v7, p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$1;-><init>(Lcom/android/calendar/groove/GrooveCategorySelectionFragment;)V

    invoke-virtual {v2, v7}, Lcom/android/calendar/groove/ObservableScrollView;->setOnScrollListener(Lcom/android/calendar/groove/ObservableScrollView$OnScrollChangeListener;)V

    .line 133
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mActionBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v7, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$2;

    invoke-direct {v7, p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$2;-><init>(Lcom/android/calendar/groove/GrooveCategorySelectionFragment;)V

    invoke-virtual {v2, v7}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 145
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    sget v2, Lcom/android/calendar/R$id;->inset_frame:I

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 147
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mActionBar:Landroid/view/ViewGroup;

    new-instance v7, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$3;

    invoke-direct {v7, p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$3;-><init>(Lcom/android/calendar/groove/GrooveCategorySelectionFragment;)V

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 157
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mActionBar:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    .line 158
    new-array v2, v8, [I

    const v7, 0x101030e

    aput v7, v2, v3

    .line 159
    invoke-virtual {v4, v2}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 160
    iget-object v4, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mBackButton:Lcom/android/calendar/groove/BackButtonView;

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/android/calendar/groove/BackButtonView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mBackButton:Lcom/android/calendar/groove/BackButtonView;

    invoke-virtual {v2, v8}, Lcom/android/calendar/groove/BackButtonView;->setClipToOutline(Z)V

    .line 162
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mBackButton:Lcom/android/calendar/groove/BackButtonView;

    new-instance v4, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$4;

    invoke-direct {v4, p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$4;-><init>(Lcom/android/calendar/groove/GrooveCategorySelectionFragment;)V

    invoke-virtual {v2, v4}, Lcom/android/calendar/groove/BackButtonView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 172
    :cond_1
    invoke-virtual {p0, v8}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->setStatusBarTheme(I)V

    .line 173
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->adjustCardUi()V

    .line 174
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$dimen;->groove_category_margin_horizontal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 177
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mCategoryTiles:[Landroid/view/View;

    .line 178
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mCategoryTiles:[Landroid/view/View;

    const/16 v4, 0x100

    invoke-direct {p0, v4}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->createCategoryView(I)Lcom/android/calendar/groove/GrooveCategoryView;

    move-result-object v4

    aput-object v4, v1, v3

    .line 179
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mCategoryTiles:[Landroid/view/View;

    const/16 v4, 0x200

    invoke-direct {p0, v4}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->createCategoryView(I)Lcom/android/calendar/groove/GrooveCategoryView;

    move-result-object v4

    aput-object v4, v1, v8

    .line 180
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mCategoryTiles:[Landroid/view/View;

    const/16 v4, 0x300

    invoke-direct {p0, v4}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->createCategoryView(I)Lcom/android/calendar/groove/GrooveCategoryView;

    move-result-object v4

    aput-object v4, v1, v9

    .line 181
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mCategoryTiles:[Landroid/view/View;

    const/4 v4, 0x3

    const/16 v5, 0x400

    invoke-direct {p0, v5}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->createCategoryView(I)Lcom/android/calendar/groove/GrooveCategoryView;

    move-result-object v5

    aput-object v5, v1, v4

    .line 182
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mCategoryTiles:[Landroid/view/View;

    const/4 v4, 0x4

    const/16 v5, 0x500

    invoke-direct {p0, v5}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->createCategoryView(I)Lcom/android/calendar/groove/GrooveCategoryView;

    move-result-object v5

    aput-object v5, v1, v4

    move v1, v3

    .line 184
    :goto_1
    iget-object v4, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mCategoryTiles:[Landroid/view/View;

    array-length v4, v4

    if-ge v1, v4, :cond_4

    .line 185
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->createCategoryViewLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 187
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/android/calendar/R$dimen;->groove_category_margin_bottom:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 186
    invoke-virtual {v4, v2, v3, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 189
    sget-boolean v5, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mIsTablet:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mCategoryTiles:[Landroid/view/View;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_2

    .line 190
    invoke-virtual {v4, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 192
    :cond_2
    iget-object v5, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mCategoryTiles:[Landroid/view/View;

    aget-object v5, v5, v1

    invoke-virtual {v0, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 124
    :cond_3
    const/16 v2, 0x8

    goto/16 :goto_0

    .line 194
    :cond_4
    return-object v6
.end method

.method public runEnterAnimation()V
    .locals 4

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mStoreHeader:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->createEnterAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 199
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mCategoryTiles:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->createEnterAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v1

    .line 201
    mul-int/lit8 v2, v0, 0x14

    add-int/lit8 v2, v2, 0x14

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 203
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mCategoryTiles:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_0
    sget-boolean v0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mIsTablet:Z

    if-nez v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mBackButton:Lcom/android/calendar/groove/BackButtonView;

    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->createEnterAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/BackButtonView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 208
    :cond_1
    return-void
.end method
