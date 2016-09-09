.class Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$1;
.super Lcom/google/android/calendar/event/segment/TimelyLocationSegment$TimelyLocationProvider;
.source "TimelyEventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$1;->this$1:Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;

    invoke-direct {p0}, Lcom/google/android/calendar/event/segment/TimelyLocationSegment$TimelyLocationProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventLocation()Lcom/google/calendar/v2/client/service/api/geo/EventLocation;
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$1;->this$1:Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;

    iget-object v0, v0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    # getter for: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;
    invoke-static {v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$100(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    .line 306
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/calendar/event/EventExtras;->getEventLocations()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 307
    invoke-interface {v0}, Lcom/android/calendar/event/EventExtras;->getEventLocations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    invoke-interface {v0}, Lcom/android/calendar/event/EventExtras;->getEventLocations()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    .line 310
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getModelData()Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$1;->this$1:Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;

    iget-object v0, v0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    # getter for: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;
    invoke-static {v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$200(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    return-object v0
.end method
