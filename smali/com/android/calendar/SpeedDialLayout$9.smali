.class Lcom/android/calendar/SpeedDialLayout$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SpeedDialLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/SpeedDialLayout;->createFadeOutAnimator()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/SpeedDialLayout;


# direct methods
.method constructor <init>(Lcom/android/calendar/SpeedDialLayout;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/calendar/SpeedDialLayout$9;->this$0:Lcom/android/calendar/SpeedDialLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/calendar/SpeedDialLayout$9;->this$0:Lcom/android/calendar/SpeedDialLayout;

    # getter for: Lcom/android/calendar/SpeedDialLayout;->endSpeedDialFadeOutListener:Lcom/android/calendar/SpeedDialLayout$EndSpeedDialFadeOut;
    invoke-static {v0}, Lcom/android/calendar/SpeedDialLayout;->access$400(Lcom/android/calendar/SpeedDialLayout;)Lcom/android/calendar/SpeedDialLayout$EndSpeedDialFadeOut;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/calendar/SpeedDialLayout$9;->this$0:Lcom/android/calendar/SpeedDialLayout;

    # getter for: Lcom/android/calendar/SpeedDialLayout;->endSpeedDialFadeOutListener:Lcom/android/calendar/SpeedDialLayout$EndSpeedDialFadeOut;
    invoke-static {v0}, Lcom/android/calendar/SpeedDialLayout;->access$400(Lcom/android/calendar/SpeedDialLayout;)Lcom/android/calendar/SpeedDialLayout$EndSpeedDialFadeOut;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/SpeedDialLayout$EndSpeedDialFadeOut;->onEndSpeedDialFadeOut()V

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/SpeedDialLayout$9;->this$0:Lcom/android/calendar/SpeedDialLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/calendar/SpeedDialLayout;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcom/android/calendar/SpeedDialLayout$9;->this$0:Lcom/android/calendar/SpeedDialLayout;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/SpeedDialLayout;->currentAnimator:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/android/calendar/SpeedDialLayout;->access$302(Lcom/android/calendar/SpeedDialLayout;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 472
    return-void
.end method
