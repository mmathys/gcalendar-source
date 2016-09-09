.class public Lcom/google/android/calendar/utils/MapsUrlBuilder;
.super Ljava/lang/Object;
.source "MapsUrlBuilder.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mLatitude:Ljava/lang/Object;

.field private mLongitude:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/google/android/calendar/utils/MapsUrlBuilder;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/utils/MapsUrlBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildMapsLink(Ljava/lang/String;Lcom/google/calendar/v2/client/service/api/geo/EventLocation;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public build()Landroid/net/Uri;
    .locals 6

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/calendar/utils/MapsUrlBuilder;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    .line 46
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 47
    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "maps.google.com"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "maps"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 49
    const-string v1, "q"

    iget-object v2, p0, Lcom/google/android/calendar/utils/MapsUrlBuilder;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 50
    iget-object v1, p0, Lcom/google/android/calendar/utils/MapsUrlBuilder;->mLatitude:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/calendar/utils/MapsUrlBuilder;->mLongitude:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 51
    const-string v1, "sll"

    const-string v2, "%s,%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/calendar/utils/MapsUrlBuilder;->mLatitude:Ljava/lang/Object;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/calendar/utils/MapsUrlBuilder;->mLongitude:Ljava/lang/Object;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 53
    :cond_1
    const-string v1, "radius"

    const-string v2, "5"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 54
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/google/android/calendar/utils/MapsUrlBuilder;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/android/calendar/utils/MapsUrlBuilder;->mAddress:Ljava/lang/String;

    .line 29
    return-object p0
.end method

.method public setGeoCoordinates(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/calendar/utils/MapsUrlBuilder;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/calendar/utils/MapsUrlBuilder;->mLatitude:Ljava/lang/Object;

    .line 34
    iput-object p2, p0, Lcom/google/android/calendar/utils/MapsUrlBuilder;->mLongitude:Ljava/lang/Object;

    .line 35
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Address"

    iget-object v2, p0, Lcom/google/android/calendar/utils/MapsUrlBuilder;->mAddress:Ljava/lang/String;

    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Latitude"

    iget-object v2, p0, Lcom/google/android/calendar/utils/MapsUrlBuilder;->mLatitude:Ljava/lang/Object;

    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Longitude"

    iget-object v2, p0, Lcom/google/android/calendar/utils/MapsUrlBuilder;->mLongitude:Ljava/lang/Object;

    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    return-object v0
.end method
