.class Lcom/android/calendar/utils/statusbar/StatusbarAnimatorMock$1;
.super Landroid/animation/Animator;
.source "StatusbarAnimatorMock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/utils/statusbar/StatusbarAnimatorMock;->animateStatusbarColor(III)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/utils/statusbar/StatusbarAnimatorMock;


# direct methods
.method constructor <init>(Lcom/android/calendar/utils/statusbar/StatusbarAnimatorMock;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorMock$1;->this$0:Lcom/android/calendar/utils/statusbar/StatusbarAnimatorMock;

    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .prologue
    .line 43
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 35
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public setDuration(J)Landroid/animation/Animator;
    .locals 0

    .prologue
    .line 48
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public setStartDelay(J)V
    .locals 0

    .prologue
    .line 39
    return-void
.end method
