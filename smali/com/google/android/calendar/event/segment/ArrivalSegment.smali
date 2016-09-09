.class public Lcom/google/android/calendar/event/segment/ArrivalSegment;
.super Lcom/google/android/calendar/event/segment/GeoClickSegment;
.source "ArrivalSegment.java"

# interfaces
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$OnTimezoneListener;


# instance fields
.field private final mArrivalTimeView:Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 24
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/calendar/event/segment/ArrivalSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/event/segment/ArrivalSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/calendar/event/segment/GeoClickSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    sget v0, Lcom/android/calendar/R$id;->arrival_time:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/ArrivalSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;

    iput-object v0, p0, Lcom/google/android/calendar/event/segment/ArrivalSegment;->mArrivalTimeView:Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;

    .line 36
    return-void
.end method


# virtual methods
.method protected getLabelId()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/android/calendar/R$id;->airport:I

    return v0
.end method

.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/android/calendar/R$layout;->segment_arrival:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    sget v0, Lcom/android/calendar/R$dimen;->smart_info_segment_detail_text_extend_padding:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/ArrivalSegment;->setDefaultPaddingId(I)V

    .line 42
    return-void
.end method

.method public onRefreshModel()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 46
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/ArrivalSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    instance-of v0, v0, Lcom/google/android/calendar/event/segment/FlightReservationFlightSegmentProvider;

    if-eqz v0, :cond_3

    .line 47
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/ArrivalSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/google/android/calendar/event/segment/FlightReservationFlightSegmentProvider;

    .line 49
    invoke-interface {v0}, Lcom/google/android/calendar/event/segment/FlightReservationFlightSegmentProvider;->getFlightReservationFlightSegment()Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;

    move-result-object v1

    .line 50
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/ArrivalSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 52
    sget v0, Lcom/android/calendar/R$id;->gate:I

    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->getArrivalGate()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->gate_id:I

    invoke-virtual {p0, v0, v3, v2, v4}, Lcom/google/android/calendar/event/segment/ArrivalSegment;->showTextOrHide(ILjava/lang/CharSequence;Landroid/content/res/Resources;I)V

    .line 53
    sget v0, Lcom/android/calendar/R$id;->terminal:I

    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->getArrivalTerminal()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->terminal_id:I

    invoke-virtual {p0, v0, v3, v2, v4}, Lcom/google/android/calendar/event/segment/ArrivalSegment;->showTextOrHide(ILjava/lang/CharSequence;Landroid/content/res/Resources;I)V

    .line 57
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/ArrivalSegment;->mArrivalTimeView:Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;

    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->getDepartureTime()Lcom/google/api/services/calendar/model/Time;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->getArrivalTime()Lcom/google/api/services/calendar/model/Time;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;->setArrivalTime(Lcom/google/api/services/calendar/model/Time;Lcom/google/api/services/calendar/model/Time;)V

    .line 59
    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->getArrivalCity()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->getArrivalAirportCode()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/ArrivalSegment;->getLabelId()I

    move-result v3

    sget v4, Lcom/android/calendar/R$string;->arrives:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 63
    const-string v0, ""

    :cond_0
    aput-object v0, v5, v6

    if-nez v1, :cond_1

    .line 64
    const-string v0, ""

    :goto_0
    aput-object v0, v5, v7

    .line 63
    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {p0, v3, v0}, Lcom/google/android/calendar/event/segment/ArrivalSegment;->showText(ILjava/lang/CharSequence;)V

    .line 66
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/ArrivalSegment;->setUrlByLocation(Ljava/lang/String;)V

    .line 71
    :goto_2
    return-void

    :cond_1
    move-object v0, v1

    .line 64
    goto :goto_0

    .line 67
    :cond_2
    sget v0, Lcom/android/calendar/R$string;->airport_search:I

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 69
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/ArrivalSegment;->hide()V

    goto :goto_2
.end method
