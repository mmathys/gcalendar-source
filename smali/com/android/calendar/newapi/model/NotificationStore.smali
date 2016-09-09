.class public Lcom/android/calendar/newapi/model/NotificationStore;
.super Ljava/lang/Object;
.source "NotificationStore.java"


# instance fields
.field private final mNotificationSetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            "Lcom/android/calendar/event/edit/CalendarNotificationSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            "Lcom/android/calendar/event/edit/CalendarNotificationSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/calendar/newapi/model/NotificationStore;->mNotificationSetMap:Ljava/util/Map;

    .line 23
    return-void
.end method

.method private extractMinutes(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Reminder;

    .line 47
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/Reminder;->getBefore()Lcom/google/calendar/v2/client/service/api/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/time/Duration;->toStandardRoundedMinutes()Lcom/google/calendar/v2/client/service/api/time/Period;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/time/Period;->getMinutes()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getCalendarNotifications(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)Lcom/android/calendar/event/edit/CalendarNotificationSet;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/calendar/newapi/model/NotificationStore;->mNotificationSetMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/CalendarNotificationSet;

    return-object v0
.end method

.method public getDefaultNotificationMinutes(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/calendar/newapi/model/NotificationStore;->mNotificationSetMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/CalendarNotificationSet;

    .line 28
    iget-object v1, v0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedNotifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedNotifications:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Reminder;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/Reminder;->getBefore()Lcom/google/calendar/v2/client/service/api/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/time/Duration;->toStandardRoundedMinutes()Lcom/google/calendar/v2/client/service/api/time/Period;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/time/Period;->getMinutes()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getNotificationMinutes(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/calendar/newapi/model/NotificationStore;->mNotificationSetMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/CalendarNotificationSet;

    iget-object v0, v0, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedOptions:Ljava/util/List;

    .line 41
    invoke-direct {p0, v0}, Lcom/android/calendar/newapi/model/NotificationStore;->extractMinutes(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
