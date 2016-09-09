.class public Lcom/android/calendar/newapi/common/EventCalendarListEntryLoader;
.super Lcom/android/calendar/newapi/common/AsyncTaskLoader;
.source "EventCalendarListEntryLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/common/AsyncTaskLoader",
        "<",
        "Landroid/util/Pair",
        "<",
        "Lcom/google/android/calendar/api/Event;",
        "Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field mCalendarClient:Lcom/google/android/calendar/api/calendarlist/CalendarListClient;

.field mEventClient:Lcom/google/android/calendar/api/EventClient;

.field private mEventDescriptor:Lcom/google/android/calendar/api/EventDescriptor;


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/api/EventDescriptor;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/calendar/newapi/common/AsyncTaskLoader;-><init>()V

    .line 19
    sget-object v0, Lcom/google/android/calendar/api/CalendarApi;->Events:Lcom/google/android/calendar/api/EventClient;

    iput-object v0, p0, Lcom/android/calendar/newapi/common/EventCalendarListEntryLoader;->mEventClient:Lcom/google/android/calendar/api/EventClient;

    .line 20
    sget-object v0, Lcom/google/android/calendar/api/CalendarApi;->CalendarList:Lcom/google/android/calendar/api/calendarlist/CalendarListClient;

    iput-object v0, p0, Lcom/android/calendar/newapi/common/EventCalendarListEntryLoader;->mCalendarClient:Lcom/google/android/calendar/api/calendarlist/CalendarListClient;

    .line 24
    iput-object p1, p0, Lcom/android/calendar/newapi/common/EventCalendarListEntryLoader;->mEventDescriptor:Lcom/google/android/calendar/api/EventDescriptor;

    .line 25
    return-void
.end method


# virtual methods
.method protected varargs runInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/calendar/api/Event;",
            "Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-static {}, Lcom/google/android/calendar/api/ColorCache;->initialize()V

    .line 31
    iget-object v0, p0, Lcom/android/calendar/newapi/common/EventCalendarListEntryLoader;->mEventClient:Lcom/google/android/calendar/api/EventClient;

    iget-object v2, p0, Lcom/android/calendar/newapi/common/EventCalendarListEntryLoader;->mEventDescriptor:Lcom/google/android/calendar/api/EventDescriptor;

    invoke-interface {v0, v2}, Lcom/google/android/calendar/api/EventClient;->read(Lcom/google/android/calendar/api/EventDescriptor;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/EventClient$ReadResult;

    .line 32
    invoke-interface {v0}, Lcom/google/android/calendar/api/EventClient$ReadResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/android/calendar/newapi/common/EventCalendarListEntryLoader;->loadingFailure()V

    move-object v0, v1

    .line 46
    :goto_0
    return-object v0

    .line 36
    :cond_0
    invoke-interface {v0}, Lcom/google/android/calendar/api/EventClient$ReadResult;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v2

    .line 38
    iget-object v0, p0, Lcom/android/calendar/newapi/common/EventCalendarListEntryLoader;->mCalendarClient:Lcom/google/android/calendar/api/calendarlist/CalendarListClient;

    .line 39
    invoke-interface {v2}, Lcom/google/android/calendar/api/Event;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/calendar/api/calendarlist/CalendarListClient;->read(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/calendarlist/CalendarListClient$ReadResult;

    .line 41
    invoke-interface {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarListClient$ReadResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/android/calendar/newapi/common/EventCalendarListEntryLoader;->loadingFailure()V

    move-object v0, v1

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarListClient$ReadResult;->getCalendarListEntry()Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;

    move-result-object v0

    .line 46
    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic runInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calendar/newapi/common/EventCalendarListEntryLoader;->runInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
