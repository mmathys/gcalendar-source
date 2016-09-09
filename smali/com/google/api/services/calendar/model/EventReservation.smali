.class public final Lcom/google/api/services/calendar/model/EventReservation;
.super Lcom/google/api/client/json/GenericJson;
.source "EventReservation.java"


# instance fields
.field private event:Lcom/google/api/services/calendar/model/Event2;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private reservationNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private seatCount:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private seatingInformations:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventReservationSeatingInformation;",
            ">;"
        }
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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventReservation;->clone()Lcom/google/api/services/calendar/model/EventReservation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventReservation;->clone()Lcom/google/api/services/calendar/model/EventReservation;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/EventReservation;
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/EventReservation;

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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventReservation;->clone()Lcom/google/api/services/calendar/model/EventReservation;

    move-result-object v0

    return-object v0
.end method

.method public getEvent()Lcom/google/api/services/calendar/model/Event2;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/api/services/calendar/model/EventReservation;->event:Lcom/google/api/services/calendar/model/Event2;

    return-object v0
.end method

.method public getReservationNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/api/services/calendar/model/EventReservation;->reservationNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSeatCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/api/services/calendar/model/EventReservation;->seatCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSeatingInformations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventReservationSeatingInformation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/api/services/calendar/model/EventReservation;->seatingInformations:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/EventReservation;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/EventReservation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/EventReservation;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/EventReservation;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/EventReservation;
    .locals 1

    .prologue
    .line 160
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/EventReservation;

    return-object v0
.end method
