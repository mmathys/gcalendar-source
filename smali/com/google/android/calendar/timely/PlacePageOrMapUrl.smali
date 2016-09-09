.class public Lcom/google/android/calendar/timely/PlacePageOrMapUrl;
.super Ljava/lang/Object;
.source "PlacePageOrMapUrl.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sAttributionsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mPlacePageImageUrl:Ljava/lang/String;

.field private final mStaticMapUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;->TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;->sAttributionsMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;->mPlacePageImageUrl:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;->mStaticMapUrl:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;->mPlacePageImageUrl:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;->mStaticMapUrl:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static getAttributionsForPlacePhoto(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    sget-object v0, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;->sAttributionsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static getPlacePageImageUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 134
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v2

    .line 201
    :goto_0
    return-object v0

    .line 137
    :cond_0
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/PlacesConstants;->PLACE_DETAILS_URL_TEMPLATE:Ljava/lang/String;

    const-string v4, "[REFERENCE_ID]"

    .line 138
    invoke-virtual {v0, v4, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 139
    sget-object v4, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;->TAG:Ljava/lang/String;

    const-string v5, "place details url: %s"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-static {v4, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 142
    :try_start_0
    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v4

    .line 143
    new-instance v5, Lcom/android/calendar/cache/ForcedCacheStringRequest;

    invoke-direct {v5, v0, v4, v4}, Lcom/android/calendar/cache/ForcedCacheStringRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 145
    invoke-static {}, Lcom/android/calendar/cache/VolleyQueueHolder;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 146
    const-wide/16 v6, 0x5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v0}, Lcom/android/volley/toolbox/RequestFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 148
    const-string v0, "result"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 149
    const-string v4, "photos"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v0, v2

    .line 150
    goto :goto_0

    .line 152
    :cond_1
    const-string v4, "photos"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 153
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 154
    sget-object v5, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;->TAG:Ljava/lang/String;

    const-string v6, "name: %s; photos: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "name"

    .line 155
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v4, v7, v0

    .line 154
    invoke-static {v5, v6, v7}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 161
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/16 v5, 0xa

    if-lt v0, v5, :cond_6

    .line 162
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    move v1, v3

    .line 165
    :goto_2
    if-ge v1, v0, :cond_3

    .line 166
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 167
    const-string v6, "width"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x28a

    if-lt v6, v7, :cond_5

    const-string v6, "height"

    .line 168
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x12c

    if-lt v6, v7, :cond_5

    .line 169
    sget-object v0, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;->TAG:Ljava/lang/String;

    const-string v1, "photo: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v0, v1, v4}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 170
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/PlacesConstants;->PLACE_PHOTO_URL_TEMPLATE:Ljava/lang/String;

    const-string v4, "[PHOTO_REFERENCE]"

    const-string v0, "photo_reference"

    .line 172
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 171
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HEIGHT]"

    const-string v4, "height"

    .line 174
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 175
    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 173
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[WIDTH]"

    const-string v4, "width"

    .line 177
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 178
    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 176
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 181
    const-string v1, "html_attributions"

    .line 182
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 183
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 184
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v3

    .line 185
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 186
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 188
    :cond_2
    sget-object v1, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;->sAttributionsMap:Ljava/util/Map;

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    sget-object v1, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;->TAG:Ljava/lang/String;

    const-string v4, "Parsing the Places API Details response failed."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v4, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_3
    :goto_4
    move-object v0, v2

    .line 201
    goto/16 :goto_0

    .line 190
    :cond_4
    :try_start_1
    sget-object v1, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;->sAttributionsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    .line 198
    :catch_1
    move-exception v0

    .line 199
    :goto_5
    sget-object v1, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;->TAG:Ljava/lang/String;

    const-string v4, "Places API Details request failed."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v4, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_4

    .line 165
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 198
    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_5

    :cond_6
    move v0, v1

    goto/16 :goto_1
.end method

.method public static getPlacePageOrMapsUrl(Lcom/google/api/services/calendar/model/EventLocation;II)Lcom/google/android/calendar/timely/PlacePageOrMapUrl;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 85
    if-nez p0, :cond_0

    .line 86
    new-instance v0, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;

    invoke-direct {v0}, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;-><init>()V

    .line 101
    :goto_0
    return-object v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventLocation;->getMapsClusterId()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventLocation;->getGeo()Lcom/google/api/services/calendar/model/GeoCoordinates;

    move-result-object v2

    .line 94
    if-eqz v2, :cond_2

    .line 95
    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/GeoCoordinates;->getLatitude()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/GeoCoordinates;->getLongitude()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    :goto_1
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventLocation;->getAddress()Lcom/google/api/services/calendar/model/Address;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventLocation;->getAddress()Lcom/google/api/services/calendar/model/Address;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/services/calendar/model/Address;->getFormattedAddress()Ljava/lang/String;

    move-result-object v3

    :cond_1
    move v4, p1

    move v5, p2

    .line 101
    invoke-static/range {v0 .. v5}, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;->getPlacePageOrMapsUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/calendar/timely/PlacePageOrMapUrl;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v2, v3

    move-object v1, v3

    goto :goto_1
.end method

.method public static getPlacePageOrMapsUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/google/android/calendar/timely/PlacePageOrMapUrl;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 113
    invoke-static {p0}, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;->getPlacePageImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    sget-object v0, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;->TAG:Ljava/lang/String;

    const-string v2, "place page image url: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 116
    new-instance v0, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;

    invoke-direct {v0, v1, v5}, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_0
    return-object v0

    .line 119
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 121
    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getStaticMapsUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    sget-object v0, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;->TAG:Ljava/lang/String;

    const-string v2, "static maps image url: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 124
    new-instance v0, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;

    invoke-direct {v0, v5, v1}, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_1
    new-instance v0, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;

    invoke-direct {v0}, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public getBestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;->mPlacePageImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;->mPlacePageImageUrl:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;->mStaticMapUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPlacePageImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;->mPlacePageImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStaticMapUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/calendar/timely/PlacePageOrMapUrl;->mStaticMapUrl:Ljava/lang/String;

    return-object v0
.end method
