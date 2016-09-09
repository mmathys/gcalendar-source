.class public Lcom/android/calendar/groove/AnimatorHelper;
.super Ljava/lang/Object;
.source "AnimatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/groove/AnimatorHelper$FadeOutFadeInAnimatorListener;
    }
.end annotation


# direct methods
.method public static createFadeOutFadeInAnimator(Landroid/view/View;Lcom/android/calendar/groove/AnimatorHelper$FadeOutFadeInAnimatorListener;)Landroid/animation/AnimatorSet;
    .locals 8

    .prologue
    const-wide/16 v6, 0x34

    const/4 v4, 0x2

    .line 58
    const-string v0, "alpha"

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/android/calendar/groove/AnimatorHelper$1;

    invoke-direct {v1, p1}, Lcom/android/calendar/groove/AnimatorHelper$1;-><init>(Lcom/android/calendar/groove/AnimatorHelper$FadeOutFadeInAnimatorListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 74
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 75
    const-string v1, "alpha"

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 76
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 77
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 78
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 79
    new-array v3, v4, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 80
    return-object v2

    .line 58
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 75
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static createSlideTransition(Landroid/app/Activity;Z)Landroid/transition/TransitionSet;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_1

    move v1, v0

    .line 121
    :goto_0
    xor-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    invoke-static {p0}, Lcom/android/calendar/groove/AnimatorHelper;->getTranslationDistance(Landroid/app/Activity;)I

    move-result v1

    mul-int/2addr v0, v1

    int-to-float v0, v0

    .line 123
    new-instance v1, Lcom/android/calendar/groove/AnimatorHelper$2;

    invoke-direct {v1, v0}, Lcom/android/calendar/groove/AnimatorHelper$2;-><init>(F)V

    .line 151
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 152
    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v1

    const-wide/16 v2, 0x7d

    invoke-virtual {v1, v2, v3}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 153
    return-object v0

    .line 120
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getTranslationDistance(Landroid/app/Activity;)I
    .locals 2

    .prologue
    .line 157
    const-string v0, "window"

    .line 158
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 159
    sget v1, Lcom/android/calendar/R$bool;->tablet_config:I

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v1

    .line 160
    if-eqz v1, :cond_0

    .line 162
    invoke-static {v0}, Lcom/android/calendar/Utils;->getMaximumDisplayDimension(Landroid/view/Display;)I

    move-result v0

    .line 163
    div-int/lit8 v0, v0, 0x2

    .line 166
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public static runColorChangeAnimation(Landroid/view/ViewGroup;II)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 84
    if-ne p1, p2, :cond_0

    .line 103
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 89
    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    move v1, v2

    .line 90
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 91
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    const-string v5, "textColor"

    const/4 v6, 0x2

    new-array v6, v6, [I

    aput p1, v6, v2

    const/4 v7, 0x1

    aput p2, v6, v7

    .line 94
    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 96
    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 98
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 99
    new-instance v1, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 100
    const-wide/16 v4, 0x78

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 101
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 102
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method
