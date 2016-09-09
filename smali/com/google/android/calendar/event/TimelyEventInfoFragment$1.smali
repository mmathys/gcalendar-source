.class Lcom/google/android/calendar/event/TimelyEventInfoFragment$1;
.super Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;
.source "TimelyEventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getBirthdayCallback()Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)V
    .locals 0

    .prologue
    .line 646
    iput-object p1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$1;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    invoke-direct {p0, p1}, Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;-><init>(Lcom/android/calendar/event/EventInfoFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 649
    new-instance v1, Lcom/google/android/calendar/event/TimelyEventInfoFragment$BirthdayLoader;

    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$1;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$1;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    # invokes: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;
    invoke-static {v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$1000(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineBirthday;

    invoke-direct {v1, v2, v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$BirthdayLoader;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineBirthday;)V

    return-object v1
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 654
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$1;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    # invokes: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;
    invoke-static {v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$1100(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    .line 655
    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$1;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    # getter for: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;
    invoke-static {v1}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$1200(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v1

    iput-object v0, v1, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    .line 656
    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$1;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    # getter for: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;
    invoke-static {v1}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$1300(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerCanModify:Z

    .line 657
    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$1;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getSelfAttendeeStatus()I

    move-result v0

    # setter for: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mOriginalAttendeeResponse:I
    invoke-static {v1, v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$1402(Lcom/google/android/calendar/event/TimelyEventInfoFragment;I)I

    .line 658
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$1;->finishLoader(Landroid/content/Loader;)V

    .line 659
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 663
    return-void
.end method
