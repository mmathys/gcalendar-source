.class public interface abstract Lcom/google/android/calendar/ical/ICalUtils$LocalEventInfoProvider;
.super Ljava/lang/Object;
.source "ICalUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/ical/ICalUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocalEventInfoProvider"
.end annotation


# virtual methods
.method public abstract getEventTypeMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOriginalModelsMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/calendar/event/CalendarEventModel;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract refreshLocalEventInfo()V
.end method
