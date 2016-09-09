.class public Lcom/google/android/calendar/api/EventApiStoreImpl;
.super Ljava/lang/Object;
.source "EventApiStoreImpl.java"

# interfaces
.implements Lcom/google/android/calendar/api/CrudApi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/calendar/api/CrudApi",
        "<",
        "Lcom/google/android/calendar/api/Event;",
        "Lcom/google/android/calendar/api/EventModifications;",
        "Lcom/google/android/calendar/api/EventDescriptor;",
        "Lcom/google/android/calendar/api/EventFilterOptions;",
        "Lcom/google/android/calendar/api/EventUpdateOptions;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyContentProviderOperationsBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :try_start_0
    invoke-static {}, Lcom/google/android/calendar/api/CalendarApi;->getApiContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.android.calendar"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 281
    return-object v0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    :goto_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 278
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static notifyWidgetAndForceUpsync()V
    .locals 4

    .prologue
    .line 262
    invoke-static {}, Lcom/google/android/calendar/api/CalendarApi;->getApiContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 263
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 267
    invoke-static {}, Lcom/google/android/calendar/api/CalendarApi;->getApiAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".APPWIDGET_CALLER_IS_SYNCADAPTER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {}, Lcom/google/android/calendar/api/CalendarApi;->getApiAppContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 270
    return-void
.end method

.method private shouldNotify([Landroid/content/ContentProviderResult;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 206
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 207
    iget-object v3, v3, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_1

    .line 208
    const/4 v0, 0x1

    .line 211
    :cond_0
    return v0

    .line 206
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public count(Lcom/google/android/calendar/api/EventFilterOptions;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic count(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    check-cast p1, Lcom/google/android/calendar/api/EventFilterOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/EventApiStoreImpl;->count(Lcom/google/android/calendar/api/EventFilterOptions;)I

    move-result v0

    return v0
.end method

.method public create(Lcom/google/android/calendar/api/EventModifications;)Lcom/google/android/calendar/api/EventDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/calendar/api/EventApiStoreImpl;->create(Lcom/google/android/calendar/api/EventModifications;Z)Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public create(Lcom/google/android/calendar/api/EventModifications;Z)Lcom/google/android/calendar/api/EventDescriptor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    invoke-interface {p1}, Lcom/google/android/calendar/api/EventModifications;->getOriginal()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 39
    invoke-interface {p1}, Lcom/google/android/calendar/api/EventModifications;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/calendar/api/EventDescriptor;->mLocalId:Ljava/lang/Long;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 40
    invoke-interface {p1}, Lcom/google/android/calendar/api/EventModifications;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-interface {p1}, Lcom/google/android/calendar/api/EventModifications;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getLocalId()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/google/android/calendar/api/EventStoreUtils;->entityToValues(Lcom/google/android/calendar/api/EventModifications;)Landroid/content/ContentValues;

    move-result-object v3

    .line 46
    const-string v4, "calendar_id"

    invoke-interface {p1}, Lcom/google/android/calendar/api/EventModifications;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getLocalId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 47
    const-string v4, "dirty"

    if-eqz p2, :cond_3

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 48
    invoke-interface {p1}, Lcom/google/android/calendar/api/EventModifications;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 49
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v1}, Lcom/google/android/calendar/api/utils/CalendarProviderHelper;->withAppendedSyncAdapterFlags(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v2

    .line 53
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 54
    invoke-virtual {v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 55
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 59
    invoke-interface {p1}, Lcom/google/android/calendar/api/EventModifications;->getAttachments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    invoke-interface {p1}, Lcom/google/android/calendar/api/EventModifications;->getAttachments()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/calendar/api/ExtendedPropertyPair;->createForAttachments(Ljava/util/List;)Lcom/google/android/calendar/api/ExtendedPropertyPair;

    move-result-object v3

    .line 60
    invoke-static {v1, v2, v3, v0}, Lcom/google/android/calendar/api/ExtendedPropertiesUtils;->addInsertExtendedPropertyOperations(Landroid/accounts/Account;ILcom/google/android/calendar/api/ExtendedPropertyPair;Ljava/util/List;)V

    .line 67
    :cond_0
    invoke-static {v2, p1, v0}, Lcom/google/android/calendar/api/notifications/NotificationsStoreUtils;->addInsertNotificationOperationsForEventCreate(ILcom/google/android/calendar/api/EventModifications;Ljava/util/List;)V

    .line 71
    invoke-static {v2, p1, v0}, Lcom/google/android/calendar/api/attendee/AttendeeStoreUtils;->addInsertAttendeeOperationsForEventCreate(ILcom/google/android/calendar/api/EventModifications;Ljava/util/List;)V

    .line 73
    invoke-direct {p0, v0}, Lcom/google/android/calendar/api/EventApiStoreImpl;->applyContentProviderOperationsBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 75
    aget-object v0, v0, v2

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 76
    if-nez v0, :cond_4

    .line 77
    const/4 v0, 0x0

    .line 82
    :goto_3
    return-object v0

    :cond_1
    move v0, v2

    .line 38
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 39
    goto/16 :goto_1

    :cond_3
    move v1, v2

    .line 47
    goto :goto_2

    .line 79
    :cond_4
    invoke-static {}, Lcom/google/android/calendar/api/EventApiStoreImpl;->notifyWidgetAndForceUpsync()V

    .line 81
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 82
    new-instance v0, Lcom/google/android/calendar/api/EventDescriptor;

    invoke-interface {p1}, Lcom/google/android/calendar/api/EventModifications;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/calendar/api/EventDescriptor;-><init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/Long;)V

    goto :goto_3
.end method

.method public bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    check-cast p1, Lcom/google/android/calendar/api/EventModifications;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/EventApiStoreImpl;->create(Lcom/google/android/calendar/api/EventModifications;)Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic create(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    check-cast p1, Lcom/google/android/calendar/api/EventModifications;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/api/EventApiStoreImpl;->create(Lcom/google/android/calendar/api/EventModifications;Z)Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lcom/google/android/calendar/api/EventDescriptor;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/calendar/api/EventApiStoreImpl;->delete(Lcom/google/android/calendar/api/EventDescriptor;Z)Z

    move-result v0

    return v0
.end method

.method public delete(Lcom/google/android/calendar/api/EventDescriptor;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p1, Lcom/google/android/calendar/api/EventDescriptor;->mLocalId:Ljava/lang/Long;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    iget-object v0, p1, Lcom/google/android/calendar/api/EventDescriptor;->mLocalId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lcom/google/android/calendar/api/notifications/NotificationsStoreUtils;->addDeleteNotificationOperations(JLjava/util/List;)V

    .line 227
    iget-object v0, p1, Lcom/google/android/calendar/api/EventDescriptor;->mLocalId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lcom/google/android/calendar/api/attendee/AttendeeStoreUtils;->addDeleteAttendeeOperations(JLjava/util/List;)V

    .line 228
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p1, Lcom/google/android/calendar/api/EventDescriptor;->mLocalId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 229
    if-nez p2, :cond_0

    .line 231
    invoke-virtual {p1}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/calendar/api/utils/CalendarProviderHelper;->withAppendedSyncAdapterFlags(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v0

    .line 233
    :cond_0
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 236
    invoke-direct {p0, v1}, Lcom/google/android/calendar/api/EventApiStoreImpl;->applyContentProviderOperationsBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    .line 238
    aget-object v0, v1, v0

    iget-object v0, v0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 239
    if-lez v0, :cond_1

    .line 240
    invoke-static {}, Lcom/google/android/calendar/api/EventApiStoreImpl;->notifyWidgetAndForceUpsync()V

    .line 242
    :cond_1
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic delete(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    check-cast p1, Lcom/google/android/calendar/api/EventDescriptor;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/EventApiStoreImpl;->delete(Lcom/google/android/calendar/api/EventDescriptor;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic delete(Ljava/lang/Object;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    check-cast p1, Lcom/google/android/calendar/api/EventDescriptor;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/api/EventApiStoreImpl;->delete(Lcom/google/android/calendar/api/EventDescriptor;Z)Z

    move-result v0

    return v0
.end method

.method public list(Lcom/google/android/calendar/api/EventFilterOptions;)[Lcom/google/android/calendar/api/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic list(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    check-cast p1, Lcom/google/android/calendar/api/EventFilterOptions;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/EventApiStoreImpl;->list(Lcom/google/android/calendar/api/EventFilterOptions;)[Lcom/google/android/calendar/api/Event;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/google/android/calendar/api/EventDescriptor;)Lcom/google/android/calendar/api/Event;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 88
    .line 90
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/calendar/api/EventDescriptor;->isRecurringPhantom()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v5, p1, Lcom/google/android/calendar/api/EventDescriptor;->mInstanceDescriptor:Lcom/google/android/calendar/api/InstanceDescriptor;

    .line 96
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 97
    iget-wide v2, v5, Lcom/google/android/calendar/api/InstanceDescriptor;->mOriginalStartMillis:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 98
    iget-wide v2, v5, Lcom/google/android/calendar/api/InstanceDescriptor;->mOriginalStartMillis:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 99
    invoke-static {}, Lcom/google/android/calendar/api/CalendarApi;->getApiContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 100
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/calendar/api/LoadDetailsConstants;->INSTANCE_PROJECTION:[Ljava/lang/String;

    const-string v3, "event_id = ? AND begin = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-wide v8, v5, Lcom/google/android/calendar/api/InstanceDescriptor;->mRecurrenceParentLocalId:J

    .line 102
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x1

    iget-wide v8, v5, Lcom/google/android/calendar/api/InstanceDescriptor;->mOriginalStartMillis:J

    .line 103
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    .line 100
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 115
    :goto_0
    if-nez v1, :cond_4

    .line 117
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Error while reading event data from the provider"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :catchall_0
    move-exception v0

    move-object v6, v1

    :goto_1
    if-eqz v6, :cond_0

    .line 137
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 105
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/calendar/api/EventDescriptor;->isRecurringException()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/calendar/api/EventDescriptor;->isSingleEvent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    :cond_2
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p1, Lcom/google/android/calendar/api/EventDescriptor;->mLocalId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 107
    invoke-static {}, Lcom/google/android/calendar/api/CalendarApi;->getApiContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/android/calendar/api/LoadDetailsConstants;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 108
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 111
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x28

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Descriptor must belong to stored event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 136
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 119
    :cond_4
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v10, :cond_5

    .line 121
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Error in event data: more than one event to read"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-nez v0, :cond_8

    .line 136
    if-eqz v1, :cond_6

    .line 137
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v0, v6

    .line 134
    :cond_7
    :goto_2
    return-object v0

    .line 127
    :cond_8
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_9

    .line 129
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Error while reading event data: invalid cursor"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_9
    invoke-static {p1, v1}, Lcom/google/android/calendar/api/EventStoreUtils;->cursorToDescriptor(Lcom/google/android/calendar/api/EventDescriptor;Landroid/database/Cursor;)Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    .line 134
    invoke-static {v0, v1}, Lcom/google/android/calendar/api/EventStoreUtils;->cursorToEntity(Lcom/google/android/calendar/api/EventDescriptor;Landroid/database/Cursor;)Lcom/google/android/calendar/api/Event;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 136
    if-eqz v1, :cond_7

    .line 137
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public bridge synthetic read(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    check-cast p1, Lcom/google/android/calendar/api/EventDescriptor;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/EventApiStoreImpl;->read(Lcom/google/android/calendar/api/EventDescriptor;)Lcom/google/android/calendar/api/Event;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/google/android/calendar/api/EventModifications;Lcom/google/android/calendar/api/EventUpdateOptions;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 144
    invoke-interface {p1}, Lcom/google/android/calendar/api/EventModifications;->isModified()Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/calendar/api/EventApiStoreImpl;->update(Lcom/google/android/calendar/api/EventModifications;Lcom/google/android/calendar/api/EventUpdateOptions;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public update(Lcom/google/android/calendar/api/EventModifications;Lcom/google/android/calendar/api/EventUpdateOptions;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 156
    invoke-interface {p1}, Lcom/google/android/calendar/api/EventModifications;->getOriginal()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-interface {p1}, Lcom/google/android/calendar/api/EventModifications;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/calendar/api/EventDescriptor;->mLocalId:Ljava/lang/Long;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-interface {p1}, Lcom/google/android/calendar/api/EventModifications;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-interface {p1}, Lcom/google/android/calendar/api/EventModifications;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 161
    invoke-interface {p1}, Lcom/google/android/calendar/api/EventModifications;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/calendar/api/EventDescriptor;->mLocalId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 162
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 163
    invoke-static {v0, v2}, Lcom/google/android/calendar/api/utils/CalendarProviderHelper;->withAppendedSyncAdapterFlags(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v3

    .line 164
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 166
    invoke-static {p1}, Lcom/google/android/calendar/api/EventStoreUtils;->entityToValues(Lcom/google/android/calendar/api/EventModifications;)Landroid/content/ContentValues;

    move-result-object v7

    .line 167
    const-string v8, "dirty"

    if-eqz p3, :cond_4

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 170
    invoke-virtual {v0, v7}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 172
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-interface {p1}, Lcom/google/android/calendar/api/EventModifications;->getNotificationModifications()Lcom/google/android/calendar/api/notifications/NotificationModifications;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/notifications/NotificationModifications;->isModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-static {v4, v5, v6}, Lcom/google/android/calendar/api/notifications/NotificationsStoreUtils;->addDeleteNotificationOperations(JLjava/util/List;)V

    .line 178
    invoke-static {v4, v5, p1, v6}, Lcom/google/android/calendar/api/notifications/NotificationsStoreUtils;->addInsertNotificationOperationsForEventUpdate(JLcom/google/android/calendar/api/EventModifications;Ljava/util/List;)V

    .line 181
    :cond_0
    invoke-interface {p1}, Lcom/google/android/calendar/api/EventModifications;->getAttachmentModifications()Lcom/google/android/calendar/api/attachments/AttachmentModifications;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/attachments/AttachmentModifications;->isModified()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-interface {p1}, Lcom/google/android/calendar/api/EventModifications;->getAttachments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/ExtendedPropertyPair;->createForAttachments(Ljava/util/List;)Lcom/google/android/calendar/api/ExtendedPropertyPair;

    move-result-object v0

    .line 182
    invoke-static {v2, v4, v5, v0, v6}, Lcom/google/android/calendar/api/ExtendedPropertiesUtils;->addUpdateExtendedPropertyOperations(Landroid/accounts/Account;JLcom/google/android/calendar/api/ExtendedPropertyPair;Ljava/util/List;)V

    .line 190
    :cond_1
    invoke-interface {p1}, Lcom/google/android/calendar/api/EventModifications;->getAttendeeModifications()Lcom/google/android/calendar/api/attendee/AttendeeModifications;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/attendee/AttendeeModifications;->isModified()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    invoke-static {v4, v5, v6}, Lcom/google/android/calendar/api/attendee/AttendeeStoreUtils;->addDeleteAttendeeOperations(JLjava/util/List;)V

    .line 194
    invoke-static {v4, v5, p1, v6}, Lcom/google/android/calendar/api/attendee/AttendeeStoreUtils;->addInsertAttendeeOperationsForEventUpdate(JLcom/google/android/calendar/api/EventModifications;Ljava/util/List;)V

    .line 197
    :cond_2
    invoke-direct {p0, v6}, Lcom/google/android/calendar/api/EventApiStoreImpl;->applyContentProviderOperationsBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 198
    invoke-direct {p0, v0}, Lcom/google/android/calendar/api/EventApiStoreImpl;->shouldNotify([Landroid/content/ContentProviderResult;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    invoke-static {}, Lcom/google/android/calendar/api/EventApiStoreImpl;->notifyWidgetAndForceUpsync()V

    .line 202
    :cond_3
    return v1

    .line 167
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic update(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    check-cast p1, Lcom/google/android/calendar/api/EventModifications;

    check-cast p2, Lcom/google/android/calendar/api/EventUpdateOptions;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/api/EventApiStoreImpl;->update(Lcom/google/android/calendar/api/EventModifications;Lcom/google/android/calendar/api/EventUpdateOptions;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic update(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    check-cast p1, Lcom/google/android/calendar/api/EventModifications;

    check-cast p2, Lcom/google/android/calendar/api/EventUpdateOptions;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/calendar/api/EventApiStoreImpl;->update(Lcom/google/android/calendar/api/EventModifications;Lcom/google/android/calendar/api/EventUpdateOptions;Z)Z

    move-result v0

    return v0
.end method
