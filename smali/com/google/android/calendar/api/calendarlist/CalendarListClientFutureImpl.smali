.class public Lcom/google/android/calendar/api/calendarlist/CalendarListClientFutureImpl;
.super Lcom/google/android/calendar/api/calendarlist/CalendarListClientBase;
.source "CalendarListClientFutureImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/api/calendarlist/CalendarListClientFutureImpl$Read;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/api/CrudApi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/calendar/api/CrudApi",
            "<",
            "Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;",
            "Lcom/google/android/calendar/api/calendarlist/CalendarListEntryModifications;",
            "Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;",
            "Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListClientBase;-><init>(Lcom/google/android/calendar/api/CrudApi;)V

    .line 93
    return-void
.end method


# virtual methods
.method public read(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/calendar/api/calendarlist/CalendarListClient$ReadResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lcom/google/android/calendar/api/calendarlist/CalendarListClientFutureImpl$Read;

    invoke-direct {v0, p0, p1}, Lcom/google/android/calendar/api/calendarlist/CalendarListClientFutureImpl$Read;-><init>(Lcom/google/android/calendar/api/calendarlist/CalendarListClientFutureImpl;Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)V

    return-object v0
.end method
