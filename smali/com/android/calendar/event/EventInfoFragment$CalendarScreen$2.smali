.class Lcom/android/calendar/event/EventInfoFragment$CalendarScreen$2;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->onInflateCommandBar(Lcom/android/calendar/event/EventInfoFragment$CommandBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;)V
    .locals 0

    .prologue
    .line 4165
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen$2;->this$1:Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 4168
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen$2;->this$1:Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;

    iget-object v0, v0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mSaveResponseRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$3900(Lcom/android/calendar/event/EventInfoFragment;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4169
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen$2;->this$1:Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;

    iget-object v0, v0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$1600(Lcom/android/calendar/event/EventInfoFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen$2;->this$1:Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;

    iget-object v1, v1, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mSaveResponseRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/calendar/event/EventInfoFragment;->access$3900(Lcom/android/calendar/event/EventInfoFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4170
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen$2;->this$1:Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;

    iget-object v0, v0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/event/EventInfoFragment;->mSaveResponseRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/calendar/event/EventInfoFragment;->access$3902(Lcom/android/calendar/event/EventInfoFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 4172
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen$2;->this$1:Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;

    iget-object v0, v0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # invokes: Lcom/android/calendar/event/EventInfoFragment;->launchProposeTime()V
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$3500(Lcom/android/calendar/event/EventInfoFragment;)V

    .line 4173
    return-void
.end method
