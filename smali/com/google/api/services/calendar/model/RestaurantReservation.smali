.class public final Lcom/google/api/services/calendar/model/RestaurantReservation;
.super Lcom/google/api/client/json/GenericJson;
.source "RestaurantReservation.java"


# instance fields
.field private foodEstablishment:Lcom/google/api/services/calendar/model/Restaurant;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private partySize:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private startTime:Lcom/google/api/services/calendar/model/Time;
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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/RestaurantReservation;->clone()Lcom/google/api/services/calendar/model/RestaurantReservation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/RestaurantReservation;->clone()Lcom/google/api/services/calendar/model/RestaurantReservation;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/RestaurantReservation;
    .locals 1

    .prologue
    .line 249
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/RestaurantReservation;

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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/RestaurantReservation;->clone()Lcom/google/api/services/calendar/model/RestaurantReservation;

    move-result-object v0

    return-object v0
.end method

.method public getFoodEstablishment()Lcom/google/api/services/calendar/model/Restaurant;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/api/services/calendar/model/RestaurantReservation;->foodEstablishment:Lcom/google/api/services/calendar/model/Restaurant;

    return-object v0
.end method

.method public getPartySize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/api/services/calendar/model/RestaurantReservation;->partySize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStartTime()Lcom/google/api/services/calendar/model/Time;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/api/services/calendar/model/RestaurantReservation;->startTime:Lcom/google/api/services/calendar/model/Time;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/RestaurantReservation;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/RestaurantReservation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/RestaurantReservation;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/RestaurantReservation;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/RestaurantReservation;
    .locals 1

    .prologue
    .line 244
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/RestaurantReservation;

    return-object v0
.end method
