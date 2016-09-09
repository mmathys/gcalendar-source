.class Lcom/android/calendar/utils/statusbar/StatusbarAnimatorMock;
.super Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;
.source "StatusbarAnimatorMock.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public addLightStatusbarChangeToAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public animateStatusbarColor(III)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorMock$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorMock$1;-><init>(Lcom/android/calendar/utils/statusbar/StatusbarAnimatorMock;)V

    return-object v0
.end method

.method public getStatusbarColor()I
    .locals 1

    .prologue
    .line 18
    const/high16 v0, -0x1000000

    return v0
.end method

.method public isLightStatusbarEffective()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public setLightStatusbar(Z)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public setStatusbarColor(I)V
    .locals 0

    .prologue
    .line 22
    return-void
.end method
