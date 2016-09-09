.class public Lcom/google/android/syncadapters/calendar/FeedState;
.super Ljava/lang/Object;
.source "FeedState.java"


# instance fields
.field private final mData:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/FeedState;->mData:Lorg/json/JSONObject;

    .line 77
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 6

    .prologue
    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/FeedState;->mData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/FeedState;->mData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 221
    :cond_0
    :goto_0
    return p2

    .line 219
    :catch_0
    move-exception v0

    .line 220
    const-string v1, "FeedState"

    const-string v2, "Failed to get %s from %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/syncadapters/calendar/FeedState;->mData:Lorg/json/JSONObject;

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private getInProgressParams(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/FeedState;->mData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 298
    :goto_0
    return-object v0

    .line 288
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 289
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/FeedState;->mData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 290
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 291
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 293
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 296
    :catch_0
    move-exception v0

    .line 297
    const-string v2, "FeedState"

    const-string v3, "Failed to get %s."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2, v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 298
    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 295
    goto :goto_0
.end method

.method private getLong(Ljava/lang/String;J)J
    .locals 6

    .prologue
    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/FeedState;->mData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/FeedState;->mData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 238
    :cond_0
    :goto_0
    return-wide p2

    .line 236
    :catch_0
    move-exception v0

    .line 237
    const-string v1, "FeedState"

    const-string v2, "Failed to get %s from %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/syncadapters/calendar/FeedState;->mData:Lorg/json/JSONObject;

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/FeedState;->mData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/FeedState;->mData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 255
    :cond_0
    :goto_0
    return-object p2

    .line 253
    :catch_0
    move-exception v0

    .line 254
    const-string v1, "FeedState"

    const-string v2, "Failed to get %s from %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/syncadapters/calendar/FeedState;->mData:Lorg/json/JSONObject;

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private putBoolean(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/FeedState;->mData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    const-string v1, "FeedState"

    const-string v2, "Failed to put %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private putLong(Ljava/lang/String;J)V
    .locals 6

    .prologue
    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/FeedState;->mData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    const-string v1, "FeedState"

    const-string v2, "Failed to put %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/FeedState;->mData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    const-string v1, "FeedState"

    const-string v2, "Failed to put %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private setInProgressParams(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    if-nez p2, :cond_0

    .line 269
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/FeedState;->mData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 281
    :goto_0
    return-void

    .line 271
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 273
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 274
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 277
    :catch_0
    move-exception v0

    .line 278
    const-string v1, "FeedState"

    const-string v2, "Failed to put %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 276
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/FeedState;->mData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/FeedState;->mData:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 194
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 196
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 198
    :cond_0
    return-void
.end method

.method public clearInProgressData()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/FeedState;->mData:Lorg/json/JSONObject;

    const-string v1, "lastFetchedId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/FeedState;->mData:Lorg/json/JSONObject;

    const-string v1, "upgrade_min_start"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/FeedState;->mData:Lorg/json/JSONObject;

    const-string v1, "upgrade_max_start"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/FeedState;->mData:Lorg/json/JSONObject;

    const-string v1, "in_progress_params"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 205
    return-void
.end method

.method public getDoIncrementalSync()Z
    .locals 2

    .prologue
    .line 99
    const-string v0, "do_incremental_sync"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/syncadapters/calendar/FeedState;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIdOfLastFetchedEvent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    const-string v0, "lastFetchedId"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/syncadapters/calendar/FeedState;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInProgressParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    const-string v0, "in_progress_params"

    invoke-direct {p0, v0}, Lcom/google/android/syncadapters/calendar/FeedState;->getInProgressParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLastSyncDate()J
    .locals 4

    .prologue
    .line 90
    const-string v0, "last_sync_time"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/syncadapters/calendar/FeedState;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMoveWindowEnd()J
    .locals 4

    .prologue
    .line 126
    const-string v0, "new_window_end"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/syncadapters/calendar/FeedState;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUpdatedTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    const-string v0, "feed_updated_time"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/syncadapters/calendar/FeedState;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpgradeInProgressParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    const-string v0, "upgrade_in_progress_params"

    invoke-direct {p0, v0}, Lcom/google/android/syncadapters/calendar/FeedState;->getInProgressParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUpgradeMaxStart()J
    .locals 4

    .prologue
    .line 144
    const-string v0, "upgrade_max_start"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/syncadapters/calendar/FeedState;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUpgradeMinStart()J
    .locals 4

    .prologue
    .line 135
    const-string v0, "upgrade_min_start"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/syncadapters/calendar/FeedState;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWindowEnd()J
    .locals 4

    .prologue
    .line 117
    const-string v0, "window_end"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/syncadapters/calendar/FeedState;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/FeedState;->mData:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDoIncrementalSync(Z)V
    .locals 1

    .prologue
    .line 103
    const-string v0, "do_incremental_sync"

    invoke-direct {p0, v0, p1}, Lcom/google/android/syncadapters/calendar/FeedState;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    return-void
.end method

.method public setIdOfLastFetchedEvent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 112
    const-string v0, "lastFetchedId"

    invoke-direct {p0, v0, p1}, Lcom/google/android/syncadapters/calendar/FeedState;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public setInProgressParams(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    const-string v0, "in_progress_params"

    invoke-direct {p0, v0, p1}, Lcom/google/android/syncadapters/calendar/FeedState;->setInProgressParams(Ljava/lang/String;Ljava/util/Map;)V

    .line 157
    return-void
.end method

.method public setLastSyncDate(J)V
    .locals 1

    .prologue
    .line 94
    const-string v0, "last_sync_time"

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/syncadapters/calendar/FeedState;->putLong(Ljava/lang/String;J)V

    .line 95
    return-void
.end method

.method public setMoveWindowEnd(J)V
    .locals 1

    .prologue
    .line 130
    const-string v0, "new_window_end"

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/syncadapters/calendar/FeedState;->putLong(Ljava/lang/String;J)V

    .line 131
    return-void
.end method

.method public setUpdatedTime(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    const-string v0, "feed_updated_time"

    invoke-direct {p0, v0, p1}, Lcom/google/android/syncadapters/calendar/FeedState;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public setUpgradeInProgressParams(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    const-string v0, "upgrade_in_progress_params"

    invoke-direct {p0, v0, p1}, Lcom/google/android/syncadapters/calendar/FeedState;->setInProgressParams(Ljava/lang/String;Ljava/util/Map;)V

    .line 165
    return-void
.end method

.method public setUpgradeMaxStart(J)V
    .locals 1

    .prologue
    .line 148
    const-string v0, "upgrade_max_start"

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/syncadapters/calendar/FeedState;->putLong(Ljava/lang/String;J)V

    .line 149
    return-void
.end method

.method public setUpgradeMinStart(J)V
    .locals 1

    .prologue
    .line 139
    const-string v0, "upgrade_min_start"

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/syncadapters/calendar/FeedState;->putLong(Ljava/lang/String;J)V

    .line 140
    return-void
.end method

.method public setWindowEnd(J)V
    .locals 1

    .prologue
    .line 121
    const-string v0, "window_end"

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/syncadapters/calendar/FeedState;->putLong(Ljava/lang/String;J)V

    .line 122
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/FeedState;->mData:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFromGDataBundle(Landroid/os/Bundle;Z)V
    .locals 6

    .prologue
    .line 168
    if-eqz p2, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/FeedState;->getUpgradeMaxStart()J

    move-result-wide v0

    .line 172
    const-string v2, "window_end"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 173
    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 174
    invoke-virtual {p0, v2, v3}, Lcom/google/android/syncadapters/calendar/FeedState;->setUpgradeMaxStart(J)V

    .line 190
    :cond_0
    return-void

    .line 179
    :cond_1
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 181
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 182
    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/syncadapters/calendar/FeedState;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_3
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    .line 184
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/syncadapters/calendar/FeedState;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 185
    :cond_4
    instance-of v3, v1, Ljava/lang/Long;

    if-eqz v3, :cond_2

    .line 186
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v0, v4, v5}, Lcom/google/android/syncadapters/calendar/FeedState;->putLong(Ljava/lang/String;J)V

    goto :goto_0
.end method
