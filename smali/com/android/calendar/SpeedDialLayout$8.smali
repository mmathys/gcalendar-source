.class Lcom/android/calendar/SpeedDialLayout$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SpeedDialLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/SpeedDialLayout;->createFadeInAnimator()Landroid/animation/Animator;
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
    .line 447
    iput-object p1, p0, Lcom/android/calendar/SpeedDialLayout$8;->this$0:Lcom/android/calendar/SpeedDialLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/calendar/SpeedDialLayout$8;->this$0:Lcom/android/calendar/SpeedDialLayout;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/SpeedDialLayout;->currentAnimator:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/android/calendar/SpeedDialLayout;->access$302(Lcom/android/calendar/SpeedDialLayout;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 456
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/calendar/SpeedDialLayout$8;->this$0:Lcom/android/calendar/SpeedDialLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/SpeedDialLayout;->setVisibility(I)V

    .line 451
    return-void
.end method
