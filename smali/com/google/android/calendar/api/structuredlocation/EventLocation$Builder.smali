.class public Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;
.super Ljava/lang/Object;
.source "EventLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/api/structuredlocation/EventLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAddress:Lcom/google/android/calendar/api/structuredlocation/Address;

.field private mGeo:Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;

.field private mMapsClusterId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPlaceId:Ljava/lang/String;

.field private mServerGeocoded:Z

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->mMapsClusterId:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->mPlaceId:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->mName:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->mUrl:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->mServerGeocoded:Z

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->mMapsClusterId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->mPlaceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;)Lcom/google/android/calendar/api/structuredlocation/Address;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->mAddress:Lcom/google/android/calendar/api/structuredlocation/Address;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;)Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->mGeo:Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;)Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->mServerGeocoded:Z

    return v0
.end method


# virtual methods
.method public address(Lcom/google/android/calendar/api/structuredlocation/Address;)Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->mAddress:Lcom/google/android/calendar/api/structuredlocation/Address;

    .line 93
    return-object p0
.end method

.method public build()Lcom/google/android/calendar/api/structuredlocation/EventLocation;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/calendar/api/structuredlocation/EventLocation;-><init>(Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;Lcom/google/android/calendar/api/structuredlocation/EventLocation$1;)V

    return-object v0
.end method

.method public geoCoordinates(Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;)Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->mGeo:Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;

    .line 98
    return-object p0
.end method

.method public mapClusterId(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;
    .locals 1

    .prologue
    .line 77
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->mMapsClusterId:Ljava/lang/String;

    .line 78
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;
    .locals 1

    .prologue
    .line 87
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->mName:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public placeId(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;
    .locals 1

    .prologue
    .line 82
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->mPlaceId:Ljava/lang/String;

    .line 83
    return-object p0
.end method

.method public serverGeocoded(Z)Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;
    .locals 0

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->mServerGeocoded:Z

    .line 108
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;
    .locals 1

    .prologue
    .line 102
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->mUrl:Ljava/lang/String;

    .line 103
    return-object p0
.end method
