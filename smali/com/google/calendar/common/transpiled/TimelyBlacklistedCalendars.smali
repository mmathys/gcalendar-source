.class public Lcom/google/calendar/common/transpiled/TimelyBlacklistedCalendars;
.super Ljava/lang/Object;
.source "TimelyBlacklistedCalendars.java"


# static fields
.field private static final BLACKLISTED_VIRTUAL_CALENDAR_DOMAINS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "countdown"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "daynum"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gadget"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "hebrew"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "jewish"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "moonphase"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "primes"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "stardate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sunrise"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ticker"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "weather"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "weeknum"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/calendar/common/transpiled/TimelyBlacklistedCalendars;->BLACKLISTED_VIRTUAL_CALENDAR_DOMAINS:[Ljava/lang/String;

    return-void
.end method

.method public static isBlacklisted(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 34
    const-string v2, "ht3jlfaac5lfd6263ulfh4tql8@group.calendar.google.com"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v0

    .line 39
    :cond_1
    const-string v2, "@group.v.calendar.google.com"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 40
    goto :goto_0

    .line 43
    :cond_2
    const-string v2, "#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 44
    if-gez v2, :cond_3

    move v0, v1

    .line 45
    goto :goto_0

    .line 47
    :cond_3
    const-string v3, "@"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 48
    if-gez v3, :cond_4

    move v0, v1

    .line 49
    goto :goto_0

    .line 52
    :cond_4
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 53
    sget-object v4, Lcom/google/calendar/common/transpiled/TimelyBlacklistedCalendars;->BLACKLISTED_VIRTUAL_CALENDAR_DOMAINS:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_5

    aget-object v6, v4, v2

    .line 54
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    .line 59
    goto :goto_0
.end method
