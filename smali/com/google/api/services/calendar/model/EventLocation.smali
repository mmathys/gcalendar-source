.class public final Lcom/google/api/services/calendar/model/EventLocation;
.super Lcom/google/api/client/json/GenericJson;
.source "EventLocation.java"


# instance fields
.field private address:Lcom/google/api/services/calendar/model/Address;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private geo:Lcom/google/api/services/calendar/model/GeoCoordinates;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private mapsClusterId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private placeId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private serverGeocoded:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private url:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventLocation;->clone()Lcom/google/api/services/calendar/model/EventLocation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventLocation;->clone()Lcom/google/api/services/calendar/model/EventLocation;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/EventLocation;
    .locals 1

    .prologue
    .line 186
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/EventLocation;

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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventLocation;->clone()Lcom/google/api/services/calendar/model/EventLocation;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Lcom/google/api/services/calendar/model/Address;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/api/services/calendar/model/EventLocation;->address:Lcom/google/api/services/calendar/model/Address;

    return-object v0
.end method

.method public getGeo()Lcom/google/api/services/calendar/model/GeoCoordinates;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/api/services/calendar/model/EventLocation;->geo:Lcom/google/api/services/calendar/model/GeoCoordinates;

    return-object v0
.end method

.method public getMapsClusterId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/api/services/calendar/model/EventLocation;->mapsClusterId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/api/services/calendar/model/EventLocation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/api/services/calendar/model/EventLocation;->placeId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerGeocoded()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/api/services/calendar/model/EventLocation;->serverGeocoded:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/api/services/calendar/model/EventLocation;->url:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/EventLocation;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/EventLocation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/EventLocation;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/EventLocation;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/EventLocation;
    .locals 1

    .prologue
    .line 181
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/EventLocation;

    return-object v0
.end method

.method public setAddress(Lcom/google/api/services/calendar/model/Address;)Lcom/google/api/services/calendar/model/EventLocation;
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/api/services/calendar/model/EventLocation;->address:Lcom/google/api/services/calendar/model/Address;

    .line 86
    return-object p0
.end method

.method public setGeo(Lcom/google/api/services/calendar/model/GeoCoordinates;)Lcom/google/api/services/calendar/model/EventLocation;
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/api/services/calendar/model/EventLocation;->geo:Lcom/google/api/services/calendar/model/GeoCoordinates;

    .line 101
    return-object p0
.end method

.method public setMapsClusterId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventLocation;
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/api/services/calendar/model/EventLocation;->mapsClusterId:Ljava/lang/String;

    .line 116
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventLocation;
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/api/services/calendar/model/EventLocation;->name:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventLocation;
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/api/services/calendar/model/EventLocation;->url:Ljava/lang/String;

    .line 176
    return-object p0
.end method
