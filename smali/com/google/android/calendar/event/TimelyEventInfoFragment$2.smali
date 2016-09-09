.class Lcom/google/android/calendar/event/TimelyEventInfoFragment$2;
.super Ljava/lang/Object;
.source "TimelyEventInfoFragment.java"

# interfaces
.implements Lcom/android/calendar/task/BaseTaskDataFactory$OnSetModelResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getReminderLoaderCallbacks()Landroid/app/LoaderManager$LoaderCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 675
    const-class v0, Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)V
    .locals 0

    .prologue
    .line 675
    iput-object p1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$2;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Landroid/content/Loader;Lcom/android/calendar/task/TimelineTask;)V
    .locals 3

    .prologue
    .line 698
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$2;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "timeline_item"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 699
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$2;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    # getter for: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;
    invoke-static {v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$1700(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    iput-object p2, v0, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    .line 700
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$2;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    invoke-virtual {p2}, Lcom/android/calendar/task/TimelineTask;->getSelfAttendeeStatus()I

    move-result v1

    # setter for: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mOriginalAttendeeResponse:I
    invoke-static {v0, v1}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$1802(Lcom/google/android/calendar/event/TimelyEventInfoFragment;I)I

    .line 701
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$2;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    new-instance v1, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    iget-object v2, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$2;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    # getter for: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;
    invoke-static {v2}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$2000(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;-><init>(Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/event/CalendarEventModel;)V

    # setter for: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mEventTimePeriod:Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;
    invoke-static {v0, v1}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$1902(Lcom/google/android/calendar/event/TimelyEventInfoFragment;Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;)Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    .line 703
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    .line 704
    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$2;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    # getter for: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mLoaderManager:Landroid/app/LoaderManager;
    invoke-static {v1}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$2100(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 705
    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$2;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    # invokes: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->onQueryComplete(I)V
    invoke-static {v1, v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$2200(Lcom/google/android/calendar/event/TimelyEventInfoFragment;I)V

    .line 706
    return-void
.end method

.method public onFailed()V
    .locals 3

    .prologue
    .line 678
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$2;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    # getter for: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mDismissInProgress:Z
    invoke-static {v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$1500(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    :goto_0
    return-void

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$2;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 682
    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$2;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    # invokes: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->displayEventNotFound()V
    invoke-static {v1}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$1600(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)V

    .line 683
    sget-boolean v1, Lcom/google/android/calendar/event/TimelyEventInfoFragment$2;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 684
    :cond_1
    sget v1, Lcom/android/calendar/R$string;->task_not_found:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 685
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 687
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/google/android/calendar/event/TimelyEventInfoFragment$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$2$1;-><init>(Lcom/google/android/calendar/event/TimelyEventInfoFragment$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
