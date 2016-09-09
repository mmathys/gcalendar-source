.class Lcom/google/android/calendar/timely/location/LocationFetcher$FetchSuggestionsTask;
.super Landroid/os/AsyncTask;
.source "LocationFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/timely/location/LocationFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchSuggestionsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/android/calendar/event/EventLocationAdapter$Result;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/timely/location/LocationFetcher;


# direct methods
.method private constructor <init>(Lcom/google/android/calendar/timely/location/LocationFetcher;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/calendar/timely/location/LocationFetcher$FetchSuggestionsTask;->this$0:Lcom/google/android/calendar/timely/location/LocationFetcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/calendar/timely/location/LocationFetcher;Lcom/google/android/calendar/timely/location/LocationFetcher$1;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/calendar/timely/location/LocationFetcher$FetchSuggestionsTask;-><init>(Lcom/google/android/calendar/timely/location/LocationFetcher;)V

    return-void
.end method

.method private getPlaceSuggestions(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/event/EventLocationAdapter$Result;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    if-nez p1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-object v0

    .line 131
    :cond_1
    :try_start_0
    const-string v1, "predictions"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 133
    # getter for: Lcom/google/android/calendar/timely/location/LocationFetcher;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/timely/location/LocationFetcher;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getPlaceData %d results"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 135
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 136
    new-instance v1, Lcom/android/calendar/event/EventLocationAdapter$Result;

    iget-object v2, p0, Lcom/google/android/calendar/timely/location/LocationFetcher$FetchSuggestionsTask;->this$0:Lcom/google/android/calendar/timely/location/LocationFetcher;

    .line 137
    # getter for: Lcom/google/android/calendar/timely/location/LocationFetcher;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/calendar/timely/location/LocationFetcher;->access$300(Lcom/google/android/calendar/timely/location/LocationFetcher;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/calendar/timely/location/LocationFetcher$FetchSuggestionsTask;->this$0:Lcom/google/android/calendar/timely/location/LocationFetcher;

    # getter for: Lcom/google/android/calendar/timely/location/LocationFetcher;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/google/android/calendar/timely/location/LocationFetcher;->access$300(Lcom/google/android/calendar/timely/location/LocationFetcher;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->nearby_places:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/calendar/event/EventLocationAdapter$Result;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 138
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move v4, v5

    .line 141
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-ge v4, v1, :cond_0

    const/4 v1, 0x3

    if-ge v4, v1, :cond_0

    .line 148
    :try_start_1
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 149
    const-string v1, "terms"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 150
    const-string v2, "description"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-gt v3, v11, :cond_3

    .line 153
    const/4 v1, 0x0

    .line 181
    :goto_2
    new-instance v3, Lcom/android/calendar/event/EventLocationAdapter$Result;

    iget-object v8, p0, Lcom/google/android/calendar/timely/location/LocationFetcher$FetchSuggestionsTask;->this$0:Lcom/google/android/calendar/timely/location/LocationFetcher;

    .line 182
    # getter for: Lcom/google/android/calendar/timely/location/LocationFetcher;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/google/android/calendar/timely/location/LocationFetcher;->access$300(Lcom/google/android/calendar/timely/location/LocationFetcher;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "reference"

    .line 185
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v8, v2, v1, v7}, Lcom/android/calendar/event/EventLocationAdapter$Result;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    # getter for: Lcom/google/android/calendar/timely/location/LocationFetcher;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/timely/location/LocationFetcher;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-static {v1, v2, v7}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 141
    :goto_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 154
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ne v3, v12, :cond_4

    .line 155
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 156
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 157
    const-string v8, "value"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 158
    const-string v8, "offset"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v3

    .line 159
    goto :goto_2

    .line 160
    :cond_4
    const/4 v3, 0x1

    .line 161
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v8, "value"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 162
    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 168
    const/4 v1, 0x0

    const-string v9, "offset"

    .line 169
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 173
    const/4 v10, -0x1

    if-ne v9, v10, :cond_5

    .line 174
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 176
    :goto_4
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 179
    const-string v1, "offset"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v3

    goto :goto_2

    .line 175
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    add-int/2addr v1, v9

    goto :goto_4

    .line 188
    :catch_0
    move-exception v1

    .line 189
    :try_start_2
    # getter for: Lcom/google/android/calendar/timely/location/LocationFetcher;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/timely/location/LocationFetcher;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invalid Response: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-static {v2, v1, v3, v7}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 192
    :catch_1
    move-exception v1

    .line 193
    # getter for: Lcom/google/android/calendar/timely/location/LocationFetcher;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/timely/location/LocationFetcher;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invalid Response: %s"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v2, v1, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/timely/location/LocationFetcher$FetchSuggestionsTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/event/EventLocationAdapter$Result;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 85
    aget-object v0, p1, v8

    .line 86
    # getter for: Lcom/google/android/calendar/timely/location/LocationFetcher;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/timely/location/LocationFetcher;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Fetch Places Suggestions: %s"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 87
    const-string v1, "https://maps.googleapis.com/maps/api/place/autocomplete/json"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 89
    const-string v1, "key"

    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getApiKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "language"

    .line 91
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "sensor"

    const-string v4, "true"

    .line 92
    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "input"

    .line 93
    invoke-virtual {v1, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 96
    iget-object v0, p0, Lcom/google/android/calendar/timely/location/LocationFetcher$FetchSuggestionsTask;->this$0:Lcom/google/android/calendar/timely/location/LocationFetcher;

    # getter for: Lcom/google/android/calendar/timely/location/LocationFetcher;->mLocationClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {v0}, Lcom/google/android/calendar/timely/location/LocationFetcher;->access$200(Lcom/google/android/calendar/timely/location/LocationFetcher;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/timely/location/LocationFetcher$FetchSuggestionsTask;->this$0:Lcom/google/android/calendar/timely/location/LocationFetcher;

    .line 97
    # getter for: Lcom/google/android/calendar/timely/location/LocationFetcher;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/calendar/timely/location/LocationFetcher;->access$300(Lcom/google/android/calendar/timely/location/LocationFetcher;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/timely/location/GoogleLocationSettingHelper;->isGoogleLocationServicesEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/4 v1, 0x0

    .line 100
    :try_start_0
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v3, p0, Lcom/google/android/calendar/timely/location/LocationFetcher$FetchSuggestionsTask;->this$0:Lcom/google/android/calendar/timely/location/LocationFetcher;

    .line 101
    # getter for: Lcom/google/android/calendar/timely/location/LocationFetcher;->mLocationClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {v3}, Lcom/google/android/calendar/timely/location/LocationFetcher;->access$200(Lcom/google/android/calendar/timely/location/LocationFetcher;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    :goto_0
    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v3, "%f,%f"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 107
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v9

    .line 106
    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 108
    const-string v1, "location"

    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "radius"

    .line 111
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getPlacesRadiusMeters()I

    move-result v3

    .line 110
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/timely/location/LocationFetcher$FetchSuggestionsTask;->this$0:Lcom/google/android/calendar/timely/location/LocationFetcher;

    # getter for: Lcom/google/android/calendar/timely/location/LocationFetcher;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/calendar/timely/location/LocationFetcher;->access$300(Lcom/google/android/calendar/timely/location/LocationFetcher;)Landroid/content/Context;

    move-result-object v0

    .line 115
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 114
    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->executeJsonRequest(Landroid/content/Context;Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/calendar/timely/location/LocationFetcher$FetchSuggestionsTask;->getPlaceSuggestions(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    # getter for: Lcom/google/android/calendar/timely/location/LocationFetcher;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/timely/location/LocationFetcher;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "exception while fetching location"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 80
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/timely/location/LocationFetcher$FetchSuggestionsTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/event/EventLocationAdapter$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/google/android/calendar/timely/location/LocationFetcher$FetchSuggestionsTask;->this$0:Lcom/google/android/calendar/timely/location/LocationFetcher;

    invoke-virtual {v0, p1}, Lcom/google/android/calendar/timely/location/LocationFetcher;->updateSuggestions(Ljava/util/List;)V

    .line 122
    iget-object v0, p0, Lcom/google/android/calendar/timely/location/LocationFetcher$FetchSuggestionsTask;->this$0:Lcom/google/android/calendar/timely/location/LocationFetcher;

    const/4 v1, 0x0

    # setter for: Lcom/google/android/calendar/timely/location/LocationFetcher;->mFetchSuggestionsTask:Lcom/google/android/calendar/timely/location/LocationFetcher$FetchSuggestionsTask;
    invoke-static {v0, v1}, Lcom/google/android/calendar/timely/location/LocationFetcher;->access$402(Lcom/google/android/calendar/timely/location/LocationFetcher;Lcom/google/android/calendar/timely/location/LocationFetcher$FetchSuggestionsTask;)Lcom/google/android/calendar/timely/location/LocationFetcher$FetchSuggestionsTask;

    .line 123
    return-void
.end method
