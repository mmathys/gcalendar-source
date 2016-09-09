.class public Lcom/google/calendar/v2/client/service/api/geo/EventLocation;
.super Ljava/lang/Object;
.source "EventLocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;
    }
.end annotation


# instance fields
.field private final geoCoordinates:Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;

.field private final mapsClusterId:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final postalAddress:Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;

.field private final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    # getter for: Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->mapsClusterId:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->access$000(Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->mapsClusterId:Ljava/lang/String;

    .line 24
    # getter for: Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->name:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->access$100(Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->name:Ljava/lang/String;

    .line 25
    # getter for: Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->postalAddress:Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->access$200(Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;)Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->postalAddress:Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;

    .line 26
    # getter for: Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->geoCoordinates:Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->access$300(Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;)Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->geoCoordinates:Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;

    .line 27
    # getter for: Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->url:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->access$400(Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->url:Ljava/lang/String;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;Lcom/google/calendar/v2/client/service/api/geo/EventLocation$1;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;-><init>(Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;

    invoke-direct {v0}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    if-ne p0, p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    instance-of v2, p1, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    if-nez v2, :cond_2

    move v0, v1

    .line 91
    goto :goto_0

    .line 93
    :cond_2
    check-cast p1, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    .line 94
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->mapsClusterId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->mapsClusterId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->name:Ljava/lang/String;

    .line 95
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->postalAddress:Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->postalAddress:Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;

    .line 96
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->geoCoordinates:Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->geoCoordinates:Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;

    .line 97
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->url:Ljava/lang/String;

    .line 98
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getGeoCoordinates()Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->geoCoordinates:Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;

    return-object v0
.end method

.method public getMapsClusterId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->mapsClusterId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalAddress()Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->postalAddress:Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->mapsClusterId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/calendar/v2/common/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/calendar/v2/common/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->postalAddress:Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;

    .line 81
    invoke-static {v1}, Lcom/google/calendar/v2/common/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->geoCoordinates:Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;

    .line 82
    invoke-static {v1}, Lcom/google/calendar/v2/common/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/calendar/v2/common/ObjectUtil;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 144
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Maps cluster ID"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->mapsClusterId:Ljava/lang/String;

    .line 145
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Name"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->name:Ljava/lang/String;

    .line 146
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Postal address"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->postalAddress:Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;

    .line 147
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Geo coordinates"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->geoCoordinates:Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;

    .line 148
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Url"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->url:Ljava/lang/String;

    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    return-object v0
.end method
