.class public Lcom/android/calendar/event/edit/segment/HangoutEditSegment;
.super Lcom/android/calendar/editor/AspectEditSegment;
.source "HangoutEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/edit/segment/HangoutEditSegment$EventCalendarListener;,
        Lcom/android/calendar/event/edit/segment/HangoutEditSegment$AttendeesListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/editor/AspectEditSegment",
        "<",
        "Lcom/android/calendar/event/data/InputAspectHangout;",
        "Lcom/android/calendar/editor/AspectAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAttendeesListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Lcom/google/calendar/v2/client/service/common/CollectionDelta",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attendee;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCalendar:Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private mChangedFromDefault:Z

.field private final mEventCalendarListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private mMutableHangout:Lcom/google/calendar/v2/client/service/api/events/ModifiableHangout;

.field private mObservableAttendees:Lcom/google/calendar/v2/client/service/common/ObservableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    const-class v0, Lcom/android/calendar/event/data/InputAspectHangout;

    const-class v1, Lcom/android/calendar/editor/AspectAdapter;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/calendar/editor/AspectEditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mChangedFromDefault:Z

    .line 59
    new-instance v0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment$AttendeesListener;

    invoke-direct {v0, p0, v2}, Lcom/android/calendar/event/edit/segment/HangoutEditSegment$AttendeesListener;-><init>(Lcom/android/calendar/event/edit/segment/HangoutEditSegment;Lcom/android/calendar/event/edit/segment/HangoutEditSegment$1;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mAttendeesListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 60
    new-instance v0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment$EventCalendarListener;

    invoke-direct {v0, p0, v2}, Lcom/android/calendar/event/edit/segment/HangoutEditSegment$EventCalendarListener;-><init>(Lcom/android/calendar/event/edit/segment/HangoutEditSegment;Lcom/android/calendar/event/edit/segment/HangoutEditSegment$1;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mEventCalendarListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 64
    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/event/edit/segment/HangoutEditSegment;)Lcom/google/calendar/v2/client/service/api/events/ModifiableHangout;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mMutableHangout:Lcom/google/calendar/v2/client/service/api/events/ModifiableHangout;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/calendar/event/edit/segment/HangoutEditSegment;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mChangedFromDefault:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/calendar/event/edit/segment/HangoutEditSegment;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->update()V

    return-void
.end method

.method private update()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->updateLabels()V

    .line 155
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->showOrHide()V

    .line 156
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mObservableAttendees:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 158
    iput-boolean v1, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mChangedFromDefault:Z

    .line 160
    :cond_0
    return-void
.end method

.method private updateLabels()V
    .locals 4

    .prologue
    .line 163
    sget v0, Lcom/android/calendar/R$id;->add_conference_text:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 164
    sget v1, Lcom/android/calendar/R$id;->add_conference_description:I

    invoke-virtual {p0, v1}, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 165
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->getAspectValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/event/data/InputAspectHangout;

    invoke-interface {v2}, Lcom/android/calendar/event/data/InputAspectHangout;->isThorSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    sget v2, Lcom/android/calendar/R$string;->add_conference_link_switch_label:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 167
    sget v0, Lcom/android/calendar/R$string;->add_conference_link_description_label:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 168
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->add_hangout_switch_label:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectHangout;)Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mCalendar:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    .line 146
    instance-of v0, v0, Lcom/android/calendar/event/data/AndroidGaiaCalendarKey;

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 150
    :goto_0
    return v0

    :cond_0
    invoke-interface {p2}, Lcom/android/calendar/event/data/InputAspectHangout;->canChangeHangout()Z

    move-result v0

    goto :goto_0
.end method

.method protected bridge synthetic canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 44
    check-cast p2, Lcom/android/calendar/event/data/InputAspectHangout;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectHangout;)Z

    move-result v0

    return v0
.end method

.method protected onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectHangout;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mMutableHangout:Lcom/google/calendar/v2/client/service/api/events/ModifiableHangout;

    if-eqz v0, :cond_0

    .line 129
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mMutableHangout:Lcom/google/calendar/v2/client/service/api/events/ModifiableHangout;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mObservableAttendees:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mObservableAttendees:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mAttendeesListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 133
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mObservableAttendees:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mCalendar:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mCalendar:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mEventCalendarListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 137
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mCalendar:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    .line 139
    :cond_2
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    check-cast p2, Lcom/android/calendar/event/data/InputAspectHangout;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectHangout;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/android/calendar/editor/AspectEditSegment;->onFinishInflate()V

    .line 69
    sget v0, Lcom/android/calendar/R$id;->switch_view:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mSwitch:Landroid/widget/Switch;

    .line 70
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/editor/AspectEditSegment;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 75
    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->requestFocus()Z

    .line 78
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/android/calendar/editor/AspectEditSegment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 90
    const-string v0, ":changedFromDefault"

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->getStateKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mChangedFromDefault:Z

    .line 92
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 82
    const-string v0, ":changedFromDefault"

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->getStateKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mChangedFromDefault:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    invoke-super {p0, p1}, Lcom/android/calendar/editor/AspectEditSegment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 85
    return-void
.end method

.method protected onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectHangout;)V
    .locals 2

    .prologue
    .line 109
    invoke-interface {p2}, Lcom/android/calendar/event/data/InputAspectHangout;->attendees()Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mObservableAttendees:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    .line 110
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mObservableAttendees:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mAttendeesListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 111
    invoke-interface {p2}, Lcom/android/calendar/event/data/InputAspectHangout;->calendar()Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mCalendar:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    .line 112
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mCalendar:Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mEventCalendarListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 113
    invoke-interface {p2}, Lcom/android/calendar/event/data/InputAspectHangout;->mutableHangout()Lcom/google/calendar/v2/client/service/api/events/ModifiableHangout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mMutableHangout:Lcom/google/calendar/v2/client/service/api/events/ModifiableHangout;

    .line 114
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mMutableHangout:Lcom/google/calendar/v2/client/service/api/events/ModifiableHangout;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/ModifiableHangout;->hasHangout()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 115
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/android/calendar/event/edit/segment/HangoutEditSegment$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/edit/segment/HangoutEditSegment$1;-><init>(Lcom/android/calendar/event/edit/segment/HangoutEditSegment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 122
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->update()V

    .line 123
    return-void
.end method

.method protected bridge synthetic onSetInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    check-cast p2, Lcom/android/calendar/event/data/InputAspectHangout;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectHangout;)V

    return-void
.end method

.method public showOrHide()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mObservableAttendees:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mObservableAttendees:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->hide()V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-super {p0}, Lcom/android/calendar/editor/AspectEditSegment;->showOrHide()V

    .line 101
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mChangedFromDefault:Z

    if-nez v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->getAspectValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/InputAspectHangout;

    invoke-interface {v0}, Lcom/android/calendar/event/data/InputAspectHangout;->autoAddHangout()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mChangedFromDefault:Z

    goto :goto_0
.end method
