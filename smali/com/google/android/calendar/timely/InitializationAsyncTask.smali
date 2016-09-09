.class public Lcom/google/android/calendar/timely/InitializationAsyncTask;
.super Landroid/os/AsyncTask;
.source "InitializationAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/accounts/Account;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final COLORS_PROJECTION:[Ljava/lang/String;

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final sCalendarClassifier:Lcom/android/calendar/CalendarClassifierInterface;


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private final mColorCache:Lcom/android/calendar/ColorCache;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    const-class v0, Lcom/google/android/calendar/timely/InitializationAsyncTask;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/timely/InitializationAsyncTask;->TAG:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getCalendarClassifier()Lcom/android/calendar/CalendarClassifierInterface;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/timely/InitializationAsyncTask;->sCalendarClassifier:Lcom/android/calendar/CalendarClassifierInterface;

    .line 63
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "ownerAccount"

    aput-object v1, v0, v4

    const-string v1, "account_name"

    aput-object v1, v0, v5

    const-string v1, "sync_events"

    aput-object v1, v0, v6

    const-string v1, "visible"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "COALESCE(isPrimary,account_name=ownerAccount) AS isPrimary"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/calendar/timely/InitializationAsyncTask;->PROJECTION:[Ljava/lang/String;

    .line 98
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "account_name"

    aput-object v1, v0, v4

    const-string v1, "account_type"

    aput-object v1, v0, v5

    const-string v1, "color"

    aput-object v1, v0, v6

    const-string v1, "color_index"

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/calendar/timely/InitializationAsyncTask;->COLORS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/InitializationAsyncTask;->mApplicationContext:Landroid/content/Context;

    .line 122
    new-instance v0, Lcom/android/calendar/ColorCache;

    invoke-direct {v0}, Lcom/android/calendar/ColorCache;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/timely/InitializationAsyncTask;->mColorCache:Lcom/android/calendar/ColorCache;

    .line 123
    return-void
.end method

.method private constructCalendarItem(Landroid/database/Cursor;)Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 354
    new-instance v4, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    invoke-direct {v4}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;-><init>()V

    .line 356
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 357
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 358
    :goto_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 359
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 360
    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 361
    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    .line 362
    :goto_1
    const/4 v10, 0x4

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-ne v10, v1, :cond_2

    .line 363
    :goto_2
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 365
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->id:Ljava/lang/String;

    .line 366
    sget-object v10, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v4, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->uri:Landroid/net/Uri;

    .line 368
    iput-boolean v0, v4, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isPrimary:Z

    .line 369
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, v8, v9}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v4, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->account:Landroid/accounts/Account;

    .line 370
    iput-object v5, v4, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->ownerAccount:Ljava/lang/String;

    .line 371
    iput-boolean v3, v4, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isSynced:Z

    .line 372
    iput-boolean v1, v4, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isVisible:Z

    .line 373
    iput v2, v4, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->color:I

    .line 375
    return-object v4

    :cond_0
    move v0, v2

    .line 357
    goto :goto_0

    :cond_1
    move v3, v2

    .line 361
    goto :goto_1

    :cond_2
    move v1, v2

    .line 362
    goto :goto_2
.end method

.method private findLocalHolidayCalendarServerId(Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/calendar/timely/InitializationAsyncTask;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/calendar/extensions/CountryDetector;->getCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 343
    iget-object v2, p1, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->countryHoliday:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 344
    iget-object v5, v4, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->country:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 345
    iget-object v0, v4, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->id:Ljava/lang/String;

    .line 350
    :goto_1
    return-object v0

    .line 343
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 350
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private loadLocalHolidayCalendarServerId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 321
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 322
    iget-object v0, p0, Lcom/google/android/calendar/timely/InitializationAsyncTask;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/calendar/timely/settings/DirectoryLoader;->loadDirectory(Landroid/content/Context;Ljava/util/Locale;)Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;

    move-result-object v0

    .line 324
    invoke-direct {p0, v0}, Lcom/google/android/calendar/timely/InitializationAsyncTask;->findLocalHolidayCalendarServerId(Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;)Ljava/lang/String;

    move-result-object v0

    .line 325
    if-nez v0, :cond_0

    .line 327
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 328
    iget-object v2, p0, Lcom/google/android/calendar/timely/InitializationAsyncTask;->mApplicationContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/google/android/calendar/timely/settings/DirectoryLoader;->loadDirectory(Landroid/content/Context;Ljava/util/Locale;)Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;

    move-result-object v0

    .line 329
    invoke-direct {p0, v0}, Lcom/google/android/calendar/timely/InitializationAsyncTask;->findLocalHolidayCalendarServerId(Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;)Ljava/lang/String;

    move-result-object v0

    .line 332
    :cond_0
    if-nez v0, :cond_1

    .line 333
    sget-object v2, Lcom/google/android/calendar/timely/InitializationAsyncTask;->TAG:Ljava/lang/String;

    const-string v3, "Unable to find holiday calendar for locale %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 336
    :cond_1
    return-object v0
.end method

.method private setCalendarState(Ljava/util/List;Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;",
            "II)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 388
    iget-object v0, p2, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->uri:Landroid/net/Uri;

    .line 389
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 390
    const/4 v0, 0x0

    .line 392
    iget-boolean v3, p2, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isSynced:Z

    if-nez v3, :cond_0

    .line 393
    const-string v0, "sync_events"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move v0, v1

    .line 397
    :cond_0
    iget-boolean v3, p2, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isVisible:Z

    if-nez v3, :cond_1

    .line 398
    const-string v0, "visible"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move v0, v1

    .line 402
    :cond_1
    if-eqz p3, :cond_5

    if-eqz p4, :cond_2

    iget v3, p2, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->color:I

    if-ne v3, p4, :cond_5

    .line 403
    :cond_2
    const-string v0, "calendar_color"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 404
    invoke-static {p3}, Lcom/android/calendar/Utils;->intToColor(I)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    .line 405
    iget-object v3, p0, Lcom/google/android/calendar/timely/InitializationAsyncTask;->mColorCache:Lcom/android/calendar/ColorCache;

    iget-object v4, p2, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->account:Landroid/accounts/Account;

    invoke-virtual {v3, v4, v0}, Lcom/android/calendar/ColorCache;->getColorKey(Landroid/accounts/Account;Lcom/google/calendar/v2/client/service/api/common/Color;)Ljava/lang/Integer;

    move-result-object v0

    .line 406
    if-eqz v0, :cond_3

    .line 408
    const-string v3, "calendar_color_index"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 414
    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 415
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_4
    return-void

    :cond_5
    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    check-cast p1, [Landroid/accounts/Account;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/timely/InitializationAsyncTask;->doInBackground([Landroid/accounts/Account;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/accounts/Account;)Ljava/lang/Void;
    .locals 16

    .prologue
    .line 128
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/calendar/timely/InitializationAsyncTask;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 131
    invoke-direct/range {p0 .. p0}, Lcom/google/android/calendar/timely/InitializationAsyncTask;->loadLocalHolidayCalendarServerId()Ljava/lang/String;

    move-result-object v7

    .line 134
    sget-object v2, Landroid/provider/CalendarContract$Colors;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/calendar/timely/InitializationAsyncTask;->COLORS_PROJECTION:[Ljava/lang/String;

    const-string v4, "color_type=0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 140
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/calendar/timely/InitializationAsyncTask;->mColorCache:Lcom/android/calendar/ColorCache;

    invoke-virtual {v3, v2}, Lcom/android/calendar/ColorCache;->populate(Landroid/database/Cursor;)V

    .line 141
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 143
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/calendar/timely/InitializationAsyncTask;->PROJECTION:[Ljava/lang/String;

    if-nez v7, :cond_0

    .line 147
    const-string v4, "(COALESCE(isPrimary,account_name=ownerAccount)=1) OR (((ownerAccount = \'#contacts@group.v.calendar.google.com\') OR (ownerAccount = \'addressbook#contacts@group.v.calendar.google.com\'))) OR (calendar_color = \'-6299161\')"

    .line 148
    :goto_0
    if-nez v7, :cond_1

    .line 150
    const/4 v5, 0x0

    .line 151
    :goto_1
    const/4 v6, 0x0

    .line 143
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 154
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 155
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 156
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 159
    const v3, -0x601e19

    .line 160
    const v2, -0x656301

    .line 161
    const/4 v4, 0x0

    .line 163
    if-eqz v6, :cond_a

    .line 165
    new-instance v11, Ljava/util/HashMap;

    move-object/from16 v0, p1

    array-length v5, v0

    invoke-direct {v11, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 166
    move-object/from16 v0, p1

    array-length v12, v0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v12, :cond_3

    aget-object v13, p1, v5

    .line 168
    invoke-static {v13}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->isGoogleAccount(Landroid/accounts/Account;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 166
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 148
    :cond_0
    const-string v4, "(COALESCE(isPrimary,account_name=ownerAccount)=1) OR (((ownerAccount = \'#contacts@group.v.calendar.google.com\') OR (ownerAccount = \'addressbook#contacts@group.v.calendar.google.com\'))) OR (calendar_color = \'-6299161\') OR (ownerAccount = ?)"

    goto :goto_0

    .line 151
    :cond_1
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v7, v5, v6

    goto :goto_1

    .line 171
    :cond_2
    invoke-virtual {v13}, Landroid/accounts/Account;->hashCode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v11, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 175
    :cond_3
    const/4 v5, -0x1

    :try_start_0
    invoke-interface {v6, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 176
    :cond_4
    :goto_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 177
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/calendar/timely/InitializationAsyncTask;->constructCalendarItem(Landroid/database/Cursor;)Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    move-result-object v5

    .line 180
    iget v12, v5, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->color:I

    const v13, -0x601e19

    if-ne v12, v13, :cond_5

    .line 181
    const/4 v4, 0x1

    .line 185
    :cond_5
    iget-object v12, v5, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->account:Landroid/accounts/Account;

    invoke-virtual {v12}, Landroid/accounts/Account;->hashCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 189
    iget-boolean v12, v5, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isPrimary:Z

    if-eqz v12, :cond_6

    .line 190
    iget-object v12, v5, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->account:Landroid/accounts/Account;

    invoke-interface {v8, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 200
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .line 191
    :cond_6
    :try_start_1
    sget-object v12, Lcom/google/android/calendar/timely/InitializationAsyncTask;->sCalendarClassifier:Lcom/android/calendar/CalendarClassifierInterface;

    iget-object v13, v5, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->ownerAccount:Ljava/lang/String;

    invoke-interface {v12, v13}, Lcom/android/calendar/CalendarClassifierInterface;->isBirthdayCalendar(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 192
    iget-object v12, v5, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->account:Landroid/accounts/Account;

    invoke-interface {v9, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 193
    :cond_7
    sget-object v12, Lcom/google/android/calendar/timely/InitializationAsyncTask;->sCalendarClassifier:Lcom/android/calendar/CalendarClassifierInterface;

    iget-object v13, v5, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->ownerAccount:Ljava/lang/String;

    invoke-interface {v12, v13}, Lcom/android/calendar/CalendarClassifierInterface;->isHolidayCalendar(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 194
    iget-object v12, v5, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->account:Landroid/accounts/Account;

    invoke-interface {v10, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 196
    :cond_8
    sget-object v12, Lcom/google/android/calendar/timely/InitializationAsyncTask;->TAG:Ljava/lang/String;

    const-string v13, "Found unexpected calendar item %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    invoke-static {v12, v13, v14}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 200
    :cond_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 204
    :cond_a
    if-eqz v4, :cond_b

    .line 205
    const/4 v3, 0x0

    .line 206
    const/4 v2, 0x0

    .line 209
    :cond_b
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 212
    move-object/from16 v0, p1

    array-length v11, v0

    const/4 v4, 0x0

    move v5, v4

    move v4, v3

    move v3, v2

    :goto_5
    if-ge v5, v11, :cond_12

    aget-object v12, p1, v5

    .line 214
    invoke-static {v12}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->isGoogleAccount(Landroid/accounts/Account;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 212
    :cond_c
    :goto_6
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_5

    .line 219
    :cond_d
    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    .line 220
    if-nez v2, :cond_f

    .line 221
    sget-object v2, Lcom/google/android/calendar/timely/InitializationAsyncTask;->TAG:Ljava/lang/String;

    const-string v13, "Unable to find primary account for %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    invoke-static {v2, v13, v14}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 237
    :cond_e
    :goto_7
    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    .line 238
    if-nez v2, :cond_10

    .line 240
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 241
    const-string v13, "calendar_color"

    const v14, -0x6d1e40

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 244
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/calendar/timely/InitializationAsyncTask;->mApplicationContext:Landroid/content/Context;

    const/4 v14, 0x1

    invoke-static {v13, v12, v14, v2}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->subscribeBirthdayCalendar(Landroid/content/Context;Landroid/accounts/Account;ZLandroid/os/Bundle;)V

    .line 259
    :goto_8
    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    .line 260
    if-nez v2, :cond_11

    .line 261
    if-eqz v7, :cond_c

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/calendar/timely/InitializationAsyncTask;->mApplicationContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-static {v2, v12, v7, v13}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->subscribeCalendar(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_6

    .line 223
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2, v4, v3}, Lcom/google/android/calendar/timely/InitializationAsyncTask;->setCalendarState(Ljava/util/List;Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;II)V

    .line 229
    if-eqz v4, :cond_e

    .line 231
    const/4 v3, 0x0

    .line 232
    const/4 v2, 0x0

    move v4, v3

    move v3, v2

    goto :goto_7

    .line 250
    :cond_10
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2, v13, v14}, Lcom/google/android/calendar/timely/InitializationAsyncTask;->setCalendarState(Ljava/util/List;Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;II)V

    goto :goto_8

    .line 267
    :cond_11
    const v12, -0xbd296e

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2, v12, v13}, Lcom/google/android/calendar/timely/InitializationAsyncTask;->setCalendarState(Ljava/util/List;Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;II)V

    goto :goto_6

    .line 277
    :cond_12
    :try_start_2
    const-string v2, "com.android.calendar"

    invoke-virtual {v1, v2, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 291
    :goto_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/calendar/timely/InitializationAsyncTask;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/calendar/ExtensionsFactory;->getPrefService(Landroid/content/Context;)Lcom/android/calendar/prefs/PrefService;

    move-result-object v1

    const v2, -0xbd296e

    .line 292
    invoke-static {v2}, Lcom/android/calendar/Utils;->intToColor(I)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v2

    .line 291
    invoke-interface {v1, v2}, Lcom/android/calendar/prefs/PrefService;->setHolidaysColor(Lcom/google/calendar/v2/client/service/api/common/Color;)V

    .line 295
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v2, :cond_14

    aget-object v3, p1, v1

    .line 297
    invoke-static {v3}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->isGoogleAccount(Landroid/accounts/Account;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 295
    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 278
    :catch_0
    move-exception v1

    .line 279
    sget-object v2, Lcom/google/android/calendar/timely/InitializationAsyncTask;->TAG:Ljava/lang/String;

    const-string v3, "Exception while applying initialization changes."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_9

    .line 280
    :catch_1
    move-exception v1

    .line 281
    sget-object v2, Lcom/google/android/calendar/timely/InitializationAsyncTask;->TAG:Ljava/lang/String;

    const-string v3, "Exception while applying initialization changes."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_9

    .line 282
    :catch_2
    move-exception v1

    .line 283
    sget-object v2, Lcom/google/android/calendar/timely/InitializationAsyncTask;->TAG:Ljava/lang/String;

    const-string v3, "Exception while applying initialization changes."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_9

    .line 301
    :cond_13
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 305
    const-string v5, "upload"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 306
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getSyncFactory()Lcom/android/calendar/timely/settings/SyncFactory;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/android/calendar/timely/settings/SyncFactory;->appendSyncFlags(Landroid/os/Bundle;)Z

    .line 308
    sget-object v5, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 310
    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    .line 308
    invoke-static {v3, v5, v4}, Lcom/google/android/calendar/SyncUtil;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_b

    .line 314
    :cond_14
    const/4 v1, 0x0

    return-object v1
.end method
