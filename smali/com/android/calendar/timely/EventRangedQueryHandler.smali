.class public abstract Lcom/android/calendar/timely/EventRangedQueryHandler;
.super Lcom/android/calendar/timely/AbstractRangedQueryHandler;
.source "EventRangedQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/timely/AbstractRangedQueryHandler",
        "<",
        "Lcom/android/calendar/timely/RangedData$EventResults;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mHolidaysColor:Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "endDay"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "startMinute"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "endMinute"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "end"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "displayColor"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "accessLevel"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "calendar_access_level"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "sync_data9 as sync_data9"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "sync_data8 as sync_data8"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/timely/EventRangedQueryHandler;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;-><init>(Landroid/content/Context;)V

    .line 142
    invoke-static {p1}, Lcom/android/calendar/ExtensionsFactory;->getPrefService(Landroid/content/Context;)Lcom/android/calendar/prefs/PrefService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/prefs/PrefService;->getHolidaysColor()Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/EventRangedQueryHandler;->mHolidaysColor:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    .line 143
    return-void
.end method

.method private createTimelineEventOrGroove(Landroid/database/Cursor;)Lcom/android/calendar/timely/TimelineEvent;
    .locals 8

    .prologue
    .line 275
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 276
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    const-string v2, "com.google"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 279
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 280
    invoke-static {v0}, Lcom/google/android/calendar/api/HabitIdTypeUtil;->parseHabitIdAndType(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_1

    .line 282
    :cond_0
    new-instance v0, Lcom/android/calendar/timely/TimelineEvent;

    invoke-direct {v0}, Lcom/android/calendar/timely/TimelineEvent;-><init>()V

    .line 304
    :goto_0
    return-object v0

    .line 284
    :cond_1
    const/4 v2, 0x0

    aget-object v2, v0, v2

    .line 285
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 286
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 287
    new-instance v0, Lcom/android/calendar/groove/TimelineGroove;

    new-instance v5, Lcom/google/android/calendar/api/HabitDescriptor;

    new-instance v6, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    new-instance v7, Landroid/accounts/Account;

    invoke-direct {v7, v3, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {v6, v7, v4, v1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-direct {v5, v6, v2}, Lcom/google/android/calendar/api/HabitDescriptor;-><init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/String;)V

    invoke-direct {v0, v5}, Lcom/android/calendar/groove/TimelineGroove;-><init>(Lcom/google/android/calendar/api/HabitDescriptor;)V

    goto :goto_0

    .line 304
    :cond_2
    new-instance v0, Lcom/android/calendar/timely/TimelineEvent;

    invoke-direct {v0}, Lcom/android/calendar/timely/TimelineEvent;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method protected abstract createStorage(I)Lcom/android/calendar/timely/RangedData$EventResults;
.end method

.method protected getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/android/calendar/timely/EventRangedQueryHandler;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method protected getQueryUri(Lcom/android/calendar/timely/RangedData;)Landroid/net/Uri;
    .locals 6

    .prologue
    .line 152
    invoke-interface {p1}, Lcom/android/calendar/timely/RangedData;->getStartDay()I

    move-result v0

    .line 153
    invoke-interface {p1}, Lcom/android/calendar/timely/RangedData;->getEndDay()I

    move-result v1

    .line 154
    sget-object v2, Landroid/provider/CalendarContract$Instances;->CONTENT_BY_DAY_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 155
    int-to-long v4, v0

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 156
    int-to-long v0, v1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 157
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    const-string v0, "visible=1 AND (account_type!=\'com.google\' OR sync_data9 & 256=0 OR sync_data9 IS NULL)"

    return-object v0
.end method

.method protected getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected getSelectionHideDeclined()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const-string v0, "visible=1 AND (account_type!=\'com.google\' OR sync_data9 & 256=0 OR sync_data9 IS NULL) AND selfAttendeeStatus!=2"

    return-object v0
.end method

.method protected getSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    const-string v0, "startDay ASC, allDay DESC, startMinute ASC, endDay ASC, endMinute ASC"

    return-object v0
.end method

.method protected processCursor(Landroid/database/Cursor;)Lcom/android/calendar/timely/RangedData$EventResults;
    .locals 10

    .prologue
    .line 188
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getCalendarClassifier()Lcom/android/calendar/CalendarClassifierInterface;

    move-result-object v1

    .line 189
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 190
    new-instance v3, Lcom/android/calendar/timely/TimelineHoliday$HolidayFilter;

    invoke-direct {v3}, Lcom/android/calendar/timely/TimelineHoliday$HolidayFilter;-><init>()V

    .line 191
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/EventRangedQueryHandler;->createStorage(I)Lcom/android/calendar/timely/RangedData$EventResults;

    move-result-object v4

    .line 192
    iget-object v0, p0, Lcom/android/calendar/timely/EventRangedQueryHandler;->mHolidaysColor:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-static {v0}, Lcom/android/calendar/Utils;->colorToInt(Lcom/google/calendar/v2/client/service/api/common/Color;)I

    move-result v5

    .line 194
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/EventRangedQueryHandler;->createTimelineEventOrGroove(Landroid/database/Cursor;)Lcom/android/calendar/timely/TimelineEvent;

    move-result-object v6

    .line 195
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/android/calendar/timely/TimelineEvent;->id:J

    .line 196
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/android/calendar/timely/TimelineEvent;->calendarId:I

    .line 197
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/calendar/timely/TimelineEvent;->ownerAccount:Ljava/lang/String;

    .line 199
    iget-object v0, v6, Lcom/android/calendar/timely/TimelineEvent;->ownerAccount:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/android/calendar/CalendarClassifierInterface;->calculateType(Ljava/lang/String;)I

    move-result v7

    .line 200
    const/4 v0, 0x3

    if-ne v0, v7, :cond_3

    .line 263
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 267
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getBirthdayManager()Lcom/android/calendar/BirthdayManagerInterface;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/SparseArrayIterator;

    invoke-direct {v1, v2}, Lcom/android/calendar/SparseArrayIterator;-><init>(Landroid/util/SparseArray;)V

    invoke-interface {v0, v1}, Lcom/android/calendar/BirthdayManagerInterface;->restoreBirthdayItemsFromCache(Ljava/util/Iterator;)V

    .line 271
    :cond_2
    return-object v4

    .line 205
    :cond_3
    const/4 v0, 0x2

    if-ne v0, v7, :cond_8

    .line 206
    iput v5, v6, Lcom/android/calendar/timely/TimelineEvent;->color:I

    .line 213
    :goto_1
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/calendar/timely/TimelineEvent;->title:Ljava/lang/String;

    .line 214
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 215
    iput v0, v6, Lcom/android/calendar/timely/TimelineEvent;->calendarAccessLevel:I

    .line 217
    iget-object v8, v6, Lcom/android/calendar/timely/TimelineEvent;->title:Ljava/lang/String;

    if-eqz v8, :cond_4

    iget-object v8, v6, Lcom/android/calendar/timely/TimelineEvent;->title:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_6

    .line 218
    :cond_4
    const/16 v8, 0xf

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 219
    const/4 v9, 0x2

    if-eq v8, v9, :cond_5

    const/16 v8, 0x64

    if-ne v0, v8, :cond_a

    .line 221
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/timely/EventRangedQueryHandler;->mBusyTitle:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/calendar/timely/TimelineEvent;->title:Ljava/lang/String;

    .line 226
    :cond_6
    :goto_2
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/calendar/timely/TimelineEvent;->location:Ljava/lang/String;

    .line 227
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/calendar/timely/TimelineEvent;->organizer:Ljava/lang/String;

    .line 229
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, v6, Lcom/android/calendar/timely/TimelineEvent;->allDay:Z

    .line 230
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/android/calendar/timely/TimelineEvent;->startDay:I

    .line 231
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/android/calendar/timely/TimelineEvent;->endDay:I

    .line 232
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/android/calendar/timely/TimelineEvent;->startTime:I

    .line 233
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/android/calendar/timely/TimelineEvent;->endTime:I

    .line 234
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/android/calendar/timely/TimelineEvent;->startMillis:J

    .line 235
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/android/calendar/timely/TimelineEvent;->endMillis:J

    .line 237
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/android/calendar/timely/TimelineEvent;->selfAttendeeStatus:I

    .line 239
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    const/16 v8, 0x13

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 241
    const-string v9, "com.google"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v8, :cond_7

    .line 243
    invoke-virtual {v6, v8}, Lcom/android/calendar/timely/TimelineEvent;->setEventExtrasFlags(Ljava/lang/String;)V

    .line 246
    :cond_7
    const/4 v0, 0x1

    if-ne v0, v7, :cond_d

    .line 247
    iget v0, v6, Lcom/android/calendar/timely/TimelineEvent;->startDay:I

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineBirthday;

    .line 248
    if-eqz v0, :cond_c

    .line 249
    invoke-virtual {v0, v6}, Lcom/android/calendar/timely/TimelineBirthday;->addEvent(Lcom/android/calendar/timely/TimelineEvent;)V

    goto/16 :goto_0

    .line 207
    :cond_8
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 209
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v0

    iput v0, v6, Lcom/android/calendar/timely/TimelineEvent;->color:I

    goto/16 :goto_1

    .line 211
    :cond_9
    iget v0, p0, Lcom/android/calendar/timely/EventRangedQueryHandler;->mNoColorColor:I

    iput v0, v6, Lcom/android/calendar/timely/TimelineEvent;->color:I

    goto/16 :goto_1

    .line 223
    :cond_a
    iget-object v0, p0, Lcom/android/calendar/timely/EventRangedQueryHandler;->mNoTitleTitle:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/calendar/timely/TimelineEvent;->title:Ljava/lang/String;

    goto/16 :goto_2

    .line 229
    :cond_b
    const/4 v0, 0x0

    goto :goto_3

    .line 251
    :cond_c
    new-instance v0, Lcom/android/calendar/timely/TimelineBirthday;

    invoke-direct {v0, v6}, Lcom/android/calendar/timely/TimelineBirthday;-><init>(Lcom/android/calendar/timely/TimelineEvent;)V

    .line 252
    iget v6, v6, Lcom/android/calendar/timely/TimelineEvent;->startDay:I

    invoke-virtual {v2, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 253
    invoke-interface {v4, v0}, Lcom/android/calendar/timely/RangedData$EventResults;->addTimelineItem(Lcom/android/calendar/timely/TimelineItem;)V

    goto/16 :goto_0

    .line 255
    :cond_d
    const/4 v0, 0x2

    if-ne v0, v7, :cond_e

    .line 256
    invoke-virtual {v3, v6}, Lcom/android/calendar/timely/TimelineHoliday$HolidayFilter;->deDuplicate(Lcom/android/calendar/timely/TimelineEvent;)Lcom/android/calendar/timely/TimelineHoliday;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_1

    .line 258
    invoke-interface {v4, v0}, Lcom/android/calendar/timely/RangedData$EventResults;->addTimelineItem(Lcom/android/calendar/timely/TimelineItem;)V

    goto/16 :goto_0

    .line 261
    :cond_e
    invoke-interface {v4, v6}, Lcom/android/calendar/timely/RangedData$EventResults;->addTimelineItem(Lcom/android/calendar/timely/TimelineItem;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic processCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/EventRangedQueryHandler;->processCursor(Landroid/database/Cursor;)Lcom/android/calendar/timely/RangedData$EventResults;

    move-result-object v0

    return-object v0
.end method
