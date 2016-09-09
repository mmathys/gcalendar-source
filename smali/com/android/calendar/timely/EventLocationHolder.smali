.class public Lcom/android/calendar/timely/EventLocationHolder;
.super Ljava/lang/Object;
.source "EventLocationHolder.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/calendar/timely/EventLocationHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEventLocation:Lcom/google/calendar/v2/client/service/api/geo/EventLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/android/calendar/timely/EventLocationHolder$1;

    invoke-direct {v0}, Lcom/android/calendar/timely/EventLocationHolder$1;-><init>()V

    sput-object v0, Lcom/android/calendar/timely/EventLocationHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 49
    :goto_1
    if-nez v1, :cond_2

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/timely/EventLocationHolder;->mEventLocation:Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    .line 60
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 46
    goto :goto_0

    :cond_1
    move v1, v2

    .line 48
    goto :goto_1

    .line 53
    :cond_2
    invoke-static {}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->newBuilder()Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->setMapsClusterId(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->setName(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;

    move-result-object v0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/EventLocationHolder;->readPostalAddress(Landroid/os/Parcel;)Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->setPostalAddress(Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;)Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;

    move-result-object v0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/EventLocationHolder;->readGeoCoordinates(Landroid/os/Parcel;)Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->setGeoCoordinates(Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;)Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->setUrl(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->build()Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/EventLocationHolder;->mEventLocation:Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    goto :goto_2
.end method

.method public constructor <init>(Lcom/google/calendar/v2/client/service/api/geo/EventLocation;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/calendar/timely/EventLocationHolder;->mEventLocation:Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    .line 35
    return-void
.end method

.method private readGeoCoordinates(Landroid/os/Parcel;)Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;
    .locals 6

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 108
    :goto_0
    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 111
    new-instance v0, Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;-><init>(DD)V

    .line 113
    :goto_1
    return-object v0

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private readPostalAddress(Landroid/os/Parcel;)Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 133
    :goto_0
    if-eqz v0, :cond_1

    .line 134
    invoke-static {}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->newBuilder()Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;

    move-result-object v0

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->setFormattedAddress(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;

    move-result-object v0

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->setCountry(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;

    move-result-object v0

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->setLocality(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->setPostOfficeBoxNumber(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->setPostalCode(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;

    move-result-object v0

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->setStreetAddress(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->setRegion(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->build()Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;

    move-result-object v0

    .line 144
    :goto_1
    return-object v0

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 144
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private writeGeoCoordinates(Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 98
    if-eqz p1, :cond_1

    move v2, v0

    .line 99
    :goto_0
    if-eqz v2, :cond_2

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 100
    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 102
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 104
    :cond_0
    return-void

    :cond_1
    move v2, v1

    .line 98
    goto :goto_0

    :cond_2
    move v0, v1

    .line 99
    goto :goto_1
.end method

.method private writePostalAddress(Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 118
    if-eqz p1, :cond_1

    move v2, v0

    .line 119
    :goto_0
    if-eqz v2, :cond_2

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 120
    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->getFormattedAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->getLocality()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->getPostOfficeBoxNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->getStreetAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    :cond_0
    return-void

    :cond_1
    move v2, v1

    .line 118
    goto :goto_0

    :cond_2
    move v0, v1

    .line 119
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public getEventLocation()Lcom/google/calendar/v2/client/service/api/geo/EventLocation;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/calendar/timely/EventLocationHolder;->mEventLocation:Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 69
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v1, p0, Lcom/android/calendar/timely/EventLocationHolder;->mEventLocation:Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v0, p0, Lcom/android/calendar/timely/EventLocationHolder;->mEventLocation:Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    if-nez v0, :cond_1

    .line 81
    :goto_1
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/EventLocationHolder;->mEventLocation:Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->getMapsClusterId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/android/calendar/timely/EventLocationHolder;->mEventLocation:Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/android/calendar/timely/EventLocationHolder;->mEventLocation:Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->getPostalAddress()Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/calendar/timely/EventLocationHolder;->writePostalAddress(Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;Landroid/os/Parcel;)V

    .line 79
    iget-object v0, p0, Lcom/android/calendar/timely/EventLocationHolder;->mEventLocation:Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->getGeoCoordinates()Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/calendar/timely/EventLocationHolder;->writeGeoCoordinates(Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;Landroid/os/Parcel;)V

    .line 80
    iget-object v0, p0, Lcom/android/calendar/timely/EventLocationHolder;->mEventLocation:Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1
.end method
