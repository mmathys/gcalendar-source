.class public interface abstract Lcom/google/calendar/v2/client/service/api/events/MutableRecurrenceData;
.super Ljava/lang/Object;
.source "MutableRecurrenceData.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/events/RecurrenceData;


# virtual methods
.method public abstract freeze()Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;
.end method

.method public abstract getExdateList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMonthList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMonthdayList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRdateList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWeekList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWeekdayList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$ByDay;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getYeardayList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeCount()V
.end method

.method public abstract removeInterval()V
.end method

.method public abstract removeUntil()V
.end method

.method public abstract setCount(I)V
.end method

.method public abstract setFreq(Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;)V
.end method

.method public abstract setInterval(I)V
.end method

.method public abstract setUntil(Lcom/google/calendar/v2/client/service/api/time/DateTime;)V
.end method
