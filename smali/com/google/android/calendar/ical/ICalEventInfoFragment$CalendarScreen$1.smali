.class Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen$1;
.super Lcom/google/android/calendar/event/segment/TimelyLocationSegment$TimelyLocationProvider;
.source "ICalEventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen;->onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen$1;->this$1:Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen;

    invoke-direct {p0}, Lcom/google/android/calendar/event/segment/TimelyLocationSegment$TimelyLocationProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventLocation()Lcom/google/calendar/v2/client/service/api/geo/EventLocation;
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen$1;->this$1:Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen;

    iget-object v0, v0, Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen;->this$0:Lcom/google/android/calendar/ical/ICalEventInfoFragment;

    # getter for: Lcom/google/android/calendar/ical/ICalEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;
    invoke-static {v0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->access$200(Lcom/google/android/calendar/ical/ICalEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    .line 238
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/calendar/event/EventExtras;->getEventLocations()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 239
    invoke-interface {v0}, Lcom/android/calendar/event/EventExtras;->getEventLocations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    invoke-interface {v0}, Lcom/android/calendar/event/EventExtras;->getEventLocations()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    .line 242
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getModelData()Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen$1;->this$1:Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen;

    iget-object v0, v0, Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen;->this$0:Lcom/google/android/calendar/ical/ICalEventInfoFragment;

    # getter for: Lcom/google/android/calendar/ical/ICalEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;
    invoke-static {v0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->access$300(Lcom/google/android/calendar/ical/ICalEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    return-object v0
.end method
