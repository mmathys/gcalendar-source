.class public Lcom/google/calendar/v2/client/service/api/common/CalendarKeys;
.super Ljava/lang/Object;
.source "CalendarKeys.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forNewCalendar(Lcom/google/calendar/v2/client/service/api/common/AccountKey;)Lcom/google/calendar/v2/client/service/api/common/CalendarKey;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/google/calendar/v2/client/service/api/common/TemporaryCalendarKey;

    invoke-direct {v0, p0}, Lcom/google/calendar/v2/client/service/api/common/TemporaryCalendarKey;-><init>(Lcom/google/calendar/v2/client/service/api/common/AccountKey;)V

    return-object v0
.end method

.method public static fromEmail(Lcom/google/calendar/v2/client/service/api/common/AccountKey;Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;

    invoke-direct {v0, p0, p1}, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;-><init>(Lcom/google/calendar/v2/client/service/api/common/AccountKey;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromPlatformId(Lcom/google/calendar/v2/client/service/api/common/AccountKey;Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/PlatformCalendarKey;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/google/calendar/v2/client/service/api/common/PlatformCalendarKey;

    invoke-direct {v0, p0, p1}, Lcom/google/calendar/v2/client/service/api/common/PlatformCalendarKey;-><init>(Lcom/google/calendar/v2/client/service/api/common/AccountKey;Ljava/lang/String;)V

    return-object v0
.end method
