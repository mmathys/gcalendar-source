.class public Lcom/google/android/syncadapters/calendar/CalendarHandler;
.super Ljava/lang/Object;
.source "CalendarHandler.java"

# interfaces
.implements Lcom/google/android/apiary/ItemAndEntityHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apiary/ItemAndEntityHandler",
        "<",
        "Lcom/google/api/services/calendar/model/CalendarListEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

.field private final mClient:Lcom/google/api/services/calendar/Calendar;

.field private final mProvider:Landroid/content/ContentProviderClient;

.field private final mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;


# direct methods
.method public constructor <init>(Lcom/google/api/services/calendar/Calendar;Landroid/content/ContentProviderClient;Landroid/accounts/Account;Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/CalendarHandler;->mClient:Lcom/google/api/services/calendar/Calendar;

    .line 60
    iput-object p2, p0, Lcom/google/android/syncadapters/calendar/CalendarHandler;->mProvider:Landroid/content/ContentProviderClient;

    .line 61
    iput-object p3, p0, Lcom/google/android/syncadapters/calendar/CalendarHandler;->mAccount:Landroid/accounts/Account;

    .line 62
    invoke-static {}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->getInstance()Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarHandler;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    .line 63
    iput-object p4, p0, Lcom/google/android/syncadapters/calendar/CalendarHandler;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    .line 64
    return-void
.end method

.method public static calendarEntryToContentValues(Lcom/google/api/services/calendar/model/CalendarListEntry;Lcom/google/api/services/calendar/model/Acl;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 366
    invoke-virtual {p3}, Landroid/content/ContentValues;->clear()V

    .line 368
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/CalendarListEntry;->getId()Ljava/lang/String;

    move-result-object v5

    .line 369
    const-string v0, "cal_sync1"

    invoke-virtual {p3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v0, "ownerAccount"

    invoke-virtual {p3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/CalendarListEntry;->getSummary()Ljava/lang/String;

    move-result-object v0

    .line 372
    const-string v3, "name"

    invoke-virtual {p3, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/CalendarListEntry;->getSummaryOverride()Ljava/lang/String;

    move-result-object v3

    .line 374
    if-eqz v3, :cond_0

    .line 375
    const-string v0, "calendar_displayName"

    invoke-virtual {p3, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :goto_0
    const-string v0, "calendar_timezone"

    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/CalendarListEntry;->getTimeZone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/CalendarListEntry;->getColorId()Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/CalendarListEntry;->getBackgroundColor()Ljava/lang/String;

    move-result-object v3

    .line 385
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/high16 v4, -0x1000000

    or-int/2addr v3, v4

    .line 386
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getCalendarColorForId(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 387
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v3, v6, :cond_1

    .line 388
    const-string v3, "calendar_color_index"

    invoke-virtual {p3, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v0, "calendar_color"

    invoke-virtual {p3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 396
    :goto_1
    const-string v3, "isPrimary"

    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/CalendarListEntry;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 399
    const-string v3, "cal_sync4"

    .line 400
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/CalendarListEntry;->getSelected()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/syncadapters/calendar/Utils;->getBooleanValue(Ljava/lang/Boolean;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 399
    invoke-virtual {p3, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    const-string v3, "cal_sync5"

    .line 402
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/CalendarListEntry;->getHidden()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/syncadapters/calendar/Utils;->getBooleanValue(Ljava/lang/Boolean;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 401
    invoke-virtual {p3, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 404
    const-string v0, "calendar_access_level"

    .line 405
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/CalendarListEntry;->getAccessRole()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->getAccessLevel(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 404
    invoke-virtual {p3, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 408
    const-string v0, "cal_sync8"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 410
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 413
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Acl;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v2

    move v4, v2

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/AclRule;

    .line 414
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/AclRule;->getRole()Ljava/lang/String;

    move-result-object v7

    const-string v8, "owner"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    move v0, v3

    move v3, v1

    :goto_6
    move v4, v3

    move v3, v0

    .line 428
    goto :goto_5

    .line 377
    :cond_0
    const-string v3, "calendar_displayName"

    invoke-virtual {p3, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 391
    :cond_1
    const-string v0, "calendar_color"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 392
    const-string v0, "calendar_color_index"

    const-string v3, ""

    invoke-virtual {p3, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 396
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 400
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 402
    goto :goto_4

    .line 420
    :cond_5
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/AclRule;->getScope()Lcom/google/api/services/calendar/model/AclRule$Scope;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/AclRule$Scope;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 425
    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move v3, v4

    goto :goto_6

    .line 429
    :cond_6
    if-lez v3, :cond_8

    move v0, v1

    :goto_7
    or-int/2addr v0, v4

    .line 431
    const-string v3, "cal_sync9"

    if-eqz v0, :cond_9

    :goto_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 435
    :cond_7
    return-object v5

    :cond_8
    move v0, v2

    .line 429
    goto :goto_7

    :cond_9
    move v1, v2

    .line 431
    goto :goto_8

    :cond_a
    move v0, v3

    move v3, v4

    goto :goto_6
.end method

.method private deleteOrUnsubscribeCalendar(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 263
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Unexpected empty calendar ID, can\'t unsubscribe"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 265
    const-string v0, "_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/google/android/syncadapters/calendar/CalendarHandler;->revertUnsupportedDelete(JLjava/util/ArrayList;)V

    .line 293
    :goto_0
    return-void

    .line 269
    :cond_0
    const-string v0, "unsubscribe"

    invoke-static {p2, v0}, Lcom/google/android/syncadapters/calendar/Utils;->containsSyncFlag(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Calendars do not support delete"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 271
    const-string v0, "_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/google/android/syncadapters/calendar/CalendarHandler;->revertUnsupportedDelete(JLjava/util/ArrayList;)V

    goto :goto_0

    .line 275
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarHandler;->mClient:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/Calendar;->calendarList()Lcom/google/api/services/calendar/Calendar$CalendarList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/services/calendar/Calendar$CalendarList;->delete(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$CalendarList$Delete;

    move-result-object v0

    .line 276
    const-string v1, "userAgentPackage"

    invoke-virtual {v0, v1, p4}, Lcom/google/api/services/calendar/Calendar$CalendarList$Delete;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$CalendarList$Delete;

    .line 277
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/CalendarHandler;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v2, "API: Delete Calendar"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarHandler;->mAccount:Landroid/accounts/Account;

    const-string v1, "_id"

    .line 291
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 289
    invoke-static {p3, v0, v1, v6}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->addAsSyncAdapterCalendarDeleteOperation(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/Long;Z)V

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getStatusCode()I

    move-result v1

    .line 280
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/CalendarHandler;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    const-string v3, "CalendarHandler::UnsubscribeCalendar"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logSyncError(Ljava/lang/String;I)V

    .line 281
    const-string v2, "Unsubscribing calendar %s: %d error"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 282
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/SyncLog;->sanitizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 281
    invoke-static {v0, v2, v3}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    const/16 v0, 0x1f4

    if-le v1, v0, :cond_2

    goto :goto_0
.end method

.method private insertOrSubscribeCalendar(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/api/services/calendar/model/CalendarListEntry;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 203
    const-string v1, "subscribe"

    invoke-static {p2, v1}, Lcom/google/android/syncadapters/calendar/Utils;->containsSyncFlag(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Calendars do not support insert"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 205
    const/4 v8, 0x0

    .line 254
    :goto_0
    return-object v8

    .line 208
    :cond_0
    const-string v1, "ownerAccount"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 210
    invoke-static {v9}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Undefined calendar to subscribe to"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 212
    const/4 v8, 0x0

    goto :goto_0

    .line 215
    :cond_1
    :try_start_0
    new-instance v1, Lcom/google/api/services/calendar/model/CalendarListEntry;

    invoke-direct {v1}, Lcom/google/api/services/calendar/model/CalendarListEntry;-><init>()V

    .line 216
    invoke-virtual {v1, v9}, Lcom/google/api/services/calendar/model/CalendarListEntry;->setId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/CalendarListEntry;

    .line 217
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/services/calendar/model/CalendarListEntry;->setSelected(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/CalendarListEntry;

    .line 219
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/services/calendar/model/CalendarListEntry;->setHidden(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/CalendarListEntry;

    .line 220
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/CalendarHandler;->mClient:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v2}, Lcom/google/api/services/calendar/Calendar;->calendarList()Lcom/google/api/services/calendar/Calendar$CalendarList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/api/services/calendar/Calendar$CalendarList;->insert(Lcom/google/api/services/calendar/model/CalendarListEntry;)Lcom/google/api/services/calendar/Calendar$CalendarList$Insert;

    move-result-object v1

    .line 221
    const-string v2, "userAgentPackage"

    invoke-virtual {v1, v2, p4}, Lcom/google/api/services/calendar/Calendar$CalendarList$Insert;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$CalendarList$Insert;

    .line 223
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/CalendarHandler;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v3, "API: Insert Calendar"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/api/services/calendar/model/CalendarListEntry;

    move-object v8, v0

    .line 226
    new-instance v4, Landroid/content/ContentValues;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 227
    const-string v1, "cal_sync2"

    const-string v2, "cal_sync2"

    .line 228
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v1, "subscribe"

    invoke-static {v4, v1}, Lcom/google/android/syncadapters/calendar/Utils;->removeSyncFlagIfPresent(Landroid/content/ContentValues;Ljava/lang/String;)Z

    .line 230
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/CalendarHandler;->mAccount:Landroid/accounts/Account;

    const-string v1, "_id"

    .line 234
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p3

    .line 230
    invoke-static/range {v1 .. v7}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->addAsSyncAdapterUpdateOperation(Ljava/util/List;Landroid/net/Uri;Landroid/accounts/Account;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V
    :try_end_0
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v1

    .line 240
    invoke-virtual {v1}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getStatusCode()I

    move-result v2

    .line 241
    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/CalendarHandler;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    const-string v4, "CalendarHandler::SubscribeCalendar"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logSyncError(Ljava/lang/String;I)V

    .line 242
    const-string v3, "Can\'t subscribe to calendar %s: %d error"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 243
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/SyncLog;->sanitizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 242
    invoke-static {v1, v3, v4}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    const/16 v1, 0x190

    if-lt v2, v1, :cond_2

    const/16 v1, 0x1f4

    if-ge v2, v1, :cond_2

    .line 246
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Calendar subscribe error, deleting locally: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "CalendarSyncAdapter"

    .line 247
    invoke-static {v5, v9}, Lcom/android/calendarcommon2/LogUtils;->sanitizeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 246
    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 248
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/CalendarHandler;->mAccount:Landroid/accounts/Account;

    const-string v2, "_id"

    .line 250
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    .line 248
    invoke-static {p3, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->addAsSyncAdapterCalendarDeleteOperation(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/Long;Z)V

    .line 254
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method private revertUnsupportedDelete(JLjava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 297
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 298
    const-string v0, "deleted"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/CalendarHandler;->mAccount:Landroid/accounts/Account;

    .line 304
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p3

    .line 299
    invoke-static/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->addAsSyncAdapterUpdateOperation(Ljava/util/List;Landroid/net/Uri;Landroid/accounts/Account;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 307
    return-void
.end method


# virtual methods
.method public applyItemToEntity(Ljava/util/List;Lcom/google/api/services/calendar/model/CalendarListEntry;Landroid/content/Entity;ZLandroid/content/SyncResult;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/google/api/services/calendar/model/CalendarListEntry;",
            "Landroid/content/Entity;",
            "Z",
            "Landroid/content/SyncResult;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 323
    const-string v0, "Convert calendar to provider operations"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 324
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "============= applyItemToEntity ============="

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 325
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "item is %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 326
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "entity is %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 330
    if-nez p3, :cond_0

    .line 331
    new-instance v0, Lcom/google/android/apiary/ParseException;

    const-string v1, "Inserts not supported. Entity should not be null"

    invoke-direct {v0, v1}, Lcom/google/android/apiary/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 335
    invoke-static {p2, v5, v5, v3}, Lcom/google/android/syncadapters/calendar/CalendarHandler;->calendarEntryToContentValues(Lcom/google/api/services/calendar/model/CalendarListEntry;Lcom/google/api/services/calendar/model/Acl;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    .line 336
    const-string v0, "dirty"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 341
    const-string v0, "isPrimary"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p3}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 344
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/CalendarHandler;->mAccount:Landroid/accounts/Account;

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->addAsSyncAdapterUpdateOperation(Ljava/util/List;Landroid/net/Uri;Landroid/accounts/Account;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 352
    const-string v0, "Convert calendar to provider operations"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public contentValuesToCalendarEntry(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 441
    new-instance v7, Lcom/google/api/services/calendar/model/CalendarListEntry;

    invoke-direct {v7}, Lcom/google/api/services/calendar/model/CalendarListEntry;-><init>()V

    .line 443
    const-string v0, "calendar_displayName"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    const-string v1, "calendar_access_level"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 445
    const/16 v2, 0x2bc

    if-lt v1, v2, :cond_0

    .line 447
    new-instance v1, Lcom/google/api/services/calendar/model/Calendar;

    invoke-direct {v1}, Lcom/google/api/services/calendar/model/Calendar;-><init>()V

    .line 449
    invoke-virtual {v1, v0}, Lcom/google/api/services/calendar/model/Calendar;->setSummary(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Calendar;

    .line 451
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarHandler;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v2, "API: Patch Calendar"

    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/CalendarHandler;->mClient:Lcom/google/api/services/calendar/Calendar;

    .line 453
    invoke-virtual {v3}, Lcom/google/api/services/calendar/Calendar;->calendars()Lcom/google/api/services/calendar/Calendar$Calendars;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/google/api/services/calendar/Calendar$Calendars;->patch(Ljava/lang/String;Lcom/google/api/services/calendar/model/Calendar;)Lcom/google/api/services/calendar/Calendar$Calendars$Patch;

    move-result-object v1

    const-string v3, "userAgentPackage"

    .line 454
    invoke-virtual {v1, v3, p3}, Lcom/google/api/services/calendar/Calendar$Calendars$Patch;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Calendars$Patch;

    move-result-object v1

    .line 452
    invoke-virtual {v0, v2, v1}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    .line 463
    :cond_0
    const-string v0, "calendar_timezone"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/api/services/calendar/model/CalendarListEntry;->setTimeZone(Ljava/lang/String;)Lcom/google/api/services/calendar/model/CalendarListEntry;

    .line 464
    const-string v0, "calendar_color_index"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 465
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Missing CALENDAR_COLOR_KEY, fetching from provider"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 466
    invoke-static {}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/CalendarHandler;->mProvider:Landroid/content/ContentProviderClient;

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id"

    .line 470
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 468
    invoke-static {v2, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/String;

    const-string v5, "calendar_color_index"

    aput-object v5, v3, v10

    move-object v5, v4

    move-object v6, v4

    .line 466
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 475
    if-eqz v1, :cond_2

    .line 477
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    const-string v0, "calendar_color_index"

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 485
    :cond_2
    const-string v0, "calendar_color_index"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 487
    const-string v0, "#%06x"

    new-array v1, v11, [Ljava/lang/Object;

    const-string v2, "calendar_color"

    .line 489
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0xffffff

    and-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    .line 488
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-virtual {v7, v0}, Lcom/google/api/services/calendar/model/CalendarListEntry;->setBackgroundColor(Ljava/lang/String;)Lcom/google/api/services/calendar/model/CalendarListEntry;

    .line 493
    :goto_0
    return-object v7

    .line 481
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 491
    :cond_3
    invoke-virtual {v7, v0}, Lcom/google/api/services/calendar/model/CalendarListEntry;->setColorId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/CalendarListEntry;

    goto :goto_0
.end method

.method public getDeletedColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    const-string v0, "deleted"

    return-object v0
.end method

.method public getEntitySelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    const-string v0, "dirty = 1"

    return-object v0
.end method

.method public getEntityUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 73
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/CalendarHandler;->mAccount:Landroid/accounts/Account;

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->toAsSyncAdapterUri(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public itemToSourceId(Lcom/google/api/services/calendar/model/CalendarListEntry;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/CalendarListEntry;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic itemToSourceId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    check-cast p1, Lcom/google/api/services/calendar/model/CalendarListEntry;

    invoke-virtual {p0, p1}, Lcom/google/android/syncadapters/calendar/CalendarHandler;->itemToSourceId(Lcom/google/api/services/calendar/model/CalendarListEntry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newEntityIterator(Ljava/lang/String;[Ljava/lang/String;I)Landroid/content/EntityIterator;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 79
    if-gtz p3, :cond_0

    move-object v6, v3

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarHandler;->mAccount:Landroid/accounts/Account;

    .line 82
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/CalendarHandler;->mProvider:Landroid/content/ContentProviderClient;

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 81
    invoke-static {v0}, Landroid/provider/CalendarContract$CalendarEntity;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v0

    return-object v0

    .line 79
    :cond_0
    const-string v0, "_id LIMIT "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public sendEntityToServer(Landroid/content/Entity;Landroid/content/SyncResult;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Entity;",
            "Landroid/content/SyncResult;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apiary/ParseException;,
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    const-string v0, "Send calendar to server"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v10

    .line 99
    const-string v0, "cal_sync1"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 100
    const-string v0, "deleted"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 102
    :goto_0
    const/4 v3, 0x0

    .line 103
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v12

    .line 104
    const/4 v2, 0x0

    .line 106
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 111
    const-string v1, "mutators"

    invoke-virtual {v10, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    const-string v1, "mutators"

    invoke-virtual {v10, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    .line 115
    :goto_1
    if-eqz v0, :cond_4

    .line 121
    :try_start_0
    invoke-direct {p0, v11, v10, v8, v7}, Lcom/google/android/syncadapters/calendar/CalendarHandler;->deleteOrUnsubscribeCalendar(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v9, v2

    move-object v2, v3

    .line 185
    :goto_2
    if-eqz v9, :cond_0

    .line 186
    const/4 v0, 0x1

    invoke-static {v9, v0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 188
    :cond_0
    invoke-static {v12}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 191
    if-eqz v2, :cond_1

    .line 193
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v8

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/CalendarHandler;->applyItemToEntity(Ljava/util/List;Lcom/google/api/services/calendar/model/CalendarListEntry;Landroid/content/Entity;ZLandroid/content/SyncResult;Ljava/lang/Object;)V

    .line 195
    :cond_1
    const-string v0, "Send calendar to server"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    move-object v0, v8

    .line 196
    :goto_3
    return-object v0

    .line 100
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 112
    :cond_3
    const/4 v1, 0x0

    move-object v7, v1

    goto :goto_1

    .line 122
    :cond_4
    if-nez v11, :cond_5

    .line 127
    :try_start_1
    invoke-direct {p0, v11, v10, v8, v7}, Lcom/google/android/syncadapters/calendar/CalendarHandler;->insertOrSubscribeCalendar(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    move v9, v2

    move-object v2, v0

    goto :goto_2

    .line 130
    :cond_5
    or-int/lit8 v9, v12, 0x2

    .line 131
    :try_start_2
    invoke-static {v9}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 137
    const-string v0, "calendar_color_index"

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 138
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Missing CALENDAR_COLOR_KEY, fetching from provider"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 139
    invoke-static {}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/CalendarHandler;->mProvider:Landroid/content/ContentProviderClient;

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id"

    .line 142
    invoke-virtual {v10, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 141
    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "calendar_color_index"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 139
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 147
    if-eqz v1, :cond_7

    .line 149
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 150
    const-string v0, "calendar_color_index"

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 153
    :cond_6
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 160
    :cond_7
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 159
    invoke-virtual {p0, v11, v0, v7}, Lcom/google/android/syncadapters/calendar/CalendarHandler;->contentValuesToCalendarEntry(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Lcom/google/api/services/calendar/model/CalendarListEntry;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/CalendarHandler;->mClient:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v1}, Lcom/google/api/services/calendar/Calendar;->calendarList()Lcom/google/api/services/calendar/Calendar$CalendarList;

    move-result-object v1

    .line 162
    invoke-virtual {v1, v11, v0}, Lcom/google/api/services/calendar/Calendar$CalendarList;->patch(Ljava/lang/String;Lcom/google/api/services/calendar/model/CalendarListEntry;)Lcom/google/api/services/calendar/Calendar$CalendarList$Patch;

    move-result-object v0

    .line 163
    const-string v1, "userAgentPackage"

    invoke-virtual {v0, v1, v7}, Lcom/google/api/services/calendar/Calendar$CalendarList$Patch;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$CalendarList$Patch;

    .line 164
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/CalendarHandler;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v2, "API: Patch Calendar"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/CalendarListEntry;
    :try_end_5
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v2, v0

    .line 182
    goto/16 :goto_2

    .line 153
    :catchall_0
    move-exception v0

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 185
    :catchall_1
    move-exception v0

    move v1, v9

    :goto_4
    if-eqz v1, :cond_8

    .line 186
    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 188
    :cond_8
    invoke-static {v12}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    :try_start_7
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getStatusCode()I

    move-result v1

    .line 167
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/CalendarHandler;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    const-string v3, "CalendarHandler::UpdateCalendar"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logSyncError(Ljava/lang/String;I)V

    .line 168
    packed-switch v1, :pswitch_data_0

    .line 178
    const-string v2, "Can\'t update calendar %s: %d error"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 179
    invoke-static {v11}, Lcom/google/android/syncadapters/calendar/SyncLog;->sanitizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    .line 178
    invoke-static {v0, v2, v3}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 180
    const/4 v0, 0x0

    .line 185
    if-eqz v9, :cond_9

    .line 186
    const/4 v1, 0x1

    invoke-static {v9, v1}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 188
    :cond_9
    invoke-static {v12}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto/16 :goto_3

    .line 170
    :pswitch_0
    :try_start_8
    const-string v1, "Can\'t update calendar %s: Forbidden"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 171
    invoke-static {v11}, Lcom/google/android/syncadapters/calendar/SyncLog;->sanitizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 170
    invoke-static {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarHandler;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v1, "API: Get Calendar"

    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/CalendarHandler;->mClient:Lcom/google/api/services/calendar/Calendar;

    .line 173
    invoke-virtual {v2}, Lcom/google/api/services/calendar/Calendar;->calendarList()Lcom/google/api/services/calendar/Calendar$CalendarList;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/google/api/services/calendar/Calendar$CalendarList;->get(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$CalendarList$Get;

    move-result-object v2

    .line 172
    invoke-virtual {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/CalendarListEntry;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v2, v0

    .line 174
    goto/16 :goto_2

    .line 185
    :catchall_2
    move-exception v0

    move v1, v2

    goto :goto_4

    .line 168
    :pswitch_data_0
    .packed-switch 0x193
        :pswitch_0
    .end packed-switch
.end method
