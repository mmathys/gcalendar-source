.class public final Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;
.super Lcom/google/api/client/json/GenericJson;
.source "FlightReservationFlightSegment.java"


# instance fields
.field private actualArrivalTime:Lcom/google/api/services/calendar/model/Time;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private actualDepartureTime:Lcom/google/api/services/calendar/model/Time;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private airlineCode:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private airlineName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private arrivalAirportCode:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private arrivalCity:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private arrivalGate:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private arrivalTerminal:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private arrivalTime:Lcom/google/api/services/calendar/model/Time;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private bookingReference:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private departureAirportCode:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private departureCity:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private departureGate:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private departureTerminal:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private departureTime:Lcom/google/api/services/calendar/model/Time;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private flightNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private image:Lcom/google/api/services/calendar/model/Image;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private statusCode:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->clone()Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->clone()Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;
    .locals 1

    .prologue
    .line 564
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->clone()Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;

    move-result-object v0

    return-object v0
.end method

.method public getActualArrivalTime()Lcom/google/api/services/calendar/model/Time;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->actualArrivalTime:Lcom/google/api/services/calendar/model/Time;

    return-object v0
.end method

.method public getActualDepartureTime()Lcom/google/api/services/calendar/model/Time;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->actualDepartureTime:Lcom/google/api/services/calendar/model/Time;

    return-object v0
.end method

.method public getAirlineCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->airlineCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAirlineName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->airlineName:Ljava/lang/String;

    return-object v0
.end method

.method public getArrivalAirportCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->arrivalAirportCode:Ljava/lang/String;

    return-object v0
.end method

.method public getArrivalCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->arrivalCity:Ljava/lang/String;

    return-object v0
.end method

.method public getArrivalGate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->arrivalGate:Ljava/lang/String;

    return-object v0
.end method

.method public getArrivalTerminal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->arrivalTerminal:Ljava/lang/String;

    return-object v0
.end method

.method public getArrivalTime()Lcom/google/api/services/calendar/model/Time;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->arrivalTime:Lcom/google/api/services/calendar/model/Time;

    return-object v0
.end method

.method public getBookingReference()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->bookingReference:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartureAirportCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->departureAirportCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartureCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->departureCity:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartureGate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->departureGate:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartureTerminal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->departureTerminal:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartureTime()Lcom/google/api/services/calendar/model/Time;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->departureTime:Lcom/google/api/services/calendar/model/Time;

    return-object v0
.end method

.method public getFlightNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->flightNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/google/api/services/calendar/model/Image;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->image:Lcom/google/api/services/calendar/model/Image;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;
    .locals 1

    .prologue
    .line 559
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/FlightReservationFlightSegment;

    return-object v0
.end method
