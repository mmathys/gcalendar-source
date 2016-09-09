.class public Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;
.super Ljava/lang/Object;
.source "TimelyHolidayPreferences.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Observable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputAspectHolidaySelection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/common/Observable",
        "<",
        "Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccountKey:Lcom/google/calendar/v2/client/service/api/common/GoogleAccountKey;

.field private mAllCountryHolidayCalendars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAllReligiousHolidayCalendars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ChangeNotifier",
            "<",
            "Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingCountryChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/CalendarKey;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingReligiousChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/CalendarKey;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    invoke-static {}, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->newInstance()Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->mNotifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    .line 495
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->mAllCountryHolidayCalendars:Ljava/util/List;

    .line 496
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->mAllReligiousHolidayCalendars:Ljava/util/List;

    .line 497
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->mPendingCountryChanges:Ljava/util/Map;

    .line 498
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->mPendingReligiousChanges:Ljava/util/Map;

    .line 501
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/api/common/AccountKeys;->fromEmail(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/GoogleAccountKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->mAccountKey:Lcom/google/calendar/v2/client/service/api/common/GoogleAccountKey;

    .line 502
    return-void
.end method

.method private partition(Ljava/util/Map;Ljava/util/List;Ljava/util/Set;[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/CalendarKey;",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/CalendarKey;",
            ">;[",
            "Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;",
            "Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 557
    array-length v2, p4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p4, v1

    .line 558
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->mAccountKey:Lcom/google/calendar/v2/client/service/api/common/GoogleAccountKey;

    iget-object v4, v3, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->id:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/google/calendar/v2/client/service/api/common/CalendarKeys;->fromEmail(Lcom/google/calendar/v2/client/service/api/common/AccountKey;Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;

    move-result-object v4

    .line 559
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    .line 560
    if-nez v0, :cond_0

    .line 561
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarInfoImpl;

    iget-object v3, v3, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->name:Ljava/lang/String;

    invoke-direct {v0, v4, v3, p5}, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarInfoImpl;-><init>(Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;Ljava/lang/String;Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;)V

    .line 563
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 565
    :cond_0
    new-instance v5, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarInfoImpl;

    iget-object v3, v3, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->name:Ljava/lang/String;

    invoke-direct {v5, v0, v3, p5}, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarInfoImpl;-><init>(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;Ljava/lang/String;Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;)V

    .line 567
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    invoke-interface {p3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 571
    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<-",
            "Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 575
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->mNotifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    invoke-virtual {v0, p1}, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 576
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->mNotifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->dispose()V

    .line 586
    return-void
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->mAccountKey:Lcom/google/calendar/v2/client/service/api/common/GoogleAccountKey;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/GoogleAccountKey;->getPrincipalKey()Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllCountryHolidayCalendars()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 589
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->mAllCountryHolidayCalendars:Ljava/util/List;

    return-object v0
.end method

.method public getAllReligiousHolidayCalendars()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 593
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->mAllReligiousHolidayCalendars:Ljava/util/List;

    return-object v0
.end method

.method public getPendingCountryChanges()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/CalendarKey;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->mPendingCountryChanges:Ljava/util/Map;

    return-object v0
.end method

.method public getPendingReligiousChanges()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/CalendarKey;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 601
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->mPendingReligiousChanges:Ljava/util/Map;

    return-object v0
.end method

.method public removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<-",
            "Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->mNotifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    invoke-virtual {v0, p1}, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 581
    return-void
.end method

.method public setData(Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/CalendarKey;",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 510
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 511
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 514
    if-nez p2, :cond_4

    .line 515
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 517
    :goto_0
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 527
    :cond_0
    iget-object v4, p1, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->countryHoliday:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    sget-object v5, Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;->COUNTRY_HOLIDAY:Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->partition(Ljava/util/Map;Ljava/util/List;Ljava/util/Set;[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;)V

    .line 529
    iget-object v8, p1, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->religionHoliday:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    sget-object v9, Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;->RELIGION_HOLIDAY:Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;

    move-object v4, p0

    move-object v5, v1

    move-object v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->partition(Ljava/util/Map;Ljava/util/List;Ljava/util/Set;[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;)V

    .line 533
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    .line 534
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    .line 535
    new-instance v4, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarInfoImpl;

    .line 536
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;->COUNTRY_HOLIDAY:Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;

    invoke-direct {v4, v0, v5, v7}, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarInfoImpl;-><init>(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;Ljava/lang/String;Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;)V

    .line 537
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 520
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 521
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    .line 522
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->mAccountKey:Lcom/google/calendar/v2/client/service/api/common/GoogleAccountKey;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;->getAccountKey()Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/calendar/v2/client/service/api/common/GoogleAccountKey;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 523
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 540
    :cond_3
    new-instance v0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$CalendarInfoComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$CalendarInfoComparator;-><init>(Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$1;)V

    .line 541
    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 543
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->mAllCountryHolidayCalendars:Ljava/util/List;

    .line 544
    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 546
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->mAllReligiousHolidayCalendars:Ljava/util/List;

    .line 548
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->mNotifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    invoke-virtual {v0, p0}, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->notifyListeners(Ljava/lang/Object;)V

    .line 549
    return-void

    :cond_4
    move-object v1, p2

    goto/16 :goto_0
.end method
