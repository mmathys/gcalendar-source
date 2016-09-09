.class public Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;
.super Lcom/android/calendar/editor/EditSegment;
.source "TimeZoneEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/timezonepicker/TimeZonePickerDialog$OnTimeZoneSetListener;
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/editor/EditSegment",
        "<",
        "Lcom/android/calendar/event/data/EventEditManager;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/timezonepicker/TimeZonePickerDialog$OnTimeZoneSetListener;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<",
        "Lcom/google/calendar/v2/client/service/api/time/TimeZone;",
        ">;"
    }
.end annotation


# instance fields
.field private mAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

.field private mAllDayListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mEndTimeZone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/TimeZone;",
            ">;"
        }
    .end annotation
.end field

.field private mManager:Lcom/android/calendar/event/data/EventEditManager;

.field private mStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTimeListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTimeZone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/TimeZone;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeZoneButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/android/calendar/event/data/EventEditManager;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/editor/EditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;)V

    .line 56
    new-instance v0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment$1;-><init>(Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mAllDayListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 68
    new-instance v0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment$2;-><init>(Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mStartTimeListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mStartTimeZone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method private showTimezoneDialog()V
    .locals 6

    .prologue
    .line 145
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 146
    const-string v2, "bundle_event_start_time"

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 147
    const-string v2, "bundle_event_time_zone"

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mStartTimeZone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/TimeZone;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 150
    sget-object v0, Lcom/android/timezonepicker/TimeZonePickerDialog;->TAG:Ljava/lang/String;

    .line 151
    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/timezonepicker/TimeZonePickerDialog;

    .line 152
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/android/timezonepicker/TimeZonePickerDialog;->dismiss()V

    .line 155
    :cond_0
    new-instance v0, Lcom/android/timezonepicker/TimeZonePickerDialog;

    invoke-direct {v0}, Lcom/android/timezonepicker/TimeZonePickerDialog;-><init>()V

    .line 156
    invoke-virtual {v0, v1}, Lcom/android/timezonepicker/TimeZonePickerDialog;->setArguments(Landroid/os/Bundle;)V

    .line 157
    invoke-virtual {v0, p0}, Lcom/android/timezonepicker/TimeZonePickerDialog;->setOnTimeZoneSetListener(Lcom/android/timezonepicker/TimeZonePickerDialog$OnTimeZoneSetListener;)V

    .line 158
    sget-object v1, Lcom/android/timezonepicker/TimeZonePickerDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/android/timezonepicker/TimeZonePickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 159
    return-void
.end method


# virtual methods
.method protected canBeChanged(Lcom/android/calendar/event/data/EventEditManager;)Z
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p1}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/EventPermissions;->canChangeStartTimeZone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p1}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/EventPermissions;->canChangeEndTimeZone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    .line 124
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic canBeChanged(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 46
    check-cast p1, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->canBeChanged(Lcom/android/calendar/event/data/EventEditManager;)Z

    move-result v0

    return v0
.end method

.method public onChange(Lcom/google/calendar/v2/client/service/api/time/TimeZone;)V
    .locals 6

    .prologue
    .line 174
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/TimeZone;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 175
    new-instance v2, Ljava/util/Date;

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    .line 176
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mTimeZoneButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->onChange(Lcom/google/calendar/v2/client/service/api/time/TimeZone;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/calendar/Utils;->hideFocusAndSoftKeyboard(Landroid/app/Activity;Landroid/view/View;)V

    .line 141
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->showTimezoneDialog()V

    .line 142
    return-void
.end method

.method protected onDisposeInput(Lcom/android/calendar/event/data/EventEditManager;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mStartTimeListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 112
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 113
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mStartTimeZone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0, p0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 114
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mStartTimeZone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 115
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mEndTimeZone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 116
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mAllDayListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 117
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 118
    invoke-virtual {p1, p0}, Lcom/android/calendar/event/data/EventEditManager;->removeAsHiddenSegment(Lcom/android/calendar/editor/EditSegment;)V

    .line 119
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->onDisposeInput(Lcom/android/calendar/event/data/EventEditManager;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/calendar/editor/EditSegment;->onFinishInflate()V

    .line 79
    sget v0, Lcom/android/calendar/R$id;->timezone:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mTimeZoneButton:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mTimeZoneButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {p0, p0}, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method

.method protected onSetInput(Lcom/android/calendar/event/data/EventEditManager;)V
    .locals 3

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mManager:Lcom/android/calendar/event/data/EventEditManager;

    .line 89
    invoke-virtual {p1, p0}, Lcom/android/calendar/event/data/EventEditManager;->setAsHiddenSegment(Lcom/android/calendar/editor/EditSegment;)V

    .line 90
    invoke-virtual {p1}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableStartTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 92
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mStartTimeListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v1, v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 93
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableStartTimeZone()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mStartTimeZone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 94
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mStartTimeZone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v1, p0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 95
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableEndTimeZone()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mEndTimeZone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 96
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->mutableIsAllDay()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 97
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mAllDayListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 98
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mStartTimeZone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->onChange(Lcom/google/calendar/v2/client/service/api/time/TimeZone;)V

    .line 101
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 102
    sget-object v1, Lcom/android/timezonepicker/TimeZonePickerDialog;->TAG:Ljava/lang/String;

    .line 103
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/timezonepicker/TimeZonePickerDialog;

    .line 104
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, p0}, Lcom/android/timezonepicker/TimeZonePickerDialog;->setOnTimeZoneSetListener(Lcom/android/timezonepicker/TimeZonePickerDialog$OnTimeZoneSetListener;)V

    .line 107
    :cond_0
    return-void
.end method

.method protected bridge synthetic onSetInput(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->onSetInput(Lcom/android/calendar/event/data/EventEditManager;)V

    return-void
.end method

.method public onTimeZoneSet(Lcom/android/timezonepicker/TimeZoneInfo;)V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p1, Lcom/android/timezonepicker/TimeZoneInfo;->mTzId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/calendar/time/TimeZoneImpl;->getTimeZone(Ljava/lang/String;)Lcom/android/calendar/time/TimeZoneImpl;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mStartTimeZone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 167
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mEndTimeZone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method public showOrHide()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mManager:Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/EventEditManager;->hideSegments()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->mAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/TimeZoneEditSegment;->hide()V

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-super {p0}, Lcom/android/calendar/editor/EditSegment;->showOrHide()V

    goto :goto_0
.end method
