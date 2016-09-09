.class public Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;
.super Ljava/lang/Object;
.source "SmartMailImageUrl.java"


# instance fields
.field private final mAddress:Lcom/google/api/services/calendar/model/SmartMailAddress;

.field private final mFlairResourceId:I

.field private final mHeight:I

.field private final mImage:Lcom/google/api/services/calendar/model/Image;

.field private final mWidth:I


# direct methods
.method private constructor <init>(Lcom/google/api/services/calendar/model/Image;Lcom/google/api/services/calendar/model/SmartMailAddress;III)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;->mImage:Lcom/google/api/services/calendar/model/Image;

    .line 96
    iput-object p2, p0, Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;->mAddress:Lcom/google/api/services/calendar/model/SmartMailAddress;

    .line 97
    iput p3, p0, Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;->mFlairResourceId:I

    .line 98
    iput p4, p0, Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;->mWidth:I

    .line 99
    iput p5, p0, Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;->mHeight:I

    .line 100
    return-void
.end method

.method public static getSmartMailImageUrl(Lcom/google/api/services/calendar/model/SmartMailInfo;II)Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 42
    if-nez p0, :cond_0

    move-object v0, v2

    .line 90
    :goto_0
    return-object v0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/SmartMailInfo;->getEventReservations()Ljava/util/List;

    move-result-object v4

    .line 47
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/EventReservation;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/EventReservation;->getEvent()Lcom/google/api/services/calendar/model/Event2;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/calendar/model/EventReservation;

    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/EventReservation;->getEvent()Lcom/google/api/services/calendar/model/Event2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/Event2;->getImage()Lcom/google/api/services/calendar/model/Image;

    move-result-object v1

    .line 50
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/services/calendar/model/EventReservation;

    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/EventReservation;->getEvent()Lcom/google/api/services/calendar/model/Event2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/Event2;->getAddress()Lcom/google/api/services/calendar/model/SmartMailAddress;

    move-result-object v2

    sget v3, Lcom/google/android/syncadapters/calendar/store/R$drawable;->smart_ticket:I

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;-><init>(Lcom/google/api/services/calendar/model/Image;Lcom/google/api/services/calendar/model/SmartMailAddress;III)V

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/SmartMailInfo;->getFlightReservations()Ljava/util/List;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 56
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/FlightReservation;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/FlightReservation;->getFlightSegments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 57
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/FlightReservation;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/FlightReservation;->getFlightSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 58
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/FlightReservation;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/FlightReservation;->getFlightSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 60
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/calendar/model/FlightReservation;

    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/FlightReservation;->getFlightSegments()Ljava/util/List;

    move-result-object v1

    .line 61
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;

    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->getImage()Lcom/google/api/services/calendar/model/Image;

    move-result-object v1

    sget v3, Lcom/google/android/syncadapters/calendar/store/R$drawable;->smart_flight:I

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;-><init>(Lcom/google/api/services/calendar/model/Image;Lcom/google/api/services/calendar/model/SmartMailAddress;III)V

    goto/16 :goto_0

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/SmartMailInfo;->getLodgingReservations()Ljava/util/List;

    move-result-object v4

    .line 65
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 66
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 67
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/calendar/model/LodgingReservation;

    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/LodgingReservation;->getImage()Lcom/google/api/services/calendar/model/Image;

    move-result-object v1

    .line 68
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/services/calendar/model/LodgingReservation;

    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/LodgingReservation;->getLodging()Lcom/google/api/services/calendar/model/Organization;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/Organization;->getAddress()Lcom/google/api/services/calendar/model/SmartMailAddress;

    move-result-object v2

    sget v3, Lcom/google/android/syncadapters/calendar/store/R$drawable;->smart_hotel:I

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;-><init>(Lcom/google/api/services/calendar/model/Image;Lcom/google/api/services/calendar/model/SmartMailAddress;III)V

    goto/16 :goto_0

    .line 73
    :cond_3
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/SmartMailInfo;->getRestaurantReservations()Ljava/util/List;

    move-result-object v4

    .line 74
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 75
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 76
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/RestaurantReservation;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/RestaurantReservation;->getFoodEstablishment()Lcom/google/api/services/calendar/model/Restaurant;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 77
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/calendar/model/RestaurantReservation;

    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/RestaurantReservation;->getFoodEstablishment()Lcom/google/api/services/calendar/model/Restaurant;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/Restaurant;->getImage()Lcom/google/api/services/calendar/model/Image;

    move-result-object v1

    .line 79
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/services/calendar/model/RestaurantReservation;

    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/RestaurantReservation;->getFoodEstablishment()Lcom/google/api/services/calendar/model/Restaurant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/Restaurant;->getOrganization()Lcom/google/api/services/calendar/model/Organization;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/Organization;->getAddress()Lcom/google/api/services/calendar/model/SmartMailAddress;

    move-result-object v2

    sget v3, Lcom/google/android/syncadapters/calendar/store/R$drawable;->smart_restaurant:I

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;-><init>(Lcom/google/api/services/calendar/model/Image;Lcom/google/api/services/calendar/model/SmartMailAddress;III)V

    goto/16 :goto_0

    .line 83
    :cond_4
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/SmartMailInfo;->getEvents()Ljava/util/List;

    move-result-object v4

    .line 84
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 86
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/calendar/model/Event2;

    invoke-virtual {v1}, Lcom/google/api/services/calendar/model/Event2;->getImage()Lcom/google/api/services/calendar/model/Image;

    move-result-object v1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/services/calendar/model/Event2;

    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/Event2;->getAddress()Lcom/google/api/services/calendar/model/SmartMailAddress;

    move-result-object v2

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;-><init>(Lcom/google/api/services/calendar/model/Image;Lcom/google/api/services/calendar/model/SmartMailAddress;III)V

    goto/16 :goto_0

    :cond_5
    move-object v0, v2

    .line 90
    goto/16 :goto_0
.end method


# virtual methods
.method public getFlairResourceId()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;->mFlairResourceId:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;->mImage:Lcom/google/api/services/calendar/model/Image;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;->mImage:Lcom/google/api/services/calendar/model/Image;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Image;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStaticMapUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;->mAddress:Lcom/google/api/services/calendar/model/SmartMailAddress;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;->mAddress:Lcom/google/api/services/calendar/model/SmartMailAddress;

    iget v1, p0, Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;->mWidth:I

    iget v2, p0, Lcom/google/android/syncadapters/calendar/timely/SmartMailImageUrl;->mHeight:I

    invoke-static {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/timely/TimelyStoreUtils;->getStaticMapsUrl(Lcom/google/api/services/calendar/model/SmartMailAddress;II)Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
