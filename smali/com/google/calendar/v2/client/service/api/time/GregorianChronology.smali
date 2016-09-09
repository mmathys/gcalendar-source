.class public Lcom/google/calendar/v2/client/service/api/time/GregorianChronology;
.super Ljava/lang/Object;
.source "GregorianChronology.java"


# static fields
.field private static final DAYS_PER_MONTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/calendar/v2/client/service/api/time/GregorianChronology;->DAYS_PER_MONTH:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static isLeapYear(I)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 28
    rem-int/lit8 v2, p0, 0x4

    if-eqz v2, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v0

    .line 31
    :cond_1
    rem-int/lit8 v2, p0, 0x64

    if-eqz v2, :cond_2

    move v0, v1

    .line 32
    goto :goto_0

    .line 34
    :cond_2
    rem-int/lit16 v2, p0, 0x190

    if-nez v2, :cond_0

    move v0, v1

    .line 37
    goto :goto_0
.end method

.method public static isLeapYear(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Z
    .locals 1

    .prologue
    .line 21
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getYear()I

    move-result v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/time/GregorianChronology;->isLeapYear(I)Z

    move-result v0

    return v0
.end method

.method public static monthLength(II)I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lcom/google/calendar/v2/client/service/api/time/GregorianChronology;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/16 v0, 0x1d

    .line 68
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/google/calendar/v2/client/service/api/time/GregorianChronology;->DAYS_PER_MONTH:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public static monthLength(Lcom/google/calendar/v2/client/service/api/time/DateTime;)I
    .locals 2

    .prologue
    .line 58
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getYear()I

    move-result v0

    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMonthOfYear()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/calendar/v2/client/service/api/time/GregorianChronology;->monthLength(II)I

    move-result v0

    return v0
.end method

.method public static weeksInYear(Lcom/google/calendar/v2/client/service/api/time/DateTime;I)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 82
    invoke-interface {p0, v0, v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withMonthAndDay(II)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getDayOfWeek()I

    move-result v0

    .line 85
    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x7

    rem-int/lit8 v0, v0, 0x7

    .line 86
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/google/calendar/v2/client/service/api/time/GregorianChronology;->yearLength(Lcom/google/calendar/v2/client/service/api/time/DateTime;)I

    move-result v0

    const/16 v1, 0x16e

    if-ne v0, v1, :cond_1

    .line 87
    :cond_0
    const/16 v0, 0x35

    .line 89
    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x34

    goto :goto_0
.end method

.method public static yearLength(I)I
    .locals 1

    .prologue
    .line 51
    invoke-static {p0}, Lcom/google/calendar/v2/client/service/api/time/GregorianChronology;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x16d

    goto :goto_0
.end method

.method public static yearLength(Lcom/google/calendar/v2/client/service/api/time/DateTime;)I
    .locals 1

    .prologue
    .line 44
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getYear()I

    move-result v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/time/GregorianChronology;->yearLength(I)I

    move-result v0

    return v0
.end method
