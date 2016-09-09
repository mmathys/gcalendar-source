.class final Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$4;
.super Landroid/transition/Visibility;
.source "GrooveSubcategorySelectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->createEnterTransition()Landroid/transition/TransitionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 258
    if-eqz p4, :cond_0

    .line 259
    iget-object v0, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/calendar/groove/BackButtonView;->createAnimator(Landroid/view/View;Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 261
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
