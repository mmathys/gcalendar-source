.class public abstract Lcom/android/calendar/TargetLayoutAnimationAdapter;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TargetLayoutAnimationAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field private final mAnimation:Landroid/animation/Animator;

.field private final mViewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/TargetLayoutAnimationAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 22
    iget-object v0, p0, Lcom/android/calendar/TargetLayoutAnimationAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 23
    iput-object p2, p0, Lcom/android/calendar/TargetLayoutAnimationAdapter;->mAnimation:Landroid/animation/Animator;

    .line 24
    iget-object v0, p0, Lcom/android/calendar/TargetLayoutAnimationAdapter;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 25
    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 29
    iget-object v1, p0, Lcom/android/calendar/TargetLayoutAnimationAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v0

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/TargetLayoutAnimationAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/calendar/TargetLayoutAnimationAdapter;->prepareAnimationWithTargetLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/android/calendar/TargetLayoutAnimationAdapter;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 36
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract prepareAnimationWithTargetLayout()Z
.end method
