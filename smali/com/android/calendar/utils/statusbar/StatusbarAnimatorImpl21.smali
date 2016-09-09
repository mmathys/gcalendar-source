.class Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl21;
.super Lcom/android/calendar/utils/statusbar/StatusbarAnimatorMock;
.source "StatusbarAnimatorImpl21.java"


# instance fields
.field protected final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorMock;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl21;->mWindow:Landroid/view/Window;

    .line 20
    return-void
.end method


# virtual methods
.method public animateStatusbarColor(III)Landroid/animation/Animator;
    .locals 4

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl21;->mWindow:Landroid/view/Window;

    const-string v1, "statusBarColor"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p3, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    .line 36
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 37
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 38
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 39
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 40
    return-object v0
.end method

.method public getStatusbarColor()I
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl21;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getStatusBarColor()I

    move-result v0

    return v0
.end method

.method public setStatusbarColor(I)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl21;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 30
    return-void
.end method
