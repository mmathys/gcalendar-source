.class public Lcom/google/android/syncadapters/calendar/ProviderHelper;
.super Ljava/lang/Object;
.source "ProviderHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sClientInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/google/android/syncadapters/calendar/ProviderHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static sSyncAdapterMap:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Landroid/accounts/Account;",
            "Lcom/google/android/syncadapters/calendar/ProviderHelper;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAccount:Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/google/android/syncadapters/calendar/ProviderHelper;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/ProviderHelper;->TAG:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/ProviderHelper;->sClientInstance:Ljava/lang/ThreadLocal;

    .line 57
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/ProviderHelper;->sSyncAdapterMap:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Landroid/accounts/Account;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/ProviderHelper;->mAccount:Landroid/accounts/Account;

    .line 67
    return-void
.end method

.method private adjustUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->inSyncAdapterMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/ProviderHelper;->mAccount:Landroid/accounts/Account;

    invoke-static {p1, v0}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->toAsSyncAdapterUri(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0
.end method

.method public static asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;
    .locals 3

    .prologue
    .line 75
    sget-object v0, Lcom/google/android/syncadapters/calendar/ProviderHelper;->sClientInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 76
    sget-object v0, Lcom/google/android/syncadapters/calendar/ProviderHelper;->sClientInstance:Ljava/lang/ThreadLocal;

    new-instance v1, Lcom/google/android/syncadapters/calendar/ProviderHelper;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/syncadapters/calendar/ProviderHelper;-><init>(Landroid/accounts/Account;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 78
    :cond_0
    sget-object v0, Lcom/google/android/syncadapters/calendar/ProviderHelper;->sClientInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/syncadapters/calendar/ProviderHelper;

    return-object v0
.end method

.method public static asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;
    .locals 2

    .prologue
    .line 87
    if-nez p0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null account is not allowed is asSyncAdapter()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    sget-object v0, Lcom/google/android/syncadapters/calendar/ProviderHelper;->sSyncAdapterMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 91
    if-nez v0, :cond_2

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    sget-object v1, Lcom/google/android/syncadapters/calendar/ProviderHelper;->sSyncAdapterMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v1, v0

    .line 95
    :goto_0
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/syncadapters/calendar/ProviderHelper;

    .line 96
    if-nez v0, :cond_1

    .line 97
    new-instance v0, Lcom/google/android/syncadapters/calendar/ProviderHelper;

    invoke-direct {v0, p0}, Lcom/google/android/syncadapters/calendar/ProviderHelper;-><init>(Landroid/accounts/Account;)V

    .line 98
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_1
    return-object v0

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private static getCollection(Landroid/net/Uri;)I
    .locals 2

    .prologue
    .line 345
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/provider/CalendarContract$EventsEntity;->CONTENT_URI:Landroid/net/Uri;

    .line 347
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    :cond_0
    const/4 v0, 0x2

    .line 357
    :goto_0
    return v0

    .line 350
    :cond_1
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/provider/CalendarContract$CalendarEntity;->CONTENT_URI:Landroid/net/Uri;

    .line 351
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 352
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 354
    :cond_3
    sget-object v1, Landroid/provider/CalendarContract$Colors;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 355
    const/4 v0, 0x3

    goto :goto_0

    .line 357
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getSyncLogTag(II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    packed-switch p0, :pswitch_data_0

    .line 325
    packed-switch p1, :pswitch_data_1

    .line 338
    const-string v0, "DB: query"

    :goto_0
    return-object v0

    .line 276
    :pswitch_0
    packed-switch p1, :pswitch_data_2

    .line 289
    const-string v0, "DB: calendars.query"

    goto :goto_0

    .line 278
    :pswitch_1
    const-string v0, "DB: calendars.insert"

    goto :goto_0

    .line 280
    :pswitch_2
    const-string v0, "DB: calendars.update"

    goto :goto_0

    .line 282
    :pswitch_3
    const-string v0, "DB: calendars.delete"

    goto :goto_0

    .line 284
    :pswitch_4
    const-string v0, "DB: calendars.applyBatch"

    goto :goto_0

    .line 286
    :pswitch_5
    const-string v0, "DB: calendars.bulkInsert"

    goto :goto_0

    .line 292
    :pswitch_6
    packed-switch p1, :pswitch_data_3

    .line 305
    const-string v0, "DB: events.query"

    goto :goto_0

    .line 294
    :pswitch_7
    const-string v0, "DB: events.insert"

    goto :goto_0

    .line 296
    :pswitch_8
    const-string v0, "DB: events.update"

    goto :goto_0

    .line 298
    :pswitch_9
    const-string v0, "DB: events.delete"

    goto :goto_0

    .line 300
    :pswitch_a
    const-string v0, "DB: events.applyBatch"

    goto :goto_0

    .line 302
    :pswitch_b
    const-string v0, "DB: events.bulkInsert"

    goto :goto_0

    .line 308
    :pswitch_c
    packed-switch p1, :pswitch_data_4

    .line 321
    const-string v0, "DB: colors.query"

    goto :goto_0

    .line 310
    :pswitch_d
    const-string v0, "DB: colors.insert"

    goto :goto_0

    .line 312
    :pswitch_e
    const-string v0, "DB: colors.update"

    goto :goto_0

    .line 314
    :pswitch_f
    const-string v0, "DB: colors.delete"

    goto :goto_0

    .line 316
    :pswitch_10
    const-string v0, "DB: colors.applyBatch"

    goto :goto_0

    .line 318
    :pswitch_11
    const-string v0, "DB: colors.bulkInsert"

    goto :goto_0

    .line 327
    :pswitch_12
    const-string v0, "DB: insert"

    goto :goto_0

    .line 329
    :pswitch_13
    const-string v0, "DB: update"

    goto :goto_0

    .line 331
    :pswitch_14
    const-string v0, "DB: delete"

    goto :goto_0

    .line 333
    :pswitch_15
    const-string v0, "DB: applyBatch"

    goto :goto_0

    .line 335
    :pswitch_16
    const-string v0, "DB: bulkInsert"

    goto :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_6
        :pswitch_c
    .end packed-switch

    .line 325
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_12
        :pswitch_13
        :pswitch_15
        :pswitch_16
        :pswitch_14
    .end packed-switch

    .line 276
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch

    .line 292
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_9
    .end packed-switch

    .line 308
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_11
        :pswitch_f
    .end packed-switch
.end method

.method private static getSyncLogTag(Landroid/net/Uri;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->getCollection(Landroid/net/Uri;)I

    move-result v0

    invoke-static {v0, p1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->getSyncLogTag(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSyncLogTag(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 260
    .line 261
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProviderOperation;

    .line 262
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->getCollection(Landroid/net/Uri;)I

    move-result v0

    .line 263
    if-nez v1, :cond_0

    :goto_1
    move v1, v0

    .line 269
    goto :goto_0

    .line 265
    :cond_0
    if-eq v1, v0, :cond_1

    .line 270
    :goto_2
    const/4 v0, 0x3

    invoke-static {v2, v0}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->getSyncLogTag(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2
.end method

.method private inSyncAdapterMode()Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/ProviderHelper;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toAsSyncAdapterUri(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;
    .locals 4

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 120
    if-eqz p1, :cond_0

    .line 121
    const-string v1, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 122
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "account_type"

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 123
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 127
    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 125
    :cond_0
    sget-object v1, Lcom/google/android/syncadapters/calendar/ProviderHelper;->TAG:Ljava/lang/String;

    const-string v2, "Null account in toAsSyncAdapterUri"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private validateUris(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->inSyncAdapterMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    :cond_0
    return-void

    .line 237
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProviderOperation;

    .line 238
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "caller_is_syncadapter"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 239
    invoke-virtual {p0, v0}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->onInvalidUriInBatch(Landroid/content/ContentProviderOperation;)V

    goto :goto_0
.end method


# virtual methods
.method public applyBatch(Landroid/content/ContentProviderClient;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentProviderClient;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-direct {p0, p2}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->validateUris(Ljava/util/ArrayList;)V

    .line 204
    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->getSyncLogTag(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 206
    :try_start_0
    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 207
    invoke-static {p1, p2}, Lcom/google/android/apiary/ProviderHelper;->applyBatchProvider(Landroid/content/ContentProviderClient;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 209
    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 207
    return-object v0

    .line 209
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public bulkInsert(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-direct {p0, p2}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->adjustUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 216
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->getSyncLogTag(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v1

    .line 218
    :try_start_0
    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 219
    invoke-static {p1, v0, p3}, Lcom/google/android/apiary/ProviderHelper;->bulkInsertProvider(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 221
    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 219
    return v0

    .line 221
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public delete(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0, p2}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->adjustUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 189
    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->getSyncLogTag(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v1

    .line 191
    :try_start_0
    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1, v0, p3, p4}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 196
    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 192
    return v0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    :try_start_1
    new-instance v2, Lcom/google/android/apiary/ParseException;

    invoke-direct {v2, v0}, Lcom/google/android/apiary/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-direct {p0, p2}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->adjustUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 149
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->getSyncLogTag(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v1

    .line 151
    :try_start_0
    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 152
    invoke-static {p1, v0, p3}, Lcom/google/android/apiary/ProviderHelper;->insertProvider(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 154
    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 152
    return-object v0

    .line 154
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->adjustUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->adjustUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->adjustUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->adjustUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0
.end method

.method onInvalidUriInBatch(Landroid/content/ContentProviderOperation;)V
    .locals 5

    .prologue
    .line 247
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "One of batch queries not performed as a sync adapter"

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 248
    sget-object v0, Lcom/google/android/syncadapters/calendar/ProviderHelper;->TAG:Ljava/lang/String;

    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 249
    return-void
.end method

.method public query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-direct {p0, p2}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->adjustUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 162
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->getSyncLogTag(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v6

    .line 164
    :try_start_0
    invoke-static {v6}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    move-object v0, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 165
    invoke-static/range {v0 .. v5}, Lcom/google/android/apiary/ProviderHelper;->queryProvider(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 168
    invoke-static {v6}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 165
    return-object v0

    .line 168
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public update(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-direct {p0, p2}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->adjustUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 176
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->getSyncLogTag(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v1

    .line 178
    :try_start_0
    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 179
    invoke-static {p1, v0, p3, p4, p5}, Lcom/google/android/apiary/ProviderHelper;->updateProvider(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 182
    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 179
    return v0

    .line 182
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    throw v0
.end method
