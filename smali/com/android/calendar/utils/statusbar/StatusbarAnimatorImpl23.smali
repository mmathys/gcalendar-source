.class Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl23;
.super Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl21;
.source "StatusbarAnimatorImpl23.java"


# direct methods
.method public constructor <init>(Landroid/view/Window;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl21;-><init>(Landroid/view/Window;)V

    .line 14
    return-void
.end method


# virtual methods
.method public addLightStatusbarChangeToAnimationStart(Landroid/animation/Animator;Z)V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl23$1;

    invoke-direct {v0, p0, p2}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl23$1;-><init>(Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl23;Z)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 40
    return-void
.end method

.method public isLightStatusbarEffective()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl23;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 45
    and-int/lit16 v0, v0, 0x2000

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLightStatusbar(Z)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl23;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 51
    if-eqz p1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl23;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    or-int/lit16 v0, v0, 0x2000

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl23;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    and-int/lit16 v0, v0, -0x2001

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method
