.class Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl23$1;
.super Ljava/lang/Object;
.source "StatusbarAnimatorImpl23.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl23;->addLightStatusbarChangeToAnimationStart(Landroid/animation/Animator;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mWasLSBpreAnimation:Z

.field final synthetic this$0:Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl23;

.field final synthetic val$lightStatusbarEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl23;Z)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl23$1;->this$0:Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl23;

    iput-boolean p2, p0, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl23$1;->val$lightStatusbarEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl23$1;->this$0:Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl23;

    iget-boolean v1, p0, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl23$1;->mWasLSBpreAnimation:Z

    invoke-virtual {v0, v1}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl23;->setLightStatusbar(Z)V

    .line 32
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl23$1;->this$0:Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl23;

    invoke-virtual {v0}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl23;->isLightStatusbarEffective()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl23$1;->mWasLSBpreAnimation:Z

    .line 26
    iget-object v0, p0, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl23$1;->this$0:Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl23;

    iget-boolean v1, p0, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl23$1;->val$lightStatusbarEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorImpl23;->setLightStatusbar(Z)V

    .line 27
    return-void
.end method
