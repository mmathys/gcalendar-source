.class public Lcom/google/android/calendar/event/segment/FlightInfoSegment;
.super Lcom/google/android/calendar/event/segment/SmartInfoSegment;
.source "FlightInfoSegment.java"

# interfaces
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$OnTimezoneListener;


# instance fields
.field private final mDepartureTimeView:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;

.field private final mGreenColor:I

.field private final mRedColor:I

.field private final mStatusView:Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/calendar/event/segment/FlightInfoSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/event/segment/FlightInfoSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/calendar/event/segment/SmartInfoSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    sget v1, Lcom/android/calendar/R$color;->smart_mail_flight_green:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->mGreenColor:I

    .line 61
    sget v1, Lcom/android/calendar/R$color;->smart_mail_flight_red:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->mRedColor:I

    .line 62
    sget v0, Lcom/android/calendar/R$id;->departure_time:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;

    iput-object v0, p0, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->mDepartureTimeView:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;

    .line 63
    sget v0, Lcom/android/calendar/R$id;->status:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;

    iput-object v0, p0, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->mStatusView:Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;

    .line 64
    return-void
.end method

.method private mapStatusCode(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 182
    if-nez p1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 185
    :cond_1
    const-string v1, "CANCELLED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    const/4 v0, 0x5

    goto :goto_0

    .line 188
    :cond_2
    const-string v1, "DELAYED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 189
    const/4 v0, 0x4

    goto :goto_0

    .line 191
    :cond_3
    const-string v1, "LANDED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 192
    const/4 v0, 0x3

    goto :goto_0

    .line 194
    :cond_4
    const-string v1, "ON_TIME"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 195
    const/4 v0, 0x2

    goto :goto_0

    .line 197
    :cond_5
    const-string v1, "REDIRECTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 198
    const/4 v0, 0x6

    goto :goto_0

    .line 200
    :cond_6
    const-string v1, "SCHEDULED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showDelayedStatus(Lcom/google/api/services/calendar/model/Time;Lcom/google/api/services/calendar/model/Time;)V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->mStatusView:Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;

    sget v1, Lcom/android/calendar/R$string;->flight_delayed:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;->setArrivalTime(ILcom/google/api/services/calendar/model/Time;Lcom/google/api/services/calendar/model/Time;)V

    .line 220
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->mStatusView:Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;

    iget v1, p0, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->mRedColor:I

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;->setTextColor(I)V

    .line 221
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->mStatusView:Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;->setVisibility(I)V

    .line 222
    return-void
.end method

.method private showLandedStatus(Lcom/google/api/services/calendar/model/Time;Lcom/google/api/services/calendar/model/Time;)V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->mStatusView:Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;

    sget v1, Lcom/android/calendar/R$string;->flight_landed:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;->setArrivalTime(ILcom/google/api/services/calendar/model/Time;Lcom/google/api/services/calendar/model/Time;)V

    .line 229
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->mStatusView:Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;

    iget v1, p0, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->mGreenColor:I

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;->setTextColor(I)V

    .line 230
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->mStatusView:Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;->setVisibility(I)V

    .line 231
    return-void
.end method

.method private showNonTimeStatus(II)V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->mStatusView:Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;

    invoke-virtual {v0, p1}, Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;->setText(I)V

    .line 211
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->mStatusView:Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;

    invoke-virtual {v0, p2}, Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;->setTextColor(I)V

    .line 212
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->mStatusView:Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;->setVisibility(I)V

    .line 213
    return-void
.end method

.method private showRealTimeStatus(Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->getActualArrivalTime()Lcom/google/api/services/calendar/model/Time;

    move-result-object v0

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->getArrivalTime()Lcom/google/api/services/calendar/model/Time;

    move-result-object v0

    .line 138
    :goto_0
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Time;->getTimeMs()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 139
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->mStatusView:Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;

    invoke-virtual {v0, v6}, Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;->setVisibility(I)V

    .line 176
    :goto_1
    return-void

    .line 136
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->getActualArrivalTime()Lcom/google/api/services/calendar/model/Time;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->getStatusCode()Ljava/lang/String;

    move-result-object v1

    .line 147
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 152
    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 174
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->mStatusView:Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;

    invoke-virtual {v0, v6}, Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;->setVisibility(I)V

    goto :goto_1

    .line 148
    :catch_0
    move-exception v2

    .line 149
    invoke-direct {p0, v1}, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->mapStatusCode(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 154
    :pswitch_0
    sget v0, Lcom/android/calendar/R$string;->flight_cancelled:I

    iget v1, p0, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->mRedColor:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->showNonTimeStatus(II)V

    goto :goto_1

    .line 158
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->getActualDepartureTime()Lcom/google/api/services/calendar/model/Time;

    move-result-object v0

    if-nez v0, :cond_2

    .line 159
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->getDepartureTime()Lcom/google/api/services/calendar/model/Time;

    move-result-object v0

    .line 160
    :goto_3
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->getDepartureTime()Lcom/google/api/services/calendar/model/Time;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->showDelayedStatus(Lcom/google/api/services/calendar/model/Time;Lcom/google/api/services/calendar/model/Time;)V

    goto :goto_1

    .line 159
    :cond_2
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->getActualDepartureTime()Lcom/google/api/services/calendar/model/Time;

    move-result-object v0

    goto :goto_3

    .line 163
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->getDepartureTime()Lcom/google/api/services/calendar/model/Time;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->showLandedStatus(Lcom/google/api/services/calendar/model/Time;Lcom/google/api/services/calendar/model/Time;)V

    goto :goto_1

    .line 166
    :pswitch_3
    sget v0, Lcom/android/calendar/R$string;->flight_on_time:I

    iget v1, p0, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->mGreenColor:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->showNonTimeStatus(II)V

    goto :goto_1

    .line 169
    :pswitch_4
    sget v0, Lcom/android/calendar/R$string;->flight_redirected:I

    iget v1, p0, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->mRedColor:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->showNonTimeStatus(II)V

    goto :goto_1

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected getLabelId()I
    .locals 1

    .prologue
    .line 117
    sget v0, Lcom/android/calendar/R$id;->airlines:I

    return v0
.end method

.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 2

    .prologue
    .line 68
    sget v0, Lcom/android/calendar/R$layout;->segment_flight_info:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 69
    sget v0, Lcom/android/calendar/R$id;->status:I

    sget v1, Lcom/android/calendar/R$dimen;->smart_info_segment_status_extend_padding:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->setOnMeasureDetailView(II)V

    .line 70
    sget v0, Lcom/android/calendar/R$dimen;->smart_info_segment_detail_text_extend_padding:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->setDefaultPaddingId(I)V

    .line 71
    return-void
.end method

.method public onRefreshModel()V
    .locals 8

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    instance-of v0, v0, Lcom/google/android/calendar/event/segment/FlightReservationFlightSegmentProvider;

    if-eqz v0, :cond_4

    .line 76
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/google/android/calendar/event/segment/FlightReservationFlightSegmentProvider;

    .line 78
    invoke-interface {v0}, Lcom/google/android/calendar/event/segment/FlightReservationFlightSegmentProvider;->getFlightReservationFlightSegment()Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;

    move-result-object v0

    .line 79
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->getAirlineCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->getAirlineCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_0
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->getFlightNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 88
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_1
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->getFlightNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->getAirlineName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 96
    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/calendar/R$string;->flight_id:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->getLabelId()I

    move-result v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->showText(ILjava/lang/CharSequence;)V

    .line 101
    iget-object v1, p0, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->mDepartureTimeView:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->getDepartureTime()Lcom/google/api/services/calendar/model/Time;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->setTime(Lcom/google/api/services/calendar/model/Time;)V

    .line 102
    invoke-direct {p0, v0}, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->showRealTimeStatus(Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/FlightInfoSegment;->hide()V

    goto :goto_0
.end method
