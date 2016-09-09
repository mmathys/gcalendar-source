.class public final Lcom/google/api/services/calendar/model/GeoCoordinates;
.super Lcom/google/api/client/json/GenericJson;
.source "GeoCoordinates.java"


# instance fields
.field private latitude:Ljava/lang/Double;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private longitude:Ljava/lang/Double;
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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/GeoCoordinates;->clone()Lcom/google/api/services/calendar/model/GeoCoordinates;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/GeoCoordinates;->clone()Lcom/google/api/services/calendar/model/GeoCoordinates;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/GeoCoordinates;
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/GeoCoordinates;

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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/GeoCoordinates;->clone()Lcom/google/api/services/calendar/model/GeoCoordinates;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/api/services/calendar/model/GeoCoordinates;->latitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/api/services/calendar/model/GeoCoordinates;->longitude:Ljava/lang/Double;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/GeoCoordinates;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/GeoCoordinates;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/GeoCoordinates;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/GeoCoordinates;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/GeoCoordinates;
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/GeoCoordinates;

    return-object v0
.end method

.method public setLatitude(Ljava/lang/Double;)Lcom/google/api/services/calendar/model/GeoCoordinates;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/api/services/calendar/model/GeoCoordinates;->latitude:Ljava/lang/Double;

    .line 56
    return-object p0
.end method

.method public setLongitude(Ljava/lang/Double;)Lcom/google/api/services/calendar/model/GeoCoordinates;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/api/services/calendar/model/GeoCoordinates;->longitude:Ljava/lang/Double;

    .line 71
    return-object p0
.end method
