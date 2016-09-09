.class public Lcom/google/android/calendar/ical/ICalEventInfoFragment;
.super Lcom/google/android/calendar/event/TimelyEventInfoFragment;
.source "ICalEventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen;
    }
.end annotation


# static fields
.field public static final CALENDAR_PICKER_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEventType:I

.field private final mOverwriteEventListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 60
    const-class v0, Lcom/google/android/calendar/ical/ICalEventInfoFragment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->TAG:Ljava/lang/String;

    .line 62
    const-class v0, Lcom/google/android/calendar/ical/ICalEventInfoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    .line 63
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

    sput-object v0, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->CALENDAR_PICKER_TAG:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;-><init>()V

    .line 183
    new-instance v0, Lcom/google/android/calendar/ical/ICalEventInfoFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment$2;-><init>(Lcom/google/android/calendar/ical/ICalEventInfoFragment;)V

    iput-object v0, p0, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->mOverwriteEventListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/ical/ICalEventInfoFragment;Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->importEvent(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/calendar/ical/ICalEventInfoFragment;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->updateEvent()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/calendar/ical/ICalEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/calendar/ical/ICalEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/calendar/ical/ICalEventInfoFragment;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->doClickImportOrUpdateEvent()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/calendar/ical/ICalEventInfoFragment;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->mEventType:I

    return v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static createArguments(Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/timely/TimelineItem;ILcom/android/calendar/timely/animations/EventInfoAnimationData;)Landroid/os/Bundle;
    .locals 9

    .prologue
    .line 361
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 362
    const-string v1, "key_calendar_event_model"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 363
    if-nez p1, :cond_1

    .line 364
    new-instance v1, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;

    iget-wide v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    iget-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    iget-wide v6, p0, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    iget v8, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    invoke-direct/range {v1 .. v8}, Lcom/android/calendar/event/CalendarEventModel$TimelineExternalEvent;-><init>(JJJI)V

    .line 371
    :goto_0
    const-string v2, "timeline_item"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 372
    const-string v1, "key_event_type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 373
    if-eqz p3, :cond_0

    .line 374
    const-string v1, "animation_data"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 376
    :cond_0
    return-object v0

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method

.method private doClickImportOrUpdateEvent()V
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/google/android/calendar/ical/ICalUtils;->ICAL_CALENDARS_MAP_CONTAINER_TAG:Ljava/lang/String;

    .line 115
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 116
    instance-of v1, v0, Lcom/google/android/calendar/ical/ICalUtils$WritableCalendarsMapContainer;

    if-eqz v1, :cond_0

    .line 117
    check-cast v0, Lcom/google/android/calendar/ical/ICalUtils$WritableCalendarsMapContainer;

    .line 118
    invoke-interface {v0}, Lcom/google/android/calendar/ical/ICalUtils$WritableCalendarsMapContainer;->getWritableCalendarsMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->performImportOrUpdate(Ljava/util/Map;)V

    .line 120
    :cond_0
    return-void
.end method

.method private importEvent(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-static {v0, v1, p1}, Lcom/google/android/calendar/ical/ICalUtils;->importEvent(Landroid/content/Context;Lcom/android/calendar/event/CalendarEventModel;Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)Z

    move-result v0

    .line 81
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 82
    sget v0, Lcom/android/calendar/R$string;->ical_import_successful:I

    :goto_0
    const/4 v2, 0x1

    .line 80
    invoke-static {v1, v0, v2}, Lcom/google/android/calendar/ical/ICalUtils;->showSnackbar(Landroid/app/Activity;II)V

    .line 84
    return-void

    .line 82
    :cond_0
    sget v0, Lcom/android/calendar/R$string;->ical_import_failed:I

    goto :goto_0
.end method

.method private performImportOrUpdate(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->getLocalEventInfoProvider()Lcom/google/android/calendar/ical/ICalUtils$LocalEventInfoProvider;

    move-result-object v0

    .line 133
    if-nez v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget v0, p0, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->mEventType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 139
    :pswitch_1
    if-nez p1, :cond_2

    .line 140
    sget-object v0, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->TAG:Ljava/lang/String;

    const-string v1, "Import: Invalid writable calendars map"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 141
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->ical_import_failed:I

    invoke-static {v0, v1, v2}, Lcom/google/android/calendar/ical/ICalUtils;->showSnackbar(Landroid/app/Activity;II)V

    .line 143
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->doDismissScreen()V

    goto :goto_0

    .line 146
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 147
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    .line 148
    invoke-direct {p0, v0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->importEvent(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V

    goto :goto_0

    .line 151
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v3, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->CALENDAR_PICKER_TAG:Ljava/lang/String;

    .line 152
    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    .line 154
    if-nez v0, :cond_4

    .line 155
    new-instance v0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    invoke-direct {v0}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;-><init>()V

    move v4, v1

    move-object v1, v0

    move v0, v4

    .line 158
    :goto_1
    invoke-virtual {v1, p1}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->setVisibleWriteableCalendarsMap(Ljava/util/Map;)Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    .line 159
    new-instance v2, Lcom/google/android/calendar/ical/ICalEventInfoFragment$1;

    invoke-direct {v2, p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment$1;-><init>(Lcom/google/android/calendar/ical/ICalEventInfoFragment;)V

    invoke-virtual {v1, v2}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->setOnCalendarSelectedListener(Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;)Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    .line 165
    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v2, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->CALENDAR_PICKER_TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->updateEvent()V

    goto :goto_0

    .line 176
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->showOverwriteDialog()V

    goto :goto_0

    :cond_4
    move-object v1, v0

    move v0, v2

    goto :goto_1

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateEvent()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 91
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->getLocalEventInfoProvider()Lcom/google/android/calendar/ical/ICalUtils$LocalEventInfoProvider;

    move-result-object v0

    .line 92
    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-interface {v0}, Lcom/google/android/calendar/ical/ICalUtils$LocalEventInfoProvider;->getOriginalModelsMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 98
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel;

    .line 99
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-static {v1, v4, v0}, Lcom/google/android/calendar/ical/ICalUtils;->updateEvent(Landroid/content/Context;Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/event/CalendarEventModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_2
    move v1, v0

    .line 100
    goto :goto_1

    .line 99
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 102
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v1, :cond_3

    .line 103
    sget v0, Lcom/android/calendar/R$string;->ical_update_successful:I

    .line 102
    :goto_3
    invoke-static {v3, v0, v2}, Lcom/google/android/calendar/ical/ICalUtils;->showSnackbar(Landroid/app/Activity;II)V

    goto :goto_0

    .line 103
    :cond_3
    sget v0, Lcom/android/calendar/R$string;->ical_update_failed:I

    goto :goto_3
.end method


# virtual methods
.method getLocalEventInfoProvider()Lcom/google/android/calendar/ical/ICalUtils$LocalEventInfoProvider;
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 124
    sget-object v1, Lcom/google/android/calendar/ical/ICalUtils;->ICAL_LOCAL_EVENT_INFO_PROVIDER_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 125
    instance-of v1, v0, Lcom/google/android/calendar/ical/ICalUtils$LocalEventInfoProvider;

    if-eqz v1, :cond_0

    .line 126
    check-cast v0, Lcom/google/android/calendar/ical/ICalUtils$LocalEventInfoProvider;

    .line 128
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getNewScreen()Lcom/android/calendar/event/EventInfoFragment$Screen;
    .locals 2

    .prologue
    .line 290
    new-instance v0, Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen;

    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen;-><init>(Lcom/google/android/calendar/ical/ICalEventInfoFragment;Lcom/android/calendar/timely/TimelineItem;)V

    .line 291
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen;->setResources(Landroid/content/res/Resources;)V

    .line 292
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/ical/ICalEventInfoFragment$CalendarScreen;->setView(Landroid/view/View;)V

    .line 293
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 316
    invoke-super {p0, p1}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 317
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 318
    sget-object v0, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->TAG:Ljava/lang/String;

    const-string v1, "Unable to retrieve fragment args"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 319
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->ical_event_launch_failed:I

    invoke-static {v0, v1, v3}, Lcom/google/android/calendar/ical/ICalUtils;->showSnackbar(Landroid/app/Activity;II)V

    .line 321
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->doDismissScreen()V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_calendar_event_model"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 326
    instance-of v1, v0, Lcom/android/calendar/event/CalendarEventModel;

    if-nez v1, :cond_2

    .line 327
    sget-object v0, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->TAG:Ljava/lang/String;

    const-string v1, "Unable to recreate CalendarEventModel from fragment args"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 328
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->ical_event_launch_failed:I

    invoke-static {v0, v1, v3}, Lcom/google/android/calendar/ical/ICalUtils;->showSnackbar(Landroid/app/Activity;II)V

    .line 330
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->doDismissScreen()V

    goto :goto_0

    .line 334
    :cond_2
    check-cast v0, Lcom/android/calendar/event/CalendarEventModel;

    iput-object v0, p0, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    .line 335
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_event_type"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->mEventType:I

    .line 337
    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->CALENDAR_PICKER_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 338
    invoke-direct {p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->doClickImportOrUpdateEvent()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->onQueryComplete(I)V

    .line 349
    invoke-super {p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->onStart()V

    .line 350
    return-void
.end method

.method protected shouldLoadEventDataOnCreateView()Z
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldSetModelStartEndDates()Z
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public showOverwriteDialog()V
    .locals 3

    .prologue
    .line 192
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/calendar/R$string;->ical_overwrite_dialog_title:I

    .line 193
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->ical_overwrite_dialog_content:I

    .line 194
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->ical_overwrite_dialog_confirm:I

    iget-object v2, p0, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->mOverwriteEventListener:Landroid/content/DialogInterface$OnClickListener;

    .line 195
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 196
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 198
    return-void
.end method

.method protected updateEditButton(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 208
    if-nez p1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    sget v0, Lcom/android/calendar/R$id;->info_action_edit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_0

    .line 215
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    sget v0, Lcom/android/calendar/R$id;->info_action_edit_hit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 217
    if-eqz v0, :cond_0

    .line 220
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0
.end method
