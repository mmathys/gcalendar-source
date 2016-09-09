.class Lcom/android/calendar/event/data/EventEditManager$5;
.super Ljava/lang/Object;
.source "EventEditManager.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/data/EventEditManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/Map",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/data/EventEditManager;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/data/EventEditManager;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/calendar/event/data/EventEditManager$5;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 364
    new-instance v0, Lcom/android/calendar/event/data/EventEditManager$FindTimeSupportLoader;

    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager$5;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    iget-object v1, v1, Lcom/android/calendar/event/data/EventEditManager;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/calendar/event/data/EventEditManager$5;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v2}, Lcom/android/calendar/event/data/EventEditManager;->getSelectableCalendarsMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/event/data/EventEditManager$FindTimeSupportLoader;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 360
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/data/EventEditManager$5;->onLoadFinished(Landroid/content/Loader;Ljava/util/Map;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 371
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 372
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 373
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$5;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    iget-object v0, v0, Lcom/android/calendar/event/data/EventEditManager;->mCalendarMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    .line 374
    iget-object v4, p0, Lcom/android/calendar/event/data/EventEditManager$5;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    iget-object v4, v4, Lcom/android/calendar/event/data/EventEditManager;->mCalendarMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl;->builderFrom(Lcom/google/calendar/v2/client/service/api/calendars/Calendar;)Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;

    move-result-object v0

    .line 375
    invoke-virtual {v0, v3}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->setIsFindTimeSupported(Z)Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->build()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    .line 374
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 378
    :cond_0
    invoke-virtual {p1}, Landroid/content/Loader;->stopLoading()V

    .line 379
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$5;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/data/EventEditManager;->onQueryComplete(I)V

    .line 380
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 383
    return-void
.end method
