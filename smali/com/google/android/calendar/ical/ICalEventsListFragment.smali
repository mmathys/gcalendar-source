.class public Lcom/google/android/calendar/ical/ICalEventsListFragment;
.super Landroid/app/Fragment;
.source "ICalEventsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/ical/ICalEventsListFragment$TimelineEventICal;
    }
.end annotation


# static fields
.field public static final CALENDAR_PICKER_TAG:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mImportAllEventListener:Landroid/content/DialogInterface$OnClickListener;

.field private mModelsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 65
    const-class v0, Lcom/google/android/calendar/ical/ICalEventsListFragment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/ical/ICalEventsListFragment;->TAG:Ljava/lang/String;

    .line 70
    const-class v0, Lcom/google/android/calendar/ical/ICalEventsListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    .line 71
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

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

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/ical/ICalEventsListFragment;->CALENDAR_PICKER_TAG:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 75
    new-instance v0, Lcom/google/android/calendar/ical/ICalEventsListFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment$1;-><init>(Lcom/google/android/calendar/ical/ICalEventsListFragment;)V

    iput-object v0, p0, Lcom/google/android/calendar/ical/ICalEventsListFragment;->mImportAllEventListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/ical/ICalEventsListFragment;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->performImportAll()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/calendar/ical/ICalEventsListFragment;Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->performImportWithDefaultCalendar(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V

    return-void
.end method

.method private configureActionBar()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 351
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/calendar/AbstractCalendarActivity;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 353
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AbstractCalendarActivity;

    .line 354
    sget v1, Lcom/android/calendar/R$string;->ics_file:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/AbstractCalendarActivity;->configureICalActionBarPreL(I)V

    .line 367
    :goto_0
    return-void

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 359
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 360
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$color;->timely_background_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 359
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 361
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, 0x106000d

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 362
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 363
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 364
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 365
    sget v1, Lcom/android/calendar/R$string;->ics_file:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 366
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    goto :goto_0
.end method

.method public static createArguments(Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 382
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 383
    const-string v1, "key_models_list"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 384
    return-object v0
.end method

.method private createEventFromModel(Lcom/android/calendar/event/CalendarEventModel;)Lcom/google/android/calendar/ical/ICalEventsListFragment$TimelineEventICal;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 241
    new-instance v1, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;

    iget-wide v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    iget-wide v4, p1, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    iget-wide v6, p1, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    iget v8, p1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    invoke-direct/range {v1 .. v8}, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;-><init>(JJJI)V

    .line 246
    iget v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    invoke-virtual {v1, p1, v0}, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->onModelComplete(Lcom/android/calendar/event/CalendarEventModel;I)V

    .line 248
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 249
    iget-wide v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/time/Time;->set(J)V

    .line 250
    invoke-virtual {v0, v9}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v0

    iput v0, v1, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->startDay:I

    .line 251
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 252
    iget-wide v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/time/Time;->set(J)V

    .line 253
    invoke-virtual {v0, v9}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v0

    iput v0, v1, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;->endDay:I

    .line 255
    new-instance v0, Lcom/google/android/calendar/ical/ICalEventsListFragment$TimelineEventICal;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/calendar/ical/ICalEventsListFragment$TimelineEventICal;-><init>(Lcom/android/calendar/timely/TimelineEvent;Lcom/google/android/calendar/ical/ICalEventsListFragment$1;)V

    return-object v0
.end method

.method private doClickImportAll()V
    .locals 6

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalEventsListFragment;->mModelsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$plurals;->ical_many_events_warning:I

    iget-object v2, p0, Lcom/google/android/calendar/ical/ICalEventsListFragment;->mModelsList:Ljava/util/List;

    .line 94
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/calendar/ical/ICalEventsListFragment;->mModelsList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 93
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->showAreYouSureDialog(Ljava/lang/String;)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->performImportAll()V

    goto :goto_0
.end method

.method private getCalendarsMapContainer()Lcom/google/android/calendar/ical/ICalUtils$WritableCalendarsMapContainer;
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 189
    sget-object v1, Lcom/google/android/calendar/ical/ICalUtils;->ICAL_CALENDARS_MAP_CONTAINER_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 190
    instance-of v1, v0, Lcom/google/android/calendar/ical/ICalUtils$WritableCalendarsMapContainer;

    if-eqz v1, :cond_0

    .line 191
    check-cast v0, Lcom/google/android/calendar/ical/ICalUtils$WritableCalendarsMapContainer;

    .line 193
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLocalEventInfoProvider()Lcom/google/android/calendar/ical/ICalUtils$LocalEventInfoProvider;
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 180
    sget-object v1, Lcom/google/android/calendar/ical/ICalUtils;->ICAL_LOCAL_EVENT_INFO_PROVIDER_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 181
    instance-of v1, v0, Lcom/google/android/calendar/ical/ICalUtils$LocalEventInfoProvider;

    if-eqz v1, :cond_0

    .line 182
    check-cast v0, Lcom/google/android/calendar/ical/ICalUtils$LocalEventInfoProvider;

    .line 184
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performImportAll()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->getLocalEventInfoProvider()Lcom/google/android/calendar/ical/ICalUtils$LocalEventInfoProvider;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Lcom/google/android/calendar/ical/ICalUtils$LocalEventInfoProvider;->getEventTypeMap()Ljava/util/Map;

    move-result-object v0

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    .line 105
    if-eqz v0, :cond_3

    .line 106
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v3, Lcom/google/android/calendar/ical/ICalUtils;->ICAL_CALENDARS_MAP_CONTAINER_TAG:Ljava/lang/String;

    .line 107
    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 108
    instance-of v3, v0, Lcom/google/android/calendar/ical/ICalUtils$WritableCalendarsMapContainer;

    if-eqz v3, :cond_2

    .line 109
    check-cast v0, Lcom/google/android/calendar/ical/ICalUtils$WritableCalendarsMapContainer;

    .line 110
    invoke-interface {v0}, Lcom/google/android/calendar/ical/ICalUtils$WritableCalendarsMapContainer;->getWritableCalendarsMap()Ljava/util/Map;

    move-result-object v3

    .line 111
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 112
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    .line 113
    invoke-direct {p0, v0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->performImportWithDefaultCalendar(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v4, Lcom/google/android/calendar/ical/ICalEventsListFragment;->CALENDAR_PICKER_TAG:Ljava/lang/String;

    .line 117
    invoke-virtual {v0, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    .line 119
    if-nez v0, :cond_4

    .line 120
    new-instance v0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    invoke-direct {v0}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;-><init>()V

    move v5, v1

    move-object v1, v0

    move v0, v5

    .line 123
    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->setVisibleWriteableCalendarsMap(Ljava/util/Map;)Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    .line 124
    new-instance v2, Lcom/google/android/calendar/ical/ICalEventsListFragment$2;

    invoke-direct {v2, p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment$2;-><init>(Lcom/google/android/calendar/ical/ICalEventsListFragment;)V

    invoke-virtual {v1, v2}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->setOnCalendarSelectedListener(Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;)Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    .line 130
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v2, Lcom/google/android/calendar/ical/ICalEventsListFragment;->CALENDAR_PICKER_TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_2
    sget-object v0, Lcom/google/android/calendar/ical/ICalEventsListFragment;->TAG:Ljava/lang/String;

    const-string v1, "Failed to get writable calendars map"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 137
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->performImportWithDefaultCalendar(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V

    goto :goto_0

    :cond_4
    move-object v1, v0

    move v0, v2

    goto :goto_1
.end method

.method private performImportWithDefaultCalendar(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V
    .locals 9

    .prologue
    const/4 v4, 0x1

    .line 143
    invoke-direct {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->getLocalEventInfoProvider()Lcom/google/android/calendar/ical/ICalUtils$LocalEventInfoProvider;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Lcom/google/android/calendar/ical/ICalUtils$LocalEventInfoProvider;->getOriginalModelsMap()Ljava/util/Map;

    move-result-object v5

    .line 146
    invoke-interface {v0}, Lcom/google/android/calendar/ical/ICalUtils$LocalEventInfoProvider;->getEventTypeMap()Ljava/util/Map;

    move-result-object v6

    .line 150
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalEventsListFragment;->mModelsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v4

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel;

    .line 151
    iget-object v1, v0, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 152
    iget-object v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v3

    :goto_1
    move v3, v0

    .line 171
    goto :goto_0

    .line 154
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/google/android/calendar/ical/ICalUtils;->importEvent(Landroid/content/Context;Lcom/android/calendar/event/CalendarEventModel;Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)Z

    move-result v0

    and-int/2addr v3, v0

    move v0, v3

    .line 155
    goto :goto_1

    .line 160
    :pswitch_1
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/event/CalendarEventModel;

    .line 161
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v0, v1}, Lcom/google/android/calendar/ical/ICalUtils;->updateEvent(Landroid/content/Context;Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/event/CalendarEventModel;)Z

    move-result v1

    and-int/2addr v3, v1

    .line 162
    goto :goto_2

    :cond_0
    move v0, v3

    .line 163
    goto :goto_1

    .line 173
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v3, :cond_2

    .line 174
    sget v0, Lcom/android/calendar/R$string;->ical_import_all_success:I

    .line 173
    :goto_3
    invoke-static {v1, v0, v4}, Lcom/google/android/calendar/ical/ICalUtils;->showSnackbar(Landroid/app/Activity;II)V

    .line 176
    return-void

    .line 174
    :cond_2
    sget v0, Lcom/android/calendar/R$string;->ical_import_all_failure:I

    goto :goto_3

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private populateListView()V
    .locals 13

    .prologue
    const/4 v3, 0x0

    .line 197
    invoke-direct {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->getLocalEventInfoProvider()Lcom/google/android/calendar/ical/ICalUtils$LocalEventInfoProvider;

    move-result-object v0

    .line 198
    if-nez v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-direct {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->getCalendarsMapContainer()Lcom/google/android/calendar/ical/ICalUtils$WritableCalendarsMapContainer;

    move-result-object v5

    .line 202
    if-eqz v5, :cond_0

    .line 207
    invoke-interface {v0}, Lcom/google/android/calendar/ical/ICalUtils$LocalEventInfoProvider;->getOriginalModelsMap()Ljava/util/Map;

    move-result-object v6

    .line 208
    invoke-interface {v0}, Lcom/google/android/calendar/ical/ICalUtils$LocalEventInfoProvider;->getEventTypeMap()Ljava/util/Map;

    move-result-object v7

    .line 210
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$id;->ical_events_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 211
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 214
    iget-object v1, p0, Lcom/google/android/calendar/ical/ICalEventsListFragment;->mModelsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v2, v3

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/event/CalendarEventModel;

    .line 215
    invoke-direct {p0, v1}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->createEventFromModel(Lcom/android/calendar/event/CalendarEventModel;)Lcom/google/android/calendar/ical/ICalEventsListFragment$TimelineEventICal;

    move-result-object v10

    .line 217
    new-instance v11, Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-direct {v11, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 218
    const-string v12, "list_index"

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v11, v12, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    iput-object v11, v10, Lcom/google/android/calendar/ical/ICalEventsListFragment$TimelineEventICal;->extra:Landroid/os/Parcelable;

    .line 221
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v2, v1, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 224
    invoke-interface {v5}, Lcom/google/android/calendar/ical/ICalUtils$WritableCalendarsMapContainer;->getWritableCalendarsMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    iget-object v2, v1, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    .line 225
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 224
    invoke-static {v11, v2}, Lcom/google/android/calendar/ical/ICalUtils;->chooseBestModel(Ljava/util/Collection;Ljava/util/Map;)Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v2

    .line 228
    :goto_2
    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 229
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 228
    invoke-static {v1, v11}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v10, Lcom/google/android/calendar/ical/ICalEventsListFragment$TimelineEventICal;->mEventType:I

    .line 230
    iput-object v2, v10, Lcom/google/android/calendar/ical/ICalEventsListFragment$TimelineEventICal;->mOriginalModel:Lcom/android/calendar/event/CalendarEventModel;

    move v2, v4

    .line 232
    goto :goto_1

    :cond_2
    move-object v2, v1

    .line 226
    goto :goto_2

    .line 234
    :cond_3
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/search/SearchResultsAdapter;

    .line 236
    invoke-virtual {v0, v8}, Lcom/android/calendar/search/SearchResultsAdapter;->swapItemList(Ljava/util/List;)V

    .line 237
    invoke-virtual {v0}, Lcom/android/calendar/search/SearchResultsAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 301
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 303
    invoke-direct {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->configureActionBar()V

    .line 305
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$id;->ical_events_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 307
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/ChipRecycler$ChipRecyclerProvider;

    invoke-interface {v1}, Lcom/android/calendar/timely/ChipRecycler$ChipRecyclerProvider;->getChipRecycler()Lcom/android/calendar/timely/ChipRecycler;

    move-result-object v1

    .line 308
    new-instance v2, Lcom/android/calendar/search/SearchResultsAdapter;

    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/calendar/search/SearchResultsAdapter;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/ChipRecycler;)V

    .line 310
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 311
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 313
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_models_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 315
    instance-of v1, v0, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 316
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/calendar/ical/ICalEventsListFragment;->mModelsList:Ljava/util/List;

    .line 322
    invoke-direct {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->populateListView()V

    .line 323
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/google/android/calendar/ical/ICalEventsListFragment;->CALENDAR_PICKER_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    invoke-direct {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->performImportAll()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 330
    sget v0, Lcom/android/calendar/R$menu;->ical_event_list_actions:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 331
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 332
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 261
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->setHasOptionsMenu(Z)V

    .line 262
    sget v0, Lcom/android/calendar/R$layout;->ical_events_list_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 336
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 337
    sget v2, Lcom/android/calendar/R$id;->action_add_all:I

    if-ne v1, v2, :cond_0

    .line 338
    invoke-direct {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->doClickImportAll()V

    .line 344
    :goto_0
    return v0

    .line 340
    :cond_0
    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    .line 341
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 344
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public showAreYouSureDialog(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 84
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->ical_import_all:I

    iget-object v2, p0, Lcom/google/android/calendar/ical/ICalEventsListFragment;->mImportAllEventListener:Landroid/content/DialogInterface$OnClickListener;

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 89
    return-void
.end method

.method public updateLocalEventsInfo()V
    .locals 2

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->populateListView()V

    .line 371
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/google/android/calendar/ical/ICalEventsListFragment;->CALENDAR_PICKER_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->performImportAll()V

    .line 374
    :cond_0
    return-void
.end method
