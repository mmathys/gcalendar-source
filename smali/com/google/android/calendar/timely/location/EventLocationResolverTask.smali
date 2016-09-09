.class public Lcom/google/android/calendar/timely/location/EventLocationResolverTask;
.super Landroid/os/AsyncTask;
.source "EventLocationResolverTask.java"

# interfaces
.implements Lcom/google/android/syncadapters/calendar/timely/PlacesConstants;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/google/calendar/v2/client/service/api/geo/EventLocation;",
        ">;",
        "Lcom/google/android/syncadapters/calendar/timely/PlacesConstants;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLocale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/google/android/calendar/timely/location/EventLocationResolverTask;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/timely/location/EventLocationResolverTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/calendar/timely/location/EventLocationResolverTask;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/google/android/calendar/timely/location/EventLocationResolverTask;->mLocale:Ljava/util/Locale;

    .line 33
    return-void
.end method

.method private buildRequest(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    .prologue
    .line 107
    const-string v0, "https://maps.googleapis.com/maps/api/place/details/json"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 108
    const-string v1, "key"

    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "language"

    iget-object v3, p0, Lcom/google/android/calendar/timely/location/EventLocationResolverTask;->mLocale:Ljava/util/Locale;

    .line 109
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "sensor"

    const-string v3, "true"

    .line 113
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "reference"

    .line 114
    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 116
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static midPoint(DDDD)[D
    .locals 14

    .prologue
    .line 94
    sub-double v0, p6, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 95
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 96
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 97
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 98
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    .line 99
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v10

    .line 100
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    add-double/2addr v4, v10

    .line 101
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    add-double/2addr v10, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    add-double/2addr v12, v8

    mul-double/2addr v10, v12

    mul-double v12, v0, v0

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 100
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    .line 102
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    add-double/2addr v2, v8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    add-double/2addr v0, v6

    .line 103
    const/4 v2, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide v4, 0x4066800000000000L    # 180.0

    add-double/2addr v0, v4

    const-wide v4, 0x4076800000000000L    # 360.0

    rem-double/2addr v0, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    sub-double/2addr v0, v4

    aput-wide v0, v2, v3

    return-object v2
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/EventLocation;
    .locals 13

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 37
    aget-object v0, p1, v11

    .line 38
    invoke-direct {p0, v0}, Lcom/google/android/calendar/timely/location/EventLocationResolverTask;->buildRequest(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/google/android/calendar/timely/location/EventLocationResolverTask;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->executeJsonRequest(Landroid/content/Context;Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v9

    .line 41
    if-nez v9, :cond_0

    .line 42
    sget-object v0, Lcom/google/android/calendar/timely/location/EventLocationResolverTask;->TAG:Ljava/lang/String;

    const-string v1, "getPlaceData result is null"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v8

    .line 88
    :goto_0
    return-object v0

    .line 47
    :cond_0
    :try_start_0
    const-string v0, "result"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 49
    const-string v0, "geometry"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 53
    const-string v1, "location"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    const-string v0, "lat"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 56
    const-string v0, "lng"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 71
    :goto_1
    invoke-static {}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->newBuilder()Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;

    move-result-object v4

    .line 72
    const-string v5, "name"

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->setName(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;

    .line 74
    const-string v5, "formatted_address"

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 77
    invoke-static {}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->newBuilder()Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->setFormattedAddress(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress$Builder;->build()Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;

    move-result-object v5

    .line 78
    invoke-virtual {v4, v5}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->setPostalAddress(Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;)Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;

    .line 81
    :cond_1
    new-instance v5, Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;

    invoke-direct {v5, v2, v3, v0, v1}, Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;-><init>(DD)V

    invoke-virtual {v4, v5}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->setGeoCoordinates(Lcom/google/calendar/v2/client/service/api/geo/GeoCoordinates;)Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;

    .line 82
    const-string v0, "reference"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->setMapsClusterId(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;

    .line 83
    const-string v0, "url"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->setUrl(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;

    .line 85
    invoke-virtual {v4}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation$Builder;->build()Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_2
    const-string v1, "viewport"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 59
    const-string v0, "northeast"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 60
    const-string v0, "lat"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 61
    const-string v3, "lng"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 62
    const-string v5, "southwest"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 63
    const-string v4, "lat"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 64
    const-string v7, "lng"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 66
    invoke-static/range {v0 .. v7}, Lcom/google/android/calendar/timely/location/EventLocationResolverTask;->midPoint(DDDD)[D

    move-result-object v0

    .line 67
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    .line 68
    const/4 v1, 0x1

    aget-wide v0, v0, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    sget-object v1, Lcom/google/android/calendar/timely/location/EventLocationResolverTask;->TAG:Ljava/lang/String;

    const-string v2, "Invalid Response: %s"

    new-array v3, v12, [Ljava/lang/Object;

    aput-object v9, v3, v11

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v8

    .line 88
    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/timely/location/EventLocationResolverTask;->doInBackground([Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    move-result-object v0

    return-object v0
.end method
