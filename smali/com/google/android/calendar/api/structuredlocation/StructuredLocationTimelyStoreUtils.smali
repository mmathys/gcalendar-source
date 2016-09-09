.class public Lcom/google/android/calendar/api/structuredlocation/StructuredLocationTimelyStoreUtils;
.super Ljava/lang/Object;
.source "StructuredLocationTimelyStoreUtils.java"


# direct methods
.method public static loadStructuredLocation(Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;)Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;
    .locals 1

    .prologue
    .line 19
    if-nez p0, :cond_0

    .line 20
    const/4 v0, 0x0

    .line 23
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getStructuredLocation()Lcom/google/api/services/calendar/model/StructuredLocation;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationTimelyStoreUtils;->toApiStructuredLocation(Lcom/google/api/services/calendar/model/StructuredLocation;)Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;

    move-result-object v0

    goto :goto_0
.end method

.method private static nullToFalse(Ljava/lang/Boolean;)Z
    .locals 1

    .prologue
    .line 158
    if-nez p0, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 161
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method static toApiAddress(Lcom/google/api/services/calendar/model/Address;)Lcom/google/android/calendar/api/structuredlocation/Address;
    .locals 2

    .prologue
    .line 124
    if-nez p0, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;

    invoke-direct {v0}, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;-><init>()V

    .line 129
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Address;->getFormattedAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->formattedAddress(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/Address$Builder;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Address;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->country(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/Address$Builder;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->locality(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/Address$Builder;

    move-result-object v0

    .line 132
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->postalCode(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/Address$Builder;

    move-result-object v0

    .line 133
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Address;->getPostOfficeBoxNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->postOfficeBoxNumber(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/Address$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Address;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->region(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/Address$Builder;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Address;->getStreetAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->streetAddress(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/Address$Builder;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/google/android/calendar/api/structuredlocation/Address$Builder;->build()Lcom/google/android/calendar/api/structuredlocation/Address;

    move-result-object v0

    goto :goto_0
.end method

.method static toApiEventLocation(Lcom/google/api/services/calendar/model/EventLocation;)Lcom/google/android/calendar/api/structuredlocation/EventLocation;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;

    invoke-direct {v0}, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;-><init>()V

    .line 68
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventLocation;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->url(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventLocation;->getPlaceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->placeId(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventLocation;->getMapsClusterId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->mapClusterId(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventLocation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->name(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventLocation;->getAddress()Lcom/google/api/services/calendar/model/Address;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationTimelyStoreUtils;->toApiAddress(Lcom/google/api/services/calendar/model/Address;)Lcom/google/android/calendar/api/structuredlocation/Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->address(Lcom/google/android/calendar/api/structuredlocation/Address;)Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventLocation;->getGeo()Lcom/google/api/services/calendar/model/GeoCoordinates;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationTimelyStoreUtils;->toApiGeoCoordinates(Lcom/google/api/services/calendar/model/GeoCoordinates;)Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->geoCoordinates(Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;)Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventLocation;->getServerGeocoded()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationTimelyStoreUtils;->nullToFalse(Ljava/lang/Boolean;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->serverGeocoded(Z)Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->build()Lcom/google/android/calendar/api/structuredlocation/EventLocation;

    move-result-object v0

    .line 67
    return-object v0
.end method

.method static toApiGeoCoordinates(Lcom/google/api/services/calendar/model/GeoCoordinates;)Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;
    .locals 6

    .prologue
    .line 99
    if-nez p0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;

    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/GeoCoordinates;->getLatitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 104
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/GeoCoordinates;->getLongitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;-><init>(DD)V

    goto :goto_0
.end method

.method public static toApiStructuredLocation(Lcom/google/api/services/calendar/model/StructuredLocation;)Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;
    .locals 3

    .prologue
    .line 34
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/StructuredLocation;->getLocations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    .line 37
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/StructuredLocation;->getLocations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 39
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/StructuredLocation;->getLocations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/EventLocation;

    invoke-static {v0}, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationTimelyStoreUtils;->toApiEventLocation(Lcom/google/api/services/calendar/model/EventLocation;)Lcom/google/android/calendar/api/structuredlocation/EventLocation;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 41
    :cond_2
    new-instance v0, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationImpl;

    invoke-direct {v0, v2}, Lcom/google/android/calendar/api/structuredlocation/StructuredLocationImpl;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method
