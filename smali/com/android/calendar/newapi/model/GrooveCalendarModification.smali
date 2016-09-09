.class public Lcom/android/calendar/newapi/model/GrooveCalendarModification;
.super Lcom/android/calendar/newapi/model/Holder;
.source "GrooveCalendarModification.java"

# interfaces
.implements Lcom/android/calendar/newapi/model/CalendarModification;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/model/Holder",
        "<",
        "Lcom/google/android/calendar/api/HabitModifications;",
        ">;",
        "Lcom/android/calendar/newapi/model/CalendarModification;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/api/HabitModifications;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/model/Holder;-><init>(Ljava/lang/Object;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/android/calendar/newapi/model/GrooveCalendarModification;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/android/calendar/newapi/model/GrooveCalendarModification;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public switchCalendar(Landroid/accounts/Account;Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)V
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/android/calendar/newapi/model/GrooveCalendarModification;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v0, p2}, Lcom/google/android/calendar/api/HabitModifications;->switchCalendar(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)Lcom/google/android/calendar/api/HabitDescriptor;

    .line 31
    return-void
.end method
