.class public Lcom/google/android/calendar/extensions/CalendarClassifier;
.super Ljava/lang/Object;
.source "CalendarClassifier.java"

# interfaces
.implements Lcom/android/calendar/CalendarClassifierInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateType(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 11
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/CalendarType;->calculateType(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public isBirthdayCalendar(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 16
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/CalendarType;->isBirthdayCalendar(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHolidayCalendar(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 21
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/CalendarType;->isHolidayCalendar(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
