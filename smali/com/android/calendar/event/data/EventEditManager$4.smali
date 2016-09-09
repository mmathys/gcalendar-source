.class Lcom/android/calendar/event/data/EventEditManager$4;
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
        "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
        "Lcom/android/calendar/event/edit/CalendarNotificationSet;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/data/EventEditManager;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/data/EventEditManager;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/calendar/event/data/EventEditManager$4;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            "Lcom/android/calendar/event/edit/CalendarNotificationSet;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 294
    new-instance v0, Lcom/android/calendar/event/data/EventEditManager$CalendarNotificationsLoader;

    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager$4;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    iget-object v1, v1, Lcom/android/calendar/event/data/EventEditManager;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/calendar/event/data/EventEditManager$4;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v2}, Lcom/android/calendar/event/data/EventEditManager;->getSelectableCalendarsMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/event/data/EventEditManager$4;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    .line 295
    invoke-virtual {v3}, Lcom/android/calendar/event/data/EventEditManager;->supportAlertsOnly()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/event/data/EventEditManager$CalendarNotificationsLoader;-><init>(Landroid/content/Context;Ljava/util/Collection;Z)V

    .line 294
    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 289
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/data/EventEditManager$4;->onLoadFinished(Landroid/content/Loader;Ljava/util/Map;)V

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
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            "Lcom/android/calendar/event/edit/CalendarNotificationSet;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            "Lcom/android/calendar/event/edit/CalendarNotificationSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$4;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    iput-object p2, v0, Lcom/android/calendar/event/data/EventEditManager;->mDefaultNotificationsMap:Ljava/util/Map;

    .line 303
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$4;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    iget-object v0, v0, Lcom/android/calendar/event/data/EventEditManager;->mDefaultNotificationsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 304
    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager$4;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    iget-object v3, v1, Lcom/android/calendar/event/data/EventEditManager;->mCalendarNotificationsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    new-instance v4, Lcom/android/calendar/event/edit/CalendarNotificationSet;

    .line 305
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/CalendarNotificationSet;

    invoke-direct {v4, v0}, Lcom/android/calendar/event/edit/CalendarNotificationSet;-><init>(Lcom/android/calendar/event/edit/CalendarNotificationSet;)V

    .line 304
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {p1}, Landroid/content/Loader;->stopLoading()V

    .line 309
    iget-object v0, p0, Lcom/android/calendar/event/data/EventEditManager$4;->this$0:Lcom/android/calendar/event/data/EventEditManager;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/data/EventEditManager;->onQueryComplete(I)V

    .line 310
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
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            "Lcom/android/calendar/event/edit/CalendarNotificationSet;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 315
    return-void
.end method
