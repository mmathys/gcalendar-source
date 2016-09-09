.class public Lcom/android/calendar/event/edit/segment/CalendarEditSegment;
.super Lcom/android/calendar/editor/EditSegment;
.source "CalendarEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/editor/EditSegment",
        "<",
        "Lcom/android/calendar/event/data/EventEditManager;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<",
        "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
        ">;"
    }
.end annotation


# instance fields
.field private final CALENDAR_PICKER_DIALOG_TAG:Ljava/lang/String;

.field private mCalendarData:Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;

.field private mSelectableCalendarsMap:Ljava/util/Map;
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

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/android/calendar/event/data/EventEditManager;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/editor/EditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;)V

    .line 66
    const-class v0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->CALENDAR_PICKER_DIALOG_TAG:Ljava/lang/String;

    .line 70
    new-instance v0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$1;-><init>(Lcom/android/calendar/event/edit/segment/CalendarEditSegment;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->mListener:Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/edit/segment/CalendarEditSegment;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->mEditInput:Ljava/lang/Object;

    return-object v0
.end method

.method private buildTextString(Lcom/google/calendar/v2/client/service/api/calendars/Calendar;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 139
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/calendars/Calendar;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCalendarPickerDialog()Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->CALENDAR_PICKER_DIALOG_TAG:Ljava/lang/String;

    .line 126
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    .line 125
    return-object v0
.end method


# virtual methods
.method public canBeChanged(Lcom/android/calendar/event/data/EventEditManager;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 131
    .line 132
    instance-of v0, p1, Lcom/android/calendar/groove/GrooveEditManager;

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p1}, Lcom/android/calendar/event/data/EventEditManager;->isNewEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 134
    :goto_0
    invoke-virtual {p1}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/api/events/EventPermissions;->canChangeCalendar()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_2

    .line 135
    :cond_0
    invoke-virtual {p1}, Lcom/android/calendar/event/data/EventEditManager;->getSelectableCalendarsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 134
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 133
    goto :goto_0

    :cond_2
    move v1, v2

    .line 135
    goto :goto_1
.end method

.method public bridge synthetic canBeChanged(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 63
    check-cast p1, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->canBeChanged(Lcom/android/calendar/event/data/EventEditManager;)Z

    move-result v0

    return v0
.end method

.method public onChange(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->buildTextString(Lcom/google/calendar/v2/client/service/api/calendars/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->onChange(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/calendar/Utils;->hideFocusAndSoftKeyboard(Landroid/app/Activity;Landroid/view/View;)V

    .line 151
    new-instance v0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    invoke-direct {v0}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;-><init>()V

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->mSelectableCalendarsMap:Ljava/util/Map;

    .line 152
    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->setVisibleWriteableCalendarsMap(Ljava/util/Map;)Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->mListener:Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;

    .line 153
    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->setOnCalendarSelectedListener(Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;)Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    .line 154
    invoke-interface {v1}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->CALENDAR_PICKER_DIALOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method protected onDisposeInput(Lcom/android/calendar/event/data/EventEditManager;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->mCalendarData:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    invoke-interface {v0, p0}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 113
    iput-object v1, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->mCalendarData:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    .line 114
    iput-object v1, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->mSelectableCalendarsMap:Ljava/util/Map;

    .line 115
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->getCalendarPickerDialog()Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->setOnCalendarSelectedListener(Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;)Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    .line 119
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->setClickable(Z)V

    .line 120
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->onDisposeInput(Lcom/android/calendar/event/data/EventEditManager;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/android/calendar/editor/EditSegment;->onFinishInflate()V

    .line 86
    sget v0, Lcom/android/calendar/R$id;->calendar_name:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->mTextView:Landroid/widget/TextView;

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->setClickable(Z)V

    .line 88
    invoke-virtual {p0, p0}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void
.end method

.method protected onSetInput(Lcom/android/calendar/event/data/EventEditManager;)V
    .locals 3

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/android/calendar/event/data/EventEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/events/EventEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventEdit;->getEvent()Lcom/google/calendar/v2/client/service/api/events/MutableEvent;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->observableCalendar()Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->mCalendarData:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    .line 96
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->mCalendarData:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    invoke-interface {v1, p0}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 97
    invoke-virtual {p1}, Lcom/android/calendar/event/data/EventEditManager;->getSelectableCalendarsMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->mSelectableCalendarsMap:Ljava/util/Map;

    .line 98
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->getCalendarPickerDialog()Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_0

    .line 100
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->mSelectableCalendarsMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->setVisibleWriteableCalendarsMap(Ljava/util/Map;)Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    .line 101
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->mListener:Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;

    invoke-virtual {v1, v2}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->setOnCalendarSelectedListener(Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;)Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    .line 103
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->setClickable(Z)V

    .line 104
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/MutableEvent;->getCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->onChange(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V

    .line 105
    return-void
.end method

.method protected bridge synthetic onSetInput(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->onSetInput(Lcom/android/calendar/event/data/EventEditManager;)V

    return-void
.end method
