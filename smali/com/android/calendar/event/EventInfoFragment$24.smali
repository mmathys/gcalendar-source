.class Lcom/android/calendar/event/EventInfoFragment$24;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoFragment;->onFinalLayoutFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/android/calendar/event/EventInfoFragment;

.field final synthetic val$layoutParams:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoFragment;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 2827
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$24;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iput-object p2, p0, Lcom/android/calendar/event/EventInfoFragment$24;->val$layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2828
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/event/EventInfoFragment$24;->count:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2831
    iget v0, p0, Lcom/android/calendar/event/EventInfoFragment$24;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/event/EventInfoFragment$24;->count:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2832
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$24;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2833
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$24;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$600(Lcom/android/calendar/event/EventInfoFragment;)Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->setVisibility(I)V

    .line 2834
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$24;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mOverlayView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$3100(Lcom/android/calendar/event/EventInfoFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$24;->val$layoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2835
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$24;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mOverlayView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$3100(Lcom/android/calendar/event/EventInfoFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 2836
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$24;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mOverlayView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$3100(Lcom/android/calendar/event/EventInfoFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 2838
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$24;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mOverlayBackground:Lcom/android/calendar/OverlayFragment$OverlayBackground;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$4400(Lcom/android/calendar/event/EventInfoFragment;)Lcom/android/calendar/OverlayFragment$OverlayBackground;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$24;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v0, v1}, Lcom/android/calendar/OverlayFragment$OverlayBackground;->setToCard(Lcom/android/calendar/OverlayFragment;)Lcom/android/calendar/OverlayFragment$OverlayBackground;

    .line 2841
    :cond_0
    return-void
.end method
