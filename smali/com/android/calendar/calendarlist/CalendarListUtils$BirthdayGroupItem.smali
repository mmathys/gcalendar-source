.class public Lcom/android/calendar/calendarlist/CalendarListUtils$BirthdayGroupItem;
.super Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;
.source "CalendarListUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/calendarlist/CalendarListUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BirthdayGroupItem"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 598
    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calendar/calendarlist/CalendarListUtils$GroupOfCalendarsItem;-><init>(IILcom/android/calendar/calendarlist/CalendarListUtils$1;)V

    .line 599
    return-void
.end method
