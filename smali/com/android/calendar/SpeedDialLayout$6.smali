.class Lcom/android/calendar/SpeedDialLayout$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SpeedDialLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/SpeedDialLayout;->createAnimator(Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/SpeedDialLayout;

.field final synthetic val$fadeIn:Z

.field final synthetic val$viewsWithLayer:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/calendar/SpeedDialLayout;ZLjava/util/List;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/calendar/SpeedDialLayout$6;->this$0:Lcom/android/calendar/SpeedDialLayout;

    iput-boolean p2, p0, Lcom/android/calendar/SpeedDialLayout$6;->val$fadeIn:Z

    iput-object p3, p0, Lcom/android/calendar/SpeedDialLayout$6;->val$viewsWithLayer:Ljava/util/List;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/android/calendar/SpeedDialLayout$6;->val$fadeIn:Z

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/calendar/SpeedDialLayout$6;->this$0:Lcom/android/calendar/SpeedDialLayout;

    # getter for: Lcom/android/calendar/SpeedDialLayout;->fadeLayer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/SpeedDialLayout;->access$100(Lcom/android/calendar/SpeedDialLayout;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/SpeedDialLayout$6;->this$0:Lcom/android/calendar/SpeedDialLayout;

    iget-object v1, p0, Lcom/android/calendar/SpeedDialLayout$6;->val$viewsWithLayer:Ljava/util/List;

    const/4 v2, 0x0

    # invokes: Lcom/android/calendar/SpeedDialLayout;->setLayerTypeOnAllViewTargets(Ljava/util/List;I)V
    invoke-static {v0, v1, v2}, Lcom/android/calendar/SpeedDialLayout;->access$200(Lcom/android/calendar/SpeedDialLayout;Ljava/util/List;I)V

    .line 384
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/android/calendar/SpeedDialLayout$6;->val$fadeIn:Z

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/calendar/SpeedDialLayout$6;->this$0:Lcom/android/calendar/SpeedDialLayout;

    # getter for: Lcom/android/calendar/SpeedDialLayout;->fadeLayer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/SpeedDialLayout;->access$100(Lcom/android/calendar/SpeedDialLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/SpeedDialLayout$6;->this$0:Lcom/android/calendar/SpeedDialLayout;

    iget-object v1, p0, Lcom/android/calendar/SpeedDialLayout$6;->val$viewsWithLayer:Ljava/util/List;

    const/4 v2, 0x2

    # invokes: Lcom/android/calendar/SpeedDialLayout;->setLayerTypeOnAllViewTargets(Ljava/util/List;I)V
    invoke-static {v0, v1, v2}, Lcom/android/calendar/SpeedDialLayout;->access$200(Lcom/android/calendar/SpeedDialLayout;Ljava/util/List;I)V

    .line 376
    return-void
.end method
