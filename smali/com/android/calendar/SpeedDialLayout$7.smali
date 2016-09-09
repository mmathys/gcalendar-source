.class Lcom/android/calendar/SpeedDialLayout$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SpeedDialLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/SpeedDialLayout;->createSmallButtonPulseAnimator()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/android/calendar/SpeedDialLayout;


# direct methods
.method constructor <init>(Lcom/android/calendar/SpeedDialLayout;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/calendar/SpeedDialLayout$7;->this$0:Lcom/android/calendar/SpeedDialLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/SpeedDialLayout$7;->mCanceled:Z

    .line 430
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/android/calendar/SpeedDialLayout$7;->mCanceled:Z

    if-nez v0, :cond_0

    .line 435
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 437
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/SpeedDialLayout$7;->mCanceled:Z

    .line 425
    return-void
.end method
