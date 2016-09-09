.class public abstract Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;
.super Ljava/lang/Object;
.source "StatusbarAnimatorCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance(Landroid/view/Window;)Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;
    .locals 1

    .prologue
    .line 22
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/calendar/Utils;->checkArgument(Z)V

    .line 24
    invoke-static {}, Lcom/android/calendar/Utils;->isMOrLater()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    new-instance v0, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl23;

    invoke-direct {v0, p0}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl23;-><init>(Landroid/view/Window;)V

    .line 29
    :goto_1
    return-object v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 26
    :cond_1
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    new-instance v0, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl21;

    invoke-direct {v0, p0}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl21;-><init>(Landroid/view/Window;)V

    goto :goto_1

    .line 29
    :cond_2
    new-instance v0, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorMock;

    invoke-direct {v0}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorMock;-><init>()V

    goto :goto_1
.end method


# virtual methods
.method public abstract addLightStatusbarChangeToAnimationStart(Landroid/animation/Animator;Z)V
.end method

.method public animateStatusbarColor(II)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->getStatusbarColor()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->animateStatusbarColor(III)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public abstract animateStatusbarColor(III)Landroid/animation/Animator;
.end method

.method public abstract getStatusbarColor()I
.end method

.method public abstract isLightStatusbarEffective()Z
.end method

.method public abstract setLightStatusbar(Z)V
.end method

.method public abstract setStatusbarColor(I)V
.end method

.method public tryApplyLightStatusbar(ZII)V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->tryApplyLightStatusbar(ZIII)V

    .line 148
    return-void
.end method

.method public tryApplyLightStatusbar(ZIII)V
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->setLightStatusbar(Z)V

    .line 168
    invoke-virtual {p0}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->isLightStatusbarEffective()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    :goto_0
    if-nez p4, :cond_1

    .line 170
    invoke-virtual {p0, p2}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->setStatusbarColor(I)V

    .line 174
    :goto_1
    return-void

    :cond_0
    move p2, p3

    .line 168
    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {p0, p2, p4}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->animateStatusbarColor(II)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_1
.end method
