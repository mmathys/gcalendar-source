.class public Lcom/google/android/syncadapters/calendar/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/calendar/Utils$TimeRange;
    }
.end annotation


# static fields
.field private static final GOOGLE_CONSUMER_ACCOUNT_DOMAINS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final WHERE_ACCOUNT_AND_COLOR:Ljava/lang/String;

.field public static final WHERE_ACCOUNT_AND_COLOR_TYPE:Ljava/lang/String;

.field public static final WHERE_ACCOUNT_AND_SYNC:Ljava/lang/String;

.field public static final WHERE_ACCOUNT_AND_SYNC_AND_NOT_VISIBLE_SINCE_LT:Ljava/lang/String;

.field public static final WHERE_ACCOUNT_AND_TYPE:Ljava/lang/String;

.field public static final WHERE_ACCOUNT_AND_TYPE_AND_CALENDAR_SYNC_ID:Ljava/lang/String;

.field public static final WHERE_ACCOUNT_AND_TYPE_AND_IS_PRIMARY:Ljava/lang/String;

.field public static final WHERE_CALENDARS_ACCOUNT_AND_COLOR:Ljava/lang/String;

.field public static final WHERE_DT_START_GT_AND_EVENTS_CALENDAR_ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "account_name=?"

    aput-object v1, v0, v2

    const-string v1, "account_type=?"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/Utils;->makeWhere([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/Utils;->WHERE_ACCOUNT_AND_TYPE:Ljava/lang/String;

    .line 126
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "account_name=?"

    aput-object v1, v0, v2

    const-string v1, "account_type=?"

    aput-object v1, v0, v3

    const-string v1, "cal_sync1=?"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/Utils;->makeWhere([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/Utils;->WHERE_ACCOUNT_AND_TYPE_AND_CALENDAR_SYNC_ID:Ljava/lang/String;

    .line 128
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "account_name=?"

    aput-object v1, v0, v2

    const-string v1, "account_type=?"

    aput-object v1, v0, v3

    const-string v1, "COALESCE(isPrimary,account_name=ownerAccount)=?"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/Utils;->makeWhere([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/Utils;->WHERE_ACCOUNT_AND_TYPE_AND_IS_PRIMARY:Ljava/lang/String;

    .line 130
    new-array v0, v4, [Ljava/lang/String;

    sget-object v1, Lcom/google/android/syncadapters/calendar/Utils;->WHERE_ACCOUNT_AND_TYPE:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "sync_events=?"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/Utils;->makeWhere([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/Utils;->WHERE_ACCOUNT_AND_SYNC:Ljava/lang/String;

    .line 132
    new-array v0, v5, [Ljava/lang/String;

    sget-object v1, Lcom/google/android/syncadapters/calendar/Utils;->WHERE_ACCOUNT_AND_TYPE:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "sync_events=?"

    aput-object v1, v0, v3

    const-string v1, "cal_sync6<?"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/Utils;->makeWhere([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/Utils;->WHERE_ACCOUNT_AND_SYNC_AND_NOT_VISIBLE_SINCE_LT:Ljava/lang/String;

    .line 134
    new-array v0, v4, [Ljava/lang/String;

    sget-object v1, Lcom/google/android/syncadapters/calendar/Utils;->WHERE_ACCOUNT_AND_TYPE:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "color_type=?"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/Utils;->makeWhere([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/Utils;->WHERE_ACCOUNT_AND_COLOR_TYPE:Ljava/lang/String;

    .line 136
    new-array v0, v4, [Ljava/lang/String;

    sget-object v1, Lcom/google/android/syncadapters/calendar/Utils;->WHERE_ACCOUNT_AND_COLOR_TYPE:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "color_index=?"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/Utils;->makeWhere([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/Utils;->WHERE_ACCOUNT_AND_COLOR:Ljava/lang/String;

    .line 138
    new-array v0, v4, [Ljava/lang/String;

    sget-object v1, Lcom/google/android/syncadapters/calendar/Utils;->WHERE_ACCOUNT_AND_TYPE:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "calendar_color_index=?"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/Utils;->makeWhere([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/Utils;->WHERE_CALENDARS_ACCOUNT_AND_COLOR:Ljava/lang/String;

    .line 140
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "dtstart>?"

    aput-object v1, v0, v2

    const-string v1, "calendar_id=?"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/Utils;->makeWhere([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/Utils;->WHERE_DT_START_GT_AND_EVENTS_CALENDAR_ID:Ljava/lang/String;

    .line 173
    new-instance v0, Lcom/google/android/calendar/builders/ListBuilder;

    invoke-direct {v0}, Lcom/google/android/calendar/builders/ListBuilder;-><init>()V

    const-string v1, "@gmail.com"

    .line 174
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/ListBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/ListBuilder;

    move-result-object v0

    const-string v1, "@googlemail.com"

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/ListBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/ListBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/builders/ListBuilder;->build()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/Utils;->GOOGLE_CONSUMER_ACCOUNT_DOMAINS:Ljava/util/List;

    .line 173
    return-void
.end method

.method public static collateDatesByTimeZone(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x3b

    const/4 v4, 0x0

    .line 270
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 273
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 274
    array-length v7, v6

    move v3, v4

    :goto_0
    if-ge v3, v7, :cond_2

    aget-object v0, v6, v3

    .line 276
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 279
    if-gez v2, :cond_1

    .line 280
    const-string v1, ""

    move-object v2, v1

    move-object v1, v0

    .line 287
    :goto_1
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 288
    if-nez v0, :cond_0

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 283
    :cond_1
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 284
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    goto :goto_1

    .line 297
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 298
    new-instance v1, Lcom/google/android/syncadapters/calendar/Utils$1;

    invoke-direct {v1}, Lcom/google/android/syncadapters/calendar/Utils$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 309
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 310
    const-string v4, ","

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 311
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 312
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 318
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 319
    if-lez v0, :cond_5

    .line 320
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 322
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static containsSyncFlag(Landroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/16 v5, 0x7c

    .line 427
    if-eqz p0, :cond_0

    const-string v1, "cal_sync2"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 437
    :cond_0
    :goto_0
    return v0

    .line 430
    :cond_1
    const-string v1, "cal_sync2"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 437
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 438
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 439
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 440
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static extractEventId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    if-nez p0, :cond_1

    .line 202
    const/4 p0, 0x0

    .line 208
    :cond_0
    :goto_0
    return-object p0

    .line 204
    :cond_1
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 205
    if-ltz v0, :cond_0

    .line 206
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static getBooleanValue(Ljava/lang/Boolean;Z)Z
    .locals 0

    .prologue
    .line 252
    if-nez p0, :cond_0

    :goto_0
    return p1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0
.end method

.method public static getEventExtrasFlag(II)Z
    .locals 1

    .prologue
    .line 527
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getEventsRange(Landroid/content/ContentProviderClient;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/Utils$TimeRange;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    const-wide/32 v8, 0x5265c00

    const/4 v4, 0x0

    .line 365
    invoke-static {}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "dtstart"

    aput-object v1, v3, v4

    const-string v6, "dtstart"

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 374
    if-eqz v6, :cond_2

    .line 376
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 378
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    move-wide v2, v0

    .line 379
    :goto_0
    new-instance v0, Lcom/google/android/syncadapters/calendar/Utils$TimeRange;

    sub-long/2addr v4, v8

    add-long/2addr v2, v8

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/google/android/syncadapters/calendar/Utils$TimeRange;-><init>(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 386
    :goto_1
    return-object v0

    :cond_0
    move-wide v2, v4

    .line 378
    goto :goto_0

    .line 382
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 386
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 382
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getInClause(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 188
    if-nez p1, :cond_0

    .line 189
    const-string v0, "0<>0"

    .line 196
    :goto_0
    return-object v0

    .line 190
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 191
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_1
    const/16 v0, 0x32

    if-le p1, v0, :cond_2

    .line 194
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "More than 50 host parameters when generating in clause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 196
    :cond_2
    const-string v0, ","

    const-string v1, "?"

    invoke-static {p1, v1}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMapFromRequest(Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 339
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 340
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 341
    const-string v4, "calendarId"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 342
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 345
    :cond_1
    return-object v2
.end method

.method public static isConnectedToInternet(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 394
    :try_start_0
    const-string v0, "connectivity"

    .line 395
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 396
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 397
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 400
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 397
    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    const-string v3, "CalendarSyncAdapter"

    const-string v4, "android.permission.ACCESS_NETWORK_STATE not granted"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 400
    goto :goto_0
.end method

.method public static isGoogleConsumerAccount(Landroid/accounts/Account;)Z
    .locals 3

    .prologue
    .line 547
    const-string v0, "com.google"

    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    sget-object v0, Lcom/google/android/syncadapters/calendar/Utils;->GOOGLE_CONSUMER_ACCOUNT_DOMAINS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 549
    iget-object v2, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    const/4 v0, 0x1

    .line 554
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs makeWhere([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    const-string v0, " AND "

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseFeedId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 506
    if-nez p0, :cond_1

    .line 507
    const/4 p0, 0x0

    .line 516
    :cond_0
    :goto_0
    return-object p0

    .line 509
    :cond_1
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 511
    array-length v1, v0

    if-le v1, v3, :cond_0

    const-string v1, "feeds"

    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    aget-object v0, v0, v3

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 513
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Changed feedId -> %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static removeSyncFlagIfPresent(Landroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/16 v4, 0x7c

    const/4 v0, 0x0

    .line 449
    if-eqz p0, :cond_0

    const-string v1, "cal_sync2"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 463
    :cond_0
    :goto_0
    return v0

    .line 452
    :cond_1
    const-string v1, "cal_sync2"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 456
    new-instance v2, Ljava/util/HashSet;

    .line 457
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 456
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 458
    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 462
    const-string v1, "cal_sync2"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static sanitizeRecurrence(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 214
    if-nez p0, :cond_0

    .line 248
    :goto_0
    return-object v0

    .line 217
    :cond_0
    new-instance v2, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct {v2}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    .line 219
    :try_start_0
    invoke-virtual {v2, p0}, Lcom/android/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    iget-object v1, v2, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    .line 230
    if-eqz v1, :cond_1

    .line 231
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 233
    :try_start_1
    invoke-virtual {v3, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 234
    iget v1, v3, Landroid/text/format/Time;->year:I

    const/16 v3, 0x7f6

    if-lt v1, v3, :cond_1

    .line 240
    const/4 v1, 0x0

    iput-object v1, v2, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;
    :try_end_1
    .catch Landroid/util/TimeFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 248
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lcom/android/calendarcommon2/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v1

    .line 223
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "Invalid recurrence rule: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v2, v1, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 242
    :catch_1
    move-exception v1

    .line 243
    const-string v3, "CalendarSyncAdapter"

    const-string v4, "Invalid recurrence until time"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v1, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 245
    iput-object v0, v2, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    goto :goto_1
.end method

.method public static setEventExtrasFlag(IIZ)I
    .locals 1

    .prologue
    .line 539
    if-eqz p2, :cond_0

    .line 540
    or-int v0, p0, p1

    .line 542
    :goto_0
    return v0

    :cond_0
    xor-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p0

    goto :goto_0
.end method

.method public static setGrooveValuesFromEvent(Lcom/google/api/services/calendar/model/Event;Landroid/content/ContentValues;I)V
    .locals 4

    .prologue
    .line 585
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getHabitInstance()Lcom/google/api/services/calendar/model/EventHabitInstance;

    move-result-object v0

    if-nez v0, :cond_1

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getHabitInstance()Lcom/google/api/services/calendar/model/EventHabitInstance;

    move-result-object v0

    .line 594
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/EventHabitInstance;->getParentId()Ljava/lang/String;

    move-result-object v1

    .line 596
    const-string v2, "sync_data8"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/EventHabitInstance;->getData()Lcom/google/api/services/calendar/model/HabitInstanceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/HabitInstanceData;->getStatus()Ljava/lang/String;

    move-result-object v0

    .line 598
    const/16 v1, 0x80

    const-string v2, "complete"

    .line 599
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 598
    invoke-static {p2, v1, v2}, Lcom/google/android/syncadapters/calendar/Utils;->setEventExtrasFlag(IIZ)I

    move-result v1

    .line 600
    const/16 v2, 0x100

    const-string v3, "deferralRequested"

    .line 601
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 600
    invoke-static {v1, v2, v0}, Lcom/google/android/syncadapters/calendar/Utils;->setEventExtrasFlag(IIZ)I

    move-result v0

    .line 602
    const-string v1, "sync_data9"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public static setRequestFromMap(Ljava/util/Map;Lcom/google/api/services/calendar/Calendar$Events$List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/api/services/calendar/Calendar$Events$List;",
            ")V"
        }
    .end annotation

    .prologue
    .line 349
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 350
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 352
    const-string v3, "timeMin"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "timeMax"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "updatedMin"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 353
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/DateTime;->parseRfc3339(Ljava/lang/String;)Lcom/google/api/client/util/DateTime;

    move-result-object v0

    .line 357
    :goto_1
    invoke-virtual {p1, v1, v0}, Lcom/google/api/services/calendar/Calendar$Events$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Events$List;

    goto :goto_0

    .line 355
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 359
    :cond_2
    return-void
.end method

.method public static varargs setSyncFlags(Landroid/content/ContentValues;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 408
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 410
    :cond_0
    const-string v0, "cal_sync2"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 421
    :goto_0
    return-void

    .line 413
    :cond_1
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 415
    const-string v0, "cal_sync2"

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 419
    :cond_2
    const-string v0, "cal_sync2"

    const/16 v1, 0x7c

    .line 420
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 419
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setUserAgentFromContext(Lcom/google/android/apiary/GoogleRequestInitializer;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 328
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 330
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apiary/GoogleRequestInitializer;->setUserAgentString(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    goto :goto_0
.end method
