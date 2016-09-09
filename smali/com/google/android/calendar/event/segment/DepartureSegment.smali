.class public Lcom/google/android/calendar/event/segment/DepartureSegment;
.super Lcom/google/android/calendar/event/segment/GeoClickSegment;
.source "DepartureSegment.java"

# interfaces
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$OnTimezoneListener;


# instance fields
.field private final mDepartureTimeView:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 24
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/calendar/event/segment/DepartureSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/event/segment/DepartureSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/calendar/event/segment/GeoClickSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    sget v0, Lcom/android/calendar/R$id;->departure_time:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/DepartureSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;

    iput-object v0, p0, Lcom/google/android/calendar/event/segment/DepartureSegment;->mDepartureTimeView:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;

    .line 36
    return-void
.end method


# virtual methods
.method protected getLabelId()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/android/calendar/R$id;->airport:I

    return v0
.end method

.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/android/calendar/R$layout;->segment_departure:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    sget v0, Lcom/android/calendar/R$dimen;->smart_info_segment_detail_text_extend_padding:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/DepartureSegment;->setDefaultPaddingId(I)V

    .line 42
    return-void
.end method

.method public onRefreshModel()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 46
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/DepartureSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    instance-of v0, v0, Lcom/google/android/calendar/event/segment/FlightReservationFlightSegmentProvider;

    if-eqz v0, :cond_3

    .line 47
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/DepartureSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/google/android/calendar/event/segment/FlightReservationFlightSegmentProvider;

    .line 49
    invoke-interface {v0}, Lcom/google/android/calendar/event/segment/FlightReservationFlightSegmentProvider;->getFlightReservationFlightSegment()Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;

    move-result-object v1

    .line 50
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/DepartureSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 52
    sget v0, Lcom/android/calendar/R$id;->gate:I

    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->getDepartureGate()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->gate_id:I

    invoke-virtual {p0, v0, v3, v2, v4}, Lcom/google/android/calendar/event/segment/DepartureSegment;->showTextOrHide(ILjava/lang/CharSequence;Landroid/content/res/Resources;I)V

    .line 53
    sget v0, Lcom/android/calendar/R$id;->terminal:I

    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->getDepartureTerminal()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->terminal_id:I

    invoke-virtual {p0, v0, v3, v2, v4}, Lcom/google/android/calendar/event/segment/DepartureSegment;->showTextOrHide(ILjava/lang/CharSequence;Landroid/content/res/Resources;I)V

    .line 55
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/DepartureSegment;->mDepartureTimeView:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;

    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->getDepartureTime()Lcom/google/api/services/calendar/model/Time;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->setTime(Lcom/google/api/services/calendar/model/Time;)V

    .line 57
    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->getDepartureCity()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->getDepartureAirportCode()Ljava/lang/String;

    move-result-object v1

    .line 60
    sget v3, Lcom/android/calendar/R$string;->departs:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 61
    const-string v0, ""

    :cond_0
    aput-object v0, v4, v5

    if-nez v1, :cond_1

    .line 62
    const-string v0, ""

    :goto_0
    aput-object v0, v4, v6

    .line 60
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/DepartureSegment;->getLabelId()I

    move-result v3

    invoke-virtual {p0, v3, v0}, Lcom/google/android/calendar/event/segment/DepartureSegment;->showText(ILjava/lang/CharSequence;)V

    .line 65
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/DepartureSegment;->setUrlByLocation(Ljava/lang/String;)V

    .line 70
    :goto_2
    return-void

    :cond_1
    move-object v0, v1

    .line 62
    goto :goto_0

    .line 66
    :cond_2
    sget v0, Lcom/android/calendar/R$string;->airport_search:I

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 68
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/DepartureSegment;->hide()V

    goto :goto_2
.end method
