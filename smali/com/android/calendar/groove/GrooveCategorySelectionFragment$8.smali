.class Lcom/android/calendar/groove/GrooveCategorySelectionFragment$8;
.super Landroid/transition/Visibility;
.source "GrooveCategorySelectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->createTransitionSet(IZ)Landroid/transition/TransitionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/GrooveCategorySelectionFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/GrooveCategorySelectionFragment;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$8;->this$0:Lcom/android/calendar/groove/GrooveCategorySelectionFragment;

    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 448
    if-eqz p4, :cond_0

    .line 449
    iget-object v0, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/calendar/groove/BackButtonView;->createAnimator(Landroid/view/View;Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 451
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 438
    if-eqz p2, :cond_0

    .line 439
    iget-object v0, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/groove/BackButtonView;->createAnimator(Landroid/view/View;Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 441
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
