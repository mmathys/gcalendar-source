.class public Lcom/android/calendar/newapi/model/EventCalendarModification;
.super Lcom/android/calendar/newapi/model/Holder;
.source "EventCalendarModification.java"

# interfaces
.implements Lcom/android/calendar/newapi/model/CalendarModification;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/model/Holder",
        "<",
        "Lcom/google/android/calendar/api/EventModifications;",
        ">;",
        "Lcom/android/calendar/newapi/model/CalendarModification;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/api/EventModifications;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/model/Holder;-><init>(Ljava/lang/Object;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/android/calendar/newapi/model/EventCalendarModification;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/EventModifications;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/android/calendar/newapi/model/EventCalendarModification;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/EventModifications;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public switchCalendar(Landroid/accounts/Account;Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)V
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/calendar/newapi/model/EventCalendarModification;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v0, p2}, Lcom/google/android/calendar/api/EventModifications;->switchCalendar(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)Lcom/google/android/calendar/api/EventDescriptor;

    .line 32
    return-void
.end method
