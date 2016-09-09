.class public interface abstract Lcom/google/android/calendar/ical/ICalUtils$WritableCalendarsMapContainer;
.super Ljava/lang/Object;
.source "ICalUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/ical/ICalUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WritableCalendarsMapContainer"
.end annotation


# virtual methods
.method public abstract getWritableCalendarsMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;"
        }
    .end annotation
.end method
