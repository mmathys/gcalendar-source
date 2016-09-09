.class final Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$5;
.super Landroid/transition/Visibility;
.source "GrooveSubcategorySelectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->createReturnTransition()Landroid/transition/TransitionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 279
    if-eqz p2, :cond_0

    .line 280
    iget-object v0, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/groove/BackButtonView;->createAnimator(Landroid/view/View;Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 282
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
