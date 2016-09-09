.class Lcom/android/calendar/event/EventInfoFragment$5;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoFragment;->showEventView(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EventInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoFragment;)V
    .locals 0

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$5;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$5;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mShowAnimation:Z
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$500(Lcom/android/calendar/event/EventInfoFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$5;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$600(Lcom/android/calendar/event/EventInfoFragment;)Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->setVisibility(I)V

    .line 1010
    :cond_0
    return-void
.end method
