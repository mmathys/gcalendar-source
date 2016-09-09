.class Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;
.implements Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnMenuItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EventInfoFragment;


# direct methods
.method private constructor <init>(Lcom/android/calendar/event/EventInfoFragment;)V
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/event/EventInfoFragment;Lcom/android/calendar/event/EventInfoFragment$1;)V
    .locals 0

    .prologue
    .line 606
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;-><init>(Lcom/android/calendar/event/EventInfoFragment;)V

    return-void
.end method


# virtual methods
.method public beforeDeleteInitiated()V
    .locals 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 613
    instance-of v1, v0, Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;

    if-eqz v1, :cond_0

    .line 614
    check-cast v0, Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-interface {v0, v1}, Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;->beforeDeleteInitiated(Landroid/app/DialogFragment;)V

    .line 616
    :cond_0
    return-void
.end method

.method public onDeleteInitiated(I)V
    .locals 4

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 621
    instance-of v1, v0, Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;

    if-eqz v1, :cond_0

    .line 622
    check-cast v0, Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    .line 624
    invoke-virtual {v3}, Lcom/android/calendar/event/EventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v3

    # invokes: Lcom/android/calendar/event/EventInfoFragment;->getDeleteAccessibilityStringId(Lcom/android/calendar/timely/TimelineItem;)I
    invoke-static {v2, v3}, Lcom/android/calendar/event/EventInfoFragment;->access$000(Lcom/android/calendar/event/EventInfoFragment;Lcom/android/calendar/timely/TimelineItem;)I

    move-result v2

    .line 623
    invoke-interface {v0, v1, v2}, Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;->onDeleteComplete(Landroid/app/DialogFragment;I)V

    .line 626
    :cond_0
    return-void
.end method

.method public onDeleteItemClicked()V
    .locals 9

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 635
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v1, v1, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    if-eqz v1, :cond_0

    .line 636
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v1, v1, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-boolean v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mIsTask:Z

    if-eqz v1, :cond_1

    .line 637
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # invokes: Lcom/android/calendar/event/EventInfoFragment;->deleteTask()V
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$100(Lcom/android/calendar/event/EventInfoFragment;)V

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v1, v1, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-boolean v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mIsGroove:Z

    if-eqz v1, :cond_2

    .line 640
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v1}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->analytics_action_delete_pressed:I

    invoke-static {v1, v2}, Lcom/android/calendar/groove/GrooveUtils;->logEvent(Landroid/content/Context;I)V

    .line 643
    :cond_2
    new-instance v1, Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {v1, v0}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;)V

    .line 644
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v0, v0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v0, v0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v4, v0, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v6, v0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    const/4 v7, -0x1

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/calendar/DeleteEventHelper;->delete(JJLcom/android/calendar/event/CalendarEventModel;ILcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;)V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 630
    return-void
.end method

.method public onEmailGuestsItemClicked()V
    .locals 6

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 654
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v1, v1, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    if-eqz v1, :cond_0

    .line 655
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/calendar/alerts/QuickResponseActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "eventId"

    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v4, v3, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    .line 656
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 657
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 658
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 660
    :cond_0
    return-void
.end method

.method public onForwardItemClicked()V
    .locals 4

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 666
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v1, v1, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    if-eqz v1, :cond_0

    .line 667
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/calendar/event/ForwardEventActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "eventModel"

    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    .line 668
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 669
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 670
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 672
    :cond_0
    return-void
.end method

.method public onLoadEventClicked()V
    .locals 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    .line 685
    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v1, v1, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    .line 686
    invoke-virtual {v1}, Lcom/android/calendar/event/CalendarEventModel;->createEventDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->newInstance(Lcom/google/android/calendar/api/EventDescriptor;)Lcom/android/calendar/newapi/screen/EventEditScreenController;

    move-result-object v1

    .line 684
    invoke-static {v0, v1}, Lcom/android/calendar/newapi/screen/HostDialog;->showWithChildFragment(Landroid/app/FragmentManager;Lcom/android/calendar/newapi/screen/HostedFragment;)V

    .line 687
    return-void
.end method

.method public onLoadGrooveClicked()V
    .locals 6

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v0, v0, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    .line 677
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    .line 678
    invoke-virtual {v1}, Lcom/android/calendar/event/EventInfoFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v0, v0, Lcom/android/calendar/groove/TimelineGroove;->mods:Lcom/google/android/calendar/api/HabitModifications;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment$OnMenuItemClickListener;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v3, v3, Lcom/android/calendar/event/EventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v4, v3, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    .line 679
    invoke-static {v0, v2, v4, v5}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->newInstance(Lcom/google/android/calendar/api/Habit;Lcom/google/android/calendar/api/Event;J)Lcom/android/calendar/newapi/screen/GrooveEditScreenController;

    move-result-object v0

    .line 677
    invoke-static {v1, v0}, Lcom/android/calendar/newapi/screen/HostDialog;->showWithChildFragment(Landroid/app/FragmentManager;Lcom/android/calendar/newapi/screen/HostedFragment;)V

    .line 680
    return-void
.end method
