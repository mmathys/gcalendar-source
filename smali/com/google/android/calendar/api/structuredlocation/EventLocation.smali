.class public Lcom/google/android/calendar/api/structuredlocation/EventLocation;
.super Ljava/lang/Object;
.source "EventLocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/structuredlocation/EventLocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final address:Lcom/google/android/calendar/api/structuredlocation/Address;

.field public final geo:Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;

.field public final mapsClusterId:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final placeId:Ljava/lang/String;

.field public final serverGeocoded:Z

.field public final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 203
    new-instance v0, Lcom/google/android/calendar/api/structuredlocation/EventLocation$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/structuredlocation/EventLocation$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 127
    new-instance v0, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;

    invoke-direct {v0}, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;-><init>()V

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->mapClusterId(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;

    move-result-object v0

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->placeId(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;

    move-result-object v0

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->name(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;

    move-result-object v1

    const-class v0, Lcom/google/android/calendar/api/structuredlocation/Address;

    .line 132
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/structuredlocation/Address;

    invoke-virtual {v1, v0}, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->address(Lcom/google/android/calendar/api/structuredlocation/Address;)Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;

    move-result-object v1

    const-class v0, Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;

    .line 134
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;

    .line 133
    invoke-virtual {v1, v0}, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->geoCoordinates(Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;)Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;

    move-result-object v0

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->url(Ljava/lang/String;)Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;

    move-result-object v1

    const-class v0, Ljava/lang/Boolean;

    .line 136
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->serverGeocoded(Z)Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;

    move-result-object v0

    .line 127
    invoke-direct {p0, v0}, Lcom/google/android/calendar/api/structuredlocation/EventLocation;-><init>(Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;)V

    .line 137
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/structuredlocation/EventLocation$1;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/structuredlocation/EventLocation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;)V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    # getter for: Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->mMapsClusterId:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->access$100(Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->mapsClusterId:Ljava/lang/String;

    .line 118
    # getter for: Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->mPlaceId:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->access$200(Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->placeId:Ljava/lang/String;

    .line 119
    # getter for: Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->mName:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->access$300(Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->name:Ljava/lang/String;

    .line 120
    # getter for: Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->mAddress:Lcom/google/android/calendar/api/structuredlocation/Address;
    invoke-static {p1}, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->access$400(Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;)Lcom/google/android/calendar/api/structuredlocation/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->address:Lcom/google/android/calendar/api/structuredlocation/Address;

    .line 121
    # getter for: Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->mGeo:Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;
    invoke-static {p1}, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->access$500(Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;)Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->geo:Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;

    .line 122
    # getter for: Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->mUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->access$600(Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->url:Ljava/lang/String;

    .line 123
    # getter for: Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->mServerGeocoded:Z
    invoke-static {p1}, Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;->access$700(Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->serverGeocoded:Z

    .line 124
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;Lcom/google/android/calendar/api/structuredlocation/EventLocation$1;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/structuredlocation/EventLocation;-><init>(Lcom/google/android/calendar/api/structuredlocation/EventLocation$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 141
    if-ne p1, p0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v0

    .line 144
    :cond_1
    instance-of v2, p1, Lcom/google/android/calendar/api/structuredlocation/EventLocation;

    if-nez v2, :cond_2

    move v0, v1

    .line 145
    goto :goto_0

    .line 147
    :cond_2
    check-cast p1, Lcom/google/android/calendar/api/structuredlocation/EventLocation;

    .line 148
    iget-object v2, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->mapsClusterId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->mapsClusterId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->placeId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->placeId:Ljava/lang/String;

    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->name:Ljava/lang/String;

    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->address:Lcom/google/android/calendar/api/structuredlocation/Address;

    iget-object v3, p1, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->address:Lcom/google/android/calendar/api/structuredlocation/Address;

    .line 151
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->geo:Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;

    iget-object v3, p1, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->geo:Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;

    .line 152
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->url:Ljava/lang/String;

    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->serverGeocoded:Z

    iget-boolean v3, p1, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->serverGeocoded:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 159
    .line 160
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->mapsClusterId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 161
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->placeId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 162
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 163
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->address:Lcom/google/android/calendar/api/structuredlocation/Address;

    invoke-virtual {v1}, Lcom/google/android/calendar/api/structuredlocation/Address;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 164
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->geo:Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;

    invoke-virtual {v1}, Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 165
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 166
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->serverGeocoded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    .line 167
    return v0

    .line 166
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 172
    const-string v0, "EventLocation{maps_cluster_id=%s, place_id=%s, name=%s, address=%s,geo_coordinates=%s, url=%s, server_geocoded=%s}"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->mapsClusterId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->placeId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->address:Lcom/google/android/calendar/api/structuredlocation/Address;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->geo:Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->url:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->serverGeocoded:Z

    .line 181
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 172
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->mapsClusterId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->placeId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->address:Lcom/google/android/calendar/api/structuredlocation/Address;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 198
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->geo:Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 199
    iget-object v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-boolean v0, p0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->serverGeocoded:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 201
    return-void
.end method
