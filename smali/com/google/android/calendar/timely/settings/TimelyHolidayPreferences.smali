.class public Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;
.super Lcom/android/calendar/timely/settings/HolidayPreferences;
.source "TimelyHolidayPreferences.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/calendar/editor/AspectAdapter;
.implements Lcom/android/calendar/editor/EditSegmentController;
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$CalendarInfoComparator;,
        Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$DirectoryLoaderCallbacks;,
        Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;,
        Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectColorImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/timely/settings/HolidayPreferences;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/android/calendar/editor/AspectAdapter;",
        "Lcom/android/calendar/editor/EditSegmentController;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<",
        "Lcom/google/calendar/v2/client/service/api/common/Color;",
        ">;"
    }
.end annotation


# static fields
.field private static final COLORS_PROJECTION:[Ljava/lang/String;

.field private static final SUBSCRIBED_CALENDARS_ARGS:[Ljava/lang/String;

.field private static final SUBSCRIBED_CALENDARS_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mColorInputAspect:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectColorImpl;

.field private mDirectory:Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;

.field private mHolidaysColorPref:Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputAspectsById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

.field private mPendingLoaders:Lcom/google/calendar/v2/client/service/common/ObservableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ObservableCollection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefService:Lcom/android/calendar/prefs/PrefService;

.field private mPrimaryAccount:Landroid/accounts/Account;

.field private mSegments:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/calendar/editor/EditSegment",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mSubscribedCalendars:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/CalendarKey;",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    const-class v0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->TAG:Ljava/lang/String;

    .line 96
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "ownerAccount"

    aput-object v1, v0, v2

    const-string v1, "account_name"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "visible"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->SUBSCRIBED_CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 107
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.google"

    aput-object v1, v0, v2

    const-string v1, "%#holiday@group.v.calendar.google.com"

    aput-object v1, v0, v3

    const-string v1, "%@holiday.calendar.google.com"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->SUBSCRIBED_CALENDARS_ARGS:[Ljava/lang/String;

    .line 112
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "account_name"

    aput-object v1, v0, v3

    const-string v1, "account_type"

    aput-object v1, v0, v4

    const-string v1, "color"

    aput-object v1, v0, v5

    const-string v1, "color_index"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->COLORS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/calendar/timely/settings/HolidayPreferences;-><init>()V

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mInputAspectsById:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;)Lcom/google/calendar/v2/client/service/common/ObservableCollection;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mPendingLoaders:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mSegments:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;)Lcom/android/calendar/timely/LoadingStateManager;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->setDirectory(Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;)V

    return-void
.end method

.method private maybeUpdateHolidaySelection()V
    .locals 6

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mDirectory:Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;

    if-nez v0, :cond_1

    .line 424
    :cond_0
    return-void

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 411
    invoke-virtual {v0}, Lcom/android/calendar/editor/EditSegment;->getSegmentId()Ljava/lang/String;

    move-result-object v2

    .line 412
    const-string v0, "com.android.calendar.settings.holidays.subs."

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 413
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mInputAspectsById:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 414
    instance-of v3, v0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;

    if-nez v3, :cond_3

    .line 415
    sget-object v0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->TAG:Ljava/lang/String;

    const-string v3, "Wrong input aspect for segment %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 418
    :cond_3
    check-cast v0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;

    .line 420
    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mDirectory:Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;

    iget-object v3, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mSubscribedCalendars:Ljava/util/Map;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->setData(Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private persistHolidayColor(Lcom/android/calendar/event/data/InputAspectColor;)V
    .locals 5

    .prologue
    .line 306
    invoke-interface {p1}, Lcom/android/calendar/event/data/InputAspectColor;->mutableColor()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 308
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/calendar/ExtensionsFactory;->getPrefService(Landroid/content/Context;)Lcom/android/calendar/prefs/PrefService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/calendar/prefs/PrefService;->setHolidaysColor(Lcom/google/calendar/v2/client/service/api/common/Color;)V

    .line 309
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 310
    instance-of v2, v1, Lcom/android/calendar/timely/settings/CalendarPreferences$OnChangeListener;

    if-eqz v2, :cond_0

    .line 311
    check-cast v1, Lcom/android/calendar/timely/settings/CalendarPreferences$OnChangeListener;

    sget-object v2, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->HOLIDAY_STANDIN_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/android/calendar/timely/settings/CalendarPreferences$OnChangeListener;->onChangeColor(Landroid/net/Uri;Landroid/accounts/Account;Lcom/google/calendar/v2/client/service/api/common/Color;Z)V

    .line 314
    :cond_0
    return-void
.end method

.method private persistHolidaySelection(Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;)V
    .locals 4

    .prologue
    .line 317
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 318
    new-instance v1, Landroid/accounts/Account;

    .line 319
    invoke-virtual {p1}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->getAccountName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google"

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {p1}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->getPendingCountryChanges()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 321
    invoke-virtual {p1}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;->getPendingReligiousChanges()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 323
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 324
    new-instance v2, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$2;-><init>(Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;Ljava/util/Map;Landroid/accounts/Account;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 343
    invoke-virtual {v2, v0}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 345
    :cond_0
    return-void
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 358
    if-nez p1, :cond_0

    .line 359
    const/4 v0, 0x0

    .line 368
    :goto_0
    return v0

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 362
    invoke-virtual {v0, p1}, Lcom/android/calendar/editor/EditSegment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_1

    .line 364
    :cond_1
    const-string v0, "com.android.calendar.settings.holidays.color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_2

    .line 366
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mColorInputAspect:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectColorImpl;

    invoke-virtual {v1}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectColorImpl;->mutableColor()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v1

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/common/Color;->fromHexString(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 368
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setColors(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mColorInputAspect:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectColorImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectColorImpl;->populateColorCache(Landroid/database/Cursor;)V

    .line 373
    return-void
.end method

.method private setDirectory(Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mDirectory:Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;

    .line 402
    invoke-direct {p0}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->maybeUpdateHolidaySelection()V

    .line 403
    return-void
.end method

.method private setSubscribedHolidayCalendars(Landroid/database/Cursor;)V
    .locals 8

    .prologue
    .line 376
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    :goto_0
    return-void

    .line 380
    :cond_0
    const-string v0, "ownerAccount"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 381
    const-string v0, "account_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 382
    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 383
    const-string v0, "visible"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 384
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 387
    :cond_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/common/AccountKeys;->fromEmail(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/GoogleAccountKey;

    move-result-object v0

    .line 388
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 386
    invoke-static {v0, v6}, Lcom/google/calendar/v2/client/service/api/common/CalendarKeys;->fromEmail(Lcom/google/calendar/v2/client/service/api/common/AccountKey;Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;

    move-result-object v6

    .line 389
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;

    invoke-direct {v0}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;-><init>()V

    .line 390
    invoke-virtual {v0, v6}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->setCalendarKey(Lcom/google/calendar/v2/client/service/api/common/CalendarKey;)Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;

    move-result-object v0

    .line 391
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->setName(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;

    move-result-object v7

    .line 392
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v7, v0}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->setIsSelected(Z)Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/calendars/ImmutableCalendarImpl$Builder;->build()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    .line 394
    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mSubscribedCalendars:Ljava/util/Map;

    .line 397
    invoke-direct {p0}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->maybeUpdateHolidaySelection()V

    goto :goto_0

    .line 392
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public applyChangeAnimated(Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/calendar/editor/ChangeAnimationDescriptor;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputAspect(Lcom/android/calendar/editor/AspectKey;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AspectType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/calendar/editor/AspectKey",
            "<TAspectType;>;)TAspectType;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 139
    if-nez p1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-object v0

    .line 142
    :cond_1
    invoke-virtual {p1}, Lcom/android/calendar/editor/AspectKey;->getAspectId()Ljava/lang/String;

    move-result-object v1

    .line 143
    if-eqz v1, :cond_0

    .line 146
    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mInputAspectsById:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mInputAspectsById:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/calendar/editor/AspectKey;->castAspect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public isFullScreen(Lcom/android/calendar/editor/EditSegment;)Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 195
    invoke-super {p0, p1}, Lcom/android/calendar/timely/settings/HolidayPreferences;->onActivityCreated(Landroid/os/Bundle;)V

    .line 196
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 197
    sget v1, Lcom/android/calendar/R$string;->drawer_holidays_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 198
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mAppContext:Landroid/content/Context;

    .line 200
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/calendar/ExtensionsFactory;->getPrimaryAccountSelector(Landroid/content/Context;)Lcom/android/calendar/timely/PrimaryAccountSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/timely/PrimaryAccountSelector;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mPrimaryAccount:Landroid/accounts/Account;

    .line 201
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mPrimaryAccount:Landroid/accounts/Account;

    if-nez v1, :cond_0

    .line 204
    sget-object v0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->TAG:Ljava/lang/String;

    const-string v1, "Could not find primary account"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 261
    :goto_0
    return-void

    .line 209
    :cond_0
    new-instance v1, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferencesSegmentFactory;

    invoke-direct {v1, v0}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferencesSegmentFactory;-><init>(Landroid/content/Context;)V

    .line 211
    const-string v0, "com.android.calendar.settings.holidays"

    invoke-virtual {v1, p0, v0, v5}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferencesSegmentFactory;->createEditSegments(Lcom/android/calendar/editor/EditSegmentController;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mSegments:Ljava/util/Collection;

    .line 214
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getPrefService(Landroid/content/Context;)Lcom/android/calendar/prefs/PrefService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mPrefService:Lcom/android/calendar/prefs/PrefService;

    .line 215
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mPrefService:Lcom/android/calendar/prefs/PrefService;

    invoke-interface {v0}, Lcom/android/calendar/prefs/PrefService;->getHolidaysColor()Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mHolidaysColorPref:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    .line 216
    new-instance v1, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectColorImpl;

    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mPrimaryAccount:Landroid/accounts/Account;

    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mHolidaysColorPref:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-direct {v1, v2, v0}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectColorImpl;-><init>(Landroid/accounts/Account;Lcom/google/calendar/v2/client/service/api/common/Color;)V

    iput-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mColorInputAspect:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectColorImpl;

    .line 217
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 218
    invoke-virtual {v0}, Lcom/android/calendar/editor/EditSegment;->getSegmentId()Ljava/lang/String;

    move-result-object v0

    .line 219
    const-string v2, "com.android.calendar.settings.holidays.color"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mInputAspectsById:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mColorInputAspect:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectColorImpl;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 221
    :cond_1
    const-string v2, "com.android.calendar.settings.holidays.subs."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    const-string v2, "com.android.calendar.settings.holidays.subs."

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 223
    iget-object v3, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mInputAspectsById:Ljava/util/Map;

    new-instance v4, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;

    invoke-direct {v4, v2}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 226
    :cond_2
    sget-object v2, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->TAG:Ljava/lang/String;

    const-string v3, "No aspect for segment: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 230
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->restoreInstanceState(Landroid/os/Bundle;)Z

    .line 232
    invoke-static {}, Lcom/google/calendar/v2/client/service/common/ObservableCollections;->newObservableHashSet()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mPendingLoaders:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    .line 233
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mPendingLoaders:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mPendingLoaders:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mPendingLoaders:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mPendingLoaders:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    new-instance v1, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$1;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$1;-><init>(Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;)V

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 255
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mHolidaysColorPref:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    invoke-interface {v0, p0}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 257
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 258
    invoke-virtual {v0, v6, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 259
    invoke-virtual {v0, v9, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 260
    new-instance v1, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$DirectoryLoaderCallbacks;

    invoke-direct {v1, p0, v5}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$DirectoryLoaderCallbacks;-><init>(Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$1;)V

    invoke-virtual {v0, v8, v5, v1}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_0
.end method

.method public onChange(Lcom/google/calendar/v2/client/service/api/common/Color;)V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mColorInputAspect:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectColorImpl;

    invoke-virtual {v0}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectColorImpl;->mutableColor()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 431
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 75
    check-cast p1, Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->onChange(Lcom/google/calendar/v2/client/service/api/common/Color;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/android/calendar/timely/settings/HolidayPreferences;->onCreate(Landroid/os/Bundle;)V

    .line 176
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->setHasOptionsMenu(Z)V

    .line 177
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
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
    const/4 v6, 0x0

    .line 609
    packed-switch p1, :pswitch_data_0

    .line 627
    :pswitch_0
    sget-object v0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->TAG:Ljava/lang/String;

    const-string v1, "Unhandled loader: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v6

    .line 628
    :goto_0
    return-object v0

    .line 611
    :pswitch_1
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mAppContext:Landroid/content/Context;

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->SUBSCRIBED_CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v4, "sync_events=1 AND account_type = ? AND (ownerAccount LIKE ? OR ownerAccount LIKE ?)"

    sget-object v5, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->SUBSCRIBED_CALENDARS_ARGS:[Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 619
    :pswitch_2
    new-instance v1, Landroid/content/CursorLoader;

    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mAppContext:Landroid/content/Context;

    sget-object v3, Landroid/provider/CalendarContract$Colors;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->COLORS_PROJECTION:[Ljava/lang/String;

    const-string v5, "color_type=0"

    move-object v7, v6

    invoke-direct/range {v1 .. v7}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 609
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 289
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 290
    sget v0, Lcom/android/calendar/R$menu;->holiday_settings_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 291
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 182
    sget v0, Lcom/android/calendar/R$layout;->loading_segments_preferences_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 186
    new-instance v1, Lcom/android/calendar/timely/LoadingStateManager;

    sget v2, Lcom/android/calendar/R$id;->scroll_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$id;->loading_view:I

    .line 187
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/calendar/timely/LoadingStateManager;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

    .line 188
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

    invoke-virtual {v1}, Lcom/android/calendar/timely/LoadingStateManager;->startLoadingPhases()V

    .line 190
    return-object v0
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
    .line 634
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 641
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mPendingLoaders:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->remove(Ljava/lang/Object;)Z

    .line 642
    return-void

    .line 636
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->setSubscribedHolidayCalendars(Landroid/database/Cursor;)V

    goto :goto_0

    .line 639
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->setColors(Landroid/database/Cursor;)V

    goto :goto_0

    .line 634
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 75
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 647
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 295
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/android/calendar/R$id;->holiday_setting_help_menu_item:I

    if-ne v0, v1, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->birthday_holiday_help_context:I

    invoke-virtual {p0, v1}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 296
    invoke-static {v0, v1, v2}, Lcom/google/android/calendar/timely/GoogleFeedbackUtils;->launchHelpAndFeedback(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    const/4 v0, 0x1

    .line 300
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 265
    invoke-super {p0}, Lcom/android/calendar/timely/settings/HolidayPreferences;->onPause()V

    .line 266
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mHolidaysColorPref:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    invoke-interface {v0, p0}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 268
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 269
    invoke-virtual {v0}, Lcom/android/calendar/editor/EditSegment;->getSegmentId()Ljava/lang/String;

    move-result-object v2

    .line 270
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mInputAspectsById:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 271
    const-string v3, "com.android.calendar.settings.holidays.color"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 272
    instance-of v3, v0, Lcom/android/calendar/event/data/InputAspectColor;

    if-nez v3, :cond_1

    .line 273
    sget-object v0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->TAG:Ljava/lang/String;

    const-string v3, "Wrong input aspect for segment %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 276
    :cond_1
    check-cast v0, Lcom/android/calendar/event/data/InputAspectColor;

    invoke-direct {p0, v0}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->persistHolidayColor(Lcom/android/calendar/event/data/InputAspectColor;)V

    goto :goto_0

    .line 277
    :cond_2
    const-string v3, "com.android.calendar.settings.holidays.subs."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    instance-of v3, v0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;

    if-nez v3, :cond_3

    .line 279
    sget-object v0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->TAG:Ljava/lang/String;

    const-string v3, "Wrong input aspect for segment %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 282
    :cond_3
    check-cast v0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;

    invoke-direct {p0, v0}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->persistHolidaySelection(Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectHolidaySelection;)V

    goto :goto_0

    .line 285
    :cond_4
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 349
    invoke-super {p0, p1}, Lcom/android/calendar/timely/settings/HolidayPreferences;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 350
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 351
    invoke-virtual {v0, p1}, Lcom/android/calendar/editor/EditSegment;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 354
    :cond_0
    const-string v1, "com.android.calendar.settings.holidays.color"

    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences;->mColorInputAspect:Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectColorImpl;

    invoke-virtual {v0}, Lcom/google/android/calendar/timely/settings/TimelyHolidayPreferences$InputAspectColorImpl;->mutableColor()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/Color;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public setFullScreen(Lcom/android/calendar/editor/EditSegment;Z)V
    .locals 0

    .prologue
    .line 158
    return-void
.end method
