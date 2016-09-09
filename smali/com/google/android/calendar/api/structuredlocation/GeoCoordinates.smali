.class public Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;
.super Ljava/lang/Object;
.source "GeoCoordinates.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLatitude:D

.field private final mLongitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;->mLatitude:D

    .line 15
    iput-wide p3, p0, Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;->mLongitude:D

    .line 16
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;-><init>(DD)V

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates$1;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 40
    if-ne p1, p0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    instance-of v2, p1, Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;

    if-nez v2, :cond_2

    move v0, v1

    .line 44
    goto :goto_0

    .line 46
    :cond_2
    check-cast p1, Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;

    .line 47
    iget-wide v2, p0, Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;->mLatitude:D

    invoke-virtual {p1}, Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;->getLatitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;->mLongitude:D

    .line 48
    invoke-virtual {p1}, Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;->mLongitude:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 53
    .line 54
    iget-wide v0, p0, Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;->mLatitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 55
    iget-wide v2, p0, Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;->mLongitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 56
    ushr-long v4, v0, v6

    xor-long/2addr v0, v4

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x20f

    .line 57
    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 58
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 63
    const-string v0, "GeoCoordinates{latitude=%s, longitude=%s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;->mLatitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;->mLongitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 77
    iget-wide v0, p0, Lcom/google/android/calendar/api/structuredlocation/GeoCoordinates;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 78
    return-void
.end method
