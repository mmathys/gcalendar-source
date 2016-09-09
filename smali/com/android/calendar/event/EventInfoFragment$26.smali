.class Lcom/android/calendar/event/EventInfoFragment$26;
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
.field final synthetic this$0:Lcom/android/calendar/event/EventInfoFragment;

.field final synthetic val$onAnimationEnd:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoFragment;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 2857
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$26;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iput-object p2, p0, Lcom/android/calendar/event/EventInfoFragment$26;->val$onAnimationEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2860
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$26;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mOverlayView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$3100(Lcom/android/calendar/event/EventInfoFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2861
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$26;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$26;->val$onAnimationEnd:Ljava/lang/Runnable;

    # invokes: Lcom/android/calendar/event/EventInfoFragment;->showEventView(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/android/calendar/event/EventInfoFragment;->access$400(Lcom/android/calendar/event/EventInfoFragment;Ljava/lang/Runnable;)V

    .line 2862
    return-void
.end method
