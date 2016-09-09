.class public final Lcom/google/api/services/calendar/model/SmartMailInfo;
.super Lcom/google/api/client/json/GenericJson;
.source "SmartMailInfo.java"


# instance fields
.field private actions:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/Action;",
            ">;"
        }
    .end annotation
.end field

.field private eventReservations:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventReservation;",
            ">;"
        }
    .end annotation
.end field

.field private events:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/Event2;",
            ">;"
        }
    .end annotation
.end field

.field private flightReservations:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/FlightReservation;",
            ">;"
        }
    .end annotation
.end field

.field private lodgingReservations:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/LodgingReservation;",
            ">;"
        }
    .end annotation
.end field

.field private restaurantReservations:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/RestaurantReservation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/google/api/services/calendar/model/Action;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    const-class v0, Lcom/google/api/services/calendar/model/Article;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 71
    const-class v0, Lcom/google/api/services/calendar/model/CloudMediaObject;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 83
    const-class v0, Lcom/google/api/services/calendar/model/EmailMessage;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 95
    const-class v0, Lcom/google/api/services/calendar/model/EventReservation;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 107
    const-class v0, Lcom/google/api/services/calendar/model/Event2;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 119
    const-class v0, Lcom/google/api/services/calendar/model/ExperimentalSmartMail;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 131
    const-class v0, Lcom/google/api/services/calendar/model/FlightReservation;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 143
    const-class v0, Lcom/google/api/services/calendar/model/GenericSmartMail;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 161
    const-class v0, Lcom/google/api/services/calendar/model/LodgingReservation;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 179
    const-class v0, Lcom/google/api/services/calendar/model/Movie;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 191
    const-class v0, Lcom/google/api/services/calendar/model/Offer;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 203
    const-class v0, Lcom/google/api/services/calendar/model/Order;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 215
    const-class v0, Lcom/google/api/services/calendar/model/ParcelDelivery;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 227
    const-class v0, Lcom/google/api/services/calendar/model/Product;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 239
    const-class v0, Lcom/google/api/services/calendar/model/Promotion;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 251
    const-class v0, Lcom/google/api/services/calendar/model/RestaurantReservation;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 263
    const-class v0, Lcom/google/api/services/calendar/model/Restaurant;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 264
    return-void
.end method

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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/SmartMailInfo;->clone()Lcom/google/api/services/calendar/model/SmartMailInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/SmartMailInfo;->clone()Lcom/google/api/services/calendar/model/SmartMailInfo;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/SmartMailInfo;
    .locals 1

    .prologue
    .line 756
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/SmartMailInfo;

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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/SmartMailInfo;->clone()Lcom/google/api/services/calendar/model/SmartMailInfo;

    move-result-object v0

    return-object v0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/api/services/calendar/model/SmartMailInfo;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getEventReservations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventReservation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/api/services/calendar/model/SmartMailInfo;->eventReservations:Ljava/util/List;

    return-object v0
.end method

.method public getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/Event2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/api/services/calendar/model/SmartMailInfo;->events:Ljava/util/List;

    return-object v0
.end method

.method public getFlightReservations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/FlightReservation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lcom/google/api/services/calendar/model/SmartMailInfo;->flightReservations:Ljava/util/List;

    return-object v0
.end method

.method public getLodgingReservations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/LodgingReservation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 483
    iget-object v0, p0, Lcom/google/api/services/calendar/model/SmartMailInfo;->lodgingReservations:Ljava/util/List;

    return-object v0
.end method

.method public getRestaurantReservations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/RestaurantReservation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/api/services/calendar/model/SmartMailInfo;->restaurantReservations:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/SmartMailInfo;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/SmartMailInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/SmartMailInfo;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/SmartMailInfo;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/SmartMailInfo;
    .locals 1

    .prologue
    .line 751
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/SmartMailInfo;

    return-object v0
.end method
