.class public Lcom/android/calendar/newapi/screen/ViewScreen;
.super Landroid/widget/FrameLayout;
.source "ViewScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/newapi/screen/ViewScreen$Callback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/android/calendar/newapi/screen/ViewScreen$Callback;

.field private mCommandBar:Lcom/android/calendar/newapi/commandbar/CommandBar;

.field private mEditable:Z

.field private mEventColor:I

.field private mHeaderLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mInsetApplier:Lcom/android/calendar/utils/SystemWindowInsetApplier;

.field private mOverflowMenuView:Landroid/view/View;

.field private final mScrollView:Landroid/widget/ScrollView;

.field private mSegmentViews:Lcom/android/calendar/newapi/screen/SegmentViews;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/android/calendar/newapi/screen/ViewScreen;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/newapi/screen/ViewScreen;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Lcom/android/calendar/utils/SystemWindowInsetApplier;

    invoke-direct {v0}, Lcom/android/calendar/utils/SystemWindowInsetApplier;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mInsetApplier:Lcom/android/calendar/utils/SystemWindowInsetApplier;

    .line 66
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->newapi_view_screen_content:I

    const/4 v2, 0x1

    .line 67
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 68
    sget v0, Lcom/android/calendar/R$id;->segments_scroll:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/ViewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mScrollView:Landroid/widget/ScrollView;

    .line 70
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/ViewScreen;->setupViews()V

    .line 71
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/ViewScreen;->applyTransparentStatusbar()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/newapi/screen/ViewScreen;)Lcom/android/calendar/newapi/screen/ViewScreen$Callback;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mCallback:Lcom/android/calendar/newapi/screen/ViewScreen$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/newapi/screen/ViewScreen;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/newapi/screen/ViewScreen;->onHeaderDimensionsChanged(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/newapi/screen/ViewScreen;)Lcom/android/calendar/newapi/commandbar/CommandBar;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mCommandBar:Lcom/android/calendar/newapi/commandbar/CommandBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/newapi/screen/ViewScreen;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private applyTransparentStatusbar()V
    .locals 4

    .prologue
    .line 131
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$bool;->show_event_info_full_screen:I

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/16 v0, 0x500

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/ViewScreen;->setSystemUiVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mInsetApplier:Lcom/android/calendar/utils/SystemWindowInsetApplier;

    sget v1, Lcom/android/calendar/R$id;->cancel:I

    .line 138
    invoke-virtual {p0, v1}, Lcom/android/calendar/newapi/screen/ViewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 137
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/utils/SystemWindowInsetApplier;->addView(Landroid/view/View;II)V

    .line 139
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mInsetApplier:Lcom/android/calendar/utils/SystemWindowInsetApplier;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 141
    :cond_0
    return-void
.end method

.method private hasCommandBar()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mCommandBar:Lcom/android/calendar/newapi/commandbar/CommandBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mCommandBar:Lcom/android/calendar/newapi/commandbar/CommandBar;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/commandbar/CommandBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasOverflowMenu()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mOverflowMenuView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onHeaderDimensionsChanged(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mHeaderLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mHeaderLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 241
    :cond_0
    sget v0, Lcom/android/calendar/R$id;->info_action_edit:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/ViewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 242
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 243
    int-to-float v2, p2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 244
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    return-void
.end method

.method private setupViews()V
    .locals 5

    .prologue
    .line 145
    sget v0, Lcom/android/calendar/R$id;->cancel:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/ViewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    sget v0, Lcom/android/calendar/R$id;->view_screen_header:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/ViewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/newapi/screen/HeaderElevator;

    .line 150
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mScrollView:Landroid/widget/ScrollView;

    invoke-direct {v2, v3, v0, v4}, Lcom/android/calendar/newapi/screen/HeaderElevator;-><init>(Landroid/content/res/Resources;Landroid/view/View;Landroid/widget/ScrollView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 152
    :cond_0
    return-void
.end method


# virtual methods
.method public adjustScrollViewBounds()V
    .locals 2

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/ViewScreen;->hasCommandBar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreen;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/newapi/screen/ViewScreen$5;

    invoke-direct {v1, p0}, Lcom/android/calendar/newapi/screen/ViewScreen$5;-><init>(Lcom/android/calendar/newapi/screen/ViewScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method protected arrangeSegmentViews(Lcom/android/calendar/newapi/screen/SegmentViews;)V
    .locals 3

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mSegmentViews:Lcom/android/calendar/newapi/screen/SegmentViews;

    .line 214
    sget v0, Lcom/android/calendar/R$id;->segment_container:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/ViewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 215
    iget-object v1, p1, Lcom/android/calendar/newapi/screen/SegmentViews;->headerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 216
    new-instance v0, Lcom/android/calendar/newapi/screen/ViewScreen$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/newapi/screen/ViewScreen$2;-><init>(Lcom/android/calendar/newapi/screen/ViewScreen;)V

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mHeaderLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 223
    iget-object v0, p1, Lcom/android/calendar/newapi/screen/SegmentViews;->headerView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mHeaderLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 225
    sget v0, Lcom/android/calendar/R$id;->segments:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/ViewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 226
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p1, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 227
    iget-object v1, p1, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 226
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 229
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 230
    return-void
.end method

.method public hideContentAnimated()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x4b

    const/4 v5, 0x2

    .line 325
    const-string v0, "alpha"

    new-array v1, v5, [F

    fill-array-data v1, :array_0

    .line 326
    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 327
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 325
    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->withHardwareLayer(Landroid/view/View;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 328
    new-instance v1, Lcom/android/calendar/timely/animations/QuantumInterpolator;

    invoke-direct {v1}, Lcom/android/calendar/timely/animations/QuantumInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 329
    new-instance v1, Lcom/android/calendar/newapi/screen/ViewScreen$4;

    invoke-direct {v1, p0}, Lcom/android/calendar/newapi/screen/ViewScreen$4;-><init>(Lcom/android/calendar/newapi/screen/ViewScreen;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 335
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 336
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 339
    sget v2, Lcom/android/calendar/R$id;->info_action_edit:I

    invoke-virtual {p0, v2}, Lcom/android/calendar/newapi/screen/ViewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 340
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 341
    const-string v3, "scaleX"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 342
    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 343
    new-instance v4, Lcom/android/calendar/timely/animations/QuantumInterpolator;

    invoke-direct {v4}, Lcom/android/calendar/timely/animations/QuantumInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 344
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 345
    const-string v3, "scaleY"

    new-array v4, v5, [F

    fill-array-data v4, :array_2

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 346
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 347
    new-instance v3, Lcom/android/calendar/timely/animations/QuantumInterpolator;

    invoke-direct {v3}, Lcom/android/calendar/timely/animations/QuantumInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 348
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 350
    :cond_0
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 351
    return-void

    .line 325
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 341
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 345
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mCallback:Lcom/android/calendar/newapi/screen/ViewScreen$Callback;

    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    sget v0, Lcom/android/calendar/R$id;->cancel:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mCallback:Lcom/android/calendar/newapi/screen/ViewScreen$Callback;

    invoke-interface {v0}, Lcom/android/calendar/newapi/screen/ViewScreen$Callback;->onCancelClicked()V

    goto :goto_0
.end method

.method protected setCallback(Lcom/android/calendar/newapi/screen/ViewScreen$Callback;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mCallback:Lcom/android/calendar/newapi/screen/ViewScreen$Callback;

    .line 123
    return-void
.end method

.method public setCommandBarController(Lcom/android/calendar/newapi/commandbar/CommandBarController;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/newapi/commandbar/CommandBarController",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    sget v0, Lcom/android/calendar/R$id;->command_bar_container:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/ViewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 77
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/android/calendar/newapi/commandbar/CommandBarController;->createCommandBar(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/calendar/newapi/commandbar/CommandBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mCommandBar:Lcom/android/calendar/newapi/commandbar/CommandBar;

    .line 78
    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mCommandBar:Lcom/android/calendar/newapi/commandbar/CommandBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/ViewScreen;->hasCommandBar()Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    invoke-static {}, Lcom/android/calendar/Utils;->isLollipopMr1OrLater()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    sget v0, Lcom/android/calendar/R$id;->info_action_edit_hit:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/ViewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityTraversalAfter(I)V

    .line 87
    :cond_1
    return-void
.end method

.method public setEditableStatus(Z)V
    .locals 0

    .prologue
    .line 197
    iput-boolean p1, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mEditable:Z

    .line 198
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreen;->updateEditButton()V

    .line 199
    return-void
.end method

.method public setEventColor(I)V
    .locals 0

    .prologue
    .line 205
    iput p1, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mEventColor:I

    .line 206
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreen;->updateEditButton()V

    .line 207
    return-void
.end method

.method public setOverflowMenuController(Lcom/android/calendar/newapi/overflow/OverflowMenuController;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/newapi/overflow/OverflowMenuController",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 90
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/calendar/newapi/overflow/OverflowMenuController;->hasMenu()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    sget v0, Lcom/android/calendar/R$id;->header_action_bar:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/ViewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 94
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/android/calendar/newapi/overflow/OverflowMenuController;->createMenu(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mOverflowMenuView:Landroid/view/View;

    .line 95
    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mOverflowMenuView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 98
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mInsetApplier:Lcom/android/calendar/utils/SystemWindowInsetApplier;

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mOverflowMenuView:Landroid/view/View;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/utils/SystemWindowInsetApplier;->addView(Landroid/view/View;II)V

    .line 100
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 103
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/ViewScreen;->hasOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lcom/android/calendar/Utils;->isLollipopMr1OrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    sget v0, Lcom/android/calendar/R$id;->info_action_overflow:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/ViewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityTraversalBefore(I)V

    goto :goto_0
.end method

.method public showContentAnimated(Ljava/lang/Runnable;)V
    .locals 11

    .prologue
    .line 268
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 271
    sget v0, Lcom/android/calendar/R$id;->event_info:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/ViewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    const/4 v1, 0x0

    .line 273
    sget v0, Lcom/android/calendar/R$id;->segment_container:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/ViewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 274
    const/4 v3, 0x4

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mScrollView:Landroid/widget/ScrollView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget v5, Lcom/android/calendar/R$id;->title:I

    .line 276
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    sget v4, Lcom/android/calendar/R$id;->cancel:I

    .line 277
    invoke-virtual {p0, v4}, Lcom/android/calendar/newapi/screen/ViewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    iget-object v4, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mOverflowMenuView:Landroid/view/View;

    aput-object v4, v3, v0

    .line 279
    array-length v4, v3

    const/4 v0, 0x0

    move v10, v0

    move-object v0, v1

    move v1, v10

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 280
    if-nez v5, :cond_0

    .line 279
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    :cond_0
    const-string v6, "alpha"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    .line 284
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x4b

    .line 285
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 283
    invoke-static {v5, v6}, Lcom/android/calendar/Utils;->withHardwareLayer(Landroid/view/View;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 286
    if-nez v0, :cond_1

    .line 287
    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    goto :goto_1

    .line 289
    :cond_1
    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 294
    :cond_2
    sget v1, Lcom/android/calendar/R$id;->info_action_edit:I

    invoke-virtual {p0, v1}, Lcom/android/calendar/newapi/screen/ViewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 295
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 296
    const-string v3, "scaleX"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x96

    .line 297
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 296
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 298
    const-string v3, "scaleY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_2

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v4, 0x96

    .line 299
    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 298
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 303
    :cond_3
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/ViewScreen;->hasCommandBar()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 304
    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mCommandBar:Lcom/android/calendar/newapi/commandbar/CommandBar;

    invoke-virtual {v1}, Lcom/android/calendar/newapi/commandbar/CommandBar;->createEnterAnimation()Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v4, 0x96

    .line 305
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 306
    const-wide/16 v4, 0x96

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 307
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 310
    :cond_4
    new-instance v0, Lcom/android/calendar/timely/animations/QuantumInterpolator;

    invoke-direct {v0}, Lcom/android/calendar/timely/animations/QuantumInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 311
    new-instance v0, Lcom/android/calendar/newapi/screen/ViewScreen$3;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/newapi/screen/ViewScreen$3;-><init>(Lcom/android/calendar/newapi/screen/ViewScreen;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 320
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 321
    return-void

    .line 283
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 296
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 298
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method updateEditButton()V
    .locals 3

    .prologue
    .line 170
    sget v0, Lcom/android/calendar/R$id;->info_action_edit:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/ViewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mEditable:Z

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 171
    iget-boolean v0, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mEditable:Z

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 177
    :cond_0
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mEventColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mEventColor:I

    invoke-static {v1, v2, v0}, Lcom/android/calendar/event/EventInfoFragment;->getStateListDrawable(Landroid/content/res/Resources;ILandroid/graphics/ColorFilter;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 180
    sget v0, Lcom/android/calendar/R$id;->info_action_edit_hit:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/ViewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 181
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    new-instance v1, Lcom/android/calendar/newapi/screen/ViewScreen$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/newapi/screen/ViewScreen$1;-><init>(Lcom/android/calendar/newapi/screen/ViewScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected updateSegmentViews()V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mSegmentViews:Lcom/android/calendar/newapi/screen/SegmentViews;

    if-nez v0, :cond_1

    .line 263
    :cond_0
    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mSegmentViews:Lcom/android/calendar/newapi/screen/SegmentViews;

    iget-object v0, v0, Lcom/android/calendar/newapi/screen/SegmentViews;->headerView:Landroid/view/View;

    check-cast v0, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;

    .line 255
    invoke-virtual {v0}, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;->updateUi()V

    .line 258
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreen;->mSegmentViews:Lcom/android/calendar/newapi/screen/SegmentViews;

    iget-object v0, v0, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 259
    instance-of v2, v0, Lcom/android/calendar/newapi/segment/common/ViewSegment;

    if-eqz v2, :cond_2

    .line 260
    check-cast v0, Lcom/android/calendar/newapi/segment/common/ViewSegment;

    invoke-interface {v0}, Lcom/android/calendar/newapi/segment/common/ViewSegment;->updateUi()V

    goto :goto_0
.end method
