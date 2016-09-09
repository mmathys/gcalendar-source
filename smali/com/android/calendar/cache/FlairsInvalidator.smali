.class public Lcom/android/calendar/cache/FlairsInvalidator;
.super Ljava/lang/Object;
.source "FlairsInvalidator.java"


# static fields
.field private static final KEYS_TO_INVALIDATE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gym"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "hiking"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cycling"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "tennis"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "badminton"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "soccer"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "bbq"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cinema"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/cache/FlairsInvalidator;->KEYS_TO_INVALIDATE:[Ljava/lang/String;

    return-void
.end method

.method public static invalidateIfNeeded(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 20
    const-string v0, "flairs_invalidated"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 21
    if-lez v0, :cond_0

    .line 31
    :goto_0
    return-void

    .line 26
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/calendar/cache/VolleyQueueHolder;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    .line 27
    new-instance v1, Lcom/android/calendar/cache/InvalidateFlairsRequest;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->getCache()Lcom/android/volley/Cache;

    move-result-object v2

    sget-object v3, Lcom/android/calendar/cache/FlairsInvalidator;->KEYS_TO_INVALIDATE:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/android/calendar/cache/InvalidateFlairsRequest;-><init>(Lcom/android/volley/Cache;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    const-string v0, "flairs_invalidated"

    invoke-static {p0}, Lcom/android/calendar/Utils;->getVersionCode(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "flairs_invalidated"

    invoke-static {p0}, Lcom/android/calendar/Utils;->getVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0
.end method
