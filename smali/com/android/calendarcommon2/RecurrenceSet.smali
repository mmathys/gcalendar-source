.class public Lcom/android/calendarcommon2/RecurrenceSet;
.super Ljava/lang/Object;
.source "RecurrenceSet.java"


# static fields
.field private static final FOLD_RE:Ljava/util/regex/Pattern;

.field private static final IGNORABLE_ICAL_WHITESPACE_RE:Ljava/util/regex/Pattern;


# instance fields
.field public exdates:[J

.field public exrules:[Lcom/android/calendarcommon2/EventRecurrence;

.field public rdates:[J

.field public rrules:[Lcom/android/calendarcommon2/EventRecurrence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 412
    const-string v0, "(?:\\r\\n?|\\n)[ \t]"

    .line 413
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/calendarcommon2/RecurrenceSet;->IGNORABLE_ICAL_WHITESPACE_RE:Ljava/util/regex/Pattern;

    .line 415
    const-string v0, ".{75}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/calendarcommon2/RecurrenceSet;->FOLD_RE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceSet;->rrules:[Lcom/android/calendarcommon2/EventRecurrence;

    .line 44
    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    .line 45
    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceSet;->exrules:[Lcom/android/calendarcommon2/EventRecurrence;

    .line 46
    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceSet;->exdates:[J

    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendarcommon2/RecurrenceSet;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public static addPropertiesForRuleStr(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 387
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    :cond_0
    return-void

    .line 390
    :cond_1
    invoke-static {p2}, Lcom/android/calendarcommon2/RecurrenceSet;->getRuleStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 391
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 392
    new-instance v4, Lcom/android/calendarcommon2/ICalendar$Property;

    invoke-direct {v4, p1}, Lcom/android/calendarcommon2/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v4, v3}, Lcom/android/calendarcommon2/ICalendar$Property;->setValue(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0, v4}, Lcom/android/calendarcommon2/ICalendar$Component;->addProperty(Lcom/android/calendarcommon2/ICalendar$Property;)V

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static addPropertyForDateStr(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 447
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    :goto_0
    return-void

    .line 451
    :cond_0
    new-instance v1, Lcom/android/calendarcommon2/ICalendar$Property;

    invoke-direct {v1, p1}, Lcom/android/calendarcommon2/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .line 452
    const/4 v0, 0x0

    .line 453
    const-string v2, ";"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 454
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 455
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 456
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 458
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 459
    new-instance v2, Lcom/android/calendarcommon2/ICalendar$Parameter;

    const-string v3, "TZID"

    invoke-direct {v2, v3, v0}, Lcom/android/calendarcommon2/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/calendarcommon2/ICalendar$Property;->addParameter(Lcom/android/calendarcommon2/ICalendar$Parameter;)V

    .line 461
    :cond_2
    invoke-virtual {v1, p2}, Lcom/android/calendarcommon2/ICalendar$Property;->setValue(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0, v1}, Lcom/android/calendarcommon2/ICalendar$Component;->addProperty(Lcom/android/calendarcommon2/ICalendar$Property;)V

    goto :goto_0
.end method

.method public static fold(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 436
    sget-object v0, Lcom/android/calendarcommon2/RecurrenceSet;->FOLD_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$0\r\n "

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRuleStrings(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 399
    if-nez p0, :cond_1

    .line 400
    new-array v0, v1, [Ljava/lang/String;

    .line 408
    :cond_0
    return-object v0

    .line 402
    :cond_1
    invoke-static {p0}, Lcom/android/calendarcommon2/RecurrenceSet;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 404
    array-length v2, v0

    .line 405
    :goto_0
    if-ge v1, v2, :cond_0

    .line 406
    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/android/calendarcommon2/RecurrenceSet;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 95
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 97
    array-length v0, v2

    new-array v0, v0, [Lcom/android/calendarcommon2/EventRecurrence;

    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceSet;->rrules:[Lcom/android/calendarcommon2/EventRecurrence;

    move v0, v1

    .line 98
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 99
    new-instance v3, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct {v3}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    .line 100
    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Lcom/android/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 101
    iget-object v4, p0, Lcom/android/calendarcommon2/RecurrenceSet;->rrules:[Lcom/android/calendarcommon2/EventRecurrence;

    aput-object v3, v4, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    invoke-static {p2}, Lcom/android/calendarcommon2/RecurrenceSet;->parseRecurrenceDates(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    .line 109
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 110
    const-string v0, "\n"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 111
    array-length v0, v2

    new-array v0, v0, [Lcom/android/calendarcommon2/EventRecurrence;

    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceSet;->exrules:[Lcom/android/calendarcommon2/EventRecurrence;

    move v0, v1

    .line 112
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 113
    new-instance v3, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct {v3}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    .line 114
    invoke-virtual {v3, p3}, Lcom/android/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 115
    iget-object v4, p0, Lcom/android/calendarcommon2/RecurrenceSet;->exrules:[Lcom/android/calendarcommon2/EventRecurrence;

    aput-object v3, v4, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 119
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 120
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 121
    const-string v0, "\n"

    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_5

    aget-object v0, v4, v2

    .line 122
    invoke-static {v0}, Lcom/android/calendarcommon2/RecurrenceSet;->parseRecurrenceDates(Ljava/lang/String;)[J

    move-result-object v6

    .line 123
    array-length v7, v6

    move v0, v1

    :goto_3
    if-ge v0, v7, :cond_4

    aget-wide v8, v6, v0

    .line 124
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 121
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 127
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceSet;->exdates:[J

    .line 128
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    :goto_4
    if-ge v1, v2, :cond_6

    .line 129
    iget-object v4, p0, Lcom/android/calendarcommon2/RecurrenceSet;->exdates:[J

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v4, v1

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 133
    :cond_6
    return-void
.end method

.method public static parseRecurrenceDates(Ljava/lang/String;)[J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 153
    const-string v0, "UTC"

    .line 154
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 155
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 156
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 157
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 159
    :cond_0
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 160
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 161
    array-length v5, v4

    .line 162
    new-array v6, v5, [J

    move v1, v2

    .line 163
    :goto_0
    if-ge v1, v5, :cond_1

    .line 166
    :try_start_0
    aget-object v7, v4, v1

    invoke-virtual {v3, v7}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    invoke-virtual {v3, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    aput-wide v8, v6, v1

    .line 174
    iput-object v0, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    new-instance v0, Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;

    aget-object v1, v4, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3c

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TimeFormatException thrown when parsing time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in recurrence "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_1
    return-object v6
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 440
    sget-object v0, Lcom/android/calendarcommon2/RecurrenceSet;->IGNORABLE_ICAL_WHITESPACE_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    .line 441
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 440
    return-object v0
.end method
