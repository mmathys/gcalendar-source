.class final Lcom/android/calendar/groove/AnimatorHelper$1;
.super Ljava/lang/Object;
.source "AnimatorHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/AnimatorHelper;->createFadeOutFadeInAnimator(Landroid/view/View;Lcom/android/calendar/groove/AnimatorHelper$FadeOutFadeInAnimatorListener;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/android/calendar/groove/AnimatorHelper$FadeOutFadeInAnimatorListener;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/AnimatorHelper$FadeOutFadeInAnimatorListener;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/calendar/groove/AnimatorHelper$1;->val$listener:Lcom/android/calendar/groove/AnimatorHelper$FadeOutFadeInAnimatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/calendar/groove/AnimatorHelper$1;->val$listener:Lcom/android/calendar/groove/AnimatorHelper$FadeOutFadeInAnimatorListener;

    invoke-interface {v0}, Lcom/android/calendar/groove/AnimatorHelper$FadeOutFadeInAnimatorListener;->fadeOutAnimationEnd()V

    .line 66
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method
