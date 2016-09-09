.class public Lcom/android/calendar/newapi/model/CalendarStore;
.super Ljava/lang/Object;
.source "CalendarStore.java"


# instance fields
.field private final mCache:Lcom/android/calendar/timely/data/CalendarsCache;

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


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/android/calendar/timely/data/CalendarsCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;",
            "Lcom/android/calendar/timely/data/CalendarsCache;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/android/calendar/newapi/model/CalendarStore;->mCache:Lcom/android/calendar/timely/data/CalendarsCache;

    .line 28
    iput-object p1, p0, Lcom/android/calendar/newapi/model/CalendarStore;->mCalendarMap:Ljava/util/Map;

    .line 29
    return-void
.end method


# virtual methods
.method public getCalendarLocalId(Lcom/android/calendar/newapi/model/CalendarHolder;)Ljava/lang/Long;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/android/calendar/newapi/model/CalendarStore;->mCache:Lcom/android/calendar/timely/data/CalendarsCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/newapi/model/CalendarStore;->mCache:Lcom/android/calendar/timely/data/CalendarsCache;

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarsCache;->hasLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 71
    :goto_0
    return-object v0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/newapi/model/CalendarStore;->mCache:Lcom/android/calendar/timely/data/CalendarsCache;

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarsCache;->getData()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/CalendarItem;

    .line 66
    invoke-interface {p1}, Lcom/android/calendar/newapi/model/CalendarHolder;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    invoke-interface {p1}, Lcom/android/calendar/newapi/model/CalendarHolder;->getCalendarId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getOwnerAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 68
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getId()Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 71
    goto :goto_0
.end method

.method public getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/calendar/newapi/model/CalendarStore;->mCache:Lcom/android/calendar/timely/data/CalendarsCache;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/data/CalendarsCache;->findCalendar(Ljava/lang/String;)Lcom/android/calendar/timely/data/CalendarItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImmutableCalendar(Ljava/lang/String;Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;
    .locals 4

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/calendar/newapi/model/CalendarStore;->mCalendarMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    .line 34
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/event/data/AndroidCalendarKey;

    .line 35
    invoke-interface {v1}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getOwnerAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMatchingCalendars(Lcom/google/common/base/Predicate;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 44
    iget-object v0, p0, Lcom/android/calendar/newapi/model/CalendarStore;->mCalendarMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 45
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    invoke-interface {p1, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 50
    :cond_1
    return-object v2
.end method
