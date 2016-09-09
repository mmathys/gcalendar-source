.class Lcom/android/calendar/event/data/EventEditManager$CalendarNotificationsLoader;
.super Landroid/content/AsyncTaskLoader;
.source "EventEditManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/data/EventEditManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CalendarNotificationsLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/Map",
        "<",
        "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
        "Lcom/android/calendar/event/edit/CalendarNotificationSet;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mAlertsOnly:Z

.field private mCalendars:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLoadFinished:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Collection;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 258
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/event/data/EventEditManager$CalendarNotificationsLoader;->mLoadFinished:Z

    .line 259
    iput-object p1, p0, Lcom/android/calendar/event/data/EventEditManager$CalendarNotificationsLoader;->mContext:Landroid/content/Context;

    .line 260
    iput-object p2, p0, Lcom/android/calendar/event/data/EventEditManager$CalendarNotificationsLoader;->mCalendars:Ljava/util/Collection;

    .line 261
    iput-boolean p3, p0, Lcom/android/calendar/event/data/EventEditManager$CalendarNotificationsLoader;->mAlertsOnly:Z

    .line 262
    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager$CalendarNotificationsLoader;->loadInBackground()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            "Lcom/android/calendar/event/edit/CalendarNotificationSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getRecentAndDefaultNotificationsFactory()Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/android/calendar/event/data/EventEditManager$CalendarNotificationsLoader;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/event/data/EventEditManager$CalendarNotificationsLoader;->mCalendars:Ljava/util/Collection;

    iget-boolean v3, p0, Lcom/android/calendar/event/data/EventEditManager$CalendarNotificationsLoader;->mAlertsOnly:Z

    .line 269
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;->getCalendarNotificationsMap(Landroid/content/Context;Ljava/util/Collection;Z)Ljava/util/Map;

    move-result-object v0

    .line 270
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/calendar/event/data/EventEditManager$CalendarNotificationsLoader;->mLoadFinished:Z

    .line 271
    return-object v0
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/android/calendar/event/data/EventEditManager$CalendarNotificationsLoader;->mLoadFinished:Z

    if-nez v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager$CalendarNotificationsLoader;->forceLoad()V

    .line 279
    :cond_0
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/calendar/event/data/EventEditManager$CalendarNotificationsLoader;->cancelLoad()Z

    .line 284
    return-void
.end method
