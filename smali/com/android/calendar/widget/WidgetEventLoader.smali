.class public Lcom/android/calendar/widget/WidgetEventLoader;
.super Lcom/android/calendar/timely/EventRangedQueryHandler;
.source "WidgetEventLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/widget/WidgetEventLoader$EventsProcessor;
    }
.end annotation


# instance fields
.field private mEventsProcessor:Lcom/android/calendar/widget/WidgetEventLoader$EventsProcessor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/EventRangedQueryHandler;-><init>(Landroid/content/Context;)V

    .line 65
    return-void
.end method


# virtual methods
.method protected createStorage(I)Lcom/android/calendar/timely/RangedData$EventResults;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetEventLoader;->mEventsProcessor:Lcom/android/calendar/widget/WidgetEventLoader$EventsProcessor;

    invoke-interface {v0}, Lcom/android/calendar/widget/WidgetEventLoader$EventsProcessor;->getStorage()Lcom/android/calendar/timely/RangedData$EventResults;

    move-result-object v0

    return-object v0
.end method

.method protected getSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "startDay ASC, startMinute ASC, CASE selfAttendeeStatus WHEN 2 THEN 1 ELSE 0 END ASC, endDay ASC, endMinute ASC LIMIT 100"

    return-object v0
.end method

.method protected processResults(Lcom/android/calendar/timely/RangedData;Lcom/android/calendar/timely/RangedData$EventResults;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetEventLoader;->mEventsProcessor:Lcom/android/calendar/widget/WidgetEventLoader$EventsProcessor;

    invoke-interface {v0, p1, p2}, Lcom/android/calendar/widget/WidgetEventLoader$EventsProcessor;->processResults(Lcom/android/calendar/timely/RangedData;Lcom/android/calendar/timely/RangedData$EventResults;)V

    .line 99
    return-void
.end method

.method protected bridge synthetic processResults(Lcom/android/calendar/timely/RangedData;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p2, Lcom/android/calendar/timely/RangedData$EventResults;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/widget/WidgetEventLoader;->processResults(Lcom/android/calendar/timely/RangedData;Lcom/android/calendar/timely/RangedData$EventResults;)V

    return-void
.end method

.method public startRefreshData(Lcom/android/calendar/widget/WidgetEventLoader$EventsProcessor;Lcom/android/calendar/timely/RangedData;I)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/calendar/widget/WidgetEventLoader;->mEventsProcessor:Lcom/android/calendar/widget/WidgetEventLoader$EventsProcessor;

    .line 74
    invoke-virtual {p0, p2, p3}, Lcom/android/calendar/widget/WidgetEventLoader;->refreshData(Lcom/android/calendar/timely/RangedData;I)V

    .line 75
    return-void
.end method
