.class public Lcom/android/calendar/groove/GrooveWizardFragment;
.super Landroid/app/Fragment;
.source "GrooveWizardFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected mFrame:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/android/calendar/groove/GrooveWizardFragment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/groove/GrooveWizardFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method protected static configureOutlineProviderForElevationShadow(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Lcom/android/calendar/groove/GrooveWizardFragment$1;

    invoke-direct {v0, p1}, Lcom/android/calendar/groove/GrooveWizardFragment$1;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 136
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 138
    :cond_0
    return-void
.end method

.method protected static createFadeTransition()Landroid/transition/Transition;
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x69

    invoke-static {v0}, Lcom/android/calendar/groove/GrooveWizardFragment;->createFadeTransition(I)Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method protected static createFadeTransition(I)Landroid/transition/Transition;
    .locals 4

    .prologue
    .line 54
    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0}, Landroid/transition/Fade;-><init>()V

    .line 55
    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Landroid/transition/Fade;->setDuration(J)Landroid/transition/Transition;

    .line 56
    return-object v0
.end method


# virtual methods
.method protected adjustCardUi()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveWizardFragment;->mFrame:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 67
    sget-object v0, Lcom/android/calendar/groove/GrooveWizardFragment;->TAG:Ljava/lang/String;

    const-string v1, "Fragment frame is not initialized"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveWizardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$bool;->tablet_config:I

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveWizardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$bool;->show_narrow_tablet_groove_creation_wizard:I

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 74
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveWizardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->tablet_fragment_container_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 76
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveWizardFragment;->mFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 79
    :cond_2
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveWizardFragment;->mFrame:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveWizardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$dimen;->card_elevation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setElevation(F)V

    .line 81
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveWizardFragment;->mFrame:Landroid/view/ViewGroup;

    .line 82
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveWizardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$dimen;->card_corner_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 81
    invoke-static {v0, v1}, Lcom/android/calendar/groove/GrooveWizardFragment;->configureOutlineProviderForElevationShadow(Landroid/view/View;I)V

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveWizardFragment;->mFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0
.end method

.method protected computeColorTheme(I)I
    .locals 4

    .prologue
    .line 120
    const/4 v0, -0x1

    invoke-static {v0, p1}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v0

    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 120
    :goto_0
    return v0

    .line 121
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected createReenterTransition()Landroid/transition/TransitionSet;
    .locals 4

    .prologue
    .line 91
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 93
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveWizardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/calendar/groove/AnimatorHelper;->createSlideTransition(Landroid/app/Activity;Z)Landroid/transition/TransitionSet;

    move-result-object v1

    .line 94
    sget v2, Lcom/android/calendar/R$id;->text_container:I

    invoke-virtual {v1, v2}, Landroid/transition/TransitionSet;->addTarget(I)Landroid/transition/TransitionSet;

    .line 96
    invoke-static {}, Lcom/android/calendar/groove/GrooveWizardFragment;->createFadeTransition()Landroid/transition/Transition;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$id;->subcategory_image_view:I

    invoke-virtual {v2, v3}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    move-result-object v2

    .line 95
    invoke-virtual {v0, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 97
    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 98
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 99
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 37
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    sget v0, Lcom/android/calendar/R$id;->inset_frame:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    .line 43
    :cond_0
    return-void
.end method

.method protected setStatusBarTheme(I)V
    .locals 5

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveWizardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->createInstance(Landroid/view/Window;)Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 111
    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveWizardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$color;->transparent_black_04:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 112
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveWizardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$color;->transparent_black_20:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const/16 v4, 0x69

    .line 110
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->tryApplyLightStatusbar(ZIII)V

    .line 114
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
