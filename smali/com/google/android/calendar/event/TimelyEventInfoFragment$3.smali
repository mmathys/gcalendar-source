.class Lcom/google/android/calendar/event/TimelyEventInfoFragment$3;
.super Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;
.source "TimelyEventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getHolidayCallback()Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/event/EventInfoFragment$LoaderCallbacks",
        "<",
        "Lcom/android/calendar/timely/TimelineHoliday;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)V
    .locals 0

    .prologue
    .line 715
    iput-object p1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$3;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

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
            "Lcom/android/calendar/timely/TimelineHoliday;",
            ">;"
        }
    .end annotation

    .prologue
    .line 718
    new-instance v1, Lcom/google/android/calendar/event/TimelyEventInfoFragment$HolidayLoader;

    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$3;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$3;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    # invokes: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;
    invoke-static {v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$2300(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineHoliday;

    invoke-direct {v1, v2, v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$HolidayLoader;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineHoliday;)V

    return-object v1
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/calendar/timely/TimelineHoliday;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/calendar/timely/TimelineHoliday;",
            ">;",
            "Lcom/android/calendar/timely/TimelineHoliday;",
            ")V"
        }
    .end annotation

    .prologue
    .line 725
    invoke-virtual {p2}, Lcom/android/calendar/timely/TimelineHoliday;->isGlobalsLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$3;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->monitorCalendarCache()V

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$3;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    # getter for: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;
    invoke-static {v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$2400(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/calendar/timely/TimelineHoliday;->fillModel(Lcom/android/calendar/event/CalendarEventModel;)V

    .line 731
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$3;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    invoke-virtual {p2}, Lcom/android/calendar/timely/TimelineHoliday;->getSelfAttendeeStatus()I

    move-result v1

    # setter for: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mOriginalAttendeeResponse:I
    invoke-static {v0, v1}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$2502(Lcom/google/android/calendar/event/TimelyEventInfoFragment;I)I

    .line 732
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$3;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    new-instance v1, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    iget-object v2, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$3;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    # invokes: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;
    invoke-static {v2}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$2700(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/timely/TimelineItem;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$3;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    # getter for: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;
    invoke-static {v3}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$2800(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;-><init>(Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/event/CalendarEventModel;)V

    # setter for: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mEventTimePeriod:Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;
    invoke-static {v0, v1}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$2602(Lcom/google/android/calendar/event/TimelyEventInfoFragment;Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;)Lcom/android/calendar/event/EventInfoFragment$EventTimePeriod;

    .line 734
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$3;->finishLoader(Landroid/content/Loader;)V

    .line 735
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 715
    check-cast p2, Lcom/android/calendar/timely/TimelineHoliday;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$3;->onLoadFinished(Landroid/content/Loader;Lcom/android/calendar/timely/TimelineHoliday;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/calendar/timely/TimelineHoliday;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 739
    return-void
.end method
