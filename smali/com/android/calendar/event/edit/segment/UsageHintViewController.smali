.class public Lcom/android/calendar/event/edit/segment/UsageHintViewController;
.super Ljava/lang/Object;
.source "UsageHintViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/edit/segment/UsageHintViewController$InputViewObserver;
    }
.end annotation


# static fields
.field private static final ARGB_EVALUATOR:Landroid/animation/ArgbEvaluator;

.field private static final SLIDE_IN_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimationInProgress:Z

.field private mApplyQueuedHint:Z

.field private mCurrentHint:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

.field private mDividerView:Landroid/view/View;

.field private mHintForegroundColor:I

.field private final mHintStyleContextWrapper:Landroid/view/ContextThemeWrapper;

.field private mHintsContainer:Landroid/widget/FrameLayout;

.field private mHintsContainerParent:Landroid/view/ViewGroup;

.field private mHintsList:Landroid/widget/LinearLayout;

.field private mHintsPointer:Landroid/widget/ImageView;

.field private mHintsPointerParent:Landroid/view/ViewGroup;

.field private mHintsVisible:Z

.field private mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

.field private mInputFieldCursorWidth:I

.field private final mInputViewObserver:Lcom/android/calendar/event/edit/segment/UsageHintViewController$InputViewObserver;

.field private mIsPointerUpdateScheduled:Z

.field private mPointToSpan:Ljava/lang/Object;

.field private mQueuedHint:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

.field private mRecycledHintViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionView:Landroid/widget/ListView;

.field private final mUiThreadHandler:Landroid/os/Handler;

.field private final mUsageHintContainerVisibilityChangeDuration:I

.field private final mUsageHintDefaultBackgroundColor:I

.field private final mUsageHintDefaultForegroundColor:I

.field private final mUsageHintInplaceAnimationDuration:I

.field private final mUsageHintItemChangeDuration:I

.field private final mUsageHintItemStaggerDelay:I

.field private final mUsageHintPointerMinAnimationDuration:I

.field private final mUsageHintPointerMoveDistancePerSecond:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->TAG:Ljava/lang/String;

    .line 74
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->SLIDE_IN_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    .line 76
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    sput-object v0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->ARGB_EVALUATOR:Landroid/animation/ArgbEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$InputViewObserver;

    invoke-direct {v0, p0, v2}, Lcom/android/calendar/event/edit/segment/UsageHintViewController$InputViewObserver;-><init>(Lcom/android/calendar/event/edit/segment/UsageHintViewController;Lcom/android/calendar/event/edit/segment/UsageHintViewController$1;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mInputViewObserver:Lcom/android/calendar/event/edit/segment/UsageHintViewController$InputViewObserver;

    .line 104
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mInputFieldCursorWidth:I

    .line 106
    iput-boolean v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mIsPointerUpdateScheduled:Z

    .line 108
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mCurrentHint:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mRecycledHintViews:Ljava/util/List;

    .line 111
    iput-boolean v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mAnimationInProgress:Z

    .line 115
    iput-boolean v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mApplyQueuedHint:Z

    .line 116
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mQueuedHint:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

    .line 126
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/android/calendar/R$style;->UsageHint_Title:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintStyleContextWrapper:Landroid/view/ContextThemeWrapper;

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 129
    sget v1, Lcom/android/calendar/R$integer;->usage_hint_container_visibility_change_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mUsageHintContainerVisibilityChangeDuration:I

    .line 131
    sget v1, Lcom/android/calendar/R$integer;->usage_hint_item_change_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mUsageHintItemChangeDuration:I

    .line 133
    sget v1, Lcom/android/calendar/R$integer;->usage_hint_item_stagger_delay:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mUsageHintItemStaggerDelay:I

    .line 135
    sget v1, Lcom/android/calendar/R$integer;->usage_hint_pointer_min_animation_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mUsageHintPointerMinAnimationDuration:I

    .line 137
    sget v1, Lcom/android/calendar/R$integer;->usage_hint_inplace_animation_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mUsageHintInplaceAnimationDuration:I

    .line 139
    sget v1, Lcom/android/calendar/R$dimen;->usage_hint_pointer_move_distance_per_second:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mUsageHintPointerMoveDistancePerSecond:F

    .line 141
    sget v1, Lcom/android/calendar/R$color;->usage_hint_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mUsageHintDefaultBackgroundColor:I

    .line 142
    sget v1, Lcom/android/calendar/R$color;->usage_hint_foreground:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mUsageHintDefaultForegroundColor:I

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mUiThreadHandler:Landroid/os/Handler;

    .line 144
    return-void
.end method

.method static synthetic access$100()Landroid/view/animation/DecelerateInterpolator;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->SLIDE_IN_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)Lcom/android/calendar/event/edit/segment/SuggestionEditText;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)F
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->computeUsageHintPointerPosition()F

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsPointer:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)F
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mUsageHintPointerMoveDistancePerSecond:F

    return v0
.end method

.method static synthetic access$1400(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mUsageHintPointerMinAnimationDuration:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsPointerParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->updateUsageHintPointerPosition()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mUsageHintItemChangeDuration:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsContainerParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/calendar/event/edit/segment/UsageHintViewController;Z)Z
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mApplyQueuedHint:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/calendar/event/edit/segment/UsageHintViewController;Z)Z
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mApplyQueuedHint:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mQueuedHint:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/calendar/event/edit/segment/UsageHintViewController;Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;)Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mQueuedHint:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mCurrentHint:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/calendar/event/edit/segment/UsageHintViewController;Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->doSetUsageHints(Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/calendar/event/edit/segment/UsageHintViewController;Z)Z
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mIsPointerUpdateScheduled:Z

    return p1
.end method

.method private computeUsageHintPointerPosition()F
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 672
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    if-nez v0, :cond_0

    move v0, v3

    .line 700
    :goto_0
    return v0

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 677
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 679
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mPointToSpan:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 680
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mPointToSpan:Ljava/lang/Object;

    invoke-interface {v0, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 681
    iget-object v4, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mPointToSpan:Ljava/lang/Object;

    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 682
    if-eq v2, v5, :cond_2

    if-eq v0, v5, :cond_2

    move v1, v2

    .line 688
    :goto_1
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v2}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 689
    if-nez v2, :cond_1

    move v0, v3

    .line 690
    goto :goto_0

    .line 692
    :cond_1
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 693
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 695
    sub-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 696
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    .line 697
    invoke-virtual {v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mInputFieldCursorWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsPointer:Landroid/widget/ImageView;

    .line 699
    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 700
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private createViewBoundsAnimation(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 627
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    const-string v2, "top"

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 628
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bottom"

    new-array v3, v4, [I

    fill-array-data v3, :array_1

    .line 629
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "left"

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    .line 630
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "right"

    new-array v3, v4, [I

    fill-array-data v3, :array_3

    .line 631
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v0, v1

    .line 627
    invoke-static {p1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 632
    iget v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mUsageHintContainerVisibilityChangeDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 633
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 634
    return-object v0

    .line 627
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 628
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 629
    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 630
    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private doSetUsageHints(Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;)V
    .locals 16

    .prologue
    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsContainer:Landroid/widget/FrameLayout;

    if-nez v2, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mAnimationInProgress:Z

    if-eqz v2, :cond_2

    .line 322
    sget-object v2, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->TAG:Ljava/lang/String;

    const-string v3, "Queuing to display later: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 324
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mQueuedHint:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

    .line 325
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mApplyQueuedHint:Z

    goto :goto_0

    .line 329
    :cond_2
    invoke-static/range {p1 .. p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 333
    sget-object v2, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->TAG:Ljava/lang/String;

    const-string v3, "Transitioning from %s to %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 335
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mCurrentHint:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mCurrentHint:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mCurrentHint:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

    .line 338
    invoke-virtual {v2}, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;->getHintType()Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

    move-result-object v2

    sget-object v3, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;->INPLACE:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    .line 339
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mCurrentHint:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

    if-eqz v3, :cond_5

    if-nez v2, :cond_5

    const/4 v3, 0x1

    move v12, v3

    .line 340
    :goto_2
    if-eqz v2, :cond_6

    .line 341
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->startInplaceHintAnimation()V

    .line 347
    :goto_3
    const/4 v2, 0x0

    .line 348
    if-eqz p1, :cond_12

    .line 349
    invoke-virtual/range {p1 .. p1}, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;->getMessages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v9, v2

    .line 352
    :goto_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 353
    if-eqz p2, :cond_11

    if-eqz v12, :cond_11

    .line 354
    invoke-virtual/range {p2 .. p2}, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;->getMessages()Ljava/util/List;

    move-result-object v2

    move-object v10, v2

    .line 357
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsContainer:Landroid/widget/FrameLayout;

    .line 358
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsList:Landroid/widget/LinearLayout;

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mCurrentHint:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mCurrentHint:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

    invoke-virtual {v2}, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;->getHintType()Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

    move-result-object v2

    sget-object v3, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;->FULLSCREEN:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor$HintType;

    if-ne v2, v3, :cond_7

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 369
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v2}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    int-to-float v5, v2

    .line 373
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 374
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 375
    const/4 v2, 0x0

    move v11, v2

    :goto_7
    if-ge v11, v15, :cond_c

    .line 377
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->getHintsViewAtPosition(I)Landroid/widget/TextView;

    move-result-object v4

    .line 380
    const/4 v3, 0x0

    .line 381
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v11, :cond_8

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    move-object v6, v2

    .line 382
    :goto_8
    if-eqz v6, :cond_9

    .line 383
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mUsageHintItemStaggerDelay:I

    mul-int v7, v11, v2

    .line 384
    new-instance v2, Lcom/android/calendar/event/edit/segment/UsageHintViewController$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/calendar/event/edit/segment/UsageHintViewController$1;-><init>(Lcom/android/calendar/event/edit/segment/UsageHintViewController;Landroid/widget/TextView;FLjava/lang/CharSequence;I)V

    move-object v3, v2

    .line 404
    :goto_9
    if-le v9, v11, :cond_a

    const/4 v2, 0x1

    .line 405
    :goto_a
    if-eqz v2, :cond_b

    .line 407
    invoke-virtual {v4}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 408
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 409
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mUsageHintItemChangeDuration:I

    int-to-long v6, v4

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 412
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->startAnimationWithEndAction(Landroid/view/ViewPropertyAnimator;Ljava/lang/Runnable;)V

    .line 375
    :cond_3
    :goto_b
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_7

    .line 338
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 339
    :cond_5
    const/4 v3, 0x0

    move v12, v3

    goto/16 :goto_2

    .line 343
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->getSuggestionAdapter()Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->clearInplaceHint()V

    goto/16 :goto_3

    .line 363
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_6

    .line 381
    :cond_8
    const/4 v6, 0x0

    goto :goto_8

    .line 401
    :cond_9
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 404
    :cond_a
    const/4 v2, 0x0

    goto :goto_a

    .line 413
    :cond_b
    if-eqz v3, :cond_3

    .line 416
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_b

    .line 420
    :cond_c
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mAnimationInProgress:Z

    .line 421
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsVisible:Z

    if-eq v2, v12, :cond_e

    .line 422
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->setHintsContainerVisibility(Z)V

    .line 424
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->setHintsPointerVisibility(Z)V

    .line 425
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsVisible:Z

    .line 470
    :cond_d
    :goto_c
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mUsageHintItemStaggerDelay:I

    mul-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mUsageHintItemChangeDuration:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x32

    .line 471
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/calendar/event/edit/segment/UsageHintViewController$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v8, v14}, Lcom/android/calendar/event/edit/segment/UsageHintViewController$3;-><init>(Lcom/android/calendar/event/edit/segment/UsageHintViewController;Ljava/util/List;Landroid/widget/LinearLayout;)V

    int-to-long v6, v2

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 426
    :cond_e
    if-eqz v12, :cond_d

    .line 428
    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v9

    .line 429
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 430
    const/4 v2, 0x0

    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsContainerParent:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_f

    .line 431
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsContainerParent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->createViewBoundsAnimation(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 430
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 434
    :cond_f
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 437
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e

    .line 440
    :cond_10
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 441
    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 442
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->setupStartValues()V

    .line 443
    new-instance v2, Lcom/android/calendar/event/edit/segment/UsageHintViewController$2;

    move-object/from16 v3, p0

    move-object v4, v13

    move-object v6, v13

    move-object v7, v5

    invoke-direct/range {v2 .. v9}, Lcom/android/calendar/event/edit/segment/UsageHintViewController$2;-><init>(Lcom/android/calendar/event/edit/segment/UsageHintViewController;Landroid/view/View;Landroid/animation/Animator;Landroid/widget/FrameLayout;Landroid/animation/AnimatorSet;Ljava/util/List;I)V

    goto :goto_c

    :cond_11
    move-object v10, v2

    goto/16 :goto_5

    :cond_12
    move v9, v2

    goto/16 :goto_4
.end method

.method private getHintsViewAtPosition(I)Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 550
    :goto_0
    iget v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintForegroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 551
    return-object v0

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mRecycledHintViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintStyleContextWrapper:Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 548
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mRecycledHintViews:Ljava/util/List;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mRecycledHintViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_1
.end method

.method private getSuggestionAdapter()Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mSuggestionView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 524
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    .line 525
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .line 526
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 527
    instance-of v1, v0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 528
    check-cast v0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;

    .line 532
    :goto_0
    return-object v0

    .line 531
    :cond_0
    instance-of v1, v0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 532
    check-cast v0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;

    goto :goto_0
.end method

.method private setHintsContainerVisibility(Z)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 555
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsContainer:Landroid/widget/FrameLayout;

    .line 556
    iget-object v6, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsContainerParent:Landroid/view/ViewGroup;

    .line 557
    iget-object v8, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mDividerView:Landroid/view/View;

    .line 559
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 561
    invoke-static {v2, p1}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 562
    if-nez p1, :cond_1

    :goto_1
    invoke-static {v8, v1}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 564
    :goto_2
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_2

    .line 565
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->createViewBoundsAnimation(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 564
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    move v0, v3

    .line 559
    goto :goto_0

    :cond_1
    move v1, v3

    .line 562
    goto :goto_1

    .line 568
    :cond_2
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 569
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 570
    if-eqz p1, :cond_3

    .line 571
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setRight(I)V

    .line 573
    :cond_3
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->setupStartValues()V

    .line 575
    new-instance v0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$5;

    move-object v1, p0

    move v4, p1

    move-object v5, v2

    move-object v7, v3

    invoke-direct/range {v0 .. v8}, Lcom/android/calendar/event/edit/segment/UsageHintViewController$5;-><init>(Lcom/android/calendar/event/edit/segment/UsageHintViewController;Landroid/view/View;Landroid/animation/Animator;ZLandroid/widget/FrameLayout;Landroid/view/ViewGroup;Landroid/animation/AnimatorSet;Landroid/view/View;)V

    .line 597
    return-void
.end method

.method private setHintsPointerVisibility(Z)V
    .locals 4

    .prologue
    .line 600
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsPointer:Landroid/widget/ImageView;

    .line 601
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 603
    if-eqz p1, :cond_0

    .line 604
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 605
    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 606
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->computeUsageHintPointerPosition()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 609
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 610
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 611
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mUsageHintContainerVisibilityChangeDuration:I

    int-to-long v2, v2

    .line 612
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 614
    if-eqz p1, :cond_2

    .line 615
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 624
    :goto_1
    return-void

    .line 609
    :cond_1
    int-to-float v0, v0

    goto :goto_0

    .line 617
    :cond_2
    new-instance v2, Lcom/android/calendar/event/edit/segment/UsageHintViewController$6;

    invoke-direct {v2, p0, v1}, Lcom/android/calendar/event/edit/segment/UsageHintViewController$6;-><init>(Lcom/android/calendar/event/edit/segment/UsageHintViewController;Landroid/view/View;)V

    invoke-direct {p0, v0, v2}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->startAnimationWithEndAction(Landroid/view/ViewPropertyAnimator;Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private startAnimationWithEndAction(Landroid/view/ViewPropertyAnimator;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 705
    if-eqz p2, :cond_0

    .line 706
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 708
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 709
    return-void
.end method

.method private startInplaceHintAnimation()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 492
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mCurrentHint:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

    if-nez v0, :cond_0

    .line 517
    :goto_0
    return-void

    .line 495
    :cond_0
    sget-object v0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->TAG:Ljava/lang/String;

    const-string v1, "Started inplace animation"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 496
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->getSuggestionAdapter()Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;

    move-result-object v2

    .line 497
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mCurrentHint:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;->getMessages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 498
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mCurrentHint:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 499
    invoke-virtual {v2, v0, v1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->setInplaceHint(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 500
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mSuggestionView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->setInplaceHintView(Landroid/widget/ListView;)V

    .line 501
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getMeasuredWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    .line 502
    new-instance v1, Lcom/android/calendar/event/edit/segment/UsageHintViewController$4;

    const-class v3, Ljava/lang/Float;

    const-string v4, "translateOffset"

    invoke-direct {v1, p0, v3, v4}, Lcom/android/calendar/event/edit/segment/UsageHintViewController$4;-><init>(Lcom/android/calendar/event/edit/segment/UsageHintViewController;Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v3, 0x2

    new-array v3, v3, [F

    int-to-float v0, v0

    aput v0, v3, v5

    const/4 v0, 0x0

    aput v0, v3, v6

    .line 503
    invoke-static {v2, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 515
    iget v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mUsageHintInplaceAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 516
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private updateUsageHintPointerPosition()V
    .locals 2

    .prologue
    .line 641
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mIsPointerUpdateScheduled:Z

    if-eqz v0, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 645
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mIsPointerUpdateScheduled:Z

    .line 646
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/calendar/event/edit/segment/UsageHintViewController$7;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/edit/segment/UsageHintViewController$7;-><init>(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public clearHintColor()V
    .locals 2

    .prologue
    .line 312
    iget v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mUsageHintDefaultForegroundColor:I

    iget v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mUsageHintDefaultBackgroundColor:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->setHintColor(II)V

    .line 313
    return-void
.end method

.method public clearUsageHints()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mCurrentHint:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mCurrentHint:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->doSetUsageHints(Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 183
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mSuggestionView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->getSuggestionAdapter()Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->clearInplaceHint()V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsList:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsPointer:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 196
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsPointer:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mDividerView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 199
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mDividerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 202
    :cond_4
    iput-boolean v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsVisible:Z

    .line 203
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mCurrentHint:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

    .line 204
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mQueuedHint:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

    .line 205
    iput-boolean v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mApplyQueuedHint:Z

    .line 206
    iput-boolean v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mAnimationInProgress:Z

    .line 208
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    if-eqz v0, :cond_5

    .line 209
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mInputViewObserver:Lcom/android/calendar/event/edit/segment/UsageHintViewController$InputViewObserver;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->removeSelectionListener(Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextSelectionListener;)V

    .line 210
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mInputViewObserver:Lcom/android/calendar/event/edit/segment/UsageHintViewController$InputViewObserver;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 212
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsPointerParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 213
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsPointerParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mInputViewObserver:Lcom/android/calendar/event/edit/segment/UsageHintViewController$InputViewObserver;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 216
    :cond_6
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    .line 217
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsContainer:Landroid/widget/FrameLayout;

    .line 218
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsContainerParent:Landroid/view/ViewGroup;

    .line 219
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsList:Landroid/widget/LinearLayout;

    .line 220
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsPointer:Landroid/widget/ImageView;

    .line 221
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsPointerParent:Landroid/view/ViewGroup;

    .line 222
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mDividerView:Landroid/view/View;

    .line 223
    return-void
.end method

.method public getCurrentHint()Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mCurrentHint:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

    return-object v0
.end method

.method public initialize(Lcom/android/calendar/event/edit/segment/SuggestionEditText;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ListView;)V
    .locals 3

    .prologue
    .line 163
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    .line 164
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsContainer:Landroid/widget/FrameLayout;

    .line 165
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsContainerParent:Landroid/view/ViewGroup;

    .line 166
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsList:Landroid/widget/LinearLayout;

    .line 167
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsPointer:Landroid/widget/ImageView;

    .line 168
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsPointer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsPointerParent:Landroid/view/ViewGroup;

    .line 169
    iput-object p5, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mDividerView:Landroid/view/View;

    .line 170
    iput-object p6, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mSuggestionView:Landroid/widget/ListView;

    .line 172
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mInputViewObserver:Lcom/android/calendar/event/edit/segment/UsageHintViewController$InputViewObserver;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->addSelectionListener(Lcom/android/calendar/event/edit/segment/SuggestionEditText$SuggestionEditTextSelectionListener;)V

    .line 173
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mInputViewObserver:Lcom/android/calendar/event/edit/segment/UsageHintViewController$InputViewObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->addTextChangedListener(Landroid/text/TextWatcher;Z)V

    .line 174
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsPointerParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mInputViewObserver:Lcom/android/calendar/event/edit/segment/UsageHintViewController$InputViewObserver;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->clearHintColor()V

    .line 176
    return-void
.end method

.method public setHintColor(II)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 274
    iput p1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintForegroundColor:I

    .line 276
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsPointer:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsVisible:Z

    if-eqz v0, :cond_2

    .line 282
    iget v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mUsageHintDefaultBackgroundColor:I

    .line 283
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 284
    instance-of v3, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_3

    .line 285
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    .line 288
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsContainer:Landroid/widget/FrameLayout;

    const-string v3, "backgroundColor"

    sget-object v4, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->ARGB_EVALUATOR:Landroid/animation/ArgbEvaluator;

    new-array v5, v9, [Ljava/lang/Object;

    .line 289
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 288
    invoke-static {v1, v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget v3, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mUsageHintItemChangeDuration:I

    int-to-long v4, v3

    .line 290
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 291
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 292
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsPointer:Landroid/widget/ImageView;

    const-string v3, "colorFilter"

    sget-object v4, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->ARGB_EVALUATOR:Landroid/animation/ArgbEvaluator;

    new-array v5, v9, [Ljava/lang/Object;

    .line 293
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    .line 292
    invoke-static {v1, v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mUsageHintItemChangeDuration:I

    int-to-long v4, v1

    .line 294
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 296
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    move v1, v2

    .line 297
    :goto_2
    if-ge v1, v3, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 299
    const-string v4, "textColor"

    sget-object v5, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->ARGB_EVALUATOR:Landroid/animation/ArgbEvaluator;

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mUsageHintDefaultForegroundColor:I

    .line 300
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    iget v7, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintForegroundColor:I

    .line 301
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 299
    invoke-static {v0, v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget v4, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mUsageHintItemChangeDuration:I

    int-to-long v4, v4

    .line 302
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 297
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 307
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsPointer:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto/16 :goto_1
.end method

.method public setInputFieldCursorWidth(I)V
    .locals 0

    .prologue
    .line 233
    iput p1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mInputFieldCursorWidth:I

    .line 234
    return-void
.end method

.method public setPointToSpan(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mPointToSpan:Ljava/lang/Object;

    .line 270
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->updateUsageHintPointerPosition()V

    .line 271
    return-void
.end method

.method public setUsageHints(Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;)V
    .locals 1

    .prologue
    .line 242
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mCurrentHint:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

    invoke-direct {p0, v0, p1}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->doSetUsageHints(Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;)V

    .line 244
    return-void
.end method
