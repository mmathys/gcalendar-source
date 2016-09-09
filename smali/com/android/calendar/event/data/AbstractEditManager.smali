.class public abstract Lcom/android/calendar/event/data/AbstractEditManager;
.super Ljava/lang/Object;
.source "AbstractEditManager.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/os/Parcelable;
.implements Lcom/android/calendar/editor/AspectAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;,
        Lcom/android/calendar/event/data/AbstractEditManager$SaveAsyncTask;,
        Lcom/android/calendar/event/data/AbstractEditManager$SaveTaskOutput;,
        Lcom/android/calendar/event/data/AbstractEditManager$Callback;,
        Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/os/Parcelable;",
        "Lcom/android/calendar/editor/AspectAdapter;"
    }
.end annotation


# static fields
.field protected static final SUCCESS:Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mCalendarMap:Ljava/util/Map;
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

.field private mCalendarsProjection:[Ljava/lang/String;

.field protected final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/event/data/AbstractEditManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentQuery:I

.field protected mData:Lcom/android/calendar/event/CalendarEventModel;

.field protected mExtras:Landroid/os/Bundle;

.field protected mHelper:Lcom/android/calendar/event/EditHelper;

.field protected mLoaderManager:Landroid/app/LoaderManager;

.field protected mLoadersToStart:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

.field private mPrimaryCalendarText:Ljava/lang/String;

.field private mQueryBitmask:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/android/calendar/event/data/AbstractEditManager;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/data/AbstractEditManager;->TAG:Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/android/calendar/event/data/AbstractEditManager$1;

    invoke-direct {v0}, Lcom/android/calendar/event/data/AbstractEditManager$1;-><init>()V

    sput-object v0, Lcom/android/calendar/event/data/AbstractEditManager;->SUCCESS:Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Landroid/app/LoaderManager;I)V
    .locals 2

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mCurrentQuery:I

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mCalendarMap:Ljava/util/Map;

    .line 208
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/calendar/event/data/AbstractEditManager;->initialize(Landroid/app/Activity;Landroid/app/LoaderManager;I)V

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mCallbacks:Ljava/util/List;

    .line 210
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->primary_calendar_display_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mPrimaryCalendarText:Ljava/lang/String;

    .line 212
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mCurrentQuery:I

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mCalendarMap:Ljava/util/Map;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mCallbacks:Ljava/util/List;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel;

    iput-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel;

    iput-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mPrimaryCalendarText:Ljava/lang/String;

    .line 220
    return-void
.end method

.method protected static newMissingDataStatus(Ljava/lang/String;)Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/android/calendar/event/data/AbstractEditManager$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/data/AbstractEditManager$2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addCallback(Lcom/android/calendar/event/data/AbstractEditManager$Callback;)V
    .locals 2

    .prologue
    .line 240
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v1, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mCallbacks:Ljava/util/List;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    monitor-exit v1

    .line 244
    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public delete(Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;)V
    .locals 9

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    if-eqz v0, :cond_0

    .line 645
    new-instance v1, Lcom/android/calendar/DeleteEventHelper;

    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v4, v0, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    iget-object v6, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    const/4 v7, -0x1

    move-object v8, p1

    .line 646
    invoke-virtual/range {v1 .. v8}, Lcom/android/calendar/DeleteEventHelper;->delete(JJLcom/android/calendar/event/CalendarEventModel;ILcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;)V

    .line 648
    :cond_0
    return-void
.end method

.method protected dispatchOnCompletion(Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;)V
    .locals 3

    .prologue
    .line 527
    iget-object v1, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mCallbacks:Ljava/util/List;

    monitor-enter v1

    .line 528
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mCallbacks:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 529
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AbstractEditManager$Callback;

    .line 532
    invoke-interface {v0, p1}, Lcom/android/calendar/event/data/AbstractEditManager$Callback;->onCompletion(Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;)V

    goto :goto_0

    .line 529
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 534
    :cond_0
    return-void
.end method

.method public abstract eventIsNewOrHasChanged()Z
.end method

.method public finishLoad()V
    .locals 6

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mLoadersToStart:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/data/AbstractEditManager;->onQueryComplete(I)V

    .line 497
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mLoadersToStart:Ljava/util/Set;

    .line 498
    return-void

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mLoadersToStart:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 487
    const/16 v2, 0x10

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v2, v2, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 490
    const-string v2, "calendarId"

    iget-object v3, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v4, v3, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/android/calendar/event/data/AbstractEditManager;->load(ILjava/lang/String;J)V

    goto :goto_0

    .line 492
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/data/AbstractEditManager;->load(I)V

    goto :goto_0
.end method

.method public getData()Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method protected getDefaultCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;
    .locals 6

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/android/calendar/event/data/AbstractEditManager;->getSelectableCalendarsMap()Ljava/util/Map;

    move-result-object v1

    .line 540
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getDefaultCalendarId()J

    move-result-wide v2

    .line 543
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 544
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 545
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 544
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    .line 547
    if-eqz v0, :cond_0

    .line 554
    :goto_0
    return-object v0

    .line 553
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 554
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getMatchingCalendarsMap(Lcom/google/common/base/Predicate;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 260
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mCalendarMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 261
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    invoke-interface {p1, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 266
    :cond_1
    return-object v2
.end method

.method public getSelectableCalendarsMap()Ljava/util/Map;
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
    .line 254
    sget-object v0, Lcom/android/calendar/event/data/LoadDetailsUtils;->VISIBLE_WRITABLE_CALENDAR_PREDICATE:Lcom/google/common/base/Predicate;

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/data/AbstractEditManager;->getMatchingCalendarsMap(Lcom/google/common/base/Predicate;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getToastString(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 567
    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Landroid/app/Activity;Landroid/app/LoaderManager;I)V
    .locals 1

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mActivity:Landroid/app/Activity;

    .line 224
    iput-object p2, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mLoaderManager:Landroid/app/LoaderManager;

    .line 225
    new-instance v0, Lcom/google/android/calendar/event/TimelyEditHelper;

    invoke-direct {v0, p1}, Lcom/google/android/calendar/event/TimelyEditHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mHelper:Lcom/android/calendar/event/EditHelper;

    .line 226
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mHelper:Lcom/android/calendar/event/EditHelper;

    invoke-virtual {v0}, Lcom/android/calendar/event/EditHelper;->getCalendarsProjection()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mCalendarsProjection:[Ljava/lang/String;

    .line 227
    invoke-virtual {p0, p3}, Lcom/android/calendar/event/data/AbstractEditManager;->setQuerySet(I)V

    .line 228
    return-void
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract isNewEvent()Z
.end method

.method protected load(I)V
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/event/data/AbstractEditManager;->load(ILandroid/os/Bundle;)V

    .line 350
    return-void
.end method

.method protected load(ILandroid/net/Uri;)V
    .locals 2

    .prologue
    .line 353
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 354
    const-string v1, "modelUri"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 355
    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/event/data/AbstractEditManager;->load(ILandroid/os/Bundle;)V

    .line 356
    return-void
.end method

.method protected load(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mLoaderManager:Landroid/app/LoaderManager;

    invoke-virtual {v0, p1, p2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 373
    return-void
.end method

.method protected load(ILjava/lang/String;J)V
    .locals 3

    .prologue
    .line 359
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 360
    invoke-virtual {v0, p2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 361
    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/event/data/AbstractEditManager;->load(ILandroid/os/Bundle;)V

    .line 362
    return-void
.end method

.method protected notifyAboutSaveInterruption()V
    .locals 3

    .prologue
    .line 578
    iget-object v1, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mCallbacks:Ljava/util/List;

    monitor-enter v1

    .line 579
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mCallbacks:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 580
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AbstractEditManager$Callback;

    .line 582
    invoke-interface {v0}, Lcom/android/calendar/event/data/AbstractEditManager$Callback;->onSaveInterrupted()V

    goto :goto_0

    .line 580
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 584
    :cond_0
    return-void
.end method

.method protected abstract onAllDataLoaded()V
.end method

.method protected onAttendeesLoaded(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 302
    return-void
.end method

.method protected onCalendarsLoaded(Landroid/database/Cursor;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 323
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mCalendarMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mPrimaryCalendarText:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mHelper:Lcom/android/calendar/event/EditHelper;

    invoke-static {v0, p1, v2, v3}, Lcom/android/calendar/event/data/LoadDetailsUtils;->setCalendarsMapFromCursor(Ljava/util/Map;Landroid/database/Cursor;Ljava/lang/String;Lcom/android/calendar/event/EditHelper;)V

    .line 326
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v0, v1

    .line 328
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 329
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 330
    iget-object v4, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v4, v4, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 331
    iget-object v4, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-static {v4, p1}, Lcom/android/calendar/event/data/LoadDetailsUtils;->loadModelCalendarData(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;)V

    .line 333
    :cond_1
    iget-object v4, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    iget-wide v4, v4, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-static {v0, p1}, Lcom/android/calendar/event/data/LoadDetailsUtils;->loadModelCalendarData(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;)V

    .line 335
    const/4 v0, 0x1

    goto :goto_0

    .line 339
    :cond_2
    iget v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mQueryBitmask:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_3

    .line 340
    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/data/AbstractEditManager;->load(I)V

    .line 342
    :cond_3
    return-void
.end method

.method protected onColorsLoaded(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 310
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
    const/4 v12, 0x1

    const/4 v6, 0x0

    const-wide/16 v10, -0x1

    const/4 v4, 0x0

    .line 382
    iget-object v1, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mActivity:Landroid/app/Activity;

    .line 383
    sparse-switch p1, :sswitch_data_0

    :goto_0
    move-object v0, v4

    .line 432
    :goto_1
    return-object v0

    .line 386
    :sswitch_0
    const-string v0, "modelUri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 387
    sparse-switch p1, :sswitch_data_1

    .line 395
    :sswitch_1
    if-eqz p2, :cond_2

    .line 396
    const-string v0, "calendarId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 398
    :goto_2
    new-instance v5, Landroid/content/CursorLoader;

    sget-object v7, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mCalendarsProjection:[Ljava/lang/String;

    cmp-long v0, v2, v10

    if-eqz v0, :cond_0

    .line 399
    const-string v9, "_id=?"

    :goto_3
    cmp-long v0, v2, v10

    if-eqz v0, :cond_1

    .line 400
    new-array v10, v12, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v6

    :goto_4
    move-object v6, v1

    move-object v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    .line 398
    goto :goto_1

    .line 389
    :sswitch_2
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v3, Lcom/android/calendar/event/LoadDetailsConstants;->EVENT_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 391
    :sswitch_3
    new-instance v0, Landroid/content/CursorLoader;

    move-object v3, v4

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    move-object v9, v4

    .line 399
    goto :goto_3

    :cond_1
    move-object v10, v4

    .line 400
    goto :goto_4

    .line 402
    :sswitch_4
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mHelper:Lcom/android/calendar/event/EditHelper;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/EditHelper;->getDefaultEventDurationCursor(Landroid/content/Context;)Landroid/content/Loader;

    move-result-object v0

    goto :goto_1

    .line 404
    :sswitch_5
    new-instance v5, Landroid/content/CursorLoader;

    sget-object v7, Landroid/provider/CalendarContract$Colors;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/android/calendar/event/LoadDetailsConstants;->COLORS_PROJECTION:[Ljava/lang/String;

    const-string v9, "color_type=1"

    move-object v6, v1

    move-object v10, v4

    move-object v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    goto :goto_1

    .line 410
    :sswitch_6
    const-string v0, "modelId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 411
    new-array v5, v12, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 412
    sparse-switch p1, :sswitch_data_2

    goto :goto_0

    .line 414
    :sswitch_7
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/calendar/event/LoadDetailsConstants;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const-string v4, "event_id=?"

    const-string v6, "attendeeName ASC, attendeeEmail ASC"

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 419
    :sswitch_8
    new-instance v6, Landroid/content/CursorLoader;

    sget-object v8, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Lcom/android/calendar/event/LoadDetailsConstants;->EXTENDED_PROPERTIES_PROJECTION:[Ljava/lang/String;

    const-string v10, "event_id=?"

    move-object v7, v1

    move-object v11, v5

    move-object v12, v4

    invoke-direct/range {v6 .. v12}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_1

    .line 425
    :sswitch_9
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/calendar/event/LoadDetailsConstants;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const-string v4, "event_id=?"

    const-string v6, "minutes ASC, method ASC"

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    move-wide v2, v10

    goto/16 :goto_2

    .line 383
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_6
        0x4 -> :sswitch_6
        0x10 -> :sswitch_1
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_0
        0x1000 -> :sswitch_4
    .end sparse-switch

    .line 387
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x80 -> :sswitch_3
    .end sparse-switch

    .line 412
    :sswitch_data_2
    .sparse-switch
        0x2 -> :sswitch_7
        0x4 -> :sswitch_9
        0x40 -> :sswitch_8
    .end sparse-switch
.end method

.method protected onDefaultEventDurationLoaded(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 318
    return-void
.end method

.method public onEventDeleted(I)V
    .locals 0

    .prologue
    .line 574
    return-void
.end method

.method protected onEventLoaded(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 294
    return-void
.end method

.method protected onEventSaved(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 571
    return-void
.end method

.method protected onExtendedPropertiesLoaded(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 5
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
    .line 437
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    .line 439
    if-nez p2, :cond_0

    .line 444
    sget-object v1, Lcom/android/calendar/event/data/AbstractEditManager;->TAG:Ljava/lang/String;

    const-string v2, "Null cursor returned for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 480
    :goto_0
    return-void

    .line 448
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 478
    :goto_1
    invoke-virtual {p1}, Landroid/content/Loader;->stopLoading()V

    .line 479
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/data/AbstractEditManager;->onQueryComplete(I)V

    goto :goto_0

    .line 450
    :sswitch_0
    invoke-virtual {p0, p2}, Lcom/android/calendar/event/data/AbstractEditManager;->onTaskLoaded(Landroid/database/Cursor;)V

    goto :goto_1

    .line 453
    :sswitch_1
    invoke-virtual {p0, p2}, Lcom/android/calendar/event/data/AbstractEditManager;->onEventLoaded(Landroid/database/Cursor;)V

    goto :goto_1

    .line 456
    :sswitch_2
    invoke-virtual {p0, p2}, Lcom/android/calendar/event/data/AbstractEditManager;->onAttendeesLoaded(Landroid/database/Cursor;)V

    goto :goto_1

    .line 459
    :sswitch_3
    invoke-virtual {p0, p2}, Lcom/android/calendar/event/data/AbstractEditManager;->onNotificationsLoaded(Landroid/database/Cursor;)V

    goto :goto_1

    .line 462
    :sswitch_4
    invoke-virtual {p0, p2}, Lcom/android/calendar/event/data/AbstractEditManager;->onCalendarsLoaded(Landroid/database/Cursor;)V

    goto :goto_1

    .line 465
    :sswitch_5
    invoke-virtual {p0, p2}, Lcom/android/calendar/event/data/AbstractEditManager;->onColorsLoaded(Landroid/database/Cursor;)V

    goto :goto_1

    .line 468
    :sswitch_6
    invoke-virtual {p0, p2}, Lcom/android/calendar/event/data/AbstractEditManager;->onExtendedPropertiesLoaded(Landroid/database/Cursor;)V

    goto :goto_1

    .line 471
    :sswitch_7
    invoke-virtual {p0, p2}, Lcom/android/calendar/event/data/AbstractEditManager;->onDefaultEventDurationLoaded(Landroid/database/Cursor;)V

    goto :goto_1

    .line 448
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_0
        0x1000 -> :sswitch_7
    .end sparse-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 77
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/data/AbstractEditManager;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 517
    return-void
.end method

.method protected onNotificationsLoaded(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method protected onQueryComplete(I)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 501
    monitor-enter p0

    .line 502
    :try_start_0
    iget v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mCurrentQuery:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mCurrentQuery:I

    .line 503
    iget v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mCurrentQuery:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mCurrentQuery:I

    iget v1, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mQueryBitmask:I

    if-ne v0, v1, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/android/calendar/event/data/AbstractEditManager;->onAllDataLoaded()V

    .line 509
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mCurrentQuery:I

    .line 511
    :cond_0
    monitor-exit p0

    .line 512
    return-void

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 558
    const-string v0, "key_edit_context"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 559
    return-void
.end method

.method protected onTaskLoaded(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 298
    return-void
.end method

.method public removeCallback(Lcom/android/calendar/event/data/AbstractEditManager$Callback;)V
    .locals 2

    .prologue
    .line 247
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v1, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mCallbacks:Ljava/util/List;

    monitor-enter v1

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 250
    monitor-exit v1

    .line 251
    return-void

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract save()V
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mExtras:Landroid/os/Bundle;

    .line 281
    return-void
.end method

.method protected setInitialModel(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 2

    .prologue
    .line 284
    new-instance v0, Lcom/android/calendar/event/CalendarEventModel;

    invoke-direct {v0, p1}, Lcom/android/calendar/event/CalendarEventModel;-><init>(Lcom/android/calendar/event/CalendarEventModel;)V

    iput-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    .line 285
    new-instance v0, Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-direct {v0, v1}, Lcom/android/calendar/event/CalendarEventModel;-><init>(Lcom/android/calendar/event/CalendarEventModel;)V

    iput-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    .line 286
    return-void
.end method

.method protected setQuerySet(I)V
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mCurrentQuery:I

    .line 377
    iput p1, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mQueryBitmask:I

    .line 378
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 233
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 234
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractEditManager;->mPrimaryCalendarText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    return-void
.end method
