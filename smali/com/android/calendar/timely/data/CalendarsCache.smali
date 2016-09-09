.class public Lcom/android/calendar/timely/data/CalendarsCache;
.super Lcom/android/calendar/timely/data/DataCache;
.source "CalendarsCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/timely/data/DataCache",
        "<",
        "Lcom/android/calendar/timely/data/CalendarItem;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/calendar/timely/data/CalendarsCache;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 40
    invoke-static {}, Lcom/android/calendar/timely/data/CalendarLoaderManager$Builder;->getInstance()Lcom/android/calendar/timely/data/CalendarLoaderManager$Builder;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/calendarlist/CalendarListUtils;->PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/android/calendar/timely/data/CalendarItem;->FACTORY:Lcom/android/calendar/content/CursorCreator;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/timely/data/DataCache;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/data/CalendarLoaderManager$Builder;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/calendar/content/CursorCreator;I)V

    .line 42
    return-void
.end method

.method public static getInstance()Lcom/android/calendar/timely/data/CalendarsCache;
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/android/calendar/timely/data/CalendarsCache;->sInstance:Lcom/android/calendar/timely/data/CalendarsCache;

    const-string v1, "CalendarsCache#initialize(...) must be called first"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/android/calendar/timely/data/CalendarsCache;->sInstance:Lcom/android/calendar/timely/data/CalendarsCache;

    return-object v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 45
    const-class v1, Lcom/android/calendar/timely/data/CalendarsCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/calendar/timely/data/CalendarsCache;->sInstance:Lcom/android/calendar/timely/data/CalendarsCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 50
    :goto_0
    monitor-exit v1

    return-void

    .line 49
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/calendar/timely/data/CalendarsCache;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/data/CalendarsCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/calendar/timely/data/CalendarsCache;->sInstance:Lcom/android/calendar/timely/data/CalendarsCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public findCalendar(Ljava/lang/String;)Lcom/android/calendar/timely/data/CalendarItem;
    .locals 3

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/calendar/timely/data/CalendarsCache;->getData()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/CalendarItem;

    .line 79
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getOwnerAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    return-object v0

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Calendar not found."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVisibleHashCode()I
    .locals 8

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/android/calendar/timely/data/CalendarsCache;->getData()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/CalendarItem;

    .line 65
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->isSynced()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 67
    mul-int/lit8 v0, v1, 0x1f

    const/16 v1, 0x20

    ushr-long v6, v4, v1

    xor-long/2addr v4, v6

    long-to-int v1, v4

    add-int/2addr v1, v0

    move v0, v1

    :goto_1
    move v1, v0

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method
