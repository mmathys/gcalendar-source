.class public interface abstract Lcom/google/android/calendar/event/segment/MultiCalendarSegment$MultiCalendarProvider;
.super Ljava/lang/Object;
.source "MultiCalendarSegment.java"

# interfaces
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/segment/MultiCalendarSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MultiCalendarProvider"
.end annotation


# virtual methods
.method public abstract getMultiCalendar()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/data/CalendarItem;",
            ">;"
        }
    .end annotation
.end method
