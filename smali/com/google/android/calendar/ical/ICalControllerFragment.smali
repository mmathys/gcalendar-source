.class public Lcom/google/android/calendar/ical/ICalControllerFragment;
.super Landroid/app/Fragment;
.source "ICalControllerFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/google/android/calendar/ical/ICalUtils$LocalEventInfoProvider;
.implements Lcom/google/android/calendar/ical/ICalUtils$WritableCalendarsMapContainer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/google/android/calendar/ical/ICalUtils$LocalEventInfoProvider;",
        "Lcom/google/android/calendar/ical/ICalUtils$WritableCalendarsMapContainer;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentDetail:I

.field private mDataLoaded:I

.field private final mEventTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mICalAttendeesCursor:Landroid/database/Cursor;

.field private mICalEventsCursor:Landroid/database/Cursor;

.field private mICalUidsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mImportCalendarIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mImportGoogleCalendarIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalEventsCalendarsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalEventsUidsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMethod:Ljava/lang/String;

.field private mModelsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mOriginalModelsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/calendar/event/CalendarEventModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUidToICalModelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/event/CalendarEventModel;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateQueued:Z

.field private mVisibleWritableCalendarsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/google/android/calendar/ical/ICalControllerFragment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/ical/ICalControllerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 104
    iput-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mICalEventsCursor:Landroid/database/Cursor;

    .line 105
    iput-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mICalAttendeesCursor:Landroid/database/Cursor;

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mDataLoaded:I

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mEventTypeMap:Ljava/util/Map;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mOriginalModelsMap:Ljava/util/Map;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mLocalEventsUidsMap:Ljava/util/Map;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mImportCalendarIds:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mImportGoogleCalendarIds:Ljava/util/List;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mLocalEventsCalendarsMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/ical/ICalControllerFragment;Lcom/android/calendar/timely/TimelyChip;Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/ical/ICalControllerFragment;->launchEventInfoFromModel(Lcom/android/calendar/timely/TimelyChip;Lcom/android/calendar/event/CalendarEventModel;)V

    return-void
.end method

.method private cleanLocalEventInfoLoaderData()V
    .locals 2

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 690
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 691
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 692
    return-void
.end method

.method private compareToLocalEvents(Lcom/android/calendar/event/CalendarEventModel;)I
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 903
    .line 905
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mOriginalModelsMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    .line 906
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 907
    if-eqz v0, :cond_0

    .line 908
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    move v4, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/event/CalendarEventModel;

    .line 909
    invoke-static {p1, v1}, Lcom/google/android/calendar/ical/ICalUtils;->compareModelToOriginal(Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/event/CalendarEventModel;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    move v1, v2

    move v2, v4

    :goto_1
    move v4, v2

    move v2, v1

    .line 919
    goto :goto_0

    .line 911
    :sswitch_0
    const/4 v0, 0x7

    .line 936
    :goto_2
    return v0

    .line 913
    :sswitch_1
    add-int/lit8 v4, v4, 0x1

    move v1, v2

    move v2, v4

    .line 914
    goto :goto_1

    .line 916
    :sswitch_2
    add-int/lit8 v2, v2, 0x1

    move v1, v2

    move v2, v4

    goto :goto_1

    :cond_0
    move v2, v3

    move v4, v3

    .line 921
    :cond_1
    if-lez v2, :cond_3

    .line 922
    add-int v0, v2, v4

    if-le v0, v5, :cond_2

    .line 923
    const/4 v0, 0x4

    goto :goto_2

    .line 924
    :cond_2
    const/4 v0, 0x3

    goto :goto_2

    .line 926
    :cond_3
    if-lez v4, :cond_5

    .line 927
    if-le v4, v5, :cond_4

    .line 928
    const/4 v0, 0x2

    goto :goto_2

    :cond_4
    move v0, v5

    .line 929
    goto :goto_2

    .line 931
    :cond_5
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 932
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, v5, :cond_6

    .line 933
    const/4 v0, 0x6

    goto :goto_2

    .line 934
    :cond_6
    const/4 v0, 0x5

    goto :goto_2

    :cond_7
    move v0, v3

    .line 936
    goto :goto_2

    .line 909
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public static createArguments(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 750
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 751
    const-string v1, "key_ical_file_uri_string"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    return-object v0
.end method

.method private createModelsFromCursors()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 284
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mICalEventsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 286
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mModelsList:Ljava/util/ArrayList;

    .line 287
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mUidToICalModelMap:Ljava/util/HashMap;

    .line 289
    if-ne v0, v3, :cond_6

    .line 291
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mICalEventsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 292
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mICalEventsCursor:Landroid/database/Cursor;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mMethod:Ljava/lang/String;

    .line 293
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mMethod:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    const-string v0, "PUBLISH"

    iput-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mMethod:Ljava/lang/String;

    .line 299
    :cond_0
    new-instance v0, Lcom/android/calendar/event/CalendarEventModel;

    invoke-direct {v0}, Lcom/android/calendar/event/CalendarEventModel;-><init>()V

    .line 300
    iget-object v1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mICalEventsCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mMethod:Ljava/lang/String;

    invoke-static {v0, v1, v5, v2}, Lcom/google/android/calendar/ical/ICalUtils;->setEventModelFromICalCursor(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;ILjava/lang/String;)Z

    .line 302
    iget-object v1, v0, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    sget-object v0, Lcom/google/android/calendar/ical/ICalControllerFragment;->TAG:Ljava/lang/String;

    const-string v1, "Event without an id"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 345
    :goto_0
    return-void

    .line 307
    :cond_1
    const-string v1, "PUBLISH"

    iget-object v2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "REQUEST"

    iget-object v2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mMethod:Ljava/lang/String;

    .line 308
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "REPLY"

    iget-object v2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mMethod:Ljava/lang/String;

    .line 309
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "CANCEL"

    iget-object v2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mMethod:Ljava/lang/String;

    .line 310
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 311
    sget-object v0, Lcom/google/android/calendar/ical/ICalControllerFragment;->TAG:Ljava/lang/String;

    const-string v1, "Unsupported ics method: %s"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mMethod:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 315
    :cond_2
    const-string v1, "REQUEST"

    iget-object v2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "REPLY"

    iget-object v2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mMethod:Ljava/lang/String;

    .line 316
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "CANCEL"

    iget-object v2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mMethod:Ljava/lang/String;

    .line 317
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 318
    :cond_3
    iget-object v1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mICalAttendeesCursor:Landroid/database/Cursor;

    invoke-static {v0, v1}, Lcom/google/android/calendar/ical/ICalUtils;->addAttendeesFromICalCursor(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;)Z

    .line 321
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    new-array v2, v3, [Lcom/android/calendar/event/CalendarEventModel;

    aput-object v0, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mModelsList:Ljava/util/ArrayList;

    .line 322
    iget-object v1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mUidToICalModelMap:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->setDefaultColorsForModels()V

    goto :goto_0

    .line 323
    :cond_6
    if-le v0, v3, :cond_5

    .line 324
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 326
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mICalEventsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 328
    :cond_7
    new-instance v0, Lcom/android/calendar/event/CalendarEventModel;

    invoke-direct {v0}, Lcom/android/calendar/event/CalendarEventModel;-><init>()V

    .line 329
    iget-object v2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mICalEventsCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mICalEventsCursor:Landroid/database/Cursor;

    .line 330
    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    const-string v4, "PUBLISH"

    .line 329
    invoke-static {v0, v2, v3, v4}, Lcom/google/android/calendar/ical/ICalUtils;->setEventModelFromICalCursor(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;ILjava/lang/String;)Z

    .line 331
    iget-object v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 332
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mUidToICalModelMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :goto_2
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mICalEventsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 339
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 340
    iput-object v1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mModelsList:Ljava/util/ArrayList;

    goto :goto_1

    .line 335
    :cond_8
    sget-object v0, Lcom/google/android/calendar/ical/ICalControllerFragment;->TAG:Ljava/lang/String;

    const-string v2, "Event without an id"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method

.method private finishedLoadingLocalEventInfo()V
    .locals 0

    .prologue
    .line 684
    invoke-direct {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->cleanLocalEventInfoLoaderData()V

    .line 685
    invoke-direct {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->onAllDataLoaded()V

    .line 686
    return-void
.end method

.method private isFirstStageLoaded()Z
    .locals 2

    .prologue
    .line 192
    iget v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mDataLoaded:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchEventInfoFromModel(Lcom/android/calendar/timely/TimelyChip;Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 9

    .prologue
    .line 838
    invoke-static {p2}, Lcom/google/android/calendar/ical/ICalUtils;->getEndDateFromModel(Lcom/android/calendar/event/CalendarEventModel;)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    .line 839
    new-instance v1, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;

    iget-wide v2, p2, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    iget-wide v4, p2, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    iget-wide v6, p2, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    iget v8, p2, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    invoke-direct/range {v1 .. v8}, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;-><init>(JJJI)V

    .line 844
    iget v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    invoke-virtual {v1, p2, v0}, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->onModelComplete(Lcom/android/calendar/event/CalendarEventModel;I)V

    .line 846
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v2, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "REPLY"

    iget-object v2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mMethod:Ljava/lang/String;

    .line 847
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 848
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$string;->ical_event_existing:I

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/google/android/calendar/ical/ICalUtils;->showSnackbar(Landroid/app/Activity;II)V

    .line 852
    :cond_0
    if-eqz p1, :cond_1

    .line 853
    invoke-static {p1}, Lcom/android/calendar/Utils;->getLocationInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    .line 854
    new-instance v2, Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    .line 855
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->getCurrentJulianDay()I

    move-result v3

    .line 856
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->getViewType()I

    move-result v6

    .line 857
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->shouldShowImages()Z

    move-result v7

    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->getTimelineInfo()Lcom/android/calendar/timely/TimelineInfo;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/android/calendar/timely/animations/EventInfoAnimationData;-><init>(ILandroid/graphics/Rect;IIZLcom/android/calendar/timely/TimelineInfo;)V

    .line 859
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getEventInfoFragmentFactory()Lcom/android/calendar/event/EventInfoFragmentFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v0, v3, v1, v2}, Lcom/android/calendar/event/EventInfoFragmentFactory;->newFragment(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/timely/animations/EventInfoAnimationData;)Lcom/android/calendar/event/EventInfoFragment;

    move-result-object v0

    .line 865
    :goto_0
    sget-object v1, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->showOverlayFragment(Ljava/lang/String;Lcom/android/calendar/OverlayFragment;)V

    .line 866
    return-void

    .line 862
    :cond_1
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getEventInfoFragmentFactory()Lcom/android/calendar/event/EventInfoFragmentFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/android/calendar/event/EventInfoFragmentFactory;->newFragment(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;)Lcom/android/calendar/event/EventInfoFragment;

    move-result-object v0

    goto :goto_0
.end method

.method private launchICalEventInfo(Lcom/android/calendar/timely/TimelyChip;Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 940
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mEventTypeMap:Ljava/util/Map;

    iget-object v1, p2, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 942
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 943
    sget-object v1, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 944
    instance-of v1, v0, Lcom/google/android/calendar/ical/ICalEventInfoFragment;

    if-eqz v1, :cond_0

    .line 945
    invoke-virtual {v0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_event_type"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 965
    :goto_0
    return-void

    .line 950
    :cond_0
    if-eqz p1, :cond_2

    .line 951
    invoke-static {p1}, Lcom/android/calendar/Utils;->getLocationInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 952
    new-instance v0, Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    .line 953
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->getCurrentJulianDay()I

    move-result v1

    .line 954
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->getViewType()I

    move-result v4

    .line 955
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->shouldShowImages()Z

    move-result v5

    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->getTimelineInfo()Lcom/android/calendar/timely/TimelineInfo;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/timely/animations/EventInfoAnimationData;-><init>(ILandroid/graphics/Rect;IIZLcom/android/calendar/timely/TimelineInfo;)V

    .line 959
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/google/android/calendar/ical/ICalEventInfoFragment;

    .line 960
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_1

    .line 962
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v7

    .line 961
    :cond_1
    invoke-static {p2, v7, v8, v0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->createArguments(Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/timely/TimelineItem;ILcom/android/calendar/timely/animations/EventInfoAnimationData;)Landroid/os/Bundle;

    move-result-object v0

    .line 958
    invoke-static {v1, v2, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/ical/ICalEventInfoFragment;

    .line 964
    sget-object v1, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->showOverlayFragment(Ljava/lang/String;Lcom/android/calendar/OverlayFragment;)V

    goto :goto_0

    :cond_2
    move-object v0, v7

    goto :goto_1
.end method

.method private launchLocalEventInfo(Lcom/android/calendar/timely/TimelyChip;Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 2

    .prologue
    .line 827
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mEventTypeMap:Ljava/util/Map;

    iget-object v1, p2, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 828
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mOriginalModelsMap:Ljava/util/Map;

    iget-object v1, p2, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    .line 829
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel;

    .line 830
    invoke-direct {p0, p1, v0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->launchEventInfoFromModel(Lcom/android/calendar/timely/TimelyChip;Lcom/android/calendar/event/CalendarEventModel;)V

    .line 834
    :goto_0
    return-void

    .line 832
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/ical/ICalControllerFragment;->showCalendarPicker(Lcom/android/calendar/timely/TimelyChip;Lcom/android/calendar/event/CalendarEventModel;)V

    goto :goto_0
.end method

.method private onAllDataLoaded()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 348
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 350
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mModelsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel;

    .line 351
    iget-object v3, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mEventTypeMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->compareToLocalEvents(Lcom/android/calendar/event/CalendarEventModel;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mModelsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v6, :cond_8

    .line 355
    const-string v0, "REPLY"

    iget-object v2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mMethod:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 356
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mModelsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel;

    .line 357
    iget-boolean v1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mUpdateQueued:Z

    if-eqz v1, :cond_2

    .line 358
    invoke-virtual {p0, v7, v0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->launchDetails(Lcom/android/calendar/timely/TimelyChip;Lcom/android/calendar/event/CalendarEventModel;)V

    .line 417
    :cond_1
    :goto_1
    return-void

    .line 359
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->registerReply(Lcom/android/calendar/event/CalendarEventModel;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 360
    iput-boolean v6, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mUpdateQueued:Z

    goto :goto_1

    .line 362
    :cond_3
    sget-object v0, Lcom/google/android/calendar/ical/ICalControllerFragment;->TAG:Ljava/lang/String;

    const-string v1, "Failed to update for REPLY"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 363
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->ical_event_launch_failed:I

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 366
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 368
    :cond_4
    const-string v0, "CANCEL"

    iget-object v2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mMethod:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 369
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mModelsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel;

    .line 370
    iget-object v1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mEventTypeMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_5

    .line 371
    sget-object v0, Lcom/google/android/calendar/ical/ICalControllerFragment;->TAG:Ljava/lang/String;

    const-string v1, "Failed to find event for CANCEL"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 372
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->ical_event_launch_failed:I

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 375
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 377
    :cond_5
    invoke-direct {p0, v0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->registerCancel(Lcom/android/calendar/event/CalendarEventModel;)V

    goto :goto_1

    .line 380
    :cond_6
    sget-object v0, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 381
    if-eqz v0, :cond_7

    instance-of v0, v0, Lcom/google/android/calendar/ical/ICalEventInfoFragment;

    if-eqz v0, :cond_1

    .line 382
    :cond_7
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mModelsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel;

    invoke-virtual {p0, v7, v0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->launchDetails(Lcom/android/calendar/timely/TimelyChip;Lcom/android/calendar/event/CalendarEventModel;)V

    goto/16 :goto_1

    .line 385
    :cond_8
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mModelsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    sget-object v0, Lcom/google/android/calendar/ical/ICalEventsListFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 388
    instance-of v2, v0, Lcom/google/android/calendar/ical/ICalEventsListFragment;

    if-eqz v2, :cond_9

    .line 389
    check-cast v0, Lcom/google/android/calendar/ical/ICalEventsListFragment;

    .line 390
    invoke-virtual {v0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->updateLocalEventsInfo()V

    .line 392
    sget-object v0, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 393
    instance-of v0, v0, Lcom/google/android/calendar/ical/ICalEventInfoFragment;

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mModelsList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mCurrentDetail:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel;

    .line 395
    invoke-virtual {p0, v7, v0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->launchDetails(Lcom/android/calendar/timely/TimelyChip;Lcom/android/calendar/event/CalendarEventModel;)V

    goto/16 :goto_1

    .line 402
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/google/android/calendar/ical/ICalEventsListFragment;

    .line 403
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mModelsList:Ljava/util/ArrayList;

    .line 404
    invoke-static {v3}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->createArguments(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v3

    .line 401
    invoke-static {v0, v2, v3}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/ical/ICalEventsListFragment;

    .line 406
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 407
    new-instance v3, Lcom/google/android/calendar/ical/ICalControllerFragment$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/google/android/calendar/ical/ICalControllerFragment$1;-><init>(Lcom/google/android/calendar/ical/ICalControllerFragment;Landroid/app/FragmentManager;Lcom/google/android/calendar/ical/ICalEventsListFragment;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1
.end method

.method private onFirstStageLoaded()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 201
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mICalEventsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mICalEventsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 202
    :cond_0
    sget-object v0, Lcom/google/android/calendar/ical/ICalControllerFragment;->TAG:Ljava/lang/String;

    const-string v1, "Unable to read ICal events cursor!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 203
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->ical_event_launch_failed:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 205
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 229
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-direct {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->createModelsFromCursors()V

    .line 211
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 212
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mICalAttendeesCursor:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mICalEventsCursor:Landroid/database/Cursor;

    .line 215
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mModelsList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 216
    sget-object v0, Lcom/google/android/calendar/ical/ICalControllerFragment;->TAG:Ljava/lang/String;

    const-string v1, "Failed extracting models from the file."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 217
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->ical_event_launch_failed:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 219
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 223
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mModelsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mICalUidsList:Ljava/util/List;

    .line 224
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mModelsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel;

    .line 225
    iget-object v2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mICalUidsList:Ljava/util/List;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 228
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->refreshLocalEventInfo()V

    goto :goto_0
.end method

.method private onLoadedEventDetailsForMatchingEvents(Landroid/database/Cursor;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 627
    if-nez p1, :cond_0

    .line 628
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->ical_import_failed:I

    invoke-static {v0, v1, v8}, Lcom/google/android/calendar/ical/ICalUtils;->showSnackbar(Landroid/app/Activity;II)V

    .line 629
    sget-object v0, Lcom/google/android/calendar/ical/ICalControllerFragment;->TAG:Ljava/lang/String;

    const-string v1, "Null event details cursor!"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 630
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 681
    :goto_0
    return-void

    .line 634
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 635
    invoke-direct {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->finishedLoadingLocalEventInfo()V

    goto :goto_0

    .line 639
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mLocalEventsUidsMap:Ljava/util/Map;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 640
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mLocalEventsUidsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 642
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 643
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 644
    new-instance v2, Lcom/android/calendar/event/CalendarEventModel;

    invoke-direct {v2}, Lcom/android/calendar/event/CalendarEventModel;-><init>()V

    .line 645
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-static {v2, p1, v0}, Lcom/android/calendar/event/EditHelper;->setModelFromEventCursor(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;I)Z

    .line 646
    iget-wide v4, v2, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 648
    iget-wide v4, v2, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    .line 654
    :goto_2
    const-string v0, "calendar_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    .line 656
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mVisibleWritableCalendarsMap:Ljava/util/Map;

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v2, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    .line 657
    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 656
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    .line 658
    if-eqz v0, :cond_5

    .line 659
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/calendar/event/data/AndroidCalendarKey;

    if-eqz v3, :cond_4

    .line 660
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    .line 661
    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccountName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    .line 662
    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccountType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountType:Ljava/lang/String;

    .line 670
    :goto_3
    sget v0, Lcom/google/android/calendar/ical/ICalUtils;->EVENTS_WITH_SYNC_DATA_INDEX_SELF_STATUS:I

    .line 671
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    .line 672
    sget v0, Lcom/google/android/calendar/ical/ICalUtils;->EVENTS_WITH_SYNC_DATA_INDEX_ORIGINAL_INSTANCE_TIME:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 673
    sget v0, Lcom/google/android/calendar/ical/ICalUtils;->EVENTS_WITH_SYNC_DATA_INDEX_ORIGINAL_INSTANCE_TIME:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/android/calendar/event/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    .line 677
    :cond_2
    invoke-direct {p0, v2}, Lcom/google/android/calendar/ical/ICalControllerFragment;->processMatchingLocalModel(Lcom/android/calendar/event/CalendarEventModel;)V

    goto/16 :goto_1

    .line 651
    :cond_3
    sget v0, Lcom/google/android/calendar/ical/ICalUtils;->EVENTS_WITH_SYNC_DATA_INDEX_UID:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    .line 652
    sget v0, Lcom/google/android/calendar/ical/ICalUtils;->EVENTS_WITH_SYNC_DATA_INDEX_SEQUENCE:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/android/calendar/event/CalendarEventModel;->mSequence:I

    goto :goto_2

    .line 664
    :cond_4
    sget-object v3, Lcom/google/android/calendar/ical/ICalControllerFragment;->TAG:Ljava/lang/String;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x16

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Incorrect key type: %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 667
    :cond_5
    sget-object v0, Lcom/google/android/calendar/ical/ICalControllerFragment;->TAG:Ljava/lang/String;

    const-string v3, "No calendar found for id: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v6, v2, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 680
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_0
.end method

.method private onLoadedEventIdsFromExtendedProperties(Landroid/database/Cursor;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 580
    if-nez p1, :cond_0

    .line 581
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->ical_import_failed:I

    invoke-static {v0, v1, v4}, Lcom/google/android/calendar/ical/ICalUtils;->showSnackbar(Landroid/app/Activity;II)V

    .line 582
    sget-object v0, Lcom/google/android/calendar/ical/ICalControllerFragment;->TAG:Ljava/lang/String;

    const-string v1, "Null ExtendedProperties cursor!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 583
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 597
    :goto_0
    return-void

    .line 587
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 588
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 590
    :cond_1
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 591
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 592
    iget-object v3, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mLocalEventsUidsMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 596
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method private onLoadedExtendedPropertiesForMatcingEvents(Landroid/database/Cursor;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 600
    if-nez p1, :cond_0

    .line 601
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->ical_import_failed:I

    invoke-static {v0, v1, v5}, Lcom/google/android/calendar/ical/ICalUtils;->showSnackbar(Landroid/app/Activity;II)V

    .line 602
    sget-object v0, Lcom/google/android/calendar/ical/ICalControllerFragment;->TAG:Ljava/lang/String;

    const-string v1, "Null ExtendedProperties cursor!"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 603
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 624
    :goto_0
    return-void

    .line 607
    :cond_0
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 608
    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 609
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 610
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 612
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mLocalEventsUidsMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 613
    iget-object v1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mLocalEventsCalendarsMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 614
    iget-object v2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mOriginalModelsMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel;

    .line 616
    const-string v1, "private:iCalDtStamp"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 617
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mICalDtStamp:J

    goto :goto_1

    .line 618
    :cond_2
    const-string v1, "sequenceNumber"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 619
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/calendar/event/CalendarEventModel;->mSequence:I

    goto :goto_1

    .line 623
    :cond_3
    invoke-direct {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->finishedLoadingLocalEventInfo()V

    goto :goto_0
.end method

.method private onLocalCalendarsLoaded(Landroid/database/Cursor;)V
    .locals 6

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 155
    sget-object v0, Lcom/google/android/calendar/ical/ICalControllerFragment;->TAG:Ljava/lang/String;

    const-string v1, "Unable to read calendars cursor!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 156
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->ical_event_launch_failed:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 158
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 189
    :goto_0
    return-void

    .line 162
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mVisibleWritableCalendarsMap:Ljava/util/Map;

    .line 163
    new-instance v0, Lcom/android/calendar/event/EditHelper;

    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/event/EditHelper;-><init>(Landroid/content/Context;)V

    .line 164
    iget-object v1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mVisibleWritableCalendarsMap:Ljava/util/Map;

    sget v2, Lcom/android/calendar/R$string;->primary_calendar_display_name:I

    .line 167
    invoke-virtual {p0, v2}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-static {v1, p1, v2, v0}, Lcom/android/calendar/event/data/LoadDetailsUtils;->setCalendarsMapFromCursor(Ljava/util/Map;Landroid/database/Cursor;Ljava/lang/String;Lcom/android/calendar/event/EditHelper;)V

    .line 171
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mVisibleWritableCalendarsMap:Ljava/util/Map;

    .line 172
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 173
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 175
    sget-object v2, Lcom/android/calendar/event/data/LoadDetailsUtils;->VISIBLE_WRITABLE_CALENDAR_PREDICATE:Lcom/google/common/base/Predicate;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    invoke-interface {v2, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mVisibleWritableCalendarsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    .line 181
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    .line 182
    iget-object v2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mImportCalendarIds:Ljava/util/List;

    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getCalendarId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    const-string v2, "com.google"

    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 184
    iget-object v2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mImportGoogleCalendarIds:Ljava/util/List;

    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getCalendarId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 188
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto/16 :goto_0
.end method

.method private processMatchingLocalModel(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 4

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mUidToICalModelMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel;

    .line 559
    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    iget-object v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    .line 560
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    iget-object v1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mOriginalModelsMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 565
    iget-object v1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mOriginalModelsMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    :cond_2
    iget-object v1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mOriginalModelsMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-wide v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalTime:Ljava/lang/Long;

    .line 570
    invoke-static {v1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    :cond_3
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mOriginalModelsMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-wide v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mLocalEventsCalendarsMap:Ljava/util/Map;

    iget-wide v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mLocalEventsUidsMap:Ljava/util/Map;

    iget-wide v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private registerCancel(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 6

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mOriginalModelsMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    .line 424
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 425
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 447
    :goto_0
    return-void

    .line 428
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/android/calendar/R$string;->ical_ask_delete_cancelled_event:I

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 430
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    aput-object v0, v4, v5

    .line 429
    invoke-virtual {p0, v3, v4}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    new-instance v3, Lcom/google/android/calendar/ical/ICalControllerFragment$3;

    invoke-direct {v3, p0, v1, p1}, Lcom/google/android/calendar/ical/ICalControllerFragment$3;-><init>(Lcom/google/android/calendar/ical/ICalControllerFragment;Ljava/util/Collection;Lcom/android/calendar/event/CalendarEventModel;)V

    .line 431
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/google/android/calendar/ical/ICalControllerFragment$2;

    invoke-direct {v2, p0}, Lcom/google/android/calendar/ical/ICalControllerFragment$2;-><init>(Lcom/google/android/calendar/ical/ICalControllerFragment;)V

    .line 440
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 446
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private registerReply(Lcom/android/calendar/event/CalendarEventModel;)Z
    .locals 4

    .prologue
    .line 453
    const/4 v1, 0x0

    .line 454
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mEventTypeMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    const/4 v1, 0x1

    .line 456
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mOriginalModelsMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    .line 457
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 458
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel;

    .line 459
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, p1, v0}, Lcom/google/android/calendar/ical/ICalUtils;->updateAttendee(Landroid/content/Context;Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/event/CalendarEventModel;)Z

    move-result v0

    and-int/2addr v0, v1

    move v1, v0

    .line 460
    goto :goto_0

    .line 462
    :cond_0
    return v1
.end method

.method private setDefaultColorsForModels()V
    .locals 3

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getDefaultCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_0

    .line 244
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getBackgroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->colorToInt(Lcom/google/calendar/v2/client/service/api/common/Color;)I

    move-result v0

    move v1, v0

    .line 247
    :goto_0
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mModelsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel;

    .line 248
    invoke-virtual {v0, v1}, Lcom/android/calendar/event/CalendarEventModel;->setCalendarColor(I)V

    .line 249
    invoke-virtual {v0, v1}, Lcom/android/calendar/event/CalendarEventModel;->setEventColor(I)V

    goto :goto_1

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$color;->google_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 251
    :cond_1
    return-void
.end method

.method private showCalendarPicker(Lcom/android/calendar/timely/TimelyChip;Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 3

    .prologue
    .line 801
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mOriginalModelsMap:Ljava/util/Map;

    iget-object v1, p2, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    .line 802
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 804
    new-instance v1, Lcom/google/android/calendar/ical/ICalControllerFragment$5;

    invoke-direct {v1, p0, v0}, Lcom/google/android/calendar/ical/ICalControllerFragment$5;-><init>(Lcom/google/android/calendar/ical/ICalControllerFragment;Ljava/util/Map;)V

    .line 813
    new-instance v2, Lcom/google/android/calendar/ical/ICalControllerFragment$6;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/calendar/ical/ICalControllerFragment$6;-><init>(Lcom/google/android/calendar/ical/ICalControllerFragment;Ljava/util/Map;Lcom/android/calendar/timely/TimelyChip;)V

    .line 823
    invoke-virtual {p0, v1, v2}, Lcom/google/android/calendar/ical/ICalControllerFragment;->showCalendarPicker(Lcom/google/common/base/Predicate;Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;)V

    .line 824
    return-void
.end method

.method private showOverlayFragment(Ljava/lang/String;Lcom/android/calendar/OverlayFragment;)V
    .locals 2

    .prologue
    .line 869
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 870
    new-instance v1, Lcom/google/android/calendar/ical/ICalControllerFragment$7;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/android/calendar/ical/ICalControllerFragment$7;-><init>(Lcom/google/android/calendar/ical/ICalControllerFragment;Ljava/lang/String;Lcom/android/calendar/OverlayFragment;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 886
    return-void
.end method


# virtual methods
.method protected getDefaultCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;
    .locals 4

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mVisibleWritableCalendarsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 255
    const/4 v0, 0x0

    .line 280
    :cond_0
    :goto_0
    return-object v0

    .line 259
    :cond_1
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getDefaultCalendarId()J

    move-result-wide v0

    .line 262
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 263
    iget-object v2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mVisibleWritableCalendarsMap:Ljava/util/Map;

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 264
    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 263
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    .line 266
    if-nez v0, :cond_0

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mVisibleWritableCalendarsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 273
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    .line 274
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 280
    :cond_4
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    goto :goto_0
.end method

.method public getEventTypeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mEventTypeMap:Ljava/util/Map;

    return-object v0
.end method

.method public getOriginalModelsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/calendar/event/CalendarEventModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mOriginalModelsMap:Ljava/util/Map;

    return-object v0
.end method

.method public getWritableCalendarsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mVisibleWritableCalendarsMap:Ljava/util/Map;

    return-object v0
.end method

.method public launchDetails(Lcom/android/calendar/timely/TimelyChip;Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 2

    .prologue
    .line 968
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mEventTypeMap:Ljava/util/Map;

    iget-object v1, p2, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 974
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/ical/ICalControllerFragment;->launchICalEventInfo(Lcom/android/calendar/timely/TimelyChip;Lcom/android/calendar/event/CalendarEventModel;)V

    .line 977
    :goto_0
    return-void

    .line 971
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/ical/ICalControllerFragment;->launchLocalEventInfo(Lcom/android/calendar/timely/TimelyChip;Lcom/android/calendar/event/CalendarEventModel;)V

    goto :goto_0

    .line 968
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 731
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 732
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 733
    sget-object v0, Lcom/google/android/calendar/ical/ICalControllerFragment;->TAG:Ljava/lang/String;

    const-string v1, "Unable to retrieve fragment args"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 734
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->ical_file_open_failed:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 735
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 736
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 743
    :goto_0
    return-void

    .line 740
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 741
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 742
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 467
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 468
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->setRetainInstance(Z)V

    .line 469
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 473
    sparse-switch p1, :sswitch_data_0

    move-object v0, v4

    .line 532
    :goto_0
    return-object v0

    .line 475
    :sswitch_0
    new-instance v0, Landroid/content/CursorLoader;

    .line 476
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/google/android/calendar/ical/ICalContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 479
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "key_ical_file_uri_string"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    .line 477
    invoke-static {v2, v3, v5}, Lcom/google/android/calendar/ical/ICalContract;->buildUriWithParams(Landroid/net/Uri;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/google/android/calendar/ical/ICalUtils;->ICAL_EVENTS_PROJECTION:[Ljava/lang/String;

    const-string v6, "start_end_asc"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 485
    :sswitch_1
    new-instance v0, Landroid/content/CursorLoader;

    .line 486
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/google/android/calendar/ical/ICalContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 489
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "key_ical_file_uri_string"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 487
    invoke-static {v2, v3, v5}, Lcom/google/android/calendar/ical/ICalContract;->buildUriWithParams(Landroid/net/Uri;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/google/android/calendar/ical/ICalUtils;->ICAL_ATTENDEES_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 494
    :sswitch_2
    new-instance v0, Landroid/content/CursorLoader;

    .line 495
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/calendar/event/LoadDetailsConstants;->CALENDARS_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :sswitch_3
    new-instance v5, Landroid/content/CursorLoader;

    .line 501
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    sget-object v7, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/google/android/calendar/ical/ICalUtils;->EXTENDED_PROPERTIES_PROJECTION:[Ljava/lang/String;

    const-string v0, "name = \'iCalUid\' AND "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mICalUidsList:Ljava/util/List;

    .line 505
    invoke-static {v1}, Lcom/google/android/calendar/ical/ICalUtils;->makePropertyValueSelectionString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_1
    move-object v10, v4

    move-object v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    .line 500
    goto :goto_0

    .line 505
    :cond_0
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 508
    :sswitch_4
    new-instance v5, Landroid/content/CursorLoader;

    .line 509
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    sget-object v7, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/google/android/calendar/ical/ICalUtils;->EVENTS_WITH_SYNC_DATA_PROJECTION:[Ljava/lang/String;

    const-string v0, "deleted = 0 AND (("

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mICalUidsList:Ljava/util/List;

    .line 514
    invoke-static {v1}, Lcom/google/android/calendar/ical/ICalUtils;->makeSyncData1SelectionString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mImportGoogleCalendarIds:Ljava/util/List;

    .line 516
    invoke-static {v2}, Lcom/google/android/calendar/ical/ICalUtils;->makeCalendarSelectionString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mLocalEventsUidsMap:Ljava/util/Map;

    .line 518
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/calendar/ical/ICalUtils;->makeEventIdSelectionString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v9, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mImportCalendarIds:Ljava/util/List;

    .line 520
    invoke-static {v9}, Lcom/google/android/calendar/ical/ICalUtils;->makeCalendarSelectionString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x12

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") OR ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v4

    move-object v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    .line 508
    goto/16 :goto_0

    .line 524
    :sswitch_5
    new-instance v5, Landroid/content/CursorLoader;

    .line 525
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    sget-object v7, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/google/android/calendar/ical/ICalUtils;->EXTENDED_PROPERTIES_PROJECTION:[Ljava/lang/String;

    const-string v0, "name IN (\"sequenceNumber\", \"private:iCalDtStamp\") AND "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mLocalEventsUidsMap:Ljava/util/Map;

    .line 529
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/calendar/ical/ICalUtils;->makeExtEventIdSelectionString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_2
    move-object v10, v4

    move-object v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    .line 524
    goto/16 :goto_0

    .line 529
    :cond_1
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 473
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
    .end sparse-switch
.end method

.method public onLaunchDetails(Lcom/android/calendar/timely/TimelyChip;)V
    .locals 3

    .prologue
    .line 756
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineEvent;

    .line 757
    iget-object v1, v0, Lcom/android/calendar/timely/TimelineEvent;->extra:Landroid/os/Parcelable;

    instance-of v1, v1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 758
    iget-object v0, v0, Lcom/android/calendar/timely/TimelineEvent;->extra:Landroid/os/Parcelable;

    check-cast v0, Landroid/os/Bundle;

    .line 759
    const-string v1, "list_index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 760
    const-string v1, "list_index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mCurrentDetail:I

    .line 761
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mModelsList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mCurrentDetail:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel;

    .line 762
    invoke-virtual {p0, p1, v0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->launchDetails(Lcom/android/calendar/timely/TimelyChip;Lcom/android/calendar/event/CalendarEventModel;)V

    .line 767
    :goto_0
    return-void

    .line 766
    :cond_0
    sget-object v0, Lcom/google/android/calendar/ical/ICalControllerFragment;->TAG:Ljava/lang/String;

    const-string v1, "Unable to launch details, unknown list index"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 696
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 718
    :goto_0
    iget v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mDataLoaded:I

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mDataLoaded:I

    .line 719
    invoke-direct {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->isFirstStageLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    invoke-direct {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->onFirstStageLoaded()V

    .line 722
    :cond_0
    return-void

    .line 698
    :sswitch_0
    iput-object p2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mICalEventsCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 701
    :sswitch_1
    iput-object p2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mICalAttendeesCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 704
    :sswitch_2
    invoke-direct {p0, p2}, Lcom/google/android/calendar/ical/ICalControllerFragment;->onLocalCalendarsLoaded(Landroid/database/Cursor;)V

    goto :goto_0

    .line 707
    :sswitch_3
    invoke-direct {p0, p2}, Lcom/google/android/calendar/ical/ICalControllerFragment;->onLoadedEventIdsFromExtendedProperties(Landroid/database/Cursor;)V

    goto :goto_0

    .line 710
    :sswitch_4
    invoke-direct {p0, p2}, Lcom/google/android/calendar/ical/ICalControllerFragment;->onLoadedEventDetailsForMatchingEvents(Landroid/database/Cursor;)V

    goto :goto_0

    .line 713
    :sswitch_5
    invoke-direct {p0, p2}, Lcom/google/android/calendar/ical/ICalControllerFragment;->onLoadedExtendedPropertiesForMatcingEvents(Landroid/database/Cursor;)V

    goto :goto_0

    .line 696
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
    .end sparse-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 85
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/ical/ICalControllerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 727
    return-void
.end method

.method public refreshLocalEventInfo()V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mOriginalModelsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 234
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mLocalEventsUidsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 235
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mLocalEventsCalendarsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 236
    iget v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mDataLoaded:I

    and-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mDataLoaded:I

    .line 237
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 238
    invoke-direct {p0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->setDefaultColorsForModels()V

    .line 239
    return-void
.end method

.method public showCalendarPicker(Lcom/google/common/base/Predicate;Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;",
            "Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 773
    new-instance v3, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    invoke-direct {v3}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;-><init>()V

    .line 775
    if-nez p1, :cond_1

    .line 776
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mVisibleWritableCalendarsMap:Ljava/util/Map;

    .line 786
    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->setVisibleWriteableCalendarsMap(Ljava/util/Map;)Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    .line 787
    if-eqz p2, :cond_0

    .line 788
    invoke-virtual {v3, p2}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->setOnCalendarSelectedListener(Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;)Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    .line 791
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 792
    new-instance v1, Lcom/google/android/calendar/ical/ICalControllerFragment$4;

    invoke-direct {v1, p0, v3}, Lcom/google/android/calendar/ical/ICalControllerFragment$4;-><init>(Lcom/google/android/calendar/ical/ICalControllerFragment;Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 798
    return-void

    .line 778
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 780
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalControllerFragment;->mVisibleWritableCalendarsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 781
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    invoke-interface {p1, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 782
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method
