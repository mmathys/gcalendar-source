.class public Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;
.super Ljava/lang/Object;
.source "GeoCoordinates.java"


# static fields
.field private static final MAX_LATITUDE_DEG:D = 90.0

.field private static final MAX_LONGITUDE_DEG:D = 180.0

.field static final PRECISION:D = 1.0E-7


# instance fields
.field private final latitude:D

.field private final longitude:D


# direct methods
.method public constructor <init>(DD)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpl-double v0, p1, v4

    if-ltz v0, :cond_0

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpg-double v0, p1, v4

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 30
    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpl-double v0, p3, v4

    if-ltz v0, :cond_1

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpg-double v0, p3, v4

    if-gtz v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 32
    iput-wide p1, p0, Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;->latitude:D

    .line 33
    iput-wide p3, p0, Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;->longitude:D

    .line 34
    return-void

    :cond_0
    move v0, v2

    .line 28
    goto :goto_0

    :cond_1
    move v1, v2

    .line 30
    goto :goto_1
.end method

.method private getLatitudeE7()I
    .locals 4

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;->latitude:D

    const-wide v2, 0x3e7ad7f29abcaf48L    # 1.0E-7

    div-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private getLongitudeE7()I
    .locals 4

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;->longitude:D

    const-wide v2, 0x3e7ad7f29abcaf48L    # 1.0E-7

    div-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    if-ne p0, p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    instance-of v2, p1, Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;

    if-nez v2, :cond_2

    move v0, v1

    .line 71
    goto :goto_0

    .line 73
    :cond_2
    check-cast p1, Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;

    .line 74
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;->getLatitudeE7()I

    move-result v2

    invoke-direct {p1}, Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;->getLatitudeE7()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 75
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;->getLongitudeE7()I

    move-result v2

    invoke-direct {p1}, Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;->getLongitudeE7()I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;->longitude:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;->getLatitudeE7()I

    move-result v0

    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;->getLongitudeE7()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 80
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Latitude"

    iget-wide v2, p0, Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;->latitude:D

    .line 81
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;D)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Longitude"

    iget-wide v2, p0, Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;->longitude:D

    .line 82
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;D)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    return-object v0
.end method
