.class public Lcom/google/android/syncadapters/calendar/EventHandler;
.super Ljava/lang/Object;
.source "EventHandler.java"

# interfaces
.implements Lcom/google/android/apiary/ItemAndEntityHandler;
.implements Lcom/google/android/syncadapters/calendar/Constants;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apiary/ItemAndEntityHandler",
        "<",
        "Lcom/google/api/services/calendar/model/Event;",
        ">;",
        "Lcom/google/android/syncadapters/calendar/Constants;"
    }
.end annotation


# static fields
.field private static final EMPTY_CONFERENCE_DATA:Lcom/google/api/services/calendar/model/ConferenceData;

.field private static final ENTRY_TYPE_TO_PROVIDER_ATTENDEE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTENDED_PROPERTIES_BLACK_LIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTENDED_PROPERTIES_WRITE_LIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROVIDER_TYPE_TO_ENTRY_ATTENDEE:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNSYNCED_EVENT_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAccount:Landroid/accounts/Account;

.field private final mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

.field mCalendarId:Ljava/lang/String;

.field private mCalendarIdToLocalSyncInfo:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mClient:Lcom/google/api/services/calendar/Calendar;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mEventPlusPattern:Ljava/util/regex/Pattern;

.field private mProvider:Landroid/content/ContentProviderClient;

.field private final mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

.field private final mSyncHooks:[Lcom/google/android/syncadapters/calendar/SyncHooks;

.field mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 188
    new-instance v0, Lcom/google/android/calendar/builders/SetBuilder;

    invoke-direct {v0}, Lcom/google/android/calendar/builders/SetBuilder;-><init>()V

    const-string v1, "organizer"

    .line 189
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/SetBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/SetBuilder;

    move-result-object v0

    const-string v1, "iCalUid"

    .line 190
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/SetBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/SetBuilder;

    move-result-object v0

    const-string v1, "sequenceNumber"

    .line 191
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/SetBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/SetBuilder;

    move-result-object v0

    const-string v1, "hangoutLink"

    .line 192
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/SetBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/SetBuilder;

    move-result-object v0

    const-string v1, "includeHangout"

    .line 193
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/SetBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/SetBuilder;

    move-result-object v0

    const-string v1, "secretEvent"

    .line 194
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/SetBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/SetBuilder;

    move-result-object v0

    const-string v1, "endTimeUnspecified"

    .line 195
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/SetBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/SetBuilder;

    move-result-object v0

    const-string v1, "locationExtra"

    .line 196
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/SetBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/SetBuilder;

    move-result-object v0

    const-string v1, "associatedContactsExtra"

    .line 197
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/SetBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/SetBuilder;

    move-result-object v0

    const-string v1, "titleContactsExtra"

    .line 198
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/SetBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/SetBuilder;

    move-result-object v0

    const-string v1, "attachmentsExtra"

    .line 199
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/SetBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/SetBuilder;

    move-result-object v0

    const-string v1, "clearDefaultReminders"

    .line 200
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/SetBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/SetBuilder;

    move-result-object v0

    const-string v1, "shouldCreateEvent"

    .line 201
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/SetBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/SetBuilder;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lcom/google/android/calendar/builders/SetBuilder;->buildImmutable()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/EventHandler;->EXTENDED_PROPERTIES_BLACK_LIST:Ljava/util/Set;

    .line 205
    new-instance v0, Lcom/google/android/calendar/builders/SetBuilder;

    invoke-direct {v0}, Lcom/google/android/calendar/builders/SetBuilder;-><init>()V

    const-string v1, "organizer"

    .line 206
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/SetBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/SetBuilder;

    move-result-object v0

    const-string v1, "iCalUid"

    .line 207
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/SetBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/SetBuilder;

    move-result-object v0

    const-string v1, "sequenceNumber"

    .line 208
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/SetBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/SetBuilder;

    move-result-object v0

    const-string v1, "private:iCalDtStamp"

    .line 209
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/SetBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/SetBuilder;

    move-result-object v0

    const-string v1, "includeHangout"

    .line 210
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/SetBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/SetBuilder;

    move-result-object v0

    const-string v1, "secretEvent"

    .line 211
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/SetBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/SetBuilder;

    move-result-object v0

    const-string v1, "endTimeUnspecified"

    .line 212
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/SetBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/SetBuilder;

    move-result-object v0

    const-string v1, "locationExtra"

    .line 213
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/SetBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/SetBuilder;

    move-result-object v0

    const-string v1, "associatedContactsExtra"

    .line 214
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/SetBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/SetBuilder;

    move-result-object v0

    const-string v1, "titleContactsExtra"

    .line 215
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/SetBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/SetBuilder;

    move-result-object v0

    const-string v1, "attachmentsExtra"

    .line 216
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/SetBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/SetBuilder;

    move-result-object v0

    const-string v1, "clearDefaultReminders"

    .line 217
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/SetBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/SetBuilder;

    move-result-object v0

    const-string v1, "shouldCreateEvent"

    .line 218
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/SetBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/SetBuilder;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Lcom/google/android/calendar/builders/SetBuilder;->buildImmutable()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/EventHandler;->EXTENDED_PROPERTIES_WRITE_LIST:Ljava/util/Set;

    .line 252
    new-instance v0, Lcom/google/android/calendar/builders/SetBuilder;

    invoke-direct {v0}, Lcom/google/android/calendar/builders/SetBuilder;-><init>()V

    const-string v1, "reminders"

    .line 253
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/SetBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/SetBuilder;

    move-result-object v0

    const-string v1, "extendedProperties"

    .line 254
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/SetBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/SetBuilder;

    move-result-object v0

    const-string v1, "ifmatch"

    .line 255
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/SetBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/SetBuilder;

    move-result-object v0

    const-string v1, "userAgentPackage"

    .line 256
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/builders/SetBuilder;->add(Ljava/lang/Object;)Lcom/google/android/calendar/builders/SetBuilder;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Lcom/google/android/calendar/builders/SetBuilder;->buildImmutable()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/EventHandler;->UNSYNCED_EVENT_KEYS:Ljava/util/Set;

    .line 278
    const-class v0, Lcom/google/api/services/calendar/model/ConferenceData;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/ConferenceData;

    sput-object v0, Lcom/google/android/syncadapters/calendar/EventHandler;->EMPTY_CONFERENCE_DATA:Lcom/google/api/services/calendar/model/ConferenceData;

    .line 3252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3253
    const-string v1, "needsAction"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3254
    const-string v1, "accepted"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3255
    const-string v1, "declined"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3256
    const-string v1, "tentative"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3257
    sput-object v0, Lcom/google/android/syncadapters/calendar/EventHandler;->ENTRY_TYPE_TO_PROVIDER_ATTENDEE:Ljava/util/HashMap;

    .line 3259
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/google/android/syncadapters/calendar/EventHandler;->PROVIDER_TYPE_TO_ENTRY_ATTENDEE:Landroid/util/SparseArray;

    .line 3261
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3262
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3263
    sget-object v3, Lcom/google/android/syncadapters/calendar/EventHandler;->PROVIDER_TYPE_TO_ENTRY_ATTENDEE:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was already encountered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3267
    :cond_0
    sget-object v3, Lcom/google/android/syncadapters/calendar/EventHandler;->PROVIDER_TYPE_TO_ENTRY_ATTENDEE:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 3269
    :cond_1
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mCalendarIdToLocalSyncInfo:Landroid/util/LongSparseArray;

    .line 293
    iput-object v1, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mContext:Landroid/content/Context;

    .line 294
    iput-object v1, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mClient:Lcom/google/api/services/calendar/Calendar;

    .line 295
    iput-object v1, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 296
    iput-object v1, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mEventPlusPattern:Ljava/util/regex/Pattern;

    .line 297
    iput-object v1, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    .line 298
    iput-object v1, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mSyncHooks:[Lcom/google/android/syncadapters/calendar/SyncHooks;

    .line 299
    iput-object v1, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    .line 300
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/api/services/calendar/Calendar;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Landroid/content/ContentResolver;Lcom/google/android/syncadapters/calendar/timely/TimelyStore;Ljava/lang/String;[Lcom/google/android/syncadapters/calendar/SyncHooks;Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;)V
    .locals 2

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mCalendarIdToLocalSyncInfo:Landroid/util/LongSparseArray;

    .line 312
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mContext:Landroid/content/Context;

    .line 313
    iput-object p2, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mClient:Lcom/google/api/services/calendar/Calendar;

    .line 314
    iput-object p3, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mAccount:Landroid/accounts/Account;

    .line 315
    iput-object p4, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mProvider:Landroid/content/ContentProviderClient;

    .line 316
    iput-object p5, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 317
    iput-object p6, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    .line 318
    iput-object p7, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mCalendarId:Ljava/lang/String;

    .line 319
    invoke-static {}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->getInstance()Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    .line 320
    iput-object p8, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mSyncHooks:[Lcom/google/android/syncadapters/calendar/SyncHooks;

    .line 321
    iput-object p9, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    .line 323
    const-string v0, "google_calendar_event_plus_pattern"

    const-string v1, "^http[s]?://plus(\\.[a-z0-9]+)*\\.google\\.com/events/"

    invoke-static {p5, v0, v1}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mEventPlusPattern:Ljava/util/regex/Pattern;

    .line 326
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1

    .prologue
    .line 116
    invoke-static {p0, p1}, Lcom/google/android/syncadapters/calendar/EventHandler;->compareObjects(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    return v0
.end method

.method private addAttachmentsToEntry(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Long;Lcom/google/api/services/calendar/model/Event;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lcom/google/api/services/calendar/model/Event;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1316
    const/4 v1, 0x0

    .line 1319
    const-string v0, "attachmentsExtra"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1320
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1321
    new-instance v1, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;

    invoke-direct {v1}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;-><init>()V

    invoke-static {v1, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->createAttachments(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1323
    if-eqz p3, :cond_0

    .line 1325
    const-string v2, "DB: timelyData.update"

    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 1326
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, p2, v4, v5, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->updateAttachments(Ljava/lang/String;JLjava/lang/String;)Z

    .line 1327
    const-string v0, "DB: timelyData.update"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    .line 1333
    :goto_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 1334
    const-string v1, "DB: timelyData.query"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 1335
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, p2, v2, v3}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->loadSyncedEventData(Ljava/lang/String;J)Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    move-result-object v1

    .line 1336
    const-string v2, "DB: timelyData.query"

    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 1337
    if-eqz v1, :cond_1

    .line 1338
    invoke-virtual {v1}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getAttachments()Ljava/util/List;

    move-result-object v0

    .line 1341
    :cond_1
    invoke-virtual {p4, v0}, Lcom/google/api/services/calendar/model/Event;->setAttachments(Ljava/util/List;)Lcom/google/api/services/calendar/model/Event;

    .line 1342
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static addAttendeesToEntry(Landroid/content/ContentValues;Ljava/util/ArrayList;Lcom/google/api/services/calendar/model/Event;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;",
            "Lcom/google/api/services/calendar/model/Event;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1619
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1620
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity$NamedContentValues;

    .line 1621
    iget-object v3, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    .line 1622
    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1623
    sget-object v0, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1624
    new-instance v3, Lcom/google/api/services/calendar/model/EventAttendee;

    invoke-direct {v3}, Lcom/google/api/services/calendar/model/EventAttendee;-><init>()V

    .line 1625
    const-string v0, "attendeeName"

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/api/services/calendar/model/EventAttendee;->setDisplayName(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventAttendee;

    .line 1626
    const-string v0, "attendeeEmail"

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1627
    const-string v0, "attendeeIdentity"

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1629
    if-eqz v0, :cond_3

    const-string v6, "gprofile:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1634
    const-string v6, "gprofile:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1647
    :goto_1
    if-eqz v0, :cond_6

    .line 1648
    invoke-virtual {v3, v0}, Lcom/google/api/services/calendar/model/EventAttendee;->setId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventAttendee;

    .line 1653
    :goto_2
    const-string v0, "attendeeStatus"

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1655
    sget-object v0, Lcom/google/android/syncadapters/calendar/EventHandler;->PROVIDER_TYPE_TO_ENTRY_ATTENDEE:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1656
    if-nez v0, :cond_1

    .line 1657
    const-string v0, "EventHandler"

    const-string v6, "Unknown attendee status: %d"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v8

    invoke-static {v0, v6, v7}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1658
    const-string v0, "needsAction"

    .line 1660
    :cond_1
    invoke-virtual {v3, v0}, Lcom/google/api/services/calendar/model/EventAttendee;->setResponseStatus(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventAttendee;

    .line 1662
    const-string v0, "attendeeType"

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 1663
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/api/services/calendar/model/EventAttendee;->setOptional(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/EventAttendee;

    .line 1665
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1635
    :cond_3
    if-eqz v5, :cond_4

    const-string v0, "@profile.calendar.google.com"

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1638
    const-string v0, "@profile.calendar.google.com"

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1639
    :cond_4
    const-string v0, "sync_data3"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1643
    const-string v0, "sync_data3"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1645
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 1650
    :cond_6
    invoke-virtual {v3, v5}, Lcom/google/api/services/calendar/model/EventAttendee;->setEmail(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventAttendee;

    goto :goto_2

    .line 1668
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 1669
    invoke-virtual {p2, v1}, Lcom/google/api/services/calendar/model/Event;->setAttendees(Ljava/util/List;)Lcom/google/api/services/calendar/model/Event;

    .line 1671
    :cond_8
    return-void
.end method

.method private static addDeletedProperties(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1503
    if-nez p0, :cond_1

    .line 1517
    :cond_0
    return-object p1

    .line 1507
    :cond_1
    if-nez p1, :cond_2

    .line 1508
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1510
    :cond_2
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1511
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1514
    const-string v2, ""

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static addExtendedPropertiesAsContentValues(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2641
    if-nez p1, :cond_1

    .line 2661
    :cond_0
    return-void

    .line 2644
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2645
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2646
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2649
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2654
    const-string v3, "alarmReminder"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2655
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2656
    const-string v4, "name"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2657
    const-string v1, "value"

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2658
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2656
    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static addExtendedPropertiesToEntry(Ljava/util/ArrayList;Lcom/google/api/services/calendar/model/Event;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;",
            "Lcom/google/api/services/calendar/model/Event;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1743
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getExtendedProperties()Lcom/google/api/services/calendar/model/Event$ExtendedProperties;

    move-result-object v0

    .line 1744
    if-nez v0, :cond_0

    .line 1745
    new-instance v0, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;

    invoke-direct {v0}, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;-><init>()V

    .line 1746
    invoke-virtual {p1, v0}, Lcom/google/api/services/calendar/model/Event;->setExtendedProperties(Lcom/google/api/services/calendar/model/Event$ExtendedProperties;)Lcom/google/api/services/calendar/model/Event;

    .line 1748
    :cond_0
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;->getPrivate()Ljava/util/Map;

    move-result-object v1

    .line 1749
    if-nez v1, :cond_1

    .line 1750
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1751
    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;->setPrivate(Ljava/util/Map;)Lcom/google/api/services/calendar/model/Event$ExtendedProperties;

    .line 1753
    :cond_1
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;->getShared()Ljava/util/Map;

    move-result-object v2

    .line 1754
    if-nez v2, :cond_2

    .line 1755
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1756
    invoke-virtual {v0, v2}, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;->setShared(Ljava/util/Map;)Lcom/google/api/services/calendar/model/Event$ExtendedProperties;

    .line 1758
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity$NamedContentValues;

    .line 1759
    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    .line 1760
    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1761
    sget-object v5, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1762
    const-string v4, "name"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1763
    const-string v5, "value"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1764
    const-string v5, "shared:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1765
    const-string v5, "shared:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1767
    :cond_4
    const-string v5, "private:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1768
    const-string v5, "private:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1771
    :cond_5
    sget-object v5, Lcom/google/android/syncadapters/calendar/EventHandler;->EXTENDED_PROPERTIES_BLACK_LIST:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1772
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1776
    :cond_6
    return-void
.end method

.method public static addRecurrenceToEntry(Lcom/android/calendarcommon2/ICalendar$Component;Lcom/google/api/services/calendar/model/Event;)V
    .locals 4

    .prologue
    .line 1903
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1904
    invoke-virtual {p0}, Lcom/android/calendarcommon2/ICalendar$Component;->getPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1905
    const-string v3, "RRULE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "RDATE"

    .line 1906
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "EXRULE"

    .line 1907
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "EXDATE"

    .line 1908
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1909
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/calendarcommon2/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendarcommon2/ICalendar$Property;

    .line 1910
    invoke-virtual {v0}, Lcom/android/calendarcommon2/ICalendar$Property;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1914
    :cond_2
    invoke-virtual {p1, v1}, Lcom/google/api/services/calendar/model/Event;->setRecurrence(Ljava/util/List;)Lcom/google/api/services/calendar/model/Event;

    .line 1915
    return-void
.end method

.method private static addRemindersToEntry(Ljava/util/ArrayList;Lcom/google/api/services/calendar/model/Event;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;",
            "Lcom/google/api/services/calendar/model/Event;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1675
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1676
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1678
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity$NamedContentValues;

    .line 1679
    iget-object v6, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    .line 1680
    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1681
    sget-object v7, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1682
    const-string v6, "method"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1683
    const-string v7, "minutes"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1684
    new-instance v7, Lcom/google/api/services/calendar/model/EventReminder;

    invoke-direct {v7}, Lcom/google/api/services/calendar/model/EventReminder;-><init>()V

    invoke-virtual {v7, v0}, Lcom/google/api/services/calendar/model/EventReminder;->setMinutes(Ljava/lang/Integer;)Lcom/google/api/services/calendar/model/EventReminder;

    move-result-object v7

    .line 1685
    packed-switch v6, :pswitch_data_0

    .line 1710
    const-string v0, "popup"

    invoke-virtual {v7, v0}, Lcom/google/api/services/calendar/model/EventReminder;->setMethod(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventReminder;

    .line 1711
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    move v0, v1

    .line 1722
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x5

    if-ne v1, v6, :cond_4

    .line 1726
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1727
    new-instance v1, Lcom/google/api/services/calendar/model/Event$Reminders;

    invoke-direct {v1}, Lcom/google/api/services/calendar/model/Event$Reminders;-><init>()V

    .line 1728
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/api/services/calendar/model/Event$Reminders;->setUseDefault(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/Event$Reminders;

    .line 1729
    invoke-virtual {v1, v3}, Lcom/google/api/services/calendar/model/Event$Reminders;->setOverrides(Ljava/util/List;)Lcom/google/api/services/calendar/model/Event$Reminders;

    .line 1730
    invoke-virtual {p1, v1}, Lcom/google/api/services/calendar/model/Event;->setReminders(Lcom/google/api/services/calendar/model/Event$Reminders;)Lcom/google/api/services/calendar/model/Event;

    .line 1732
    :cond_0
    if-eqz v0, :cond_1

    .line 1733
    new-instance v0, Lcom/google/api/services/calendar/model/Event$Reminders;

    invoke-direct {v0}, Lcom/google/api/services/calendar/model/Event$Reminders;-><init>()V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/Event$Reminders;->setUseDefault(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/Event$Reminders;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1734
    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/Event$Reminders;->setOverrides(Ljava/util/List;)Lcom/google/api/services/calendar/model/Event$Reminders;

    move-result-object v0

    .line 1733
    invoke-virtual {p1, v0}, Lcom/google/api/services/calendar/model/Event;->setReminders(Lcom/google/api/services/calendar/model/Event$Reminders;)Lcom/google/api/services/calendar/model/Event;

    .line 1736
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1737
    invoke-static {v4, p1}, Lcom/google/android/syncadapters/calendar/EventHandler;->addExtendedPropertiesToEntry(Ljava/util/ArrayList;Lcom/google/api/services/calendar/model/Event;)V

    .line 1739
    :cond_2
    return-void

    .line 1687
    :pswitch_0
    const-string v0, "popup"

    invoke-virtual {v7, v0}, Lcom/google/api/services/calendar/model/EventReminder;->setMethod(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventReminder;

    .line 1688
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1691
    :pswitch_1
    const-string v0, "email"

    invoke-virtual {v7, v0}, Lcom/google/api/services/calendar/model/EventReminder;->setMethod(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventReminder;

    .line 1692
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1695
    :pswitch_2
    const-string v0, "sms"

    invoke-virtual {v7, v0}, Lcom/google/api/services/calendar/model/EventReminder;->setMethod(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventReminder;

    .line 1696
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1701
    :pswitch_3
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1702
    const-string v7, "private:alarmReminder-"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1703
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0xb

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1704
    const-string v8, "name"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    const-string v7, "value"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1706
    new-instance v0, Landroid/content/Entity$NamedContentValues;

    sget-object v7, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v7, v6}, Landroid/content/Entity$NamedContentValues;-><init>(Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1714
    :cond_3
    sget-object v7, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1715
    const-string v6, "name"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1716
    const-string v7, "clearDefaultReminders"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1717
    const-string v1, "1"

    const-string v6, "value"

    .line 1718
    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    goto/16 :goto_2

    :cond_4
    move v1, v0

    .line 1725
    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto/16 :goto_2

    :cond_6
    move v0, v1

    goto/16 :goto_3

    .line 1685
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private addSubValuesOperations(Ljava/util/List;Ljava/lang/Long;Ljava/lang/Integer;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Landroid/content/Entity;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Landroid/content/Entity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2449
    .line 2450
    if-eqz p7, :cond_3

    .line 2451
    const/4 v2, 0x1

    .line 2452
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2453
    sget-object v3, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->OPTIMIZE_SUB_VALUES_UPDATES:Lcom/google/android/calendar/experiments/Experiment;

    iget-object v4, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/google/android/calendar/experiments/Experiment;->isActive(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2454
    const-string v2, "EventHandler"

    const-string v3, "Optimizing update for %s/%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2455
    invoke-virtual/range {p7 .. p7}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity$NamedContentValues;

    .line 2456
    iget-object v4, v2, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2457
    iget-object v2, v2, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2460
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, p6

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2461
    move-object/from16 v0, p5

    invoke-static {v3, v11, v0}, Lcom/google/android/syncadapters/calendar/EventHandler;->optimizeSubValuesUpdate(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move-result v2

    move-object/from16 p6, v3

    .line 2463
    :cond_2
    packed-switch v2, :pswitch_data_0

    .line 2492
    const-string v3, "EventHandler"

    const-string v4, "Unknown sub values update mode: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2497
    :cond_3
    :goto_1
    :pswitch_0
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 2498
    iget-object v4, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mAccount:Landroid/accounts/Account;

    const/4 v8, 0x0

    move-object v2, p1

    move-object/from16 v3, p4

    move-object v6, p2

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v8}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->addAsSyncAdapterInsertOperation(Ljava/util/List;Landroid/net/Uri;Landroid/accounts/Account;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    goto :goto_2

    .line 2465
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mAccount:Landroid/accounts/Account;

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-static {p1, v0, v2, p2, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->addAsSyncAdapterDeleteOperation(Ljava/util/List;Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/Long;Z)V

    goto :goto_1

    .line 2473
    :pswitch_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2474
    const/4 v2, 0x0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    move v10, v2

    :goto_3
    if-ge v10, v12, :cond_3

    .line 2475
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2476
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_4

    add-int/lit8 v2, v12, -0x1

    if-ne v10, v2, :cond_5

    .line 2477
    :cond_4
    iget-object v5, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mAccount:Landroid/accounts/Account;

    .line 2481
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v3, p1

    move-object/from16 v4, p4

    move-object/from16 v8, p5

    .line 2477
    invoke-static/range {v3 .. v9}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->addAsSyncAdapterSecondaryDeleteOperation(Ljava/util/List;Landroid/net/Uri;Landroid/accounts/Account;JLjava/lang/String;Ljava/util/List;)V

    .line 2484
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 2474
    :cond_5
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_3

    .line 2507
    :cond_6
    return-void

    .line 2463
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private addTitleContactAnnotationsToEntry(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Long;Lcom/google/api/services/calendar/model/Event;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Lcom/google/api/services/calendar/model/Event;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1273
    const/4 v1, 0x0

    .line 1276
    const-string v0, "titleContactsExtra"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1277
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1278
    new-instance v1, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;

    invoke-direct {v1}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;-><init>()V

    invoke-static {v1, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->createTitleContactAnnotations(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1280
    if-eqz p3, :cond_0

    .line 1282
    const-string v2, "DB: timelyData.update"

    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 1283
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, p2, v4, v5, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->updateTitleContactAnnotations(Ljava/lang/String;JLjava/lang/String;)Z

    .line 1284
    const-string v0, "DB: timelyData.update"

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    .line 1290
    :goto_0
    if-nez v0, :cond_4

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 1291
    const-string v1, "DB: timelyData.query"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 1292
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, p2, v2, v3}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->loadSyncedEventData(Ljava/lang/String;J)Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    move-result-object v1

    .line 1293
    const-string v2, "DB: timelyData.query"

    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 1294
    if-eqz v1, :cond_4

    .line 1295
    invoke-virtual {v1}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getTitleContactAnnotations()Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    .line 1299
    :goto_1
    if-eqz v2, :cond_3

    .line 1300
    invoke-virtual {p4}, Lcom/google/api/services/calendar/model/Event;->getPrivateEventData()Lcom/google/api/services/calendar/model/PrivateEventData;

    move-result-object v0

    .line 1301
    if-nez v0, :cond_1

    .line 1302
    new-instance v0, Lcom/google/api/services/calendar/model/PrivateEventData;

    invoke-direct {v0}, Lcom/google/api/services/calendar/model/PrivateEventData;-><init>()V

    .line 1304
    :cond_1
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/PrivateEventData;->getAnnotations()Lcom/google/api/services/calendar/model/Annotations;

    move-result-object v1

    .line 1305
    if-nez v1, :cond_2

    .line 1306
    new-instance v1, Lcom/google/api/services/calendar/model/Annotations;

    invoke-direct {v1}, Lcom/google/api/services/calendar/model/Annotations;-><init>()V

    .line 1307
    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/PrivateEventData;->setAnnotations(Lcom/google/api/services/calendar/model/Annotations;)Lcom/google/api/services/calendar/model/PrivateEventData;

    .line 1309
    :cond_2
    invoke-virtual {v1, v2}, Lcom/google/api/services/calendar/model/Annotations;->setTitleContactAnnotations(Ljava/util/List;)Lcom/google/api/services/calendar/model/Annotations;

    .line 1310
    invoke-virtual {p4, v0}, Lcom/google/api/services/calendar/model/Event;->setPrivateEventData(Lcom/google/api/services/calendar/model/PrivateEventData;)Lcom/google/api/services/calendar/model/Event;

    .line 1312
    :cond_3
    return-void

    :cond_4
    move-object v2, v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method static apiaryEventToTimelyExtras(Lcom/google/api/services/calendar/model/Event;Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3104
    invoke-virtual {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->hasTimelyData()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EventHandler"

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3105
    const-string v0, "EventHandler"

    const-string v2, "Expected empty extras, got %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3107
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getStructuredLocation()Lcom/google/api/services/calendar/model/StructuredLocation;

    move-result-object v0

    .line 3108
    invoke-virtual {p1, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->setStructuredLocation(Lcom/google/api/services/calendar/model/StructuredLocation;)V

    .line 3110
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getConferenceData()Lcom/google/api/services/calendar/model/ConferenceData;

    move-result-object v0

    .line 3111
    invoke-virtual {p1, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->setConferenceData(Lcom/google/api/services/calendar/model/ConferenceData;)V

    .line 3118
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getPrivateEventData()Lcom/google/api/services/calendar/model/PrivateEventData;

    move-result-object v2

    .line 3119
    if-nez v2, :cond_3

    move-object v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->setSmartMailInfo(Lcom/google/api/services/calendar/model/SmartMailInfo;)V

    .line 3122
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getSource()Lcom/google/api/services/calendar/model/Event$Source;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->setEventSource(Lcom/google/api/services/calendar/model/Event$Source;)V

    .line 3124
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getBackgroundImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->setBackgroundImageUrl(Ljava/lang/String;)V

    .line 3126
    if-eqz v2, :cond_1

    .line 3127
    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/PrivateEventData;->getAnnotations()Lcom/google/api/services/calendar/model/Annotations;

    move-result-object v0

    if-nez v0, :cond_4

    .line 3126
    :cond_1
    :goto_1
    invoke-virtual {p1, v1}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->setTitleContactAnnotations(Ljava/util/List;)V

    .line 3130
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getAttachments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->setAttachments(Ljava/util/List;)V

    .line 3132
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getOrganizer()Lcom/google/api/services/calendar/model/Event$Organizer;

    move-result-object v0

    .line 3133
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Event$Organizer;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/CalendarType;->isBirthdayCalendar(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3134
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getGadget()Lcom/google/api/services/calendar/model/Event$Gadget;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->setEventGadget(Lcom/google/api/services/calendar/model/Event$Gadget;)V

    .line 3136
    :cond_2
    return-void

    .line 3120
    :cond_3
    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/PrivateEventData;->getSmartMailInfo()Lcom/google/api/services/calendar/model/SmartMailInfo;

    move-result-object v0

    goto :goto_0

    .line 3128
    :cond_4
    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/PrivateEventData;->getAnnotations()Lcom/google/api/services/calendar/model/Annotations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Annotations;->getTitleContactAnnotations()Ljava/util/List;

    move-result-object v1

    goto :goto_1
.end method

.method private static appendRecurrenceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 3175
    if-nez p0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const-string v0, "\n"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method static attendeeToContentValues(Lcom/google/api/services/calendar/model/EventAttendee;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 10

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 2552
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2553
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventAttendee;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 2554
    if-nez v0, :cond_0

    .line 2555
    const-string v0, ""

    .line 2557
    :cond_0
    const-string v4, "attendeeName"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2558
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventAttendee;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 2559
    if-eqz v0, :cond_1

    .line 2560
    const-string v4, "attendeeEmail"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2562
    :cond_1
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventAttendee;->getId()Ljava/lang/String;

    move-result-object v4

    .line 2563
    if-eqz v4, :cond_2

    .line 2564
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventAttendee;->getSelf()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/google/android/syncadapters/calendar/Utils;->getBooleanValue(Ljava/lang/Boolean;Z)Z

    move-result v5

    .line 2565
    const-string v0, "attendeeIdNamespace"

    const-string v6, "com.google"

    invoke-virtual {v3, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2567
    const-string v6, "attendeeIdentity"

    const-string v0, "gprofile:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2569
    if-eqz v5, :cond_5

    .line 2572
    :goto_1
    const-string v0, "attendeeEmail"

    invoke-virtual {v3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2575
    :cond_2
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventAttendee;->getResponseStatus()Ljava/lang/String;

    move-result-object v4

    .line 2576
    sget-object v0, Lcom/google/android/syncadapters/calendar/EventHandler;->ENTRY_TYPE_TO_PROVIDER_ATTENDEE:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2578
    if-nez v0, :cond_3

    .line 2579
    const-string v0, "EventHandler"

    const-string v5, "Unknown attendee status %s"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v9

    invoke-static {v0, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2580
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2582
    :cond_3
    const-string v4, "attendeeStatus"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2584
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventAttendee;->getOrganizer()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/google/android/syncadapters/calendar/Utils;->getBooleanValue(Ljava/lang/Boolean;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    .line 2586
    :goto_2
    const-string v4, "attendeeRelationship"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2588
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventAttendee;->getOptional()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/google/android/syncadapters/calendar/Utils;->getBooleanValue(Ljava/lang/Boolean;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2590
    :goto_3
    const-string v0, "attendeeType"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2591
    return-object v3

    .line 2567
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 2571
    :cond_5
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "@profile.calendar.google.com"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move v0, v2

    .line 2585
    goto :goto_2

    :cond_8
    move v1, v2

    .line 2589
    goto :goto_3
.end method

.method private buildEventFromDiff(Landroid/content/Entity;Landroid/content/Entity;)Lcom/google/api/services/calendar/model/Event;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 1427
    invoke-virtual {p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v4

    .line 1428
    invoke-virtual {p2}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v5

    .line 1430
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6, v4}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1431
    invoke-virtual {v4}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1432
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1433
    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1434
    const-string v1, "eventColor_index"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    .line 1435
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1439
    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 1443
    :cond_1
    if-nez v2, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1444
    :cond_3
    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 1450
    :cond_4
    const-string v0, "rrule"

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "rrule"

    .line 1451
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1452
    const-string v0, "dtstart"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1453
    const-string v0, "dtstart"

    const-string v1, "dtstart"

    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1455
    :cond_5
    const-string v0, "dtend"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1456
    const-string v0, "dtend"

    const-string v1, "dtend"

    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1458
    :cond_6
    const-string v0, "eventTimezone"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1459
    const-string v0, "eventTimezone"

    const-string v1, "eventTimezone"

    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    :cond_7
    const-string v0, "allDay"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1462
    const-string v0, "allDay"

    const-string v1, "allDay"

    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1465
    :cond_8
    const-string v0, "allDay"

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1466
    const-string v0, "allDay"

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1467
    const-string v0, "dtstart"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "dtend"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1468
    :cond_9
    const-string v0, "allDay"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1470
    :cond_a
    const-string v0, "allDay"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1471
    const-string v0, "dtstart"

    const-string v3, "dtstart"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1472
    const-string v0, "dtend"

    const-string v3, "dtend"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1475
    :cond_b
    new-instance v3, Landroid/content/Entity;

    invoke-direct {v3, v6}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 1477
    invoke-virtual {p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity$NamedContentValues;

    .line 1478
    iget-object v5, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    sget-object v6, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1479
    sget-object v5, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    invoke-virtual {v3, v5, v0}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_1

    .line 1482
    :cond_d
    invoke-virtual {p0, v3, p1}, Lcom/google/android/syncadapters/calendar/EventHandler;->convertEntityToEvent(Landroid/content/Entity;Landroid/content/Entity;)Lcom/google/api/services/calendar/model/Event;

    move-result-object v0

    .line 1486
    if-eq v1, v2, :cond_e

    .line 1487
    if-nez v1, :cond_f

    .line 1488
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Event;->getStart()Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v1

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_DATE_TIME:Lcom/google/api/client/util/DateTime;

    invoke-virtual {v1, v2}, Lcom/google/api/services/calendar/model/EventDateTime;->setDate(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/calendar/model/EventDateTime;

    .line 1489
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Event;->getEnd()Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v1

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_DATE_TIME:Lcom/google/api/client/util/DateTime;

    invoke-virtual {v1, v2}, Lcom/google/api/services/calendar/model/EventDateTime;->setDate(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/calendar/model/EventDateTime;

    .line 1495
    :cond_e
    :goto_2
    return-object v0

    .line 1491
    :cond_f
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Event;->getStart()Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v1

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_DATE_TIME:Lcom/google/api/client/util/DateTime;

    invoke-virtual {v1, v2}, Lcom/google/api/services/calendar/model/EventDateTime;->setDateTime(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/calendar/model/EventDateTime;

    .line 1492
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Event;->getEnd()Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v1

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_DATE_TIME:Lcom/google/api/client/util/DateTime;

    invoke-virtual {v1, v2}, Lcom/google/api/services/calendar/model/EventDateTime;->setDateTime(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/calendar/model/EventDateTime;

    goto :goto_2
.end method

.method private static compareObjects(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 1580
    if-nez p0, :cond_1

    .line 1581
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1583
    :goto_0
    return v0

    .line 1581
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 1583
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method private containsOwnerAsGooglePlusAttendee(Lcom/google/api/services/calendar/model/Event;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2240
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getAttendees()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    .line 2248
    :goto_0
    return v0

    .line 2243
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getAttendees()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/EventAttendee;

    .line 2244
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/EventAttendee;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/EventAttendee;->getSelf()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/Utils;->getBooleanValue(Ljava/lang/Boolean;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2245
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2248
    goto :goto_0
.end method

.method private convertValuesToPartialDiff(Landroid/content/Entity;Landroid/content/Entity;)Lcom/google/api/services/calendar/model/Event;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 1357
    invoke-direct {p0, p1, p2}, Lcom/google/android/syncadapters/calendar/EventHandler;->buildEventFromDiff(Landroid/content/Entity;Landroid/content/Entity;)Lcom/google/api/services/calendar/model/Event;

    move-result-object v1

    .line 1359
    invoke-virtual {p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 1360
    invoke-virtual {p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v3

    .line 1361
    invoke-virtual {p2}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v4

    .line 1365
    invoke-static {v3}, Lcom/google/android/syncadapters/calendar/EventHandler;->getWriteListedValues(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v5, 0x1

    invoke-direct {p0, v1, v2, v0, v5}, Lcom/google/android/syncadapters/calendar/EventHandler;->setStructuredLocationForEvent(Lcom/google/api/services/calendar/model/Event;Landroid/content/ContentValues;Ljava/util/Map;Z)V

    .line 1368
    new-instance v5, Lcom/google/api/services/calendar/model/Event;

    invoke-direct {v5}, Lcom/google/api/services/calendar/model/Event;-><init>()V

    .line 1369
    new-instance v6, Lcom/google/api/services/calendar/model/Event;

    invoke-direct {v6}, Lcom/google/api/services/calendar/model/Event;-><init>()V

    .line 1370
    invoke-static {v3, v5}, Lcom/google/android/syncadapters/calendar/EventHandler;->addRemindersToEntry(Ljava/util/ArrayList;Lcom/google/api/services/calendar/model/Event;)V

    .line 1371
    invoke-static {v4, v6}, Lcom/google/android/syncadapters/calendar/EventHandler;->addRemindersToEntry(Ljava/util/ArrayList;Lcom/google/api/services/calendar/model/Event;)V

    .line 1372
    invoke-virtual {v5}, Lcom/google/api/services/calendar/model/Event;->getReminders()Lcom/google/api/services/calendar/model/Event$Reminders;

    move-result-object v0

    .line 1373
    invoke-virtual {v6}, Lcom/google/api/services/calendar/model/Event;->getReminders()Lcom/google/api/services/calendar/model/Event$Reminders;

    move-result-object v7

    .line 1374
    invoke-static {v0, v7}, Lcom/google/android/syncadapters/calendar/EventHandler;->sameReminders(Lcom/google/api/services/calendar/model/Event$Reminders;Lcom/google/api/services/calendar/model/Event$Reminders;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1375
    if-nez v0, :cond_0

    .line 1377
    new-instance v0, Lcom/google/api/services/calendar/model/Event$Reminders;

    invoke-direct {v0}, Lcom/google/api/services/calendar/model/Event$Reminders;-><init>()V

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/api/services/calendar/model/Event$Reminders;->setUseDefault(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/Event$Reminders;

    move-result-object v0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1378
    invoke-virtual {v0, v7}, Lcom/google/api/services/calendar/model/Event$Reminders;->setOverrides(Ljava/util/List;)Lcom/google/api/services/calendar/model/Event$Reminders;

    move-result-object v0

    .line 1380
    :cond_0
    invoke-virtual {v1, v0}, Lcom/google/api/services/calendar/model/Event;->setReminders(Lcom/google/api/services/calendar/model/Event$Reminders;)Lcom/google/api/services/calendar/model/Event;

    .line 1383
    :cond_1
    invoke-static {v2, v3, v5}, Lcom/google/android/syncadapters/calendar/EventHandler;->addAttendeesToEntry(Landroid/content/ContentValues;Ljava/util/ArrayList;Lcom/google/api/services/calendar/model/Event;)V

    .line 1384
    invoke-static {v2, v4, v6}, Lcom/google/android/syncadapters/calendar/EventHandler;->addAttendeesToEntry(Landroid/content/ContentValues;Ljava/util/ArrayList;Lcom/google/api/services/calendar/model/Event;)V

    .line 1385
    invoke-virtual {v5}, Lcom/google/api/services/calendar/model/Event;->getAttendees()Ljava/util/List;

    move-result-object v0

    .line 1386
    invoke-virtual {v6}, Lcom/google/api/services/calendar/model/Event;->getAttendees()Ljava/util/List;

    move-result-object v2

    .line 1387
    invoke-static {v0, v2}, Lcom/google/android/syncadapters/calendar/EventHandler;->sameAttendees(Ljava/util/List;Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1388
    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 1390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1392
    :cond_2
    invoke-virtual {v1, v0}, Lcom/google/api/services/calendar/model/Event;->setAttendees(Ljava/util/List;)Lcom/google/api/services/calendar/model/Event;

    .line 1395
    :cond_3
    invoke-static {v3, v5}, Lcom/google/android/syncadapters/calendar/EventHandler;->addExtendedPropertiesToEntry(Ljava/util/ArrayList;Lcom/google/api/services/calendar/model/Event;)V

    .line 1396
    invoke-static {v4, v6}, Lcom/google/android/syncadapters/calendar/EventHandler;->addExtendedPropertiesToEntry(Ljava/util/ArrayList;Lcom/google/api/services/calendar/model/Event;)V

    .line 1397
    invoke-virtual {v5}, Lcom/google/api/services/calendar/model/Event;->getExtendedProperties()Lcom/google/api/services/calendar/model/Event$ExtendedProperties;

    move-result-object v0

    .line 1398
    invoke-virtual {v6}, Lcom/google/api/services/calendar/model/Event;->getExtendedProperties()Lcom/google/api/services/calendar/model/Event$ExtendedProperties;

    move-result-object v2

    .line 1399
    invoke-static {v0, v2}, Lcom/google/android/syncadapters/calendar/EventHandler;->sameExtendedProperties(Lcom/google/api/services/calendar/model/Event$ExtendedProperties;Lcom/google/api/services/calendar/model/Event$ExtendedProperties;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1401
    if-eqz v2, :cond_5

    .line 1404
    if-nez v0, :cond_4

    .line 1405
    new-instance v0, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;

    invoke-direct {v0}, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;-><init>()V

    .line 1408
    :cond_4
    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;->getPrivate()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;->getPrivate()Ljava/util/Map;

    move-result-object v6

    .line 1407
    invoke-static {v5, v6}, Lcom/google/android/syncadapters/calendar/EventHandler;->addDeletedProperties(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;->setPrivate(Ljava/util/Map;)Lcom/google/api/services/calendar/model/Event$ExtendedProperties;

    .line 1410
    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;->getShared()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;->getShared()Ljava/util/Map;

    move-result-object v5

    .line 1409
    invoke-static {v2, v5}, Lcom/google/android/syncadapters/calendar/EventHandler;->addDeletedProperties(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;->setShared(Ljava/util/Map;)Lcom/google/api/services/calendar/model/Event$ExtendedProperties;

    .line 1412
    :cond_5
    invoke-virtual {v1, v0}, Lcom/google/api/services/calendar/model/Event;->setExtendedProperties(Lcom/google/api/services/calendar/model/Event$ExtendedProperties;)Lcom/google/api/services/calendar/model/Event;

    .line 1416
    :cond_6
    invoke-static {v3}, Lcom/google/android/syncadapters/calendar/EventHandler;->getWriteListedValues(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v0

    .line 1417
    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/EventHandler;->getWriteListedValues(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v2

    .line 1418
    invoke-static {v0, v2}, Lcom/google/android/syncadapters/calendar/EventHandler;->sameEventExtras(Ljava/util/HashMap;Ljava/util/HashMap;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1419
    invoke-virtual {p0, v0, v1}, Lcom/google/android/syncadapters/calendar/EventHandler;->addEventExtrasToEntry(Ljava/util/HashMap;Lcom/google/api/services/calendar/model/Event;)V

    .line 1422
    :cond_7
    return-object v1
.end method

.method private static copyAndStripLocalValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 2515
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, p0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 2516
    const-string v0, "_id"

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2517
    invoke-virtual {p0}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2518
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2519
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 2522
    :cond_1
    return-object v1
.end method

.method private static createEventDateTime(JZ)Lcom/google/api/services/calendar/model/EventDateTime;
    .locals 4

    .prologue
    .line 1345
    new-instance v0, Lcom/google/api/services/calendar/model/EventDateTime;

    invoke-direct {v0}, Lcom/google/api/services/calendar/model/EventDateTime;-><init>()V

    .line 1346
    if-eqz p2, :cond_0

    .line 1347
    new-instance v1, Lcom/google/api/client/util/DateTime;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, p1, v3}, Lcom/google/api/client/util/DateTime;-><init>(ZJLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/EventDateTime;->setDate(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/calendar/model/EventDateTime;

    .line 1351
    :goto_0
    return-object v0

    .line 1349
    :cond_0
    new-instance v1, Lcom/google/api/client/util/DateTime;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/google/api/client/util/DateTime;-><init>(JI)V

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/EventDateTime;->setDateTime(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/calendar/model/EventDateTime;

    goto :goto_0
.end method

.method private deleteLastSyncedEventCopyOperation(Ljava/lang/String;JZ)Landroid/content/ContentProviderOperation;
    .locals 6

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2626
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "calendar_id=?"

    aput-object v1, v0, v3

    const-string v1, "_sync_id=?"

    aput-object v1, v0, v4

    const-string v1, "lastSynced=?"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/Utils;->makeWhere([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2630
    new-array v1, v2, [Ljava/lang/String;

    .line 2631
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    const-string v2, "1"

    aput-object v2, v1, v5

    .line 2633
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mAccount:Landroid/accounts/Account;

    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 2634
    invoke-virtual {v2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2635
    invoke-virtual {v0, p4}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2636
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 2633
    return-object v0
.end method

.method static entryColorToContentValues(Lcom/google/api/services/calendar/model/Event;Landroid/content/ContentValues;)V
    .locals 2

    .prologue
    .line 3094
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getColorId()Ljava/lang/String;

    move-result-object v0

    .line 3095
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3096
    const-string v0, "eventColor_index"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 3097
    const-string v0, "eventColor"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 3101
    :goto_0
    return-void

    .line 3099
    :cond_0
    const-string v1, "eventColor_index"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static extendedPropertiesToContentValues(Lcom/google/api/services/calendar/model/Event$ExtendedProperties;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/services/calendar/model/Event$ExtendedProperties;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2267
    if-eqz p0, :cond_0

    .line 2269
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;->getShared()Ljava/util/Map;

    move-result-object v1

    const-string v2, "shared:"

    .line 2268
    invoke-static {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/EventHandler;->addExtendedPropertiesAsContentValues(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    .line 2271
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;->getPrivate()Ljava/util/Map;

    move-result-object v1

    const-string v2, "private:"

    .line 2270
    invoke-static {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/EventHandler;->addExtendedPropertiesAsContentValues(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    .line 2273
    :cond_0
    return-object v0
.end method

.method private extractIcalUid(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1224
    const-string v0, "iCalUid"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1225
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 1226
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1227
    :cond_0
    const/4 v0, 0x0

    .line 1229
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static extractRemindersList(Lcom/google/api/services/calendar/model/Event;Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/services/calendar/model/Event;",
            "Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventReminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2299
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getReminders()Lcom/google/api/services/calendar/model/Event$Reminders;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2300
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2314
    :goto_0
    return-object v0

    .line 2302
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getReminders()Lcom/google/api/services/calendar/model/Event$Reminders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Event$Reminders;->getUseDefault()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 2304
    const-string v0, "EventHandler"

    const-string v1, "No syncInfo present for event with default reminders"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2305
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 2307
    :cond_1
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getReminders()Lcom/google/api/services/calendar/model/Event$Reminders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Event$Reminders;->getUseDefault()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2308
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getStart()Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/EventDateTime;->getDate()Lcom/google/api/client/util/DateTime;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2309
    iget-object v0, p1, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->defaultAllDayReminders:Ljava/util/List;

    goto :goto_0

    .line 2310
    :cond_2
    iget-object v0, p1, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->defaultReminders:Ljava/util/List;

    goto :goto_0

    .line 2311
    :cond_3
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getReminders()Lcom/google/api/services/calendar/model/Event$Reminders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Event$Reminders;->getOverrides()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2312
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getReminders()Lcom/google/api/services/calendar/model/Event$Reminders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Event$Reminders;->getOverrides()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 2314
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private fetchEntity(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Entity;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 903
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/syncadapters/calendar/EventHandler;->newEntityIterator(Ljava/lang/String;[Ljava/lang/String;I)Landroid/content/EntityIterator;

    move-result-object v1

    .line 905
    :try_start_0
    invoke-interface {v1}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    invoke-interface {v1}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    .line 908
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 911
    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    throw v0
.end method

.method static getAdditionalExtendedProperties(Lcom/google/api/services/calendar/model/Event;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/services/calendar/model/Event;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2528
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2529
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getHangoutLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2530
    const-string v0, "hangoutLink"

    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getHangoutLink()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2532
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getConferenceData()Lcom/google/api/services/calendar/model/ConferenceData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2536
    const-string v0, "includeHangout"

    const-string v2, "1"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2538
    :cond_1
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getEndTimeUnspecified()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2539
    const-string v2, "endTimeUnspecified"

    .line 2540
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getEndTimeUnspecified()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "1"

    .line 2539
    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2542
    :cond_2
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getVisibility()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2543
    const-string v2, "secretEvent"

    .line 2544
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getVisibility()Ljava/lang/String;

    move-result-object v0

    const-string v3, "secret"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "1"

    .line 2543
    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2546
    :cond_3
    return-object v1

    .line 2540
    :cond_4
    const-string v0, "0"

    goto :goto_0

    .line 2544
    :cond_5
    const-string v0, "0"

    goto :goto_1
.end method

.method private static getAttendeeSet(Ljava/util/List;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventAttendee;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/api/services/calendar/model/EventAttendee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1556
    if-nez p0, :cond_0

    .line 1557
    const/4 v0, 0x0

    .line 1576
    :goto_0
    return-object v0

    .line 1559
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/google/android/syncadapters/calendar/EventHandler$1;

    invoke-direct {v1}, Lcom/google/android/syncadapters/calendar/EventHandler$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 1575
    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private static getAttendeesValues(Lcom/google/api/services/calendar/model/Event;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/services/calendar/model/Event;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2344
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getAttendees()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getAttendees()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2345
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2351
    :goto_0
    return-object v0

    .line 2347
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2348
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getAttendees()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/EventAttendee;

    .line 2349
    invoke-static {v0, p1}, Lcom/google/android/syncadapters/calendar/EventHandler;->attendeeToContentValues(Lcom/google/api/services/calendar/model/EventAttendee;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 2351
    goto :goto_0
.end method

.method private getCalendarOwnerAccount(J)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 3140
    invoke-static {}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mProvider:Landroid/content/ContentProviderClient;

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 3142
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 3143
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "ownerAccount"

    aput-object v5, v3, v6

    move-object v5, v4

    move-object v6, v4

    .line 3140
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3148
    if-eqz v1, :cond_0

    .line 3150
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3151
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 3154
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3157
    :cond_0
    :goto_0
    return-object v4

    .line 3154
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getEventExtensionFlags(Lcom/google/api/services/calendar/model/Event;I)I
    .locals 1

    .prologue
    .line 3189
    if-eqz p0, :cond_0

    .line 3190
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getEndTimeUnspecified()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getEndTimeUnspecified()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3191
    or-int/lit8 p1, p1, 0x4

    .line 3194
    :cond_0
    return p1
.end method

.method protected static getEventExtrasFlagsValue(Lcom/google/api/services/calendar/model/Event;Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;)I
    .locals 2

    .prologue
    .line 3182
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getSummary()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/syncadapters/calendar/EventHandler;->getEventTimelyExtrasFlags(Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;Ljava/lang/String;I)I

    move-result v0

    .line 3183
    invoke-static {p0, v0}, Lcom/google/android/syncadapters/calendar/EventHandler;->getEventExtensionFlags(Lcom/google/api/services/calendar/model/Event;I)I

    move-result v0

    .line 3184
    return v0
.end method

.method private static getEventTimelyExtrasFlags(Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 3199
    if-eqz p0, :cond_3

    .line 3202
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getSmartMailInfo()Lcom/google/api/services/calendar/model/SmartMailInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3203
    or-int/lit8 p2, p2, 0x1

    .line 3207
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->hasImageData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3208
    or-int/lit8 p2, p2, 0x2

    .line 3211
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->hasStructuredLocation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3212
    or-int/lit8 p2, p2, 0x10

    .line 3215
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getConferenceData()Lcom/google/api/services/calendar/model/ConferenceData;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3216
    or-int/lit8 p2, p2, 0x20

    .line 3219
    :cond_3
    return p2
.end method

.method private static getExtendedPropertiesValues(Lcom/google/api/services/calendar/model/Event;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/services/calendar/model/Event;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2253
    .line 2254
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getExtendedProperties()Lcom/google/api/services/calendar/model/Event$ExtendedProperties;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/EventHandler;->extendedPropertiesToContentValues(Lcom/google/api/services/calendar/model/Event$ExtendedProperties;)Ljava/util/List;

    move-result-object v0

    .line 2258
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/EventHandler;->getAdditionalExtendedProperties(Lcom/google/api/services/calendar/model/Event;)Ljava/util/Map;

    move-result-object v1

    const-string v2, ""

    .line 2257
    invoke-static {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/EventHandler;->addExtendedPropertiesAsContentValues(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    .line 2259
    return-object v0
.end method

.method public static getExtrasFlagsFromEvent(Lcom/google/api/services/calendar/model/Event;)I
    .locals 1

    .prologue
    .line 3226
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;-><init>()V

    .line 3227
    invoke-static {p0, v0}, Lcom/google/android/syncadapters/calendar/EventHandler;->apiaryEventToTimelyExtras(Lcom/google/api/services/calendar/model/Event;Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;)V

    .line 3228
    invoke-static {p0, v0}, Lcom/google/android/syncadapters/calendar/EventHandler;->getEventExtrasFlagsValue(Lcom/google/api/services/calendar/model/Event;Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;)I

    move-result v0

    return v0
.end method

.method private static getRecurrenceDate(Lcom/android/calendarcommon2/ICalendar$Property;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 3165
    const-string v0, "TZID"

    invoke-virtual {p0, v0}, Lcom/android/calendarcommon2/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon2/ICalendar$Parameter;

    move-result-object v0

    .line 3166
    if-eqz v0, :cond_0

    .line 3167
    iget-object v0, v0, Lcom/android/calendarcommon2/ICalendar$Parameter;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendarcommon2/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3171
    :goto_0
    return-object v0

    .line 3169
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendarcommon2/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getReminderSet(Lcom/google/api/services/calendar/model/Event$Reminders;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/services/calendar/model/Event$Reminders;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/api/services/calendar/model/EventReminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1592
    if-nez p0, :cond_1

    .line 1593
    const/4 v0, 0x0

    .line 1608
    :cond_0
    :goto_0
    return-object v0

    .line 1595
    :cond_1
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/google/android/syncadapters/calendar/EventHandler$2;

    invoke-direct {v1}, Lcom/google/android/syncadapters/calendar/EventHandler$2;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 1605
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event$Reminders;->getOverrides()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1606
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event$Reminders;->getOverrides()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method static getRemindersFromExtendedProperties(Lcom/google/api/services/calendar/model/Event$ExtendedProperties;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/services/calendar/model/Event$ExtendedProperties;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2322
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;->getPrivate()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2323
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2339
    :goto_0
    return-object v0

    .line 2325
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2326
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;->getPrivate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2327
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "alarmReminder"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2328
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 2330
    const-string v0, "EventHandler"

    const-string v1, "Null value for minutes of alarm reminder found."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 2333
    :cond_3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2334
    const-string v4, "method"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2335
    const-string v4, "minutes"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2336
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object v0, v2

    .line 2339
    goto :goto_0
.end method

.method private static getRemindersValues(Lcom/google/api/services/calendar/model/Event;Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/services/calendar/model/Event;",
            "Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 2279
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2280
    invoke-static {p0, p1}, Lcom/google/android/syncadapters/calendar/EventHandler;->extractRemindersList(Lcom/google/api/services/calendar/model/Event;Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/EventReminder;

    .line 2281
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/EventHandler;->reminderToContentValues(Lcom/google/api/services/calendar/model/EventReminder;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2285
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->getExtendedProperties()Lcom/google/api/services/calendar/model/Event$ExtendedProperties;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/EventHandler;->getRemindersFromExtendedProperties(Lcom/google/api/services/calendar/model/Event$ExtendedProperties;)Ljava/util/List;

    move-result-object v0

    .line 2284
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2286
    return-object v1
.end method

.method private static getValueAsBoolean(Ljava/util/Map$Entry;)Ljava/lang/Boolean;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1844
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 1845
    instance-of v1, v4, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 1847
    const-wide/16 v6, 0x1

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1854
    :goto_1
    return-object v0

    :cond_0
    move v1, v3

    .line 1847
    goto :goto_0

    .line 1848
    :catch_0
    move-exception v1

    .line 1849
    const-string v1, "EventHandler"

    const-string v5, "Cannot parse Long value for %s at key %s"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v4, v6, v3

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v1, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 1853
    :cond_1
    const-string v1, "EventHandler"

    const-string v5, "Cannot cast value for %s to a Long: %s"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v3

    aput-object v4, v6, v2

    invoke-static {v1, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method private static getValueAsInteger(Ljava/util/Map$Entry;)Ljava/lang/Integer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1865
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 1866
    instance-of v2, v1, Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 1868
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1876
    :goto_0
    return-object v0

    .line 1869
    :catch_0
    move-exception v2

    .line 1870
    const-string v2, "EventHandler"

    const-string v3, "Cannot parse Integer value for %s at key %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v6

    .line 1871
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v4, v7

    .line 1870
    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1875
    :cond_0
    const-string v2, "EventHandler"

    const-string v3, "Cannot cast value for %s to an Integer: %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v1, v4, v7

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private static getWriteListedValues(Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1888
    new-instance v1, Ljava/util/HashMap;

    sget-object v0, Lcom/google/android/syncadapters/calendar/EventHandler;->EXTENDED_PROPERTIES_WRITE_LIST:Ljava/util/Set;

    .line 1889
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 1890
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity$NamedContentValues;

    .line 1891
    sget-object v3, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1892
    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 1893
    const-string v3, "name"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1894
    sget-object v4, Lcom/google/android/syncadapters/calendar/EventHandler;->EXTENDED_PROPERTIES_WRITE_LIST:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1895
    const-string v4, "value"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1899
    :cond_1
    return-object v1
.end method

.method private static hasOnlyUnsyncedKeys(Lcom/google/api/services/calendar/model/Event;)Z
    .locals 3

    .prologue
    .line 867
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 868
    sget-object v2, Lcom/google/android/syncadapters/calendar/EventHandler;->UNSYNCED_EVENT_KEYS:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 869
    const/4 v0, 0x0

    .line 872
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1612
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private logHttpException(Ljava/lang/String;Lcom/google/api/client/http/HttpResponseException;Landroid/content/Entity;)V
    .locals 4

    .prologue
    .line 820
    invoke-virtual {p2}, Lcom/google/api/client/http/HttpResponseException;->getStatusCode()I

    move-result v1

    .line 821
    invoke-virtual {p2}, Lcom/google/api/client/http/HttpResponseException;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    .line 822
    if-nez v0, :cond_0

    .line 823
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 825
    :cond_0
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    invoke-virtual {v2, p1, v1}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logSyncError(Ljava/lang/String;I)V

    .line 826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Landroid/content/Entity;Ljava/lang/String;)V

    .line 827
    return-void
.end method

.method private obtainConferenceData(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/ConferenceData;
    .locals 5

    .prologue
    .line 1822
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1823
    :cond_0
    sget-object v0, Lcom/google/android/syncadapters/calendar/EventHandler;->EMPTY_CONFERENCE_DATA:Lcom/google/api/services/calendar/model/ConferenceData;

    .line 1834
    :goto_0
    return-object v0

    .line 1826
    :cond_1
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mCalendarId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getConferenceTypeForCalendar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1828
    invoke-static {v1}, Lcom/google/android/calendar/CalendarApiConstants$ConferenceType;->isTypeSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1829
    sget-object v0, Lcom/google/android/syncadapters/calendar/EventHandler;->EMPTY_CONFERENCE_DATA:Lcom/google/api/services/calendar/model/ConferenceData;

    goto :goto_0

    .line 1832
    :cond_2
    new-instance v0, Lcom/google/api/services/calendar/model/ConferenceData;

    invoke-direct {v0}, Lcom/google/api/services/calendar/model/ConferenceData;-><init>()V

    .line 1833
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/api/services/calendar/model/Conference;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/api/services/calendar/model/Conference;

    invoke-direct {v4}, Lcom/google/api/services/calendar/model/Conference;-><init>()V

    invoke-virtual {v4, v1}, Lcom/google/api/services/calendar/model/Conference;->setType(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Conference;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/ConferenceData;->setConferences(Ljava/util/List;)Lcom/google/api/services/calendar/model/ConferenceData;

    goto :goto_0
.end method

.method static optimizeSubValuesUpdate(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2383
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2384
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2385
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2386
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/EventHandler;->copyAndStripLocalValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2387
    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2389
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2393
    :cond_1
    const-string v0, "EventHandler"

    const-string v4, "Optimizing update: stale %d/%d, new %d/%d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    .line 2394
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    .line 2395
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v8, 0x3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 2393
    invoke-static {v0, v4, v7}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2398
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2399
    const-string v0, "EventHandler"

    const-string v2, "Optimized: skip delete, insert %d rows"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2400
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2401
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 2402
    invoke-interface {p0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v0, v1

    .line 2443
    :goto_1
    return v0

    .line 2407
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 2409
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 2410
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    move v4, v1

    :goto_2
    if-ge v4, v8, :cond_6

    .line 2411
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 2412
    invoke-virtual {v0, p2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2413
    if-nez v0, :cond_3

    .line 2415
    const-string v0, "EventHandler"

    const-string v4, "Skipping optimize: cv[%s] == null"

    new-array v7, v3, [Ljava/lang/Object;

    aput-object p2, v7, v1

    invoke-static {v0, v4, v7}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 2428
    :goto_3
    if-eqz v0, :cond_5

    .line 2429
    const-string v0, "EventHandler"

    const-string v4, "Optimized: delete %d rows, insert %d rows"

    new-array v7, v2, [Ljava/lang/Object;

    .line 2430
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v3

    .line 2429
    invoke-static {v0, v4, v7}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2431
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2432
    invoke-interface {p1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2433
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 2434
    invoke-interface {p0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v0, v2

    .line 2435
    goto :goto_1

    .line 2419
    :cond_3
    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 2421
    const-string v4, "EventHandler"

    const-string v7, "Skipping optimize: cv[%s] == %s repeated"

    new-array v8, v2, [Ljava/lang/Object;

    aput-object p2, v8, v1

    aput-object v0, v8, v3

    invoke-static {v4, v7, v8}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 2424
    goto :goto_3

    .line 2410
    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 2440
    :cond_5
    const-string v0, "EventHandler"

    const-string v4, "Could not optimize: delete all (%d), insert %d rows"

    new-array v2, v2, [Ljava/lang/Object;

    .line 2441
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    .line 2440
    invoke-static {v0, v4, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2442
    invoke-interface {p1}, Ljava/util/List;->clear()V

    move v0, v3

    .line 2443
    goto/16 :goto_1

    :cond_6
    move v0, v3

    goto :goto_3
.end method

.method private static parseDuration(Ljava/lang/String;)J
    .locals 6

    .prologue
    const-wide/16 v0, -0x1

    .line 888
    if-nez p0, :cond_0

    .line 897
    :goto_0
    return-wide v0

    .line 891
    :cond_0
    new-instance v2, Lcom/android/calendarcommon2/Duration;

    invoke-direct {v2}, Lcom/android/calendarcommon2/Duration;-><init>()V

    .line 893
    :try_start_0
    invoke-virtual {v2, p0}, Lcom/android/calendarcommon2/Duration;->parse(Ljava/lang/String;)V

    .line 894
    invoke-virtual {v2}, Lcom/android/calendarcommon2/Duration;->getMillis()J
    :try_end_0
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 895
    :catch_0
    move-exception v2

    .line 896
    const-string v2, "EventHandler"

    const-string v3, "Bad DURATION: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method static reminderToContentValues(Lcom/google/api/services/calendar/model/EventReminder;)Landroid/content/ContentValues;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 2596
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2598
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventReminder;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 2599
    const-string v2, "popup"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2600
    const-string v1, "method"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2617
    :goto_0
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/EventReminder;->getMinutes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2618
    const-string v2, "minutes"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2621
    return-object v0

    .line 2602
    :cond_0
    const-string v2, "email"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2603
    const-string v1, "method"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 2605
    :cond_1
    const-string v2, "sms"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2606
    const-string v1, "method"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 2612
    :cond_2
    const-string v2, "method"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2613
    const-string v2, "EventHandler"

    const-string v3, "Unknown reminder method: %s should not happen!"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private static sameAttendees(Ljava/util/List;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventAttendee;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventAttendee;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1552
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/EventHandler;->getAttendeeSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/EventHandler;->getAttendeeSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/EventHandler;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static sameEventExtras(Ljava/util/HashMap;Ljava/util/HashMap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1544
    if-nez p0, :cond_2

    .line 1545
    if-nez p1, :cond_1

    .line 1547
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1545
    goto :goto_0

    .line 1547
    :cond_2
    if-eqz p1, :cond_3

    invoke-static {p0, p1}, Lcom/google/android/syncadapters/calendar/EventHandler;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static sameExtendedProperties(Lcom/google/api/services/calendar/model/Event$ExtendedProperties;Lcom/google/api/services/calendar/model/Event$ExtendedProperties;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1534
    if-nez p0, :cond_2

    .line 1535
    if-nez p1, :cond_1

    .line 1537
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1535
    goto :goto_0

    .line 1537
    :cond_2
    if-eqz p1, :cond_3

    .line 1538
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;->getPrivate()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;->getPrivate()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/syncadapters/calendar/EventHandler;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1539
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;->getShared()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;->getShared()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/syncadapters/calendar/EventHandler;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static sameReminders(Lcom/google/api/services/calendar/model/Event$Reminders;Lcom/google/api/services/calendar/model/Event$Reminders;)Z
    .locals 2

    .prologue
    .line 1588
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/EventHandler;->getReminderSet(Lcom/google/api/services/calendar/model/Event$Reminders;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/EventHandler;->getReminderSet(Lcom/google/api/services/calendar/model/Event$Reminders;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/EventHandler;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static setDtendFromDuration(Landroid/content/ContentValues;J)V
    .locals 5

    .prologue
    .line 877
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 878
    const-string v0, "dtstart"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 879
    if-nez v0, :cond_1

    .line 880
    const-string v0, "EventHandler"

    const-string v1, "Event has DURATION but no DTSTART"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 882
    :cond_1
    const-string v1, "dtend"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private setStructuredLocationForEvent(Lcom/google/api/services/calendar/model/Event;Landroid/content/ContentValues;Ljava/util/Map;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/services/calendar/model/Event;",
            "Landroid/content/ContentValues;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1242
    const-string v0, "locationExtra"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1243
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1244
    new-instance v1, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;

    invoke-direct {v1}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;-><init>()V

    invoke-static {v1, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->createStructuredLocation(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)Lcom/google/api/services/calendar/model/StructuredLocation;

    move-result-object v0

    .line 1246
    invoke-virtual {p1, v0}, Lcom/google/api/services/calendar/model/Event;->setStructuredLocation(Lcom/google/api/services/calendar/model/StructuredLocation;)Lcom/google/api/services/calendar/model/Event;

    .line 1269
    :goto_0
    return-void

    .line 1250
    :cond_0
    const-string v0, "sync_data9"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1259
    if-eqz p4, :cond_1

    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getLocation()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 1260
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_2

    .line 1261
    :cond_1
    new-instance v0, Lcom/google/api/services/calendar/model/StructuredLocation;

    invoke-direct {v0}, Lcom/google/api/services/calendar/model/StructuredLocation;-><init>()V

    .line 1262
    new-instance v1, Lcom/google/api/services/calendar/model/EventLocation;

    invoke-direct {v1}, Lcom/google/api/services/calendar/model/EventLocation;-><init>()V

    .line 1263
    const-string v2, "eventLocation"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/services/calendar/model/EventLocation;->setName(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventLocation;

    .line 1264
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/services/calendar/model/StructuredLocation;->setLocations(Ljava/util/List;)Lcom/google/api/services/calendar/model/StructuredLocation;

    .line 1265
    invoke-virtual {p1, v0}, Lcom/google/api/services/calendar/model/Event;->setStructuredLocation(Lcom/google/api/services/calendar/model/StructuredLocation;)Lcom/google/api/services/calendar/model/Event;

    goto :goto_0

    .line 1267
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/api/services/calendar/model/Event;->setStructuredLocation(Lcom/google/api/services/calendar/model/StructuredLocation;)Lcom/google/api/services/calendar/model/Event;

    goto :goto_0
.end method

.method private shouldCreateEvent(Landroid/content/Entity;)Z
    .locals 3

    .prologue
    .line 830
    .line 831
    invoke-virtual {p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/EventHandler;->getWriteListedValues(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v0

    .line 832
    const-string v1, "iCalUid"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    const-string v2, "shouldCreateEvent"

    .line 833
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 832
    :goto_0
    return v0

    .line 833
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static touchDescription(Lcom/google/api/services/calendar/model/Event;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1521
    if-nez p1, :cond_0

    .line 1522
    const-string v0, " "

    .line 1528
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/api/services/calendar/model/Event;->setDescription(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    .line 1529
    return-void

    .line 1523
    :cond_0
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1524
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1526
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateCalendarProviderWithEvent(Lcom/google/api/services/calendar/model/Event;Landroid/content/Entity;)V
    .locals 8

    .prologue
    .line 838
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 839
    new-instance v4, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    invoke-direct {v4}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;-><init>()V

    .line 844
    if-eqz p2, :cond_0

    .line 845
    invoke-virtual {p2}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "calendar_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 850
    :goto_0
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/syncadapters/calendar/EventHandler;->entryToContentValues(Lcom/google/api/services/calendar/model/Event;Landroid/content/ContentValues;Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/apiary/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 855
    :try_start_1
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mAccount:Landroid/accounts/Account;

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mProvider:Landroid/content/ContentProviderClient;

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_sync_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 859
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 855
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->update(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/apiary/ParseException; {:try_start_1 .. :try_end_1} :catch_3

    .line 864
    :goto_1
    return-void

    .line 847
    :cond_0
    const-wide/16 v6, -0x1

    goto :goto_0

    .line 851
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    .line 860
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private updateSyncResultStats(Landroid/content/SyncResult;I)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    .line 2223
    packed-switch p2, :pswitch_data_0

    .line 2237
    :goto_0
    return-void

    .line 2225
    :pswitch_0
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numInserts:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numInserts:J

    goto :goto_0

    .line 2228
    :pswitch_1
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numUpdates:J

    goto :goto_0

    .line 2231
    :pswitch_2
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v0, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/content/SyncStats;->numDeletes:J

    goto :goto_0

    .line 2223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static upgradeTimelyExtrasFlags(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3239
    const/4 v0, 0x0

    .line 3240
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3241
    const/4 v0, 0x1

    .line 3243
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3244
    or-int/lit8 v0, v0, 0x2

    .line 3246
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method addEventExtrasToEntry(Ljava/util/HashMap;Lcom/google/api/services/calendar/model/Event;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/api/services/calendar/model/Event;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1786
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1787
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1788
    const-string v3, "includeHangout"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1789
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/EventHandler;->getValueAsBoolean(Ljava/util/Map$Entry;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1790
    invoke-direct {p0, v0}, Lcom/google/android/syncadapters/calendar/EventHandler;->obtainConferenceData(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/ConferenceData;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/api/services/calendar/model/Event;->setConferenceData(Lcom/google/api/services/calendar/model/ConferenceData;)Lcom/google/api/services/calendar/model/Event;

    goto :goto_0

    .line 1791
    :cond_1
    const-string v3, "endTimeUnspecified"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1792
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/EventHandler;->getValueAsBoolean(Ljava/util/Map$Entry;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1793
    if-eqz v0, :cond_0

    .line 1794
    invoke-virtual {p2, v0}, Lcom/google/api/services/calendar/model/Event;->setEndTimeUnspecified(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/Event;

    goto :goto_0

    .line 1796
    :cond_2
    const-string v3, "secretEvent"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1797
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/EventHandler;->getValueAsBoolean(Ljava/util/Map$Entry;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1798
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1800
    const-string v0, "secret"

    invoke-virtual {p2, v0}, Lcom/google/api/services/calendar/model/Event;->setVisibility(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    goto :goto_0

    .line 1802
    :cond_3
    const-string v3, "organizer"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1803
    new-instance v1, Lcom/google/api/services/calendar/model/Event$Organizer;

    invoke-direct {v1}, Lcom/google/api/services/calendar/model/Event$Organizer;-><init>()V

    .line 1804
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/api/services/calendar/model/Event$Organizer;->setEmail(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event$Organizer;

    .line 1805
    invoke-virtual {p2, v1}, Lcom/google/api/services/calendar/model/Event;->setOrganizer(Lcom/google/api/services/calendar/model/Event$Organizer;)Lcom/google/api/services/calendar/model/Event;

    goto :goto_0

    .line 1806
    :cond_4
    const-string v3, "iCalUid"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1807
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1808
    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 1809
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/api/services/calendar/model/Event;->setICalUID(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    goto/16 :goto_0

    .line 1811
    :cond_5
    const-string v3, "sequenceNumber"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1812
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/EventHandler;->getValueAsInteger(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object v0

    .line 1813
    if-eqz v0, :cond_0

    .line 1815
    invoke-virtual {p2, v0}, Lcom/google/api/services/calendar/model/Event;->setSequence(Ljava/lang/Integer;)Lcom/google/api/services/calendar/model/Event;

    goto/16 :goto_0

    .line 1819
    :cond_6
    return-void
.end method

.method public applyItemToEntity(Ljava/util/List;Lcom/google/api/services/calendar/model/Event;Landroid/content/Entity;ZLandroid/content/SyncResult;Ljava/lang/Object;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/google/api/services/calendar/model/Event;",
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
    .line 1983
    const-string v2, "Convert event to provider operations"

    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 1984
    const-string v2, "EventHandler"

    const-string v3, "============= applyItemToEntity ============="

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1985
    const-string v2, "EventHandler"

    const-string v3, "event is %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1986
    const-string v2, "EventHandler"

    const-string v3, "entity is %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1988
    const/4 v10, 0x0

    .line 1990
    check-cast p6, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;

    .line 2004
    if-eqz p2, :cond_16

    if-eqz p3, :cond_16

    .line 2006
    invoke-virtual/range {p3 .. p3}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "original_sync_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2007
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/services/calendar/model/Event;->getRecurringEventId()Ljava/lang/String;

    move-result-object v3

    .line 2008
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 2009
    const-string v2, "EventHandler"

    const-string v3, "split update into delete + insert"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2010
    if-nez p6, :cond_15

    .line 2012
    invoke-virtual/range {p3 .. p3}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "calendar_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2011
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/syncadapters/calendar/EventHandler;->getOrCreateSyncInfoForCalendar(J)Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;

    move-result-object v8

    .line 2014
    :goto_0
    if-eqz v8, :cond_0

    .line 2015
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/syncadapters/calendar/EventHandler;->applyItemToEntity(Ljava/util/List;Lcom/google/api/services/calendar/model/Event;Landroid/content/Entity;ZLandroid/content/SyncResult;Ljava/lang/Object;)V

    .line 2016
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/syncadapters/calendar/EventHandler;->applyItemToEntity(Ljava/util/List;Lcom/google/api/services/calendar/model/Event;Landroid/content/Entity;ZLandroid/content/SyncResult;Ljava/lang/Object;)V

    .line 2220
    :goto_1
    return-void

    :cond_0
    move-object v7, v8

    .line 2022
    :goto_2
    if-nez p3, :cond_2

    const/4 v2, 0x1

    .line 2024
    :goto_3
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2025
    new-instance v6, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    invoke-direct {v6}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;-><init>()V

    .line 2031
    if-eqz p3, :cond_3

    .line 2032
    invoke-virtual/range {p3 .. p3}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "calendar_id"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 2039
    :goto_4
    if-nez p2, :cond_5

    .line 2040
    const/4 v3, 0x1

    move v4, v3

    .line 2042
    :goto_5
    if-eqz p4, :cond_1

    .line 2043
    const-string v3, "dirty"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2045
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mSyncHooks:[Lcom/google/android/syncadapters/calendar/SyncHooks;

    array-length v12, v11

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v12, :cond_6

    aget-object v13, v11, v3

    .line 2046
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v13, v0, v1, v5}, Lcom/google/android/syncadapters/calendar/SyncHooks;->onBeforeApplyEventToEntity(Lcom/google/api/services/calendar/model/Event;Landroid/content/Entity;Landroid/content/ContentValues;)V

    .line 2045
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 2022
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 2033
    :cond_3
    if-eqz v7, :cond_4

    .line 2034
    iget-wide v8, v7, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->calendarId:J

    goto :goto_4

    .line 2036
    :cond_4
    const-wide/16 v8, -0x1

    goto :goto_4

    :cond_5
    move-object/from16 v3, p0

    move-object/from16 v4, p2

    .line 2040
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/syncadapters/calendar/EventHandler;->entryToContentValues(Lcom/google/api/services/calendar/model/Event;Landroid/content/ContentValues;Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;J)I

    move-result v3

    move v4, v3

    goto :goto_5

    .line 2048
    :cond_6
    const/4 v3, 0x1

    if-ne v4, v3, :cond_8

    .line 2049
    if-eqz p3, :cond_b

    .line 2050
    invoke-virtual/range {p3 .. p3}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 2051
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 2052
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mAccount:Landroid/accounts/Account;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2051
    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->addAsSyncAdapterDeleteOperation(Ljava/util/List;Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/Long;Z)V

    .line 2059
    const/4 v2, 0x3

    .line 2062
    invoke-virtual/range {p3 .. p3}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "_sync_id"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2063
    const-string v4, "DB: timelyData.delete"

    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 2064
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    invoke-virtual {v4, v3, v8, v9}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->removeTimelyEventData(Ljava/lang/String;J)Z

    .line 2065
    const-string v4, "DB: timelyData.delete"

    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 2068
    invoke-virtual/range {p3 .. p3}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "dirty"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 2069
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2074
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8, v9, v4}, Lcom/google/android/syncadapters/calendar/EventHandler;->deleteLastSyncedEventCopyOperation(Ljava/lang/String;JZ)Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2217
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/EventHandler;->updateSyncResultStats(Landroid/content/SyncResult;I)V

    .line 2219
    const-string v2, "Convert event to provider operations"

    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2078
    :cond_8
    if-nez v4, :cond_b

    .line 2079
    const-string v3, "EventHandler"

    const-string v4, "Got eventEntry from server: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-static {v3, v4, v10}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2082
    const-string v3, "sync_data9"

    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 2083
    if-nez v3, :cond_14

    .line 2084
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v4, v3

    .line 2086
    :goto_8
    if-eqz v2, :cond_c

    .line 2087
    const-string v2, "_sync_id"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2088
    invoke-virtual {v6}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->hasTimelyData()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2091
    const-string v3, "DB: timelyData.update"

    invoke-static {v3}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 2092
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    invoke-virtual {v3, v2, v8, v9, v6}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->insertOrUpdateEventData(Ljava/lang/String;JLcom/google/android/syncadapters/calendar/timely/TimelyEventData;)Landroid/net/Uri;

    .line 2093
    const-string v3, "DB: timelyData.update"

    invoke-static {v3}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 2097
    :cond_9
    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcom/google/android/syncadapters/calendar/EventHandler;->getEventExtrasFlagsValue(Lcom/google/api/services/calendar/model/Event;Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;)I

    move-result v3

    .line 2098
    const-string v6, "sync_data9"

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2101
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mAccount:Landroid/accounts/Account;

    .line 2102
    invoke-static {v3}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v3

    sget-object v4, Landroid/provider/CalendarContract$EventsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v10, "_sync_id=?"

    aput-object v10, v4, v6

    const/4 v6, 0x1

    const-string v10, "calendar_id=?"

    aput-object v10, v4, v6

    .line 2104
    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/Utils;->makeWhere([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v2, v6, v10

    const/4 v2, 0x1

    const-string v10, "calendar_id"

    .line 2109
    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v2

    .line 2103
    invoke-virtual {v3, v4, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 2111
    invoke-virtual {v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 2112
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 2101
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2113
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2114
    sget-object v11, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mAccount:Landroid/accounts/Account;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p1

    move-object v13, v5

    invoke-static/range {v10 .. v16}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->addAsSyncAdapterInsertOperation(Ljava/util/List;Landroid/net/Uri;Landroid/accounts/Account;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 2121
    const/4 v4, 0x0

    .line 2123
    const/4 v10, 0x1

    move-object v5, v2

    .line 2179
    :goto_9
    if-nez v7, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/google/api/services/calendar/model/Event;->getReminders()Lcom/google/api/services/calendar/model/Event$Reminders;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 2180
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/services/calendar/model/Event;->getReminders()Lcom/google/api/services/calendar/model/Event$Reminders;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/Event$Reminders;->getUseDefault()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2181
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/google/android/syncadapters/calendar/EventHandler;->getOrCreateSyncInfoForCalendar(J)Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;

    move-result-object v7

    .line 2184
    :cond_a
    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/google/android/syncadapters/calendar/EventHandler;->getRemindersValues(Lcom/google/api/services/calendar/model/Event;Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;)Ljava/util/List;

    move-result-object v11

    .line 2190
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/calendar/EventHandler;->containsOwnerAsGooglePlusAttendee(Lcom/google/api/services/calendar/model/Event;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2192
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/google/android/syncadapters/calendar/EventHandler;->getCalendarOwnerAccount(J)Ljava/lang/String;

    move-result-object v2

    .line 2198
    :goto_a
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/google/android/syncadapters/calendar/EventHandler;->getAttendeesValues(Lcom/google/api/services/calendar/model/Event;Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 2200
    invoke-static/range {p2 .. p2}, Lcom/google/android/syncadapters/calendar/EventHandler;->getExtendedPropertiesValues(Lcom/google/api/services/calendar/model/Event;)Ljava/util/List;

    move-result-object v13

    .line 2202
    sget-object v6, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "minutes"

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v8, v11

    move-object/from16 v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/google/android/syncadapters/calendar/EventHandler;->addSubValuesOperations(Ljava/util/List;Ljava/lang/Long;Ljava/lang/Integer;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Landroid/content/Entity;)V

    .line 2206
    sget-object v6, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "attendeeEmail"

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v8, v12

    move-object/from16 v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/google/android/syncadapters/calendar/EventHandler;->addSubValuesOperations(Ljava/util/List;Ljava/lang/Long;Ljava/lang/Integer;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Landroid/content/Entity;)V

    .line 2210
    sget-object v6, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "name"

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v8, v13

    move-object/from16 v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/google/android/syncadapters/calendar/EventHandler;->addSubValuesOperations(Ljava/util/List;Ljava/lang/Long;Ljava/lang/Integer;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Landroid/content/Entity;)V

    :cond_b
    move v2, v10

    goto/16 :goto_7

    .line 2125
    :cond_c
    const/4 v3, 0x0

    .line 2126
    invoke-virtual/range {p3 .. p3}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string v10, "_id"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    .line 2128
    invoke-virtual {v6}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->hasTimelyData()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2129
    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcom/google/android/syncadapters/calendar/EventHandler;->getEventExtrasFlagsValue(Lcom/google/api/services/calendar/model/Event;Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;)I

    move-result v2

    .line 2130
    const-string v10, "sync_data9"

    .line 2131
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2130
    invoke-virtual {v5, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2132
    const-string v2, "_sync_id"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2133
    invoke-virtual {v6}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getStructuredLocation()Lcom/google/api/services/calendar/model/StructuredLocation;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 2134
    const-string v4, "EventHandler"

    const-string v10, "Sync Id: %s, location: %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    const/4 v12, 0x1

    .line 2135
    invoke-virtual {v6}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getStructuredLocation()Lcom/google/api/services/calendar/model/StructuredLocation;

    move-result-object v13

    aput-object v13, v11, v12

    .line 2134
    invoke-static {v4, v10, v11}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2137
    :cond_d
    const-string v4, "DB: timelyData.update"

    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 2138
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    invoke-virtual {v4, v2, v8, v9, v6}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->insertOrUpdateEventData(Ljava/lang/String;JLcom/google/android/syncadapters/calendar/timely/TimelyEventData;)Landroid/net/Uri;

    .line 2139
    const-string v2, "DB: timelyData.update"

    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 2154
    :goto_b
    sget-object v2, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->STRIP_DTSTART_FROM_UPDATES:Lcom/google/android/calendar/experiments/Experiment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/google/android/calendar/experiments/Experiment;->isActive(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2158
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/services/calendar/model/Event;->getRecurringEventId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2159
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/services/calendar/model/Event;->getRecurrence()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual/range {p2 .. p2}, Lcom/google/api/services/calendar/model/Event;->getRecurrence()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    :cond_e
    const/4 v2, 0x1

    .line 2160
    :goto_c
    if-eqz v2, :cond_13

    .line 2161
    invoke-virtual/range {p3 .. p3}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string v4, "dtstart"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "dtstart"

    .line 2162
    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 2160
    invoke-static {v2, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2163
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13, v5}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 2164
    const-string v2, "dtstart"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2167
    :goto_d
    sget-object v11, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mAccount:Landroid/accounts/Account;

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v10, p1

    invoke-static/range {v10 .. v16}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->addAsSyncAdapterUpdateOperation(Ljava/util/List;Landroid/net/Uri;Landroid/accounts/Account;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 2175
    const/4 v10, 0x2

    move-object v5, v3

    move-object v4, v14

    goto/16 :goto_9

    .line 2144
    :cond_f
    invoke-virtual/range {p3 .. p3}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string v6, "sync_data9"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 2145
    if-nez v2, :cond_10

    .line 2146
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2150
    :goto_e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/google/android/syncadapters/calendar/EventHandler;->getEventExtensionFlags(Lcom/google/api/services/calendar/model/Event;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2151
    const-string v6, "sync_data9"

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    or-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_b

    .line 2148
    :cond_10
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x33

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_e

    .line 2159
    :cond_11
    const/4 v2, 0x0

    goto :goto_c

    .line 2194
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_13
    move-object v13, v5

    goto :goto_d

    :cond_14
    move-object v4, v3

    goto/16 :goto_8

    :cond_15
    move-object/from16 v8, p6

    goto/16 :goto_0

    :cond_16
    move-object/from16 v7, p6

    goto/16 :goto_2
.end method

.method public convertEntityToEvent(Landroid/content/Entity;Landroid/content/Entity;)Lcom/google/api/services/calendar/model/Event;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 920
    new-instance v12, Lcom/google/api/services/calendar/model/Event;

    invoke-direct {v12}, Lcom/google/api/services/calendar/model/Event;-><init>()V

    .line 921
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v13

    .line 923
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v14

    .line 924
    invoke-static {v14}, Lcom/google/android/syncadapters/calendar/EventHandler;->getWriteListedValues(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v15

    .line 925
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_19

    const/4 v2, 0x1

    move v9, v2

    .line 927
    :goto_0
    const-string v2, "eventStatus"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 930
    const-string v2, "eventStatus"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 931
    if-nez v2, :cond_0

    .line 932
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 934
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 946
    const-string v3, "EventHandler"

    const-string v4, "Unexpected value for status: %d; using tentative."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 948
    const-string v2, "tentative"

    .line 951
    :goto_1
    invoke-virtual {v12, v2}, Lcom/google/api/services/calendar/model/Event;->setStatus(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    .line 954
    :cond_1
    const-string v2, "accessLevel"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 957
    const-string v2, "accessLevel"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 958
    if-nez v2, :cond_2

    .line 959
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 961
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 976
    const-string v3, "EventHandler"

    const-string v4, "Unexpected value for visibility: %d; using default visibility."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 979
    const-string v2, "default"

    .line 984
    :goto_2
    invoke-virtual {v12, v2}, Lcom/google/api/services/calendar/model/Event;->setVisibility(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    .line 987
    :cond_3
    const-string v2, "availability"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 989
    const-string v2, "availability"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 990
    if-nez v2, :cond_4

    .line 991
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 993
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_2

    .line 1002
    const-string v3, "EventHandler"

    const-string v4, "Unexpected value for transparency: %d; using opaque transparency."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1004
    const-string v2, "opaque"

    .line 1007
    :goto_3
    invoke-virtual {v12, v2}, Lcom/google/api/services/calendar/model/Event;->setTransparency(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    .line 1011
    :cond_5
    const-string v2, "title"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1012
    const-string v2, "title"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/google/api/services/calendar/model/Event;->setSummary(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    .line 1016
    :cond_6
    const-string v2, "description"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1017
    const-string v2, "description"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/google/api/services/calendar/model/Event;->setDescription(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    .line 1021
    :cond_7
    invoke-static {v13, v14, v12}, Lcom/google/android/syncadapters/calendar/EventHandler;->addAttendeesToEntry(Landroid/content/ContentValues;Ljava/util/ArrayList;Lcom/google/api/services/calendar/model/Event;)V

    .line 1024
    new-instance v2, Lcom/android/calendarcommon2/ICalendar$Component;

    const-string v3, "DUMMY"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/calendarcommon2/ICalendar$Component;-><init>(Ljava/lang/String;Lcom/android/calendarcommon2/ICalendar$Component;)V

    .line 1026
    const-string v3, "RRULE"

    const-string v4, "rrule"

    invoke-virtual {v13, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/RecurrenceSet;->addPropertiesForRuleStr(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    const-string v3, "RDATE"

    const-string v4, "rdate"

    invoke-virtual {v13, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/RecurrenceSet;->addPropertyForDateStr(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    const-string v3, "EXRULE"

    const-string v4, "exrule"

    invoke-virtual {v13, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/RecurrenceSet;->addPropertiesForRuleStr(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    const-string v3, "EXDATE"

    const-string v4, "exdate"

    invoke-virtual {v13, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/RecurrenceSet;->addPropertyForDateStr(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    invoke-virtual {v2}, Lcom/android/calendarcommon2/ICalendar$Component;->getPropertyNames()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_1a

    .line 1031
    invoke-static {v2, v12}, Lcom/google/android/syncadapters/calendar/EventHandler;->addRecurrenceToEntry(Lcom/android/calendarcommon2/ICalendar$Component;Lcom/google/api/services/calendar/model/Event;)V

    .line 1032
    const/4 v2, 0x1

    move v8, v2

    .line 1037
    :goto_4
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "allDay"

    invoke-virtual {v13, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 1039
    const-string v2, "eventTimezone"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1041
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1042
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    .line 1043
    const/4 v2, 0x0

    .line 1066
    :goto_5
    const-string v4, "dtstart"

    invoke-virtual {v13, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1067
    const-string v4, "dtstart"

    invoke-virtual {v13, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1068
    move/from16 v0, v16

    invoke-static {v4, v5, v0}, Lcom/google/android/syncadapters/calendar/EventHandler;->createEventDateTime(JZ)Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v4

    .line 1069
    if-nez v8, :cond_8

    if-eqz v2, :cond_9

    .line 1071
    :cond_8
    invoke-virtual {v4, v3}, Lcom/google/api/services/calendar/model/EventDateTime;->setTimeZone(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventDateTime;

    .line 1073
    :cond_9
    invoke-virtual {v12, v4}, Lcom/google/api/services/calendar/model/Event;->setStart(Lcom/google/api/services/calendar/model/EventDateTime;)Lcom/google/api/services/calendar/model/Event;

    .line 1077
    :cond_a
    const-string v4, "dtend"

    invoke-virtual {v13, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1078
    const-string v4, "dtend"

    invoke-virtual {v13, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1079
    move/from16 v0, v16

    invoke-static {v4, v5, v0}, Lcom/google/android/syncadapters/calendar/EventHandler;->createEventDateTime(JZ)Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v4

    .line 1080
    if-nez v8, :cond_b

    if-eqz v2, :cond_c

    .line 1082
    :cond_b
    invoke-virtual {v4, v3}, Lcom/google/api/services/calendar/model/EventDateTime;->setTimeZone(Ljava/lang/String;)Lcom/google/api/services/calendar/model/EventDateTime;

    .line 1084
    :cond_c
    invoke-virtual {v12, v4}, Lcom/google/api/services/calendar/model/Event;->setEnd(Lcom/google/api/services/calendar/model/EventDateTime;)Lcom/google/api/services/calendar/model/Event;

    .line 1088
    :cond_d
    invoke-static {v14, v12}, Lcom/google/android/syncadapters/calendar/EventHandler;->addRemindersToEntry(Ljava/util/ArrayList;Lcom/google/api/services/calendar/model/Event;)V

    .line 1091
    const-string v2, "hasExtendedProperties"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 1092
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_e

    .line 1093
    invoke-static {v14, v12}, Lcom/google/android/syncadapters/calendar/EventHandler;->addExtendedPropertiesToEntry(Ljava/util/ArrayList;Lcom/google/api/services/calendar/model/Event;)V

    .line 1096
    :cond_e
    const-wide/16 v4, -0x1

    .line 1097
    const-string v2, "original_sync_id"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1098
    const-string v2, "originalInstanceTime"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1099
    const-string v2, "originalInstanceTime"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1101
    :cond_f
    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1c

    .line 1102
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    const/4 v2, 0x1

    move v10, v2

    .line 1103
    :goto_6
    if-eqz v10, :cond_12

    .line 1106
    const/4 v2, 0x1

    .line 1107
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "originalAllDay"

    invoke-virtual {v13, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1108
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {v6, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 1111
    invoke-static {v4, v5, v2}, Lcom/google/android/syncadapters/calendar/EventHandler;->createEventDateTime(JZ)Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/google/api/services/calendar/model/Event;->setOriginalStartTime(Lcom/google/api/services/calendar/model/EventDateTime;)Lcom/google/api/services/calendar/model/Event;

    .line 1112
    invoke-virtual {v12, v8}, Lcom/google/api/services/calendar/model/Event;->setRecurringEventId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    .line 1113
    invoke-static {}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mProvider:Landroid/content/ContentProviderClient;

    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "sync_data2"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "hasAttendeeData"

    aput-object v7, v5, v6

    const-string v6, "_sync_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v8, v7, v11

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1123
    if-eqz v3, :cond_12

    .line 1125
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1126
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1127
    if-eqz v2, :cond_10

    .line 1128
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/google/api/services/calendar/model/Event;->setSequence(Ljava/lang/Integer;)Lcom/google/api/services/calendar/model/Event;

    .line 1130
    :cond_10
    const/4 v2, 0x1

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1131
    if-nez v2, :cond_11

    .line 1132
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/google/api/services/calendar/model/Event;->setAttendeesOmitted(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/Event;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1136
    :cond_11
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1142
    :cond_12
    const-string v2, "_sync_id"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1143
    const-string v2, "_sync_id"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1144
    invoke-virtual {v12, v2}, Lcom/google/api/services/calendar/model/Event;->setId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    .line 1172
    :goto_7
    const-string v3, "eventLocation"

    invoke-virtual {v13, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1173
    const-string v3, "eventLocation"

    invoke-virtual {v13, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1174
    invoke-virtual {v12, v3}, Lcom/google/api/services/calendar/model/Event;->setLocation(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    .line 1175
    invoke-virtual/range {p2 .. p2}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v3

    .line 1176
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3, v15, v9}, Lcom/google/android/syncadapters/calendar/EventHandler;->setStructuredLocationForEvent(Lcom/google/api/services/calendar/model/Event;Landroid/content/ContentValues;Ljava/util/Map;Z)V

    .line 1180
    :cond_13
    const-string v3, "calendar_id"

    .line 1181
    invoke-virtual {v13, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 1180
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2, v3, v12}, Lcom/google/android/syncadapters/calendar/EventHandler;->addTitleContactAnnotationsToEntry(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Long;Lcom/google/api/services/calendar/model/Event;)V

    .line 1184
    const-string v3, "calendar_id"

    invoke-virtual {v13, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2, v3, v12}, Lcom/google/android/syncadapters/calendar/EventHandler;->addAttachmentsToEntry(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Long;Lcom/google/api/services/calendar/model/Event;)V

    .line 1186
    const-string v2, "guestsCanInviteOthers"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1187
    const-string v2, "guestsCanInviteOthers"

    .line 1188
    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    :goto_8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1187
    invoke-virtual {v12, v2}, Lcom/google/api/services/calendar/model/Event;->setGuestsCanInviteOthers(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/Event;

    .line 1190
    :cond_14
    const-string v2, "guestsCanModify"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1191
    const-string v2, "guestsCanModify"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_20

    const/4 v2, 0x1

    :goto_9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/google/api/services/calendar/model/Event;->setGuestsCanModify(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/Event;

    .line 1193
    :cond_15
    const-string v2, "guestsCanSeeGuests"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1194
    const-string v2, "guestsCanSeeGuests"

    .line 1195
    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    :goto_a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1194
    invoke-virtual {v12, v2}, Lcom/google/api/services/calendar/model/Event;->setGuestsCanSeeOtherGuests(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/Event;

    .line 1198
    :cond_16
    const-string v2, "organizer"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1199
    new-instance v2, Lcom/google/api/services/calendar/model/Event$Organizer;

    invoke-direct {v2}, Lcom/google/api/services/calendar/model/Event$Organizer;-><init>()V

    .line 1200
    const-string v3, "organizer"

    invoke-virtual {v13, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/api/services/calendar/model/Event$Organizer;->setEmail(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event$Organizer;

    .line 1201
    invoke-virtual {v12, v2}, Lcom/google/api/services/calendar/model/Event;->setOrganizer(Lcom/google/api/services/calendar/model/Event$Organizer;)Lcom/google/api/services/calendar/model/Event;

    .line 1204
    :cond_17
    const-string v2, "eventColor_index"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1205
    const-string v2, "eventColor_index"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1206
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1207
    sget-object v2, Lcom/google/api/client/util/Data;->NULL_STRING:Ljava/lang/String;

    invoke-virtual {v12, v2}, Lcom/google/api/services/calendar/model/Event;->setColorId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    .line 1214
    :cond_18
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v12}, Lcom/google/android/syncadapters/calendar/EventHandler;->addEventExtrasToEntry(Ljava/util/HashMap;Lcom/google/api/services/calendar/model/Event;)V

    .line 1216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mSyncHooks:[Lcom/google/android/syncadapters/calendar/SyncHooks;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v4, :cond_23

    aget-object v5, v3, v2

    .line 1217
    move-object/from16 v0, p2

    invoke-interface {v5, v0, v12, v9}, Lcom/google/android/syncadapters/calendar/SyncHooks;->onAfterConvertEntityToEvent(Landroid/content/Entity;Lcom/google/api/services/calendar/model/Event;Z)V

    .line 1216
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 925
    :cond_19
    const/4 v2, 0x0

    move v9, v2

    goto/16 :goto_0

    .line 936
    :pswitch_0
    const-string v2, "cancelled"

    goto/16 :goto_1

    .line 939
    :pswitch_1
    const-string v2, "confirmed"

    goto/16 :goto_1

    .line 942
    :pswitch_2
    const-string v2, "tentative"

    goto/16 :goto_1

    .line 963
    :pswitch_3
    const-string v2, "default"

    goto/16 :goto_2

    .line 966
    :pswitch_4
    const-string v2, "confidential"

    goto/16 :goto_2

    .line 969
    :pswitch_5
    const-string v2, "private"

    goto/16 :goto_2

    .line 972
    :pswitch_6
    const-string v2, "public"

    goto/16 :goto_2

    .line 995
    :pswitch_7
    const-string v2, "opaque"

    goto/16 :goto_3

    .line 998
    :pswitch_8
    const-string v2, "transparent"

    goto/16 :goto_3

    .line 1034
    :cond_1a
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_4

    .line 1045
    :cond_1b
    const/4 v10, 0x1

    .line 1049
    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/TimeZoneUtils;->checkForValidTimezoneId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1053
    if-eqz v11, :cond_24

    .line 1054
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1055
    const-string v2, "eventTimezone"

    invoke-virtual {v5, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mAccount:Landroid/accounts/Account;

    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mProvider:Landroid/content/ContentProviderClient;

    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id="

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "_id"

    .line 1060
    invoke-virtual {v13, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v18, v18, v19

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 1056
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->update(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v2, v10

    move-object v3, v11

    .line 1062
    goto/16 :goto_5

    .line 1102
    :cond_1c
    const/4 v2, 0x0

    move v10, v2

    goto/16 :goto_6

    .line 1136
    :catchall_0
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1145
    :cond_1d
    if-nez v10, :cond_1e

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/syncadapters/calendar/EventHandler;->extractIcalUid(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1e

    if-nez v9, :cond_1e

    .line 1156
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 1155
    invoke-static {v2}, Lcom/google/android/calendar/utils/Base32EncodingHelper;->encodeLowercaseNoPaddingBase32Hex([B)Ljava/lang/String;

    move-result-object v8

    .line 1159
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1160
    const-string v2, "_sync_id"

    invoke-virtual {v5, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mAccount:Landroid/accounts/Account;

    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mProvider:Landroid/content/ContentProviderClient;

    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id="

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "_id"

    .line 1164
    invoke-virtual {v13, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v11, v14

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 1161
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->update(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1166
    invoke-virtual {v12, v8}, Lcom/google/api/services/calendar/model/Event;->setId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    move-object v2, v8

    .line 1167
    goto/16 :goto_7

    .line 1168
    :cond_1e
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 1188
    :cond_1f
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 1191
    :cond_20
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 1195
    :cond_21
    const/4 v2, 0x0

    goto/16 :goto_a

    .line 1209
    :cond_22
    invoke-virtual {v12, v2}, Lcom/google/api/services/calendar/model/Event;->setColorId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Event;

    goto/16 :goto_b

    .line 1220
    :cond_23
    return-object v12

    :cond_24
    move-object v3, v2

    move v2, v10

    goto/16 :goto_5

    .line 934
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 961
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 993
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected entryToContentValues(Lcom/google/api/services/calendar/model/Event;Landroid/content/ContentValues;Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;J)I
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 2712
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->clear()V

    .line 2713
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->clear()V

    .line 2716
    invoke-virtual/range {p1 .. p1}, Lcom/google/api/services/calendar/model/Event;->getId()Ljava/lang/String;

    move-result-object v16

    .line 2717
    const-string v4, "sync_data4"

    invoke-virtual/range {p1 .. p1}, Lcom/google/api/services/calendar/model/Event;->getEtag()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2718
    const-string v4, "_sync_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2719
    invoke-virtual/range {p1 .. p1}, Lcom/google/api/services/calendar/model/Event;->getICalUID()Ljava/lang/String;

    move-result-object v4

    .line 2720
    if-eqz v4, :cond_0

    .line 2721
    const-string v5, "sync_data1"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2723
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/api/services/calendar/model/Event;->getSequence()Ljava/lang/Integer;

    move-result-object v4

    .line 2724
    if-eqz v4, :cond_1

    .line 2725
    const-string v5, "sync_data2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2727
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/api/services/calendar/model/Event;->getStatus()Ljava/lang/String;

    move-result-object v8

    .line 2730
    invoke-virtual/range {p1 .. p1}, Lcom/google/api/services/calendar/model/Event;->getRecurringEventId()Ljava/lang/String;

    move-result-object v9

    .line 2731
    invoke-virtual/range {p1 .. p1}, Lcom/google/api/services/calendar/model/Event;->getOriginalStartTime()Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v6

    .line 2732
    const/4 v4, 0x0

    .line 2733
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3e

    if-eqz v6, :cond_3e

    .line 2736
    const/4 v5, 0x1

    .line 2737
    invoke-virtual {v6}, Lcom/google/api/services/calendar/model/EventDateTime;->getDate()Lcom/google/api/client/util/DateTime;

    move-result-object v4

    .line 2738
    if-eqz v4, :cond_5

    .line 2739
    invoke-virtual {v4}, Lcom/google/api/client/util/DateTime;->getValue()J

    move-result-wide v6

    .line 2740
    const/4 v4, 0x1

    .line 2746
    :goto_0
    const-string v10, "original_sync_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2748
    const-string v9, "originalInstanceTime"

    const-wide/16 v10, 0x3e8

    div-long/2addr v6, v10

    const-wide/16 v10, 0x3e8

    mul-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2749
    const-string v6, "originalAllDay"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2754
    :goto_1
    if-eqz v8, :cond_2

    const-string v4, "confirmed"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2755
    :cond_2
    const/4 v4, 0x1

    .line 2767
    :goto_2
    const-string v6, "eventStatus"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2770
    invoke-virtual/range {p1 .. p1}, Lcom/google/api/services/calendar/model/Event;->getUpdated()Lcom/google/api/client/util/DateTime;

    move-result-object v6

    .line 2772
    if-eqz v6, :cond_3

    .line 2773
    const-string v7, "sync_data5"

    invoke-virtual {v6}, Lcom/google/api/client/util/DateTime;->toStringRfc3339()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2778
    :cond_3
    if-eqz p4, :cond_4

    .line 2779
    const-string v6, "calendar_id"

    move-object/from16 v0, p4

    iget-wide v8, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->calendarId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2782
    :cond_4
    if-eqz v5, :cond_b

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b

    .line 2786
    invoke-virtual/range {p1 .. p1}, Lcom/google/api/services/calendar/model/Event;->getOriginalStartTime()Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v4

    .line 2787
    invoke-virtual {v4}, Lcom/google/api/services/calendar/model/EventDateTime;->getDate()Lcom/google/api/client/util/DateTime;

    move-result-object v5

    .line 2788
    if-eqz v5, :cond_a

    .line 2789
    const-string v4, "dtstart"

    invoke-virtual {v5}, Lcom/google/api/client/util/DateTime;->getValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2793
    :goto_3
    const/4 v4, 0x0

    .line 3087
    :goto_4
    return v4

    .line 2742
    :cond_5
    invoke-virtual {v6}, Lcom/google/api/services/calendar/model/EventDateTime;->getDateTime()Lcom/google/api/client/util/DateTime;

    move-result-object v4

    .line 2743
    invoke-virtual {v4}, Lcom/google/api/client/util/DateTime;->getValue()J

    move-result-wide v6

    .line 2744
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2756
    :cond_6
    const-string v4, "cancelled"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2757
    if-nez v5, :cond_7

    .line 2758
    const/4 v4, 0x1

    goto :goto_4

    .line 2760
    :cond_7
    const/4 v4, 0x2

    goto :goto_2

    .line 2761
    :cond_8
    const-string v4, "tentative"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2762
    const/4 v4, 0x0

    goto :goto_2

    .line 2764
    :cond_9
    const-string v4, "EventHandler"

    const-string v5, "Invalid status: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2765
    const/4 v4, 0x2

    goto :goto_4

    .line 2791
    :cond_a
    const-string v5, "dtstart"

    invoke-virtual {v4}, Lcom/google/api/services/calendar/model/EventDateTime;->getDateTime()Lcom/google/api/client/util/DateTime;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/client/util/DateTime;->getValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_3

    .line 2796
    :cond_b
    const-string v4, "dirty"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2799
    invoke-virtual/range {p1 .. p1}, Lcom/google/api/services/calendar/model/Event;->getStart()Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v6

    .line 2809
    invoke-virtual {v6}, Lcom/google/api/services/calendar/model/EventDateTime;->getDate()Lcom/google/api/client/util/DateTime;

    move-result-object v5

    .line 2813
    if-eqz v5, :cond_16

    .line 2814
    const-string v4, "eventTimezone"

    const-string v6, "UTC"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2815
    const/4 v4, 0x1

    .line 2816
    invoke-virtual {v5}, Lcom/google/api/client/util/DateTime;->getValue()J

    move-result-wide v8

    .line 2817
    invoke-virtual/range {p1 .. p1}, Lcom/google/api/services/calendar/model/Event;->getEnd()Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/services/calendar/model/EventDateTime;->getDate()Lcom/google/api/client/util/DateTime;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/client/util/DateTime;->getValue()J

    move-result-wide v6

    move-wide v10, v8

    move-wide v8, v6

    move v7, v4

    .line 2835
    :goto_5
    const-string v4, "allDay"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2839
    const-string v4, "dtstart"

    const-wide/16 v12, 0x3e8

    div-long v12, v10, v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2842
    invoke-virtual/range {p1 .. p1}, Lcom/google/api/services/calendar/model/Event;->getVisibility()Ljava/lang/String;

    move-result-object v4

    .line 2843
    if-eqz v4, :cond_c

    const-string v5, "default"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 2844
    :cond_c
    const-string v4, "accessLevel"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2864
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/api/services/calendar/model/Event;->getTransparency()Ljava/lang/String;

    move-result-object v4

    .line 2865
    if-eqz v4, :cond_d

    const-string v5, "opaque"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 2866
    :cond_d
    const-string v4, "availability"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2874
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/google/api/services/calendar/model/Event;->getSummary()Ljava/lang/String;

    move-result-object v4

    .line 2875
    if-nez v4, :cond_e

    .line 2876
    const-string v4, ""

    .line 2878
    :cond_e
    const-string v5, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2881
    invoke-virtual/range {p1 .. p1}, Lcom/google/api/services/calendar/model/Event;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 2882
    if-nez v4, :cond_f

    .line 2883
    const-string v4, ""

    .line 2885
    :cond_f
    const-string v5, "description"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2888
    invoke-virtual/range {p1 .. p1}, Lcom/google/api/services/calendar/model/Event;->getLocation()Ljava/lang/String;

    move-result-object v4

    .line 2889
    if-nez v4, :cond_10

    .line 2890
    const-string v4, ""

    .line 2892
    :cond_10
    const-string v5, "eventLocation"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2895
    invoke-virtual/range {p1 .. p1}, Lcom/google/api/services/calendar/model/Event;->getHtmlLink()Ljava/lang/String;

    move-result-object v4

    .line 2896
    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mEventPlusPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2897
    const-string v5, "customAppUri"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2898
    const-string v4, "customAppPackage"

    const-string v5, "com.google.android.apps.plus"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2902
    :cond_11
    invoke-static/range {p1 .. p2}, Lcom/google/android/syncadapters/calendar/EventHandler;->entryColorToContentValues(Lcom/google/api/services/calendar/model/Event;Landroid/content/ContentValues;)V

    .line 2905
    invoke-virtual/range {p1 .. p1}, Lcom/google/api/services/calendar/model/Event;->getReminders()Lcom/google/api/services/calendar/model/Event$Reminders;

    move-result-object v4

    .line 2906
    if-eqz v4, :cond_13

    .line 2908
    invoke-virtual {v4}, Lcom/google/api/services/calendar/model/Event$Reminders;->getUseDefault()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 2909
    if-nez p4, :cond_12

    .line 2910
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/EventHandler;->getOrCreateSyncInfoForCalendar(J)Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;

    move-result-object p4

    .line 2912
    :cond_12
    if-nez p4, :cond_21

    const/4 v4, 0x0

    .line 2917
    :goto_8
    if-eqz v4, :cond_13

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13

    .line 2920
    const-string v4, "hasAlarm"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2924
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/google/api/services/calendar/model/Event;->getExtendedProperties()Lcom/google/api/services/calendar/model/Event$ExtendedProperties;

    move-result-object v6

    .line 2925
    const/4 v5, 0x0

    .line 2927
    const/4 v4, 0x1

    .line 2928
    if-eqz v6, :cond_14

    .line 2929
    invoke-virtual {v6}, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;->getPrivate()Ljava/util/Map;

    move-result-object v12

    .line 2930
    invoke-virtual {v6}, Lcom/google/api/services/calendar/model/Event$ExtendedProperties;->getShared()Ljava/util/Map;

    move-result-object v6

    .line 2932
    if-eqz v6, :cond_24

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_24

    .line 2933
    const/4 v5, 0x1

    .line 2951
    :cond_14
    :goto_9
    const-string v4, "hasExtendedProperties"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2954
    const-string v4, "hasAlarm"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2957
    const-string v5, "hasAttendeeData"

    .line 2958
    invoke-virtual/range {p1 .. p1}, Lcom/google/api/services/calendar/model/Event;->getAttendeesOmitted()Ljava/lang/Boolean;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/google/android/syncadapters/calendar/Utils;->getBooleanValue(Ljava/lang/Boolean;Z)Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x0

    :goto_a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2957
    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2961
    invoke-virtual/range {p1 .. p1}, Lcom/google/api/services/calendar/model/Event;->getRecurrence()Ljava/util/List;

    move-result-object v17

    .line 2962
    const/4 v15, 0x0

    .line 2963
    const/4 v14, 0x0

    .line 2964
    const/4 v13, 0x0

    .line 2965
    const/4 v12, 0x0

    .line 2966
    if-eqz v17, :cond_37

    .line 2967
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_15
    :goto_b
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    .line 2968
    if-nez v6, :cond_28

    .line 2969
    const-string v4, "EventHandler"

    const-string v5, "Invalid null recurrence line in event %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v16, v6, v19

    invoke-static {v4, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_b

    .line 2819
    :cond_16
    const/4 v5, 0x0

    .line 2820
    invoke-virtual {v6}, Lcom/google/api/services/calendar/model/EventDateTime;->getTimeZone()Ljava/lang/String;

    move-result-object v4

    .line 2821
    if-eqz v4, :cond_17

    .line 2822
    const-string v7, "eventTimezone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2831
    :goto_c
    invoke-virtual {v6}, Lcom/google/api/services/calendar/model/EventDateTime;->getDateTime()Lcom/google/api/client/util/DateTime;

    move-result-object v4

    .line 2832
    invoke-virtual {v4}, Lcom/google/api/client/util/DateTime;->getValue()J

    move-result-wide v8

    .line 2833
    invoke-virtual/range {p1 .. p1}, Lcom/google/api/services/calendar/model/Event;->getEnd()Lcom/google/api/services/calendar/model/EventDateTime;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/services/calendar/model/EventDateTime;->getDateTime()Lcom/google/api/client/util/DateTime;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/client/util/DateTime;->getValue()J

    move-result-wide v6

    move-wide v10, v8

    move-wide v8, v6

    move v7, v5

    goto/16 :goto_5

    .line 2824
    :cond_17
    if-nez p4, :cond_18

    .line 2825
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/EventHandler;->getOrCreateSyncInfoForCalendar(J)Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;

    move-result-object p4

    .line 2827
    :cond_18
    const-string v7, "eventTimezone"

    if-eqz p4, :cond_19

    .line 2828
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->calendarTimezone:Ljava/lang/String;

    .line 2827
    :goto_d
    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 2829
    :cond_19
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    goto :goto_d

    .line 2846
    :cond_1a
    const-string v5, "confidential"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 2847
    const-string v4, "accessLevel"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_6

    .line 2849
    :cond_1b
    const-string v5, "private"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    const-string v5, "secret"

    .line 2850
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 2853
    :cond_1c
    const-string v4, "accessLevel"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_6

    .line 2855
    :cond_1d
    const-string v5, "public"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 2856
    const-string v4, "accessLevel"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_6

    .line 2859
    :cond_1e
    const-string v5, "EventHandler"

    const-string v6, "Unexpected visibility: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2860
    const/4 v4, 0x2

    goto/16 :goto_4

    .line 2867
    :cond_1f
    const-string v5, "transparent"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 2868
    const-string v4, "availability"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_7

    .line 2870
    :cond_20
    const-string v5, "EventHandler"

    const-string v6, "Unexpected transparency: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2871
    const/4 v4, 0x2

    goto/16 :goto_4

    .line 2912
    :cond_21
    const/4 v4, 0x1

    if-ne v7, v4, :cond_22

    .line 2913
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->defaultAllDayReminders:Ljava/util/List;

    goto/16 :goto_8

    :cond_22
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->defaultReminders:Ljava/util/List;

    goto/16 :goto_8

    .line 2915
    :cond_23
    invoke-virtual {v4}, Lcom/google/api/services/calendar/model/Event$Reminders;->getOverrides()Ljava/util/List;

    move-result-object v4

    goto/16 :goto_8

    .line 2934
    :cond_24
    if-eqz v12, :cond_14

    .line 2939
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v6, v5

    move v5, v4

    :goto_e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2940
    const-string v13, "alarmReminder"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 2941
    const/4 v4, 0x1

    move v5, v6

    .line 2945
    :goto_f
    if-eqz v4, :cond_25

    const/4 v6, 0x1

    if-eq v5, v6, :cond_14

    :cond_25
    move v6, v5

    move v5, v4

    .line 2948
    goto :goto_e

    .line 2943
    :cond_26
    const/4 v6, 0x1

    move v4, v5

    move v5, v6

    goto :goto_f

    .line 2958
    :cond_27
    const/4 v4, 0x1

    goto/16 :goto_a

    .line 2974
    :cond_28
    :try_start_0
    new-instance v4, Lcom/android/calendarcommon2/ICalendar$Component;

    const-string v5, "DUMMY"

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v4, v5, v0}, Lcom/android/calendarcommon2/ICalendar$Component;-><init>(Ljava/lang/String;Lcom/android/calendarcommon2/ICalendar$Component;)V

    invoke-static {v4, v6}, Lcom/android/calendarcommon2/ICalendar;->parseComponent(Lcom/android/calendarcommon2/ICalendar$Component;Ljava/lang/String;)Lcom/android/calendarcommon2/ICalendar$Component;
    :try_end_0
    .catch Lcom/android/calendarcommon2/ICalendar$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 2981
    invoke-virtual/range {v19 .. v19}, Lcom/android/calendarcommon2/ICalendar$Component;->getPropertyNames()Ljava/util/Set;

    move-result-object v4

    .line 2982
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_29
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .line 2983
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/calendarcommon2/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 2984
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_10
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendarcommon2/ICalendar$Property;

    .line 2985
    const-string v22, "RRULE"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2a

    .line 2988
    :try_start_1
    invoke-virtual {v4}, Lcom/android/calendarcommon2/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/Utils;->sanitizeRecurrence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2987
    invoke-static {v15, v4}, Lcom/google/android/syncadapters/calendar/EventHandler;->appendRecurrenceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    move-object/from16 v23, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v4

    move-object/from16 v4, v23

    :goto_11
    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v4

    .line 3011
    goto :goto_10

    .line 2976
    :catch_0
    move-exception v4

    .line 2977
    const-string v5, "EventHandler"

    const-string v7, "Invalid recurrence line in event %s: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v16, v8, v9

    const/4 v9, 0x1

    aput-object v6, v8, v9

    invoke-static {v5, v4, v7, v8}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2978
    const/4 v4, 0x2

    goto/16 :goto_4

    .line 2989
    :catch_1
    move-exception v4

    .line 2990
    const-string v4, "EventHandler"

    const-string v5, "Invalid recurrence line in event %s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    const/4 v8, 0x1

    aput-object v6, v7, v8

    invoke-static {v4, v5, v7}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2992
    const/4 v4, 0x2

    goto/16 :goto_4

    .line 2994
    :cond_2a
    const-string v22, "RDATE"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2b

    .line 2995
    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/EventHandler;->getRecurrenceDate(Lcom/android/calendarcommon2/ICalendar$Property;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Lcom/google/android/syncadapters/calendar/EventHandler;->appendRecurrenceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v14, v15

    move-object/from16 v23, v13

    move-object v13, v4

    move-object v4, v12

    move-object/from16 v12, v23

    goto :goto_11

    .line 2996
    :cond_2b
    const-string v22, "EXRULE"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2c

    .line 2999
    :try_start_2
    invoke-virtual {v4}, Lcom/android/calendarcommon2/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/Utils;->sanitizeRecurrence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2998
    invoke-static {v13, v4}, Lcom/google/android/syncadapters/calendar/EventHandler;->appendRecurrenceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v23, v12

    move-object v12, v4

    move-object/from16 v4, v23

    .line 3004
    goto :goto_11

    .line 3000
    :catch_2
    move-exception v4

    .line 3001
    const-string v4, "EventHandler"

    const-string v5, "Invalid recurrence line in event %s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    const/4 v8, 0x1

    aput-object v6, v7, v8

    invoke-static {v4, v5, v7}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3003
    const/4 v4, 0x2

    goto/16 :goto_4

    .line 3005
    :cond_2c
    const-string v22, "EXDATE"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2d

    .line 3006
    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/EventHandler;->getRecurrenceDate(Lcom/android/calendarcommon2/ICalendar$Property;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/google/android/syncadapters/calendar/EventHandler;->appendRecurrenceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    goto/16 :goto_11

    .line 3008
    :cond_2d
    const-string v4, "EventHandler"

    const-string v5, "Invalid recurrence line in event %s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    const/4 v8, 0x1

    aput-object v6, v7, v8

    invoke-static {v4, v5, v7}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3009
    const/4 v4, 0x2

    goto/16 :goto_4

    .line 3014
    :cond_2e
    if-eqz v12, :cond_2f

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-gt v4, v5, :cond_2f

    .line 3015
    invoke-static {v12}, Lcom/google/android/syncadapters/calendar/Utils;->collateDatesByTimeZone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3018
    :cond_2f
    :try_start_3
    new-instance v4, Lcom/android/calendarcommon2/RecurrenceSet;

    invoke-direct {v4, v15, v14, v13, v12}, Lcom/android/calendarcommon2/RecurrenceSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessError; {:try_start_3 .. :try_end_3} :catch_4

    .line 3033
    sub-long v4, v8, v10

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    .line 3034
    if-nez v7, :cond_36

    .line 3035
    const-string v6, "duration"

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x16

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "P"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "S"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3043
    :goto_12
    const-string v4, "rrule"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3044
    const-string v4, "rdate"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3045
    const-string v4, "exrule"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3046
    const-string v4, "exdate"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3048
    const-string v5, "guestsCanInviteOthers"

    .line 3049
    invoke-virtual/range {p1 .. p1}, Lcom/google/api/services/calendar/model/Event;->getGuestsCanInviteOthers()Ljava/lang/Boolean;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lcom/google/android/syncadapters/calendar/Utils;->getBooleanValue(Ljava/lang/Boolean;Z)Z

    move-result v4

    if-eqz v4, :cond_38

    const/4 v4, 0x1

    :goto_13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3048
    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3050
    const-string v5, "guestsCanModify"

    .line 3051
    invoke-virtual/range {p1 .. p1}, Lcom/google/api/services/calendar/model/Event;->getGuestsCanModify()Ljava/lang/Boolean;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/google/android/syncadapters/calendar/Utils;->getBooleanValue(Ljava/lang/Boolean;Z)Z

    move-result v4

    if-eqz v4, :cond_39

    const/4 v4, 0x1

    :goto_14
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3050
    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3052
    const-string v5, "guestsCanSeeGuests"

    .line 3053
    invoke-virtual/range {p1 .. p1}, Lcom/google/api/services/calendar/model/Event;->getGuestsCanSeeOtherGuests()Ljava/lang/Boolean;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lcom/google/android/syncadapters/calendar/Utils;->getBooleanValue(Ljava/lang/Boolean;Z)Z

    move-result v4

    if-eqz v4, :cond_3a

    const/4 v4, 0x1

    :goto_15
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3052
    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3055
    invoke-virtual/range {p1 .. p1}, Lcom/google/api/services/calendar/model/Event;->getOrganizer()Lcom/google/api/services/calendar/model/Event$Organizer;

    move-result-object v5

    .line 3056
    if-eqz v5, :cond_33

    .line 3062
    const/4 v4, 0x0

    .line 3063
    invoke-virtual {v5}, Lcom/google/api/services/calendar/model/Event$Organizer;->getSelf()Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/google/android/syncadapters/calendar/Utils;->getBooleanValue(Ljava/lang/Boolean;Z)Z

    move-result v6

    .line 3064
    if-eqz v6, :cond_30

    .line 3065
    const-wide/16 v6, 0x0

    cmp-long v6, p5, v6

    if-gez v6, :cond_3b

    .line 3067
    const-string v6, "EventHandler"

    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    const-string v8, "Missing calendarId, can\'t get owner"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3072
    :cond_30
    :goto_16
    if-nez v4, :cond_31

    .line 3073
    invoke-virtual {v5}, Lcom/google/api/services/calendar/model/Event$Organizer;->getEmail()Ljava/lang/String;

    move-result-object v4

    .line 3075
    :cond_31
    if-nez v4, :cond_32

    .line 3076
    invoke-virtual {v5}, Lcom/google/api/services/calendar/model/Event$Organizer;->getId()Ljava/lang/String;

    move-result-object v5

    .line 3077
    if-eqz v5, :cond_32

    .line 3078
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "@profile.calendar.google.com"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3c

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3081
    :cond_32
    :goto_17
    const-string v5, "organizer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3085
    :cond_33
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/EventHandler;->apiaryEventToTimelyExtras(Lcom/google/api/services/calendar/model/Event;Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;)V

    .line 3087
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 3019
    :catch_3
    move-exception v4

    .line 3020
    const-string v5, "EventHandler"

    const-string v6, "Unable to parse recurrence in event %s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    const/4 v8, 0x1

    aput-object v17, v7, v8

    invoke-static {v5, v4, v6, v7}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3021
    const/4 v4, 0x2

    goto/16 :goto_4

    .line 3022
    :catch_4
    move-exception v4

    .line 3023
    invoke-virtual {v4}, Ljava/lang/IllegalAccessError;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_34

    .line 3024
    invoke-virtual {v4}, Ljava/lang/IllegalAccessError;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "EventRecurrence$InvalidFormatException"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 3025
    :cond_34
    throw v4

    .line 3030
    :cond_35
    const-string v5, "EventHandler"

    const-string v6, "Unable to parse recurrence in event %s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    const/4 v8, 0x1

    aput-object v17, v7, v8

    invoke-static {v5, v4, v6, v7}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3031
    const/4 v4, 0x2

    goto/16 :goto_4

    .line 3037
    :cond_36
    const-string v6, "duration"

    const-wide/32 v8, 0x15180

    div-long/2addr v4, v8

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x16

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "P"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "D"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 3041
    :cond_37
    const-string v4, "dtend"

    const-wide/16 v6, 0x3e8

    div-long v6, v8, v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_12

    .line 3049
    :cond_38
    const/4 v4, 0x0

    goto/16 :goto_13

    .line 3051
    :cond_39
    const/4 v4, 0x0

    goto/16 :goto_14

    .line 3053
    :cond_3a
    const/4 v4, 0x0

    goto/16 :goto_15

    .line 3069
    :cond_3b
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/EventHandler;->getCalendarOwnerAccount(J)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_16

    .line 3078
    :cond_3c
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_3d
    move v5, v6

    goto/16 :goto_9

    :cond_3e
    move v5, v4

    goto/16 :goto_1
.end method

.method public getDeletedColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1920
    const-string v0, "deleted"

    return-object v0
.end method

.method public getEntitySelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3281
    const-string v0, "_sync_id IS NULL OR (_sync_id IS NOT NULL AND lastSynced = 0 AND (dirty != 0 OR deleted != 0))"

    return-object v0
.end method

.method public getEntityUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 335
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mAccount:Landroid/accounts/Account;

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->toAsSyncAdapterUri(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method getOrCreateSyncInfoForCalendar(J)Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mCalendarIdToLocalSyncInfo:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;

    .line 1926
    if-nez v0, :cond_0

    .line 1927
    new-instance v7, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;

    invoke-direct {v7}, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;-><init>()V

    .line 1929
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 1931
    iput-wide p1, v7, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->calendarId:J

    .line 1933
    invoke-static {}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mProvider:Landroid/content/ContentProviderClient;

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "cal_sync1"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "calendar_timezone"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "calendar_access_level"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "account_name"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "account_type"

    aput-object v5, v3, v4

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v8, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1947
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1948
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1949
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->calendarSyncId:Ljava/lang/String;

    .line 1950
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->calendarTimezone:Ljava/lang/String;

    .line 1951
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->accessLevel:I

    .line 1952
    new-instance v1, Landroid/accounts/Account;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v7, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->account:Landroid/accounts/Account;

    .line 1959
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1961
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    iget-object v1, v7, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->account:Landroid/accounts/Account;

    const/4 v2, 0x1

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->loadEventReminders(Lcom/google/android/syncadapters/calendar/timely/TimelyStore;Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->defaultAllDayReminders:Ljava/util/List;

    .line 1963
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    iget-object v1, v7, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->account:Landroid/accounts/Account;

    const/4 v2, 0x0

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->loadEventReminders(Lcom/google/android/syncadapters/calendar/timely/TimelyStore;Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/syncadapters/calendar/CalendarSyncInfo;->defaultReminders:Ljava/util/List;

    .line 1966
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mCalendarIdToLocalSyncInfo:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v0, v7

    .line 1968
    :cond_0
    return-object v0

    .line 1954
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1956
    new-instance v0, Lcom/google/android/apiary/ParseException;

    const-string v1, "Could not get calendar details."

    invoke-direct {v0, v1}, Lcom/google/android/apiary/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public itemToSourceId(Lcom/google/api/services/calendar/model/Event;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Event;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic itemToSourceId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    check-cast p1, Lcom/google/api/services/calendar/model/Event;

    invoke-virtual {p0, p1}, Lcom/google/android/syncadapters/calendar/EventHandler;->itemToSourceId(Lcom/google/api/services/calendar/model/Event;)Ljava/lang/String;

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

    .line 341
    if-gtz p3, :cond_0

    move-object v6, v3

    .line 342
    :goto_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mAccount:Landroid/accounts/Account;

    .line 343
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mProvider:Landroid/content/ContentProviderClient;

    sget-object v2, Landroid/provider/CalendarContract$EventsEntity;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/EventHandler;->mProvider:Landroid/content/ContentProviderClient;

    .line 342
    invoke-static {v0, v1}, Landroid/provider/CalendarContract$EventsEntity;->newEntityIterator(Landroid/database/Cursor;Landroid/content/ContentProviderClient;)Landroid/content/EntityIterator;

    move-result-object v0

    return-object v0

    .line 341
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
    .locals 20
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
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 356
    const-string v4, "Send event to server"

    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 357
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v16

    .line 358
    const-string v4, "cal_sync1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mCalendarId:Ljava/lang/String;

    .line 359
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mCalendarId:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 360
    const-string v4, "EventHandler"

    const-string v5, "Entity with no calendar id found: %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "_id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 361
    const/4 v4, 0x0

    .line 815
    :goto_0
    return-object v4

    .line 364
    :cond_0
    const-string v4, "local android etag magic value"

    const-string v5, "sync_data4"

    .line 365
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 364
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 366
    const-string v4, "EventHandler"

    const-string v5, "Entity with magic ETAG found: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 367
    const/4 v4, 0x0

    goto :goto_0

    .line 370
    :cond_1
    const-string v4, "_sync_id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 372
    if-eqz v5, :cond_2

    const-string v4, "SYNC_ERROR: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 376
    const-string v6, "_sync_id"

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const/4 v4, 0x0

    move-object v11, v4

    .line 381
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mCalendarId:Ljava/lang/String;

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 382
    const-string v4, "primary"

    move-object v12, v4

    .line 383
    :goto_2
    const-string v4, "deleted"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    move v6, v4

    .line 396
    :goto_3
    if-eqz v6, :cond_5

    if-nez v11, :cond_5

    .line 397
    const-string v4, "EventHandler"

    const-string v5, "Local event deleted. Do nothing"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 398
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    move-object v11, v5

    .line 379
    goto :goto_1

    .line 382
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mCalendarId:Ljava/lang/String;

    move-object v12, v4

    goto :goto_2

    .line 383
    :cond_4
    const/4 v4, 0x0

    move v6, v4

    goto :goto_3

    .line 402
    :cond_5
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v17

    .line 403
    const/4 v14, 0x0

    .line 405
    const-string v4, "duration"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/EventHandler;->parseDuration(Ljava/lang/String;)J

    move-result-wide v8

    move-object/from16 v0, v16

    invoke-static {v0, v8, v9}, Lcom/google/android/syncadapters/calendar/EventHandler;->setDtendFromDuration(Landroid/content/ContentValues;J)V

    .line 407
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 410
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "google_calendar_sync_max_attendees"

    const/16 v8, 0x32

    invoke-static {v4, v7, v8}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 420
    :try_start_0
    const-string v4, "mutators"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 421
    const-string v4, "mutators"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v15, v4

    .line 426
    :goto_4
    if-eqz v11, :cond_6

    invoke-direct/range {p0 .. p1}, Lcom/google/android/syncadapters/calendar/EventHandler;->shouldCreateEvent(Landroid/content/Entity;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 431
    :cond_6
    const-string v4, "eventColor_index"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 432
    const-string v4, "EventHandler"

    const-string v5, "Missing EVENT_COLOR_KEY, fetching from provider"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 433
    invoke-static {}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mProvider:Landroid/content/ContentProviderClient;

    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id"

    .line 436
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 435
    invoke-static {v6, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "eventColor"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "eventColor_index"

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 433
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 442
    if-eqz v5, :cond_8

    .line 444
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 445
    const-string v4, "eventColor"

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 446
    const-string v4, "eventColor_index"

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    :cond_7
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 456
    :cond_8
    const-string v4, "originalInstanceTime"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "original_id"

    .line 457
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 458
    :cond_9
    const-string v4, "rrule"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 459
    const-string v4, "rdate"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 460
    const-string v4, "exrule"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 461
    const-string v4, "exdate"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 463
    :cond_a
    or-int/lit8 v11, v17, 0x1

    .line 464
    :try_start_3
    invoke-static {v11}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 465
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/EventHandler;->convertEntityToEvent(Landroid/content/Entity;Landroid/content/Entity;)Lcom/google/api/services/calendar/model/Event;

    move-result-object v6

    .line 468
    invoke-virtual {v6}, Lcom/google/api/services/calendar/model/Event;->getICalUID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    move v5, v4

    .line 469
    :goto_5
    if-eqz v5, :cond_f

    .line 471
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mClient:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v4}, Lcom/google/api/services/calendar/Calendar;->events()Lcom/google/api/services/calendar/Calendar$Events;

    move-result-object v4

    .line 472
    invoke-virtual {v4, v12, v6}, Lcom/google/api/services/calendar/Calendar$Events;->calendarImport(Ljava/lang/String;Lcom/google/api/services/calendar/model/Event;)Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;

    move-result-object v4

    const/4 v7, 0x1

    .line 473
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;->setSupportsAttachments(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;

    move-result-object v4

    const/4 v7, 0x1

    .line 474
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;->setSupportsAllDayReminders(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v4

    .line 485
    :goto_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v8, "API: Insert Event"

    invoke-virtual {v7, v8, v4}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/services/calendar/model/Event;
    :try_end_4
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move v14, v11

    move-object v6, v4

    .line 807
    :goto_7
    if-eqz v14, :cond_b

    .line 808
    const/4 v4, 0x1

    invoke-static {v14, v4}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 810
    :cond_b
    invoke-static/range {v17 .. v17}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 813
    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object v5, v13

    move-object/from16 v7, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/syncadapters/calendar/EventHandler;->applyItemToEntity(Ljava/util/List;Lcom/google/api/services/calendar/model/Event;Landroid/content/Entity;ZLandroid/content/SyncResult;Ljava/lang/Object;)V

    .line 814
    const-string v4, "Send event to server"

    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    move-object v4, v13

    .line 815
    goto/16 :goto_0

    .line 421
    :cond_c
    const/4 v4, 0x0

    move-object v15, v4

    goto/16 :goto_4

    .line 449
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 807
    :catchall_1
    move-exception v4

    move v5, v14

    :goto_8
    if-eqz v5, :cond_d

    .line 808
    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 810
    :cond_d
    invoke-static/range {v17 .. v17}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v4

    .line 468
    :cond_e
    const/4 v4, 0x0

    move v5, v4

    goto :goto_5

    .line 477
    :cond_f
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mClient:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v4}, Lcom/google/api/services/calendar/Calendar;->events()Lcom/google/api/services/calendar/Calendar$Events;

    move-result-object v4

    .line 478
    invoke-virtual {v4, v12, v6}, Lcom/google/api/services/calendar/Calendar$Events;->insert(Ljava/lang/String;Lcom/google/api/services/calendar/model/Event;)Lcom/google/api/services/calendar/Calendar$Events$Insert;

    move-result-object v4

    const/4 v7, 0x1

    .line 479
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/api/services/calendar/Calendar$Events$Insert;->setSendNotifications(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$Insert;

    move-result-object v4

    const/4 v7, 0x1

    .line 480
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/api/services/calendar/Calendar$Events$Insert;->setSupportsAttachments(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$Insert;

    move-result-object v4

    const/4 v7, 0x1

    .line 481
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/api/services/calendar/Calendar$Events$Insert;->setSupportsAllDayReminders(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$Insert;

    move-result-object v4

    const/4 v7, 0x1

    .line 482
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/api/services/calendar/Calendar$Events$Insert;->setSupportsConferenceData(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$Insert;

    move-result-object v4

    goto :goto_6

    .line 486
    :catch_0
    move-exception v4

    .line 487
    if-eqz v5, :cond_12

    .line 488
    const-string v5, "EventHandler::ImportEvent"

    .line 489
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v5, v4, v1}, Lcom/google/android/syncadapters/calendar/EventHandler;->logHttpException(Ljava/lang/String;Lcom/google/api/client/http/HttpResponseException;Landroid/content/Entity;)V

    .line 490
    invoke-virtual {v4}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getStatusCode()I

    move-result v5

    .line 491
    const/16 v7, 0x193

    if-ne v5, v7, :cond_13

    .line 492
    invoke-virtual {v6}, Lcom/google/api/services/calendar/model/Event;->getRecurringEventId()Ljava/lang/String;

    move-result-object v4

    .line 493
    if-eqz v4, :cond_10

    .line 494
    const-string v5, "EventHandler"

    const-string v6, "Refresh original event"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 496
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v6, "API: Get Event"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mClient:Lcom/google/api/services/calendar/Calendar;

    .line 498
    invoke-virtual {v7}, Lcom/google/api/services/calendar/Calendar;->events()Lcom/google/api/services/calendar/Calendar$Events;

    move-result-object v7

    invoke-virtual {v7, v12, v4}, Lcom/google/api/services/calendar/Calendar$Events;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$Get;

    move-result-object v7

    .line 496
    invoke-virtual {v5, v6, v7}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/api/services/calendar/model/Event;

    .line 499
    const-string v5, "_sync_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7}, Lcom/google/android/syncadapters/calendar/EventHandler;->fetchEntity(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Entity;

    move-result-object v7

    .line 501
    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object v5, v13

    move-object/from16 v9, p2

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/syncadapters/calendar/EventHandler;->applyItemToEntity(Ljava/util/List;Lcom/google/api/services/calendar/model/Event;Landroid/content/Entity;ZLandroid/content/SyncResult;Ljava/lang/Object;)V

    .line 506
    :cond_10
    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id"

    .line 509
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 507
    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mAccount:Landroid/accounts/Account;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 506
    invoke-static {v13, v4, v5, v6, v7}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->addAsSyncAdapterDeleteOperation(Ljava/util/List;Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/Long;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 807
    if-eqz v11, :cond_11

    .line 808
    const/4 v4, 0x1

    invoke-static {v11, v4}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 810
    :cond_11
    invoke-static/range {v17 .. v17}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    move-object v4, v13

    .line 513
    goto/16 :goto_0

    .line 488
    :cond_12
    :try_start_7
    const-string v5, "EventHandler::InsertEvent"

    goto :goto_9

    .line 515
    :cond_13
    const/16 v6, 0x190

    if-lt v5, v6, :cond_19

    const/16 v6, 0x1f4

    if-ge v5, v6, :cond_19

    .line 516
    invoke-virtual {v4}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getDetails()Lcom/google/api/client/googleapis/json/GoogleJsonError;

    move-result-object v4

    .line 517
    if-eqz v4, :cond_15

    .line 518
    invoke-virtual {v4}, Lcom/google/api/client/googleapis/json/GoogleJsonError;->getMessage()Ljava/lang/String;

    move-result-object v4

    :goto_a
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 519
    const-string v5, "Invalid sequence value."

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 526
    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id"

    .line 529
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 527
    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mAccount:Landroid/accounts/Account;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 526
    invoke-static {v13, v4, v5, v6, v7}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->addAsSyncAdapterDeleteOperation(Ljava/util/List;Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/Long;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 807
    if-eqz v11, :cond_14

    .line 808
    const/4 v4, 0x1

    invoke-static {v11, v4}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 810
    :cond_14
    invoke-static/range {v17 .. v17}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    move-object v4, v13

    .line 538
    goto/16 :goto_0

    .line 518
    :cond_15
    :try_start_8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_a

    .line 544
    :cond_16
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 545
    const-string v5, "dirty"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 546
    const-string v5, "_sync_id"

    const-string v6, "SYNC_ERROR: "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_18

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_b
    invoke-virtual {v7, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mAccount:Landroid/accounts/Account;

    const-string v4, "_id"

    .line 552
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, v13

    .line 547
    invoke-static/range {v4 .. v10}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->addAsSyncAdapterUpdateOperation(Ljava/util/List;Landroid/net/Uri;Landroid/accounts/Account;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 807
    if-eqz v11, :cond_17

    .line 808
    const/4 v4, 0x1

    invoke-static {v11, v4}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 810
    :cond_17
    invoke-static/range {v17 .. v17}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    move-object v4, v13

    .line 555
    goto/16 :goto_0

    .line 546
    :cond_18
    :try_start_9
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_b

    .line 807
    :catchall_2
    move-exception v4

    move v5, v11

    goto/16 :goto_8

    .line 557
    :cond_19
    const/4 v4, 0x0

    .line 807
    if-eqz v11, :cond_1a

    .line 808
    const/4 v5, 0x1

    invoke-static {v11, v5}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 810
    :cond_1a
    invoke-static/range {v17 .. v17}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto/16 :goto_0

    .line 559
    :cond_1b
    if-eqz v6, :cond_1e

    .line 561
    or-int/lit8 v14, v17, 0x3

    .line 562
    :try_start_a
    invoke-static {v14}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 567
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mClient:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v4}, Lcom/google/api/services/calendar/Calendar;->events()Lcom/google/api/services/calendar/Calendar$Events;

    move-result-object v4

    .line 568
    invoke-virtual {v4, v12, v11}, Lcom/google/api/services/calendar/Calendar$Events;->delete(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$Delete;

    move-result-object v4

    const/4 v5, 0x1

    .line 569
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/api/services/calendar/Calendar$Events$Delete;->setSendNotifications(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$Delete;

    move-result-object v4

    .line 570
    const-string v5, "userAgentPackage"

    invoke-virtual {v4, v5, v15}, Lcom/google/api/services/calendar/Calendar$Events$Delete;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Events$Delete;

    .line 571
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v6, "API: Delete Event"

    invoke-virtual {v5, v6, v4}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;
    :try_end_b
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 572
    const/4 v4, 0x0

    move-object v6, v4

    .line 616
    goto/16 :goto_7

    .line 573
    :catch_1
    move-exception v4

    .line 574
    :try_start_c
    const-string v5, "EventHandler::DeleteEvent"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v5, v4, v1}, Lcom/google/android/syncadapters/calendar/EventHandler;->logHttpException(Ljava/lang/String;Lcom/google/api/client/http/HttpResponseException;Landroid/content/Entity;)V

    .line 575
    invoke-virtual {v4}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getStatusCode()I

    move-result v4

    .line 576
    sparse-switch v4, :sswitch_data_0

    .line 606
    const/16 v5, 0x190

    if-lt v4, v5, :cond_1c

    const/16 v5, 0x1f4

    if-ge v4, v5, :cond_1c

    .line 609
    const/4 v4, 0x0

    :goto_c
    move-object v6, v4

    .line 616
    goto/16 :goto_7

    .line 578
    :sswitch_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 579
    const-string v4, "deleted"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 580
    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mAccount:Landroid/accounts/Account;

    const-string v4, "_id"

    .line 585
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, v13

    .line 580
    invoke-static/range {v4 .. v10}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->addAsSyncAdapterUpdateOperation(Ljava/util/List;Landroid/net/Uri;Landroid/accounts/Account;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 588
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v5, "API: Get Event"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mClient:Lcom/google/api/services/calendar/Calendar;

    .line 589
    invoke-virtual {v6}, Lcom/google/api/services/calendar/Calendar;->events()Lcom/google/api/services/calendar/Calendar$Events;

    move-result-object v6

    invoke-virtual {v6, v12, v11}, Lcom/google/api/services/calendar/Calendar$Events;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$Get;

    move-result-object v6

    .line 590
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/api/services/calendar/Calendar$Events$Get;->setMaxAttendees(Ljava/lang/Integer;)Lcom/google/api/services/calendar/Calendar$Events$Get;

    move-result-object v6

    .line 588
    invoke-virtual {v4, v5, v6}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/services/calendar/model/Event;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_c

    .line 599
    :sswitch_1
    const/4 v4, 0x0

    .line 600
    goto :goto_c

    .line 603
    :sswitch_2
    const/4 v4, 0x0

    .line 604
    goto :goto_c

    .line 613
    :cond_1c
    const/4 v4, 0x0

    .line 807
    if-eqz v14, :cond_1d

    .line 808
    const/4 v5, 0x1

    invoke-static {v14, v5}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 810
    :cond_1d
    invoke-static/range {v17 .. v17}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto/16 :goto_0

    .line 619
    :cond_1e
    or-int/lit8 v14, v17, 0x2

    .line 620
    :try_start_d
    invoke-static {v14}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 627
    const-string v4, "_sync_id =? AND lastSynced =?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v5, 0x1

    const-string v7, "1"

    aput-object v7, v6, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/google/android/syncadapters/calendar/EventHandler;->fetchEntity(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Entity;

    move-result-object v19

    .line 635
    const-string v4, "eventColor_index"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 636
    const-string v4, "EventHandler"

    const-string v5, "Missing EVENT_COLOR_KEY, fetching from provider"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 637
    invoke-static {}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mProvider:Landroid/content/ContentProviderClient;

    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "eventColor"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "eventColor_index"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "dirty"

    aput-object v9, v7, v8

    const-string v8, "_sync_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result-object v5

    .line 648
    if-eqz v5, :cond_22

    .line 650
    :cond_1f
    :goto_d
    :try_start_e
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 651
    const/4 v4, 0x0

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 652
    const/4 v4, 0x1

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 653
    const/4 v8, 0x2

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 654
    const/4 v9, 0x1

    if-ne v8, v9, :cond_20

    .line 655
    const-string v8, "eventColor"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 656
    const-string v6, "eventColor_index"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_d

    .line 664
    :catchall_3
    move-exception v4

    :try_start_f
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 657
    :cond_20
    if-eqz v19, :cond_1f

    .line 658
    :try_start_10
    invoke-virtual/range {v19 .. v19}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v8

    .line 659
    const-string v9, "eventColor"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 660
    const-string v6, "eventColor_index"

    invoke-virtual {v8, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_d

    .line 664
    :cond_21
    :try_start_11
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 669
    :cond_22
    const/4 v5, 0x0

    .line 673
    if-nez v19, :cond_26

    .line 674
    :try_start_12
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/EventHandler;->convertEntityToEvent(Landroid/content/Entity;Landroid/content/Entity;)Lcom/google/api/services/calendar/model/Event;
    :try_end_12
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move-result-object v5

    .line 675
    :try_start_13
    const-string v4, "sync_data2"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 676
    const-string v4, "sync_data2"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 677
    if-eqz v4, :cond_23

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_23

    .line 678
    invoke-virtual {v5, v4}, Lcom/google/api/services/calendar/model/Event;->setSequence(Ljava/lang/Integer;)Lcom/google/api/services/calendar/model/Event;

    .line 681
    :cond_23
    const-string v4, "hasAttendeeData"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_24

    .line 682
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/google/api/services/calendar/model/Event;->setAttendeesOmitted(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/Event;

    .line 684
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mClient:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v4}, Lcom/google/api/services/calendar/Calendar;->events()Lcom/google/api/services/calendar/Calendar$Events;

    move-result-object v4

    .line 685
    invoke-virtual {v4, v12, v11, v5}, Lcom/google/api/services/calendar/Calendar$Events;->update(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/calendar/model/Event;)Lcom/google/api/services/calendar/Calendar$Events$Update;

    move-result-object v4

    const/4 v6, 0x1

    .line 686
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/api/services/calendar/Calendar$Events$Update;->setSendNotifications(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$Update;

    move-result-object v4

    .line 687
    const-string v6, "maxAttendees"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/google/api/services/calendar/Calendar$Events$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Events$Update;

    .line 688
    const-string v6, "sync_data4"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 691
    const-string v6, "ifmatch"

    const-string v7, "sync_data4"

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/google/api/services/calendar/Calendar$Events$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Events$Update;

    .line 693
    :cond_25
    const-string v6, "userAgentPackage"

    invoke-virtual {v4, v6, v15}, Lcom/google/api/services/calendar/Calendar$Events$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Events$Update;

    .line 694
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/api/services/calendar/Calendar$Events$Update;->setSupportsAllDayReminders(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$Update;

    .line 695
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/api/services/calendar/Calendar$Events$Update;->setSupportsAttachments(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$Update;

    .line 696
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/api/services/calendar/Calendar$Events$Update;->setSupportsConferenceData(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$Update;

    .line 697
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v7, "API: Update Event"

    invoke-virtual {v6, v7, v4}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/services/calendar/model/Event;
    :try_end_13
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :goto_e
    move-object v6, v4

    .line 804
    goto/16 :goto_7

    .line 701
    :cond_26
    :try_start_14
    invoke-virtual/range {v19 .. v19}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v4

    .line 702
    const-string v6, "duration"

    .line 703
    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/syncadapters/calendar/EventHandler;->parseDuration(Ljava/lang/String;)J

    move-result-wide v6

    .line 702
    invoke-static {v4, v6, v7}, Lcom/google/android/syncadapters/calendar/EventHandler;->setDtendFromDuration(Landroid/content/ContentValues;J)V

    .line 704
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/EventHandler;->convertValuesToPartialDiff(Landroid/content/Entity;Landroid/content/Entity;)Lcom/google/api/services/calendar/model/Event;
    :try_end_14
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    move-result-object v5

    .line 705
    :try_start_15
    invoke-virtual {v5}, Lcom/google/api/services/calendar/model/Event;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_28

    .line 706
    const-string v4, "EventHandler"

    const-string v6, "No diffs found for event %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v11, v7, v8

    invoke-static {v4, v6, v7}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 707
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mAccount:Landroid/accounts/Account;

    invoke-static {v4}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v4

    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id"

    .line 710
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 708
    invoke-static {v6, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v6, "dirty"

    const/4 v7, 0x0

    .line 711
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 712
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    .line 707
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 807
    if-eqz v14, :cond_27

    .line 808
    const/4 v4, 0x1

    invoke-static {v14, v4}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 810
    :cond_27
    invoke-static/range {v17 .. v17}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    move-object v4, v13

    .line 714
    goto/16 :goto_0

    .line 717
    :cond_28
    :try_start_16
    invoke-static {v5}, Lcom/google/android/syncadapters/calendar/EventHandler;->hasOnlyUnsyncedKeys(Lcom/google/api/services/calendar/model/Event;)Z

    move-result v6

    .line 718
    if-eqz v6, :cond_29

    .line 719
    const-string v7, "description"

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/android/syncadapters/calendar/EventHandler;->touchDescription(Lcom/google/api/services/calendar/model/Event;Ljava/lang/String;)V

    .line 721
    :cond_29
    const-string v4, "hasAttendeeData"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_2a

    .line 722
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/google/api/services/calendar/model/Event;->setAttendeesOmitted(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/Event;

    .line 724
    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mClient:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v4}, Lcom/google/api/services/calendar/Calendar;->events()Lcom/google/api/services/calendar/Calendar$Events;

    move-result-object v4

    .line 725
    invoke-virtual {v4, v12, v11, v5}, Lcom/google/api/services/calendar/Calendar$Events;->patch(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/calendar/model/Event;)Lcom/google/api/services/calendar/Calendar$Events$Patch;

    move-result-object v7

    if-nez v6, :cond_2b

    const/4 v4, 0x1

    .line 726
    :goto_f
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/google/api/services/calendar/Calendar$Events$Patch;->setSendNotifications(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$Patch;

    move-result-object v4

    .line 727
    const-string v6, "maxAttendees"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/google/api/services/calendar/Calendar$Events$Patch;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Events$Patch;

    .line 728
    const-string v6, "userAgentPackage"

    invoke-virtual {v4, v6, v15}, Lcom/google/api/services/calendar/Calendar$Events$Patch;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Events$Patch;

    .line 729
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/api/services/calendar/Calendar$Events$Patch;->setSupportsAllDayReminders(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$Patch;

    .line 730
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/api/services/calendar/Calendar$Events$Patch;->setSupportsAttachments(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$Patch;

    .line 731
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/api/services/calendar/Calendar$Events$Patch;->setSupportsConferenceData(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$Patch;

    .line 732
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v7, "API: Patch Event"

    invoke-virtual {v6, v7, v4}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/services/calendar/model/Event;
    :try_end_16
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto/16 :goto_e

    .line 725
    :cond_2b
    const/4 v4, 0x0

    goto :goto_f

    .line 734
    :catch_2
    move-exception v4

    move-object v6, v5

    move-object v5, v4

    .line 735
    :goto_10
    :try_start_17
    const-string v4, "EventHandler::UpdateEvent"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v5, v1}, Lcom/google/android/syncadapters/calendar/EventHandler;->logHttpException(Ljava/lang/String;Lcom/google/api/client/http/HttpResponseException;Landroid/content/Entity;)V

    .line 736
    invoke-virtual {v5}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->getStatusCode()I

    move-result v4

    .line 738
    sparse-switch v4, :sswitch_data_1

    .line 786
    const/16 v5, 0x190

    if-lt v4, v5, :cond_2e

    const/16 v5, 0x1f4

    if-ge v4, v5, :cond_2e

    .line 790
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 791
    const-string v4, "dirty"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 792
    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mAccount:Landroid/accounts/Account;

    const-string v4, "_id"

    .line 797
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, v13

    .line 792
    invoke-static/range {v4 .. v10}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->addAsSyncAdapterUpdateOperation(Ljava/util/List;Landroid/net/Uri;Landroid/accounts/Account;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 807
    if-eqz v14, :cond_2c

    .line 808
    const/4 v4, 0x1

    invoke-static {v14, v4}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 810
    :cond_2c
    invoke-static/range {v17 .. v17}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    move-object v4, v13

    .line 800
    goto/16 :goto_0

    .line 740
    :sswitch_3
    :try_start_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v5, "API: Get Event"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mClient:Lcom/google/api/services/calendar/Calendar;

    .line 741
    invoke-virtual {v6}, Lcom/google/api/services/calendar/Calendar;->events()Lcom/google/api/services/calendar/Calendar$Events;

    move-result-object v6

    invoke-virtual {v6, v12, v11}, Lcom/google/api/services/calendar/Calendar$Events;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$Get;

    move-result-object v6

    .line 742
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/api/services/calendar/Calendar$Events$Get;->setMaxAttendees(Ljava/lang/Integer;)Lcom/google/api/services/calendar/Calendar$Events$Get;

    move-result-object v6

    .line 740
    invoke-virtual {v4, v5, v6}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/services/calendar/model/Event;

    move-object v6, v4

    .line 743
    goto/16 :goto_7

    .line 746
    :sswitch_4
    const/4 v4, 0x0

    move-object v6, v4

    .line 747
    goto/16 :goto_7

    .line 750
    :sswitch_5
    const/4 v4, 0x0

    move-object v6, v4

    .line 751
    goto/16 :goto_7

    .line 754
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v7, "API: Get Event"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mClient:Lcom/google/api/services/calendar/Calendar;

    .line 755
    invoke-virtual {v8}, Lcom/google/api/services/calendar/Calendar;->events()Lcom/google/api/services/calendar/Calendar$Events;

    move-result-object v8

    invoke-virtual {v8, v12, v11}, Lcom/google/api/services/calendar/Calendar$Events;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$Get;

    move-result-object v8

    .line 756
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/api/services/calendar/Calendar$Events$Get;->setMaxAttendees(Ljava/lang/Integer;)Lcom/google/api/services/calendar/Calendar$Events$Get;

    move-result-object v8

    .line 754
    invoke-virtual {v4, v7, v8}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/services/calendar/model/Event;

    .line 758
    invoke-virtual {v4}, Lcom/google/api/services/calendar/model/Event;->getSequence()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/api/services/calendar/model/Event;->setSequence(Ljava/lang/Integer;)Lcom/google/api/services/calendar/model/Event;

    .line 760
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/google/android/syncadapters/calendar/EventHandler;->updateCalendarProviderWithEvent(Lcom/google/api/services/calendar/model/Event;Landroid/content/Entity;)V

    .line 763
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1}, Lcom/google/android/syncadapters/calendar/EventHandler;->updateCalendarProviderWithEvent(Lcom/google/api/services/calendar/model/Event;Landroid/content/Entity;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 767
    :try_start_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mClient:Lcom/google/api/services/calendar/Calendar;

    invoke-virtual {v4}, Lcom/google/api/services/calendar/Calendar;->events()Lcom/google/api/services/calendar/Calendar$Events;

    move-result-object v4

    .line 768
    invoke-virtual {v4, v12, v11, v6}, Lcom/google/api/services/calendar/Calendar$Events;->patch(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/calendar/model/Event;)Lcom/google/api/services/calendar/Calendar$Events$Patch;

    move-result-object v7

    .line 769
    invoke-static {v6}, Lcom/google/android/syncadapters/calendar/EventHandler;->hasOnlyUnsyncedKeys(Lcom/google/api/services/calendar/model/Event;)Z

    move-result v4

    if-nez v4, :cond_2d

    const/4 v4, 0x1

    :goto_11
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/google/api/services/calendar/Calendar$Events$Patch;->setSendNotifications(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$Patch;

    move-result-object v4

    .line 770
    const-string v6, "maxAttendees"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/google/api/services/calendar/Calendar$Events$Patch;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Events$Patch;

    .line 771
    const-string v6, "userAgentPackage"

    invoke-virtual {v4, v6, v15}, Lcom/google/api/services/calendar/Calendar$Events$Patch;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Events$Patch;

    .line 772
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/api/services/calendar/Calendar$Events$Patch;->setSupportsAllDayReminders(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$Patch;

    .line 773
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/api/services/calendar/Calendar$Events$Patch;->setSupportsAttachments(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$Patch;

    .line 774
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/api/services/calendar/Calendar$Events$Patch;->setSupportsConferenceData(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$Patch;

    .line 775
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v7, "API: Patch Event"

    invoke-virtual {v6, v7, v4}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/services/calendar/model/Event;
    :try_end_19
    .catch Lcom/google/api/client/googleapis/json/GoogleJsonResponseException; {:try_start_19 .. :try_end_19} :catch_3
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    move-object v6, v4

    .line 783
    goto/16 :goto_7

    .line 769
    :cond_2d
    const/4 v4, 0x0

    goto :goto_11

    .line 777
    :catch_3
    move-exception v4

    .line 778
    :try_start_1a
    const-string v4, "EventHandler::UpdateEventRetry"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v5, v1}, Lcom/google/android/syncadapters/calendar/EventHandler;->logHttpException(Ljava/lang/String;Lcom/google/api/client/http/HttpResponseException;Landroid/content/Entity;)V

    .line 780
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mRequestExecutor:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    const-string v5, "API: Get Event"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/syncadapters/calendar/EventHandler;->mClient:Lcom/google/api/services/calendar/Calendar;

    .line 781
    invoke-virtual {v6}, Lcom/google/api/services/calendar/Calendar;->events()Lcom/google/api/services/calendar/Calendar$Events;

    move-result-object v6

    invoke-virtual {v6, v12, v11}, Lcom/google/api/services/calendar/Calendar$Events;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$Get;

    move-result-object v6

    .line 782
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/api/services/calendar/Calendar$Events$Get;->setMaxAttendees(Ljava/lang/Integer;)Lcom/google/api/services/calendar/Calendar$Events$Get;

    move-result-object v6

    .line 780
    invoke-virtual {v4, v5, v6}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/services/calendar/model/Event;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    move-object v6, v4

    .line 784
    goto/16 :goto_7

    .line 802
    :cond_2e
    const/4 v4, 0x0

    .line 807
    if-eqz v14, :cond_2f

    .line 808
    const/4 v5, 0x1

    invoke-static {v14, v5}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    .line 810
    :cond_2f
    invoke-static/range {v17 .. v17}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    goto/16 :goto_0

    .line 734
    :catch_4
    move-exception v4

    move-object v6, v5

    move-object v5, v4

    goto/16 :goto_10

    .line 576
    :sswitch_data_0
    .sparse-switch
        0x193 -> :sswitch_0
        0x194 -> :sswitch_1
        0x19e -> :sswitch_2
    .end sparse-switch

    .line 738
    :sswitch_data_1
    .sparse-switch
        0x193 -> :sswitch_3
        0x194 -> :sswitch_4
        0x19c -> :sswitch_6
        0x19e -> :sswitch_5
    .end sparse-switch
.end method
