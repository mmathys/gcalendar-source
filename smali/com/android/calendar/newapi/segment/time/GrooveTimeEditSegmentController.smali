.class public Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;
.super Lcom/android/calendar/newapi/segment/common/SegmentController;
.source "GrooveTimeEditSegmentController.java"

# interfaces
.implements Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment$Listener;
.implements Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;
.implements Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;


# instance fields
.field private mEventModifications:Lcom/google/android/calendar/api/EventModifications;

.field private mStartDateTime:Ljava/util/Calendar;

.field private mView:Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/common/SegmentController;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment;Lcom/google/android/calendar/api/EventModifications;Ljava/util/TimeZone;)Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;
    .locals 2

    .prologue
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;

    .line 50
    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;

    invoke-direct {v0}, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;-><init>()V

    .line 52
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 54
    :cond_0
    invoke-direct {v0, p2}, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->setView(Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment;)V

    .line 55
    invoke-direct {v0, p3, p4}, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->setData(Lcom/google/android/calendar/api/EventModifications;Ljava/util/TimeZone;)V

    .line 56
    return-object v0
.end method

.method public static newView(Landroid/view/LayoutInflater;)Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment;
    .locals 3

    .prologue
    .line 38
    sget v0, Lcom/android/calendar/R$layout;->newapi_groove_time_edit_segment:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 39
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment;

    .line 38
    return-object v0
.end method

.method private setData(Lcom/google/android/calendar/api/EventModifications;Ljava/util/TimeZone;)V
    .locals 1

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    .line 67
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->mStartDateTime:Ljava/util/Calendar;

    .line 68
    return-void
.end method

.method private setView(Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment;)V
    .locals 1

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment;

    .line 61
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment;->setListener(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method private updateEventTime()V
    .locals 6

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/EventModifications;->getEndMillisSinceEpoch()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    .line 99
    invoke-interface {v2}, Lcom/google/android/calendar/api/EventModifications;->getStartMillisSinceEpoch()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 101
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->mStartDateTime:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 102
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 103
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v1, v4, v5}, Lcom/google/android/calendar/api/EventModifications;->setStartMillisSinceEpoch(J)Lcom/google/android/calendar/api/EventModifications;

    .line 106
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    add-long/2addr v0, v2

    .line 107
    iget-object v2, p0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v2, v0, v1}, Lcom/google/android/calendar/api/EventModifications;->setEndMillisSinceEpoch(J)Lcom/google/android/calendar/api/EventModifications;

    .line 109
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->updateUi()V

    .line 110
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->notifyTimeChanged()V

    .line 111
    return-void
.end method

.method private updateUi()V
    .locals 2

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment;

    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->mStartDateTime:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegment;->setDateTime(Ljava/util/Calendar;)V

    .line 115
    return-void
.end method


# virtual methods
.method public onDateClicked()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 87
    new-instance v0, Lcom/android/datetimepicker/date/DatePickerCompat;

    invoke-direct {v0, p0}, Lcom/android/datetimepicker/date/DatePickerCompat;-><init>(Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->getFirstDayOfWeekAsCalendar(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/date/DatePickerCompat;->setFirstDayOfWeek(I)V

    .line 89
    invoke-virtual {v0, v2}, Lcom/android/datetimepicker/date/DatePickerCompat;->setRtlEnabled(Z)V

    .line 90
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->mStartDateTime:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->mStartDateTime:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->mStartDateTime:Ljava/util/Calendar;

    const/4 v4, 0x5

    .line 91
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 90
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/datetimepicker/date/DatePickerCompat;->initialize(III)V

    .line 92
    invoke-virtual {v0, p0}, Lcom/android/datetimepicker/date/DatePickerCompat;->setTargetFragment(Landroid/app/Fragment;)V

    .line 93
    invoke-virtual {v0}, Lcom/android/datetimepicker/date/DatePickerCompat;->getFragment()Landroid/app/DialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DATE_PICKER_FRAGMENT_TAG"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public onDateSet(III)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->mStartDateTime:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 120
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->updateEventTime()V

    .line 121
    return-void
.end method

.method protected onInitialize()V
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->mStartDateTime:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v1}, Lcom/google/android/calendar/api/EventModifications;->getStartMillisSinceEpoch()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 73
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->updateUi()V

    .line 74
    return-void
.end method

.method public onTimeClicked()V
    .locals 4

    .prologue
    .line 78
    new-instance v0, Lcom/android/datetimepicker/time/TimePickerCompat;

    invoke-direct {v0, p0}, Lcom/android/datetimepicker/time/TimePickerCompat;-><init>(Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;)V

    .line 79
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->mStartDateTime:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->mStartDateTime:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 80
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    .line 79
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/datetimepicker/time/TimePickerCompat;->initialize(IIZ)V

    .line 81
    invoke-virtual {v0, p0}, Lcom/android/datetimepicker/time/TimePickerCompat;->setTargetFragment(Landroid/app/Fragment;)V

    .line 82
    invoke-virtual {v0}, Lcom/android/datetimepicker/time/TimePickerCompat;->getFragment()Landroid/app/DialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "TIME_PICKER_FRAGMENT_TAG"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public onTimeSet(II)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->mStartDateTime:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 126
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->mStartDateTime:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 127
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/time/GrooveTimeEditSegmentController;->updateEventTime()V

    .line 128
    return-void
.end method
