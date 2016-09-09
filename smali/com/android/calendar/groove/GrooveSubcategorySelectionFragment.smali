.class public Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;
.super Lcom/android/calendar/groove/GrooveWizardFragment;
.source "GrooveSubcategorySelectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$Listener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBackgroundImage:Landroid/widget/ImageView;

.field private mCategoryId:I

.field private mHasAnimated:Z

.field private mSubcategoryContainer:Landroid/widget/LinearLayout;

.field private mTextContainer:Landroid/widget/LinearLayout;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveWizardFragment;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->mHasAnimated:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->showCustomGrooveFragment(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;)Landroid/transition/TransitionSet;
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->createExitTransition()Landroid/transition/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->mCategoryId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method private computeBackgroundImageOffset(ILandroid/graphics/Bitmap;)I
    .locals 5

    .prologue
    .line 308
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 309
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 310
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 311
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 312
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 313
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$dimen;->groove_subcategory_required_visible_height_general:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 315
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$dimen;->groove_subcategory_required_visible_height_per_category:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 317
    const/4 v4, 0x0

    mul-int/2addr v3, p1

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static createEnterTransition()Landroid/transition/TransitionSet;
    .locals 4

    .prologue
    .line 251
    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0}, Landroid/transition/Fade;-><init>()V

    .line 252
    const-wide/16 v2, 0xc3

    invoke-virtual {v0, v2, v3}, Landroid/transition/Fade;->setDuration(J)Landroid/transition/Transition;

    .line 253
    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    .line 254
    new-instance v2, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$4;

    invoke-direct {v2}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$4;-><init>()V

    .line 264
    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 265
    invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 266
    return-object v1
.end method

.method private createExitTransition()Landroid/transition/TransitionSet;
    .locals 3

    .prologue
    .line 293
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 295
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/calendar/groove/AnimatorHelper;->createSlideTransition(Landroid/app/Activity;Z)Landroid/transition/TransitionSet;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$id;->text_container:I

    .line 296
    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTarget(I)Landroid/transition/TransitionSet;

    move-result-object v1

    .line 294
    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 297
    const/16 v1, 0x4b

    .line 298
    invoke-static {v1}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->createFadeTransition(I)Landroid/transition/Transition;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$id;->subcategory_image_view:I

    invoke-virtual {v1, v2}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    move-result-object v1

    .line 297
    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 299
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 300
    return-object v0
.end method

.method private static createReturnTransition()Landroid/transition/TransitionSet;
    .locals 4

    .prologue
    .line 272
    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0}, Landroid/transition/Fade;-><init>()V

    .line 273
    const-wide/16 v2, 0xc3

    invoke-virtual {v0, v2, v3}, Landroid/transition/Fade;->setDuration(J)Landroid/transition/Transition;

    .line 274
    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    .line 275
    new-instance v2, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$5;

    invoke-direct {v2}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$5;-><init>()V

    .line 285
    invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 286
    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 287
    return-object v1
.end method

.method static createSubcategoryButton(Landroid/view/ContextThemeWrapper;Ljava/lang/String;)Landroid/widget/Button;
    .locals 3

    .prologue
    .line 170
    new-instance v0, Landroid/widget/Button;

    const/4 v1, 0x0

    sget v2, Lcom/android/calendar/R$style;->GrooveCreationWizardButton:I

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 171
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$color;->groove_wizard_button_black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 173
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 174
    return-object v0
.end method

.method private createTextEnterAnimation()Landroid/view/animation/AnimationSet;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 238
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 239
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 240
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$dimen;->groove_subcategory_text_translation_y:I

    .line 241
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v4, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 242
    new-instance v2, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v2}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 243
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 244
    const-wide/16 v2, 0xc3

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 245
    return-object v0
.end method

.method static getNumSubcategoriesToDisplay(I)I
    .locals 2

    .prologue
    .line 322
    sparse-switch p0, :sswitch_data_0

    .line 331
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :sswitch_0
    const/4 v0, 0x4

    .line 329
    :goto_0
    return v0

    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 322
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_0
        0x300 -> :sswitch_0
        0x400 -> :sswitch_1
        0x500 -> :sswitch_1
    .end sparse-switch
.end method

.method public static newInstance(I)Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;
    .locals 3

    .prologue
    .line 65
    new-instance v0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;

    invoke-direct {v0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;-><init>()V

    .line 67
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 68
    const-string v2, "CATEGORY_ID_KEY"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 70
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    new-instance v1, Landroid/transition/TransitionSet;

    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    .line 72
    new-instance v2, Landroid/transition/ChangeTransform;

    invoke-direct {v2}, Landroid/transition/ChangeTransform;-><init>()V

    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 73
    new-instance v2, Landroid/transition/ChangeBounds;

    invoke-direct {v2}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 74
    new-instance v2, Landroid/transition/ChangeClipBounds;

    invoke-direct {v2}, Landroid/transition/ChangeClipBounds;-><init>()V

    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 75
    new-instance v2, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v2}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    .line 76
    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->setSharedElementEnterTransition(Landroid/transition/Transition;)V

    .line 77
    invoke-static {}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->createEnterTransition()Landroid/transition/TransitionSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->setEnterTransition(Landroid/transition/Transition;)V

    .line 78
    invoke-static {}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->createReturnTransition()Landroid/transition/TransitionSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->setReturnTransition(Landroid/transition/Transition;)V

    .line 80
    :cond_0
    return-object v0
.end method

.method private runEnterAnimation()V
    .locals 4

    .prologue
    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->mHasAnimated:Z

    .line 214
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->createTextEnterAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 215
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 216
    new-instance v1, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$3;

    invoke-direct {v1, p0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$3;-><init>(Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 228
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 229
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->mSubcategoryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->createTextEnterAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v1

    .line 231
    add-int/lit8 v2, v0, 0x1

    mul-int/lit8 v2, v2, 0x32

    add-int/lit16 v2, v2, 0xc8

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 233
    iget-object v2, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->mSubcategoryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_0
    return-void
.end method

.method private showCustomGrooveFragment(ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->analytics_goal2a_custom:I

    .line 196
    invoke-virtual {p0, v2}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-interface {v0, v1, v2}, Lcom/android/calendar/AnalyticsLogger;->trackView(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-static {}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->createFadeTransition()Landroid/transition/Transition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->setExitTransition(Landroid/transition/Transition;)V

    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->setReenterTransition(Landroid/transition/Transition;)V

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 202
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    sget v1, Lcom/android/calendar/R$animator;->stay:I

    sget v2, Lcom/android/calendar/R$animator;->fade_out:I

    sget v3, Lcom/android/calendar/R$animator;->stay:I

    sget v4, Lcom/android/calendar/R$animator;->fade_out:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 207
    :cond_1
    sget v1, Lcom/android/calendar/R$id;->fragment_container:I

    .line 208
    invoke-static {p1, p2}, Lcom/android/calendar/groove/CustomGrooveFragment;->newInstance(ILjava/lang/String;)Lcom/android/calendar/groove/CustomGrooveFragment;

    move-result-object v2

    sget-object v3, Lcom/android/calendar/groove/CustomGrooveFragment;->TAG:Ljava/lang/String;

    .line 207
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 209
    sget-object v1, Lcom/android/calendar/groove/CustomGrooveFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 210
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/android/calendar/groove/GrooveWizardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CATEGORY_ID_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->mCategoryId:I

    .line 182
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 93
    sget v0, Lcom/android/calendar/R$layout;->groove_subcategory_selection_fragment:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 95
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/groove/GrooveCategories;->getInstance(Landroid/content/res/Resources;)Lcom/android/calendar/groove/GrooveCategories;

    move-result-object v1

    .line 96
    sget v0, Lcom/android/calendar/R$id;->subcategory_container:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->mSubcategoryContainer:Landroid/widget/LinearLayout;

    .line 97
    sget v0, Lcom/android/calendar/R$id;->subcategory_image_view:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->mBackgroundImage:Landroid/widget/ImageView;

    .line 98
    sget v0, Lcom/android/calendar/R$id;->frame:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->mFrame:Landroid/view/ViewGroup;

    .line 99
    sget v0, Lcom/android/calendar/R$id;->category_title:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->mTitleView:Landroid/widget/TextView;

    .line 100
    sget v0, Lcom/android/calendar/R$id;->text_container:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->mTextContainer:Landroid/widget/LinearLayout;

    .line 101
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->mTextContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setTransitionGroup(Z)V

    .line 104
    :cond_0
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    sget v0, Lcom/android/calendar/R$id;->inset_frame:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->mBackgroundImage:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->mCategoryId:I

    .line 107
    invoke-static {v4}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getBackgroundSharedElementName(I)Ljava/lang/String;

    move-result-object v4

    .line 106
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->adjustCardUi()V

    .line 110
    iget v0, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->mCategoryId:I

    invoke-virtual {v1, v0}, Lcom/android/calendar/groove/GrooveCategories;->getCategory(I)Lcom/android/calendar/groove/GrooveCategories$Category;

    move-result-object v4

    .line 111
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->mTitleView:Landroid/widget/TextView;

    iget-object v5, v4, Lcom/android/calendar/groove/GrooveCategories$Category;->question:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->mSubcategoryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 113
    iget v0, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->mCategoryId:I

    invoke-virtual {v1, v0}, Lcom/android/calendar/groove/GrooveCategories;->getSubcategoryListForCategory(I)[Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    move-result-object v5

    .line 114
    new-instance v6, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$style;->GrooveCreationWizardButton:I

    invoke-direct {v6, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 116
    iget v0, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->mCategoryId:I

    invoke-static {v0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->getNumSubcategoriesToDisplay(I)I

    move-result v0

    .line 117
    array-length v1, v5

    if-le v1, v0, :cond_2

    :goto_0
    move v1, v2

    .line 119
    :goto_1
    if-ge v1, v0, :cond_3

    .line 120
    aget-object v7, v5, v1

    .line 121
    iget-object v8, v7, Lcom/android/calendar/groove/GrooveCategories$Subcategory;->name:Ljava/lang/String;

    invoke-static {v6, v8}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->createSubcategoryButton(Landroid/view/ContextThemeWrapper;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v8

    .line 122
    new-instance v9, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$1;

    invoke-direct {v9, p0, v7}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$1;-><init>(Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;Lcom/android/calendar/groove/GrooveCategories$Subcategory;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v7, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->mSubcategoryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 118
    :cond_2
    array-length v0, v5

    goto :goto_0

    .line 143
    :cond_3
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->custom_groove_button_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {v6, v0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->createSubcategoryButton(Landroid/view/ContextThemeWrapper;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v0

    .line 144
    new-instance v1, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$2;-><init>(Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->mSubcategoryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 152
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->mFrame:Landroid/view/ViewGroup;

    iget v1, v4, Lcom/android/calendar/groove/GrooveCategories$Category;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 153
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v4, v4, Lcom/android/calendar/groove/GrooveCategories$Category;->backgroundDrawableResId:I

    .line 153
    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getRtlAdjustedImage(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->mBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 159
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->mSubcategoryContainer:Landroid/widget/LinearLayout;

    .line 160
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->computeBackgroundImageOffset(ILandroid/graphics/Bitmap;)I

    move-result v1

    .line 161
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->mBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    mul-int/lit8 v1, v1, -0x1

    .line 162
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 164
    :cond_4
    invoke-virtual {p0, v10}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->setStatusBarTheme(I)V

    .line 165
    return-object v3
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0}, Lcom/android/calendar/groove/GrooveWizardFragment;->onStart()V

    .line 187
    iget-boolean v0, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->mHasAnimated:Z

    if-nez v0, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->runEnterAnimation()V

    .line 192
    :cond_0
    return-void
.end method
