.class public interface abstract Lcom/google/android/calendar/api/calendarlist/CalendarListClient;
.super Ljava/lang/Object;
.source "CalendarListClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/api/calendarlist/CalendarListClient$GenericResult;,
        Lcom/google/android/calendar/api/calendarlist/CalendarListClient$ListResult;,
        Lcom/google/android/calendar/api/calendarlist/CalendarListClient$ReadResult;,
        Lcom/google/android/calendar/api/calendarlist/CalendarListClient$CreateResult;
    }
.end annotation


# virtual methods
.method public abstract read(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)Lcom/google/android/gms/common/api/PendingResult;
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
.end method
