.class Lcom/android/calendar/event/data/EventEditManager$FindTimeSupportLoader;
.super Landroid/content/AsyncTaskLoader;
.source "EventEditManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/data/EventEditManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FindTimeSupportLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/Map",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mCalendarMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 327
    iput-object p1, p0, Lcom/android/calendar/event/data/EventEditManager$FindTimeSupportLoader;->mContext:Landroid/content/Context;

    .line 328
    iput-object p2, p0, Lcom/android/calendar/event/data/EventEditManager$FindTimeSupportLoader;->mCalendarMap:Ljava/util/Map;

    .line 329
    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager$FindTimeSupportLoader;->loadInBackground()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 335
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$FindTimeSupportLoader;->mCalendarMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 336
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 337
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    .line 339
    iget-object v4, p0, Lcom/android/calendar/event/data/EventEditManager$FindTimeSupportLoader;->mContext:Landroid/content/Context;

    .line 340
    invoke-static {v4, v0}, Lcom/android/calendar/timely/FindTimeUtil;->isFindTimeFeatureSupported(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/calendars/Calendar;)Z

    move-result v0

    .line 342
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 345
    :cond_0
    return-object v2
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager$FindTimeSupportLoader;->forceLoad()V

    .line 351
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager$FindTimeSupportLoader;->cancelLoad()Z

    .line 356
    return-void
.end method
