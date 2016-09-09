.class final Lcom/android/calendar/groove/GrooveScheduleFragment$7;
.super Ljava/lang/Object;
.source "GrooveScheduleFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/GrooveScheduleFragment;->startBackgroundTransitionAnimation(Landroid/view/View;IILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$imageView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$7;->val$imageView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 496
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$7;->val$imageView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleFragment$7;->val$imageView:Landroid/view/View;

    # invokes: Lcom/android/calendar/groove/GrooveScheduleFragment;->createImageEnterAnimator(Landroid/view/View;)Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveScheduleFragment;->access$1400(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 492
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 500
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 485
    return-void
.end method
