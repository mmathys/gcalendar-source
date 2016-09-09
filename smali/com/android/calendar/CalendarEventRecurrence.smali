.class public Lcom/android/calendar/CalendarEventRecurrence;
.super Lcom/android/calendarcommon2/EventRecurrence;
.source "CalendarEventRecurrence.java"


# instance fields
.field public descriptionRes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/CalendarEventRecurrence;->descriptionRes:I

    return-void
.end method
