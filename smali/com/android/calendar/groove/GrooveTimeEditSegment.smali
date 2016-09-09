.class public Lcom/android/calendar/groove/GrooveTimeEditSegment;
.super Lcom/android/calendar/event/segment/AbstractTimeEditSegment;
.source "GrooveTimeEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/event/segment/AbstractTimeEditSegment;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<",
        "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
        ">;"
    }
.end annotation


# instance fields
.field private mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field private mStartDateButton:Landroid/widget/TextView;

.field private mStartTimeButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 48
    const-class v0, Lcom/android/calendar/event/data/InputAspectTime;

    const-class v1, Lcom/android/calendar/editor/AspectAdapter;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/calendar/event/segment/AbstractTimeEditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 49
    return-void
.end method

.method private launchDatePicker()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveTimeEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 86
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveTimeEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 88
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveTimeEditSegment;->getDatePickerLOrLater(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Landroid/app/DatePickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveTimeEditSegment;->getDatePickerPreL(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/android/datetimepicker/date/DatePickerDialog;

    move-result-object v0

    .line 92
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "datePickerDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/android/datetimepicker/date/DatePickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected launchTimePicker()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveTimeEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 98
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveTimeEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 100
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveTimeEditSegment;->getTimePickerLOrLater(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Landroid/app/TimePickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveTimeEditSegment;->getTimePickerPreL(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/android/datetimepicker/time/TimePickerDialog;

    move-result-object v0

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "timePickerDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/android/datetimepicker/time/TimePickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onChange(Lcom/google/calendar/v2/client/service/api/time/DateTime;)V
    .locals 6

    .prologue
    .line 37
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    instance-of v0, p1, Lcom/android/calendar/time/DateTimeImpl;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 39
    check-cast p1, Lcom/android/calendar/time/DateTimeImpl;

    .line 40
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveTimeEditSegment;->mStartDateButton:Landroid/widget/TextView;

    sget v1, Lcom/android/calendar/R$string;->accessibility_pick_start_date:I

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/calendar/groove/GrooveTimeEditSegment;->setFormattedDateLabelAndContentDescription(Landroid/widget/TextView;Lcom/android/calendar/time/DateTimeImpl;I)V

    .line 42
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveTimeEditSegment;->mStartTimeButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveTimeEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/calendar/time/DateTimeImpl;->formatTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveTimeEditSegment;->mStartTimeButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveTimeEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->accessibility_pick_start_time:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/calendar/groove/GrooveTimeEditSegment;->mStartTimeButton:Landroid/widget/TextView;

    .line 44
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    .line 43
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 45
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-virtual {p0, p1}, Lcom/android/calendar/groove/GrooveTimeEditSegment;->onChange(Lcom/google/calendar/v2/client/service/api/time/DateTime;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveTimeEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/calendar/Utils;->hideFocusAndSoftKeyboard(Landroid/app/Activity;Landroid/view/View;)V

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 77
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveTimeEditSegment;->mStartDateButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 78
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveTimeEditSegment;->launchDatePicker()V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveTimeEditSegment;->mStartTimeButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveTimeEditSegment;->launchTimePicker()V

    goto :goto_0
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveTimeEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v0, p0, Lcom/android/calendar/groove/GrooveTimeEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    add-int/lit8 v2, p3, 0x1

    invoke-interface {v0, p2, v2, p4}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withDate(III)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method public onDateSet(Lcom/android/datetimepicker/date/DatePickerDialog;III)V
    .locals 3

    .prologue
    .line 115
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveTimeEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v0, p0, Lcom/android/calendar/groove/GrooveTimeEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    add-int/lit8 v2, p3, 0x1

    invoke-interface {v0, p2, v2, p4}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withDate(III)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method protected onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectTime;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveTimeEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0, p0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveTimeEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 71
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p2, Lcom/android/calendar/event/data/InputAspectTime;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/groove/GrooveTimeEditSegment;->onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectTime;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/android/calendar/event/segment/AbstractTimeEditSegment;->onFinishInflate()V

    .line 54
    sget v0, Lcom/android/calendar/R$id;->start_date:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveTimeEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveTimeEditSegment;->mStartDateButton:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/android/calendar/R$id;->start_time:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveTimeEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveTimeEditSegment;->mStartTimeButton:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveTimeEditSegment;->mStartDateButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveTimeEditSegment;->mStartTimeButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

.method protected onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectTime;)V
    .locals 1

    .prologue
    .line 62
    invoke-interface {p2}, Lcom/android/calendar/event/data/InputAspectTime;->mutableStartTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveTimeEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 63
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveTimeEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0, p0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 64
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveTimeEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveTimeEditSegment;->onChange(Lcom/google/calendar/v2/client/service/api/time/DateTime;)V

    .line 65
    return-void
.end method

.method protected bridge synthetic onSetInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p2, Lcom/android/calendar/event/data/InputAspectTime;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/groove/GrooveTimeEditSegment;->onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectTime;)V

    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 3

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveTimeEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v0, p0, Lcom/android/calendar/groove/GrooveTimeEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    const/4 v2, 0x0

    invoke-interface {v0, p2, p3, v2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withTime(III)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public onTimeSet(Lcom/android/datetimepicker/time/RadialPickerLayout;II)V
    .locals 3

    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveTimeEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v0, p0, Lcom/android/calendar/groove/GrooveTimeEditSegment;->mMutableStartTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    const/4 v2, 0x0

    invoke-interface {v0, p2, p3, v2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withTime(III)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method
