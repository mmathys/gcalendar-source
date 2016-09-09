.class public final Lcom/google/api/services/calendar/model/SmartMailAddress;
.super Lcom/google/api/client/json/GenericJson;
.source "SmartMailAddress.java"


# instance fields
.field private formattedAddress:Lcom/google/api/services/calendar/model/FormattedText;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private googleMapLink:Lcom/google/api/services/calendar/model/CalendarGoTo;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private latitude:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private locality:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private longitude:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private postalCode:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private region:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private streetAddress:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/SmartMailAddress;->clone()Lcom/google/api/services/calendar/model/SmartMailAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/SmartMailAddress;->clone()Lcom/google/api/services/calendar/model/SmartMailAddress;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/SmartMailAddress;
    .locals 1

    .prologue
    .line 333
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/SmartMailAddress;

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
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/SmartMailAddress;->clone()Lcom/google/api/services/calendar/model/SmartMailAddress;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedAddress()Lcom/google/api/services/calendar/model/FormattedText;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/api/services/calendar/model/SmartMailAddress;->formattedAddress:Lcom/google/api/services/calendar/model/FormattedText;

    return-object v0
.end method

.method public getGoogleMapLink()Lcom/google/api/services/calendar/model/CalendarGoTo;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/api/services/calendar/model/SmartMailAddress;->googleMapLink:Lcom/google/api/services/calendar/model/CalendarGoTo;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/api/services/calendar/model/SmartMailAddress;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLocality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/api/services/calendar/model/SmartMailAddress;->locality:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/api/services/calendar/model/SmartMailAddress;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/api/services/calendar/model/SmartMailAddress;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/api/services/calendar/model/SmartMailAddress;->postalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/api/services/calendar/model/SmartMailAddress;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/api/services/calendar/model/SmartMailAddress;->streetAddress:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/SmartMailAddress;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/SmartMailAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/SmartMailAddress;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/SmartMailAddress;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/SmartMailAddress;
    .locals 1

    .prologue
    .line 328
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/SmartMailAddress;

    return-object v0
.end method
