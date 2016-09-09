.class public Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;
.super Ljava/lang/Object;
.source "EventLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/v2/client/service/api/geo/EventLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private geoCoordinates:Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;

.field private mapsClusterId:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private postalAddress:Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->mapsClusterId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;)Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->postalAddress:Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;)Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->geoCoordinates:Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->url:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/calendar/v2/client/service/api/geo/EventLocation;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;-><init>(Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;Lcom/google/calendar/v2/client/service/api/geo/EventLocation$1;)V

    return-object v0
.end method

.method public setGeoCoordinates(Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;)Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->geoCoordinates:Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;

    .line 133
    return-object p0
.end method

.method public setMapsClusterId(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->mapsClusterId:Ljava/lang/String;

    .line 118
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->name:Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method public setPostalAddress(Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;)Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->postalAddress:Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;

    .line 128
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->url:Ljava/lang/String;

    .line 138
    return-object p0
.end method
