.class public abstract Lcom/google/android/calendar/event/segment/TimelyLocationSegment$TimelyLocationProvider;
.super Ljava/lang/Object;
.source "TimelyLocationSegment.java"

# interfaces
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/segment/TimelyLocationSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TimelyLocationProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnalyticsAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "open_location"

    return-object v0
.end method

.method public getEventLocation()Lcom/google/calendar/v2/client/service/api/geo/EventLocation;
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/TimelyLocationSegment$TimelyLocationProvider;->getModelData()Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    if-eqz v1, :cond_0

    .line 33
    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    invoke-interface {v0}, Lcom/android/calendar/event/EventExtras;->getEventLocations()Ljava/util/List;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 35
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    .line 38
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
