.class public final Lcom/google/api/services/calendar/model/LodgingReservation;
.super Lcom/google/api/client/json/GenericJson;
.source "LodgingReservation.java"


# instance fields
.field private checkinDate:Lcom/google/api/services/calendar/model/Time;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private checkoutDate:Lcom/google/api/services/calendar/model/Time;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private image:Lcom/google/api/services/calendar/model/Image;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private lodging:Lcom/google/api/services/calendar/model/Organization;
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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/LodgingReservation;->clone()Lcom/google/api/services/calendar/model/LodgingReservation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/LodgingReservation;->clone()Lcom/google/api/services/calendar/model/LodgingReservation;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/LodgingReservation;
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/LodgingReservation;

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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/LodgingReservation;->clone()Lcom/google/api/services/calendar/model/LodgingReservation;

    move-result-object v0

    return-object v0
.end method

.method public getCheckinDate()Lcom/google/api/services/calendar/model/Time;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/api/services/calendar/model/LodgingReservation;->checkinDate:Lcom/google/api/services/calendar/model/Time;

    return-object v0
.end method

.method public getCheckoutDate()Lcom/google/api/services/calendar/model/Time;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/api/services/calendar/model/LodgingReservation;->checkoutDate:Lcom/google/api/services/calendar/model/Time;

    return-object v0
.end method

.method public getImage()Lcom/google/api/services/calendar/model/Image;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/api/services/calendar/model/LodgingReservation;->image:Lcom/google/api/services/calendar/model/Image;

    return-object v0
.end method

.method public getLodging()Lcom/google/api/services/calendar/model/Organization;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/api/services/calendar/model/LodgingReservation;->lodging:Lcom/google/api/services/calendar/model/Organization;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/LodgingReservation;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/LodgingReservation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/LodgingReservation;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/LodgingReservation;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/LodgingReservation;
    .locals 1

    .prologue
    .line 202
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/LodgingReservation;

    return-object v0
.end method
