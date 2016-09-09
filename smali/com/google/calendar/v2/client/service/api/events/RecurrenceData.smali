.class public interface abstract Lcom/google/calendar/v2/client/service/api/events/RecurrenceData;
.super Ljava/lang/Object;
.source "RecurrenceData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;,
        Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$ByDay;
    }
.end annotation


# virtual methods
.method public abstract getCount()I
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

.method public abstract getFreq()Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;
.end method

.method public abstract getInterval()I
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

.method public abstract getUntil()Lcom/google/calendar/v2/client/service/api/time/DateTime;
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

.method public abstract hasCount()Z
.end method

.method public abstract hasInterval()Z
.end method

.method public abstract hasUntil()Z
.end method
