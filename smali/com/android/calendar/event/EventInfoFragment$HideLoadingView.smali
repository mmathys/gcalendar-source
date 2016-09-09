.class Lcom/android/calendar/event/EventInfoFragment$HideLoadingView;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Lcom/android/calendar/timely/LoadingStateManager$OnFadeOutLoadingView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HideLoadingView"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/event/EventInfoFragment$1;)V
    .locals 0

    .prologue
    .line 923
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment$HideLoadingView;-><init>()V

    return-void
.end method


# virtual methods
.method public onFadeOutLoadingView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 926
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 927
    if-eqz v0, :cond_0

    .line 928
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x4b

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/event/EventInfoFragment$HideLoadingView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/calendar/event/EventInfoFragment$HideLoadingView$1;-><init>(Lcom/android/calendar/event/EventInfoFragment$HideLoadingView;Landroid/view/View;)V

    .line 929
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 937
    :cond_0
    return-void
.end method
