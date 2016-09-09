.class public Lcom/google/android/calendar/ical/ICalProvider;
.super Landroid/content/ContentProvider;
.source "ICalProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder;,
        Lcom/google/android/calendar/ical/ICalProvider$Attribute;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 82
    const-class v0, Lcom/google/android/calendar/ical/ICalProvider;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/ical/ICalProvider;->TAG:Ljava/lang/String;

    .line 84
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/android/calendar/ical/ICalProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 88
    sget-object v0, Lcom/google/android/calendar/ical/ICalProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.calendar.ical"

    const-string v2, "events"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    sget-object v0, Lcom/google/android/calendar/ical/ICalProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.calendar.ical"

    const-string v2, "attendees"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnet/fortuna/ical4j/model/Property;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    invoke-static {p0}, Lcom/google/android/calendar/ical/ICalProvider;->getPropertyValueOrNull(Lnet/fortuna/ical4j/model/Property;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lnet/fortuna/ical4j/model/property/DateProperty;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    invoke-static {p0}, Lcom/google/android/calendar/ical/ICalProvider;->getDateTimeValueOrNull(Lnet/fortuna/ical4j/model/property/DateProperty;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    invoke-static {p0}, Lcom/google/android/calendar/ical/ICalProvider;->getEmailWithoutScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lnet/fortuna/ical4j/model/property/Attendee;)I
    .locals 1

    .prologue
    .line 81
    invoke-static {p0}, Lcom/google/android/calendar/ical/ICalProvider;->getAttendeeStatus(Lnet/fortuna/ical4j/model/property/Attendee;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lnet/fortuna/ical4j/model/property/Attendee;Lnet/fortuna/ical4j/model/component/VEvent;)I
    .locals 1

    .prologue
    .line 81
    invoke-static {p0, p1}, Lcom/google/android/calendar/ical/ICalProvider;->getAttendeeRelationship(Lnet/fortuna/ical4j/model/property/Attendee;Lnet/fortuna/ical4j/model/component/VEvent;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lnet/fortuna/ical4j/model/property/DateProperty;)J
    .locals 2

    .prologue
    .line 81
    invoke-static {p0}, Lcom/google/android/calendar/ical/ICalProvider;->getDateTime(Lnet/fortuna/ical4j/model/property/DateProperty;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getAttendeeRelationship(Lnet/fortuna/ical4j/model/property/Attendee;Lnet/fortuna/ical4j/model/component/VEvent;)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 355
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/component/VEvent;->getOrganizer()Lnet/fortuna/ical4j/model/property/Organizer;

    move-result-object v1

    .line 356
    if-nez v1, :cond_1

    .line 364
    :cond_0
    :goto_0
    return v0

    .line 361
    :cond_1
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/property/Organizer;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attendee;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static getAttendeeStatus(Lnet/fortuna/ical4j/model/property/Attendee;)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x3

    const/4 v2, 0x0

    .line 321
    const-string v3, "PARTSTAT"

    invoke-virtual {p0, v3}, Lnet/fortuna/ical4j/model/property/Attendee;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v3

    .line 322
    if-nez v3, :cond_1

    .line 340
    :cond_0
    :goto_0
    return v0

    .line 325
    :cond_1
    invoke-virtual {v3}, Lnet/fortuna/ical4j/model/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 326
    const-string v4, "NEEDS-ACTION"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 328
    const-string v4, "ACCEPTED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    .line 329
    goto :goto_0

    .line 330
    :cond_2
    const-string v4, "DECLINED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 331
    const/4 v0, 0x2

    goto :goto_0

    .line 332
    :cond_3
    const-string v4, "TENTATIVE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 333
    const/4 v0, 0x4

    goto :goto_0

    .line 334
    :cond_4
    const-string v4, "UNINVITED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v2

    .line 335
    goto :goto_0

    .line 336
    :cond_5
    const-string v4, "X-UNINVITED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v2

    .line 337
    goto :goto_0

    .line 339
    :cond_6
    sget-object v4, Lcom/google/android/calendar/ical/ICalProvider;->TAG:Ljava/lang/String;

    const-string v5, "Bad event response status: %s, defaulting to INVITED"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v4, v5, v1}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private getCalendarFromICalFileUri(Landroid/net/Uri;)Lnet/fortuna/ical4j/model/Calendar;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 240
    const-string v1, "ical4j.unfolding.relaxed"

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/CompatibilityHints;->setHintEnabled(Ljava/lang/String;Z)V

    .line 241
    const-string v1, "ical4j.parsing.relaxed"

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/CompatibilityHints;->setHintEnabled(Ljava/lang/String;Z)V

    .line 242
    const-string v1, "ical4j.compatibility.outlook"

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/CompatibilityHints;->setHintEnabled(Ljava/lang/String;Z)V

    .line 243
    const-string v1, "ical4j.compatibility.notes"

    invoke-static {v1, v2}, Lnet/fortuna/ical4j/util/CompatibilityHints;->setHintEnabled(Ljava/lang/String;Z)V

    .line 246
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 252
    :try_start_1
    new-instance v1, Lcom/google/android/apps/common/ical4jutils/CalendarBuilderWrapper;

    .line 253
    invoke-static {}, Lcom/google/android/apps/common/ical4jutils/CalendarBuilderWrapper$DateUtils;->createTimeZoneRegistry()Lnet/fortuna/ical4j/model/TimeZoneRegistry;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/apps/common/ical4jutils/CalendarBuilderWrapper;-><init>(Lnet/fortuna/ical4j/model/TimeZoneRegistry;)V

    .line 254
    invoke-virtual {v1, v2}, Lcom/google/android/apps/common/ical4jutils/CalendarBuilderWrapper;->build(Ljava/io/InputStream;)Lnet/fortuna/ical4j/model/Calendar;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lnet/fortuna/ical4j/data/ParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 262
    if-eqz v2, :cond_0

    .line 264
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 260
    :cond_0
    :goto_0
    return-object v0

    .line 247
    :catch_0
    move-exception v1

    .line 248
    sget-object v2, Lcom/google/android/calendar/ical/ICalProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 265
    :catch_1
    move-exception v1

    .line 266
    sget-object v2, Lcom/google/android/calendar/ical/ICalProvider;->TAG:Ljava/lang/String;

    const-string v3, "Closing iCal file"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 255
    :catch_2
    move-exception v1

    .line 256
    :try_start_3
    sget-object v3, Lcom/google/android/calendar/ical/ICalProvider;->TAG:Ljava/lang/String;

    const-string v4, "Opening iCal file"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v1, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 262
    if-eqz v2, :cond_0

    .line 264
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 265
    :catch_3
    move-exception v1

    .line 266
    sget-object v2, Lcom/google/android/calendar/ical/ICalProvider;->TAG:Ljava/lang/String;

    const-string v3, "Closing iCal file"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 258
    :catch_4
    move-exception v1

    .line 259
    :try_start_5
    sget-object v3, Lcom/google/android/calendar/ical/ICalProvider;->TAG:Ljava/lang/String;

    const-string v4, "Parsing iCal file"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v1, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 262
    if-eqz v2, :cond_0

    .line 264
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_0

    .line 265
    :catch_5
    move-exception v1

    .line 266
    sget-object v2, Lcom/google/android/calendar/ical/ICalProvider;->TAG:Ljava/lang/String;

    const-string v3, "Closing iCal file"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 262
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_1

    .line 264
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 267
    :cond_1
    :goto_1
    throw v0

    .line 265
    :catch_6
    move-exception v1

    .line 266
    sget-object v2, Lcom/google/android/calendar/ical/ICalProvider;->TAG:Ljava/lang/String;

    const-string v3, "Closing iCal file"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method private static getDateTime(Lnet/fortuna/ical4j/model/property/DateProperty;)J
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 289
    if-nez p0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-wide v0

    .line 292
    :cond_1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v2

    .line 293
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/Date;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static getDateTimeValueOrNull(Lnet/fortuna/ical4j/model/property/DateProperty;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 301
    invoke-static {p0}, Lcom/google/android/calendar/ical/ICalProvider;->getDateTime(Lnet/fortuna/ical4j/model/property/DateProperty;)J

    move-result-wide v0

    .line 302
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getEmailWithoutScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    if-nez p0, :cond_1

    .line 277
    const/4 p0, 0x0

    .line 279
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mailto:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    const-string v0, "mailto:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getPropertyValueOrNull(Lnet/fortuna/ical4j/model/Property;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private populateAttendeesCursor(Landroid/database/MatrixCursor;Lnet/fortuna/ical4j/model/Calendar;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 448
    const-string v0, "VEVENT"

    invoke-virtual {p2, v0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/ComponentList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 449
    instance-of v1, v0, Lnet/fortuna/ical4j/model/component/VEvent;

    if-eqz v1, :cond_0

    .line 452
    check-cast v0, Lnet/fortuna/ical4j/model/component/VEvent;

    .line 453
    if-eqz p3, :cond_1

    .line 454
    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/component/VEvent;->getUid()Lnet/fortuna/ical4j/model/property/Uid;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/calendar/ical/ICalProvider;->getPropertyValueOrNull(Lnet/fortuna/ical4j/model/Property;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    :cond_1
    const-string v1, "ATTENDEE"

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/component/VEvent;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v1

    .line 459
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/PropertyList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 460
    instance-of v2, v1, Lnet/fortuna/ical4j/model/property/Attendee;

    if-eqz v2, :cond_2

    .line 463
    check-cast v1, Lnet/fortuna/ical4j/model/property/Attendee;

    .line 464
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 465
    array-length v8, p4

    move v3, v4

    :goto_1
    if-ge v3, v8, :cond_3

    aget-object v2, p4, v3

    .line 466
    # getter for: Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder;->COLUMNS_MAP:Ljava/util/HashMap;
    invoke-static {}, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder;->access$600()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/calendar/ical/ICalProvider$Attribute;

    const/4 v9, 0x0

    .line 467
    invoke-interface {v2, v9, v0, v1}, Lcom/google/android/calendar/ical/ICalProvider$Attribute;->getValue(Lnet/fortuna/ical4j/model/Calendar;Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/property/Attendee;)Ljava/lang/String;

    move-result-object v2

    .line 466
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 469
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 472
    :cond_4
    sget-object v0, Lcom/google/android/calendar/ical/ICalProvider;->TAG:Ljava/lang/String;

    const-string v1, "Retrieved %d attendees."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/database/MatrixCursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 473
    return-object p1
.end method

.method private populateEventsCursor(Landroid/database/MatrixCursor;Lnet/fortuna/ical4j/model/Calendar;I[Ljava/lang/String;Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 384
    const-string v0, "VEVENT"

    invoke-virtual {p2, v0}, Lnet/fortuna/ical4j/model/Calendar;->getComponents(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v2

    .line 385
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 386
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/ComponentList;->size()I

    move-result p3

    .line 388
    :cond_0
    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/ComponentList;->size()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 389
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v3

    .line 390
    :goto_0
    if-ge v1, v5, :cond_2

    .line 391
    invoke-virtual {v2, v1}, Lnet/fortuna/ical4j/model/ComponentList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lnet/fortuna/ical4j/model/component/VEvent;

    if-nez v0, :cond_1

    .line 390
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 394
    :cond_1
    invoke-virtual {v2, v1}, Lnet/fortuna/ical4j/model/ComponentList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/component/VEvent;

    .line 395
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 398
    :cond_2
    const-string v0, "start_end_asc"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 399
    new-instance v0, Lcom/google/android/calendar/ical/ICalProvider$1;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/ical/ICalProvider$1;-><init>(Lcom/google/android/calendar/ical/ICalProvider;)V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    move v4, v3

    .line 423
    :goto_2
    if-ge v4, v5, :cond_5

    .line 424
    new-instance v7, Ljava/util/ArrayList;

    array-length v0, p4

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 425
    array-length v8, p4

    move v2, v3

    :goto_3
    if-ge v2, v8, :cond_4

    aget-object v0, p4, v2

    .line 426
    # getter for: Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder;->COLUMNS_MAP:Ljava/util/HashMap;
    invoke-static {}, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder;->access$600()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/ical/ICalProvider$Attribute;

    .line 427
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/component/VEvent;

    const/4 v9, 0x0

    .line 426
    invoke-interface {v0, p2, v1, v9}, Lcom/google/android/calendar/ical/ICalProvider$Attribute;->getValue(Lnet/fortuna/ical4j/model/Calendar;Lnet/fortuna/ical4j/model/component/VEvent;Lnet/fortuna/ical4j/model/property/Attendee;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 429
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 423
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 431
    :cond_5
    return-object p1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 557
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 496
    :try_start_0
    const-string v1, "iCalFileUri"

    .line 497
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 496
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 503
    invoke-direct {p0, v1}, Lcom/google/android/calendar/ical/ICalProvider;->getCalendarFromICalFileUri(Landroid/net/Uri;)Lnet/fortuna/ical4j/model/Calendar;

    move-result-object v2

    .line 504
    if-nez v2, :cond_0

    .line 505
    sget-object v1, Lcom/google/android/calendar/ical/ICalProvider;->TAG:Ljava/lang/String;

    const-string v2, "Could not retrieve calendar from ICal file Uri!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 536
    :goto_0
    return-object v0

    .line 498
    :catch_0
    move-exception v1

    .line 499
    sget-object v2, Lcom/google/android/calendar/ical/ICalProvider;->TAG:Ljava/lang/String;

    const-string v4, "Unable to parse file Uri!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v4, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 509
    :cond_0
    array-length v4, p2

    move v1, v3

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v5, p2, v1

    .line 510
    # getter for: Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder;->COLUMNS_MAP:Ljava/util/HashMap;
    invoke-static {}, Lcom/google/android/calendar/ical/ICalProvider$ColumnsMapHolder;->access$600()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 511
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid column "

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 509
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 514
    :cond_3
    if-eqz p5, :cond_5

    const-string v1, ""

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "start_end_asc"

    .line 515
    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 516
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invaid sort order "

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 518
    :cond_5
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 520
    sget-object v4, Lcom/google/android/calendar/ical/ICalProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 534
    sget-object v2, Lcom/google/android/calendar/ical/ICalProvider;->TAG:Ljava/lang/String;

    const-string v4, "Unhandled query Uri"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v3}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 535
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->close()V

    goto/16 :goto_0

    .line 522
    :pswitch_0
    const/4 v3, -0x1

    .line 523
    const-string v0, "eventsLimit"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 525
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 526
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :cond_6
    move-object v0, p0

    move-object v4, p2

    move-object v5, p5

    .line 528
    invoke-direct/range {v0 .. v5}, Lcom/google/android/calendar/ical/ICalProvider;->populateEventsCursor(Landroid/database/MatrixCursor;Lnet/fortuna/ical4j/model/Calendar;I[Ljava/lang/String;Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_0

    .line 531
    :pswitch_1
    if-eqz p4, :cond_7

    aget-object v0, p4, v3

    .line 532
    :cond_7
    invoke-direct {p0, v1, v2, v0, p2}, Lcom/google/android/calendar/ical/ICalProvider;->populateAttendeesCursor(Landroid/database/MatrixCursor;Lnet/fortuna/ical4j/model/Calendar;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_0

    .line 520
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 562
    const/4 v0, 0x0

    return v0
.end method
