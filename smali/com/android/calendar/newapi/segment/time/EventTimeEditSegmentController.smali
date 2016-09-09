.class public Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;
.super Lcom/android/calendar/newapi/segment/common/SegmentController;
.source "EventTimeEditSegmentController.java"

# interfaces
.implements Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment$Listener;
.implements Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;
.implements Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;


# instance fields
.field private mAllDay:Z

.field private mDefaultTimezone:Ljava/util/TimeZone;

.field private mEndDateTime:Ljava/util/Calendar;

.field private mEventModifications:Lcom/google/android/calendar/api/EventModifications;

.field private mInstanceRestored:Z

.field private mLastRequestedDateType:I

.field private mLastRequestedTimeType:I

.field private mStartDateTime:Ljava/util/Calendar;

.field private mView:Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 31
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/common/SegmentController;-><init>()V

    .line 55
    iput v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mLastRequestedTimeType:I

    .line 56
    iput v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mLastRequestedDateType:I

    return-void
.end method

.method public static getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;Lcom/google/android/calendar/api/EventModifications;Ljava/util/TimeZone;)Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;
    .locals 2

    .prologue
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;

    .line 68
    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;

    invoke-direct {v0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;-><init>()V

    .line 70
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 72
    :cond_0
    invoke-direct {v0, p2}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->setView(Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;)V

    .line 73
    invoke-direct {v0, p3, p4}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->setData(Lcom/google/android/calendar/api/EventModifications;Ljava/util/TimeZone;)V

    .line 74
    return-object v0
.end method

.method public static newView(Landroid/view/LayoutInflater;)Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;
    .locals 3

    .prologue
    .line 60
    sget v0, Lcom/android/calendar/R$layout;->newapi_event_time_edit_segment:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 61
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;

    .line 60
    return-object v0
.end method

.method private setData(Lcom/google/android/calendar/api/EventModifications;Ljava/util/TimeZone;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    .line 113
    iput-object p2, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mDefaultTimezone:Ljava/util/TimeZone;

    .line 114
    return-void
.end method

.method private setView(Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;)V
    .locals 1

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;

    .line 108
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->setListener(Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method private showDatePicker(Ljava/util/Calendar;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 249
    iput p2, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mLastRequestedDateType:I

    .line 250
    new-instance v1, Lcom/android/datetimepicker/date/DatePickerCompat;

    invoke-direct {v1, p0}, Lcom/android/datetimepicker/date/DatePickerCompat;-><init>(Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->getFirstDayOfWeekAsCalendar(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/datetimepicker/date/DatePickerCompat;->setFirstDayOfWeek(I)V

    .line 252
    invoke-virtual {v1, v4}, Lcom/android/datetimepicker/date/DatePickerCompat;->setRtlEnabled(Z)V

    .line 253
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 254
    iget-boolean v2, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mAllDay:Z

    if-eqz v2, :cond_0

    if-ne p2, v4, :cond_0

    invoke-static {p1}, Lcom/android/calendar/time/CalendarUtils;->isMidnight(Ljava/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    const/4 v2, 0x6

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 259
    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    .line 260
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 259
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/datetimepicker/date/DatePickerCompat;->initialize(III)V

    .line 261
    invoke-virtual {v1, p0}, Lcom/android/datetimepicker/date/DatePickerCompat;->setTargetFragment(Landroid/app/Fragment;)V

    .line 262
    invoke-virtual {v1}, Lcom/android/datetimepicker/date/DatePickerCompat;->getFragment()Landroid/app/DialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DATE_PICKER_FRAGMENT_TAG"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method private showTimePicker(Ljava/util/Calendar;I)V
    .locals 4

    .prologue
    .line 240
    iput p2, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mLastRequestedTimeType:I

    .line 241
    new-instance v0, Lcom/android/datetimepicker/time/TimePickerCompat;

    invoke-direct {v0, p0}, Lcom/android/datetimepicker/time/TimePickerCompat;-><init>(Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;)V

    .line 242
    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 243
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    .line 242
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/datetimepicker/time/TimePickerCompat;->initialize(IIZ)V

    .line 244
    invoke-virtual {v0, p0}, Lcom/android/datetimepicker/time/TimePickerCompat;->setTargetFragment(Landroid/app/Fragment;)V

    .line 245
    invoke-virtual {v0}, Lcom/android/datetimepicker/time/TimePickerCompat;->getFragment()Landroid/app/DialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "TIME_PICKER_FRAGMENT_TAG"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method private static toMidnight(Ljava/util/Calendar;Z)J
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 295
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 296
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 297
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 298
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 299
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 300
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 302
    if-eqz p1, :cond_0

    .line 303
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 305
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private updateEventTime(Ljava/util/Calendar;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 266
    if-nez p2, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mEndDateTime:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mStartDateTime:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 269
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 270
    iget-object v2, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mEndDateTime:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mStartDateTime:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 278
    :goto_0
    iget-boolean v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mAllDay:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mStartDateTime:Ljava/util/Calendar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->toMidnight(Ljava/util/Calendar;Z)J

    move-result-wide v0

    .line 279
    :goto_1
    iget-boolean v2, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mAllDay:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mEndDateTime:Ljava/util/Calendar;

    invoke-static {v2, v6}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->toMidnight(Ljava/util/Calendar;Z)J

    move-result-wide v2

    .line 280
    :goto_2
    iget-object v4, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v4, v0, v1}, Lcom/google/android/calendar/api/EventModifications;->setStartMillisSinceEpoch(J)Lcom/google/android/calendar/api/EventModifications;

    .line 281
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v0, v2, v3}, Lcom/google/android/calendar/api/EventModifications;->setEndMillisSinceEpoch(J)Lcom/google/android/calendar/api/EventModifications;

    .line 282
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->updateUi()V

    .line 283
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->notifyTimeChanged()V

    .line 284
    return-void

    .line 273
    :cond_1
    if-ne p2, v6, :cond_2

    .line 274
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mEndDateTime:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    .line 276
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported DateTimeType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mStartDateTime:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_1

    .line 279
    :cond_4
    iget-object v2, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mEndDateTime:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    goto :goto_2
.end method

.method private updateUi()V
    .locals 4

    .prologue
    .line 287
    iget-object v2, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;

    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mStartDateTime:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mEndDateTime:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    iget-boolean v3, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mAllDay:Z

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegment;->setDateTime(Ljava/util/Calendar;Ljava/util/Calendar;Z)V

    .line 288
    return-void
.end method


# virtual methods
.method public onAllDayToggled(Z)V
    .locals 6

    .prologue
    .line 140
    if-eqz p1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mStartDateTime:Ljava/util/Calendar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->toMidnight(Ljava/util/Calendar;Z)J

    move-result-wide v0

    .line 142
    iget-object v2, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mEndDateTime:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->toMidnight(Ljava/util/Calendar;Z)J

    move-result-wide v2

    .line 143
    iget-object v4, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/google/android/calendar/api/EventModifications;->setToAllDayWithDates(JJ)Lcom/google/android/calendar/api/EventModifications;

    .line 150
    :goto_0
    iput-boolean p1, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mAllDay:Z

    .line 152
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->notifyAllDayStateChanged()V

    .line 153
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->updateUi()V

    .line 154
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mStartDateTime:Ljava/util/Calendar;

    .line 146
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mEndDateTime:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 145
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/android/calendar/api/EventModifications;->setToTimedWithTimes(JJ)Lcom/google/android/calendar/api/EventModifications;

    .line 147
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mStartDateTime:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/EventModifications;->setSingleStartTimeZoneId(Ljava/lang/String;)Lcom/google/android/calendar/api/EventModifications;

    .line 148
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mEndDateTime:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/EventModifications;->setSingleEndTimeZoneId(Ljava/lang/String;)Lcom/google/android/calendar/api/EventModifications;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, -0x1

    .line 79
    invoke-super {p0, p1}, Lcom/android/calendar/newapi/segment/common/SegmentController;->onCreate(Landroid/os/Bundle;)V

    .line 80
    if-eqz p1, :cond_0

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mInstanceRestored:Z

    .line 82
    const-string v0, "TIME_TYPE"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mLastRequestedTimeType:I

    .line 83
    const-string v0, "DATE_TYPE"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mLastRequestedDateType:I

    .line 86
    const-string v0, "TIMEZONE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v1, "START_TIME"

    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 88
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mStartDateTime:Ljava/util/Calendar;

    .line 89
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mStartDateTime:Ljava/util/Calendar;

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 90
    const-string v1, "END_TIME"

    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 91
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mEndDateTime:Ljava/util/Calendar;

    .line 92
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mEndDateTime:Ljava/util/Calendar;

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 94
    :cond_0
    return-void
.end method

.method public onDateSet(III)V
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mLastRequestedDateType:I

    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->onStartDateSet(III)V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->onEndDateSet(III)V

    goto :goto_0
.end method

.method public onEndDateClicked()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mEndDateTime:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->showDatePicker(Ljava/util/Calendar;I)V

    .line 174
    return-void
.end method

.method protected onEndDateSet(III)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 225
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mEndDateTime:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 226
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 227
    iget-boolean v1, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mAllDay:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mEndDateTime:Ljava/util/Calendar;

    invoke-static {v1}, Lcom/android/calendar/time/CalendarUtils;->isMidnight(Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 232
    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->updateEventTime(Ljava/util/Calendar;I)V

    .line 233
    return-void
.end method

.method public onEndTimeClicked()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mEndDateTime:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->showTimePicker(Ljava/util/Calendar;I)V

    .line 164
    return-void
.end method

.method protected onEndTimeSet(II)V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mEndDateTime:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 211
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 212
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 213
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->updateEventTime(Ljava/util/Calendar;I)V

    .line 214
    return-void
.end method

.method protected onInitialize()V
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/EventModifications;->getSingleStartTimeZoneId()Ljava/lang/String;

    move-result-object v0

    .line 119
    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mDefaultTimezone:Ljava/util/TimeZone;

    .line 122
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v1}, Lcom/google/android/calendar/api/EventModifications;->isAllDayEvent()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mAllDay:Z

    .line 124
    iget-boolean v1, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mInstanceRestored:Z

    if-nez v1, :cond_0

    .line 127
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mStartDateTime:Ljava/util/Calendar;

    .line 128
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mStartDateTime:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v2}, Lcom/google/android/calendar/api/EventModifications;->getStartMillisSinceEpoch()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 129
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mEndDateTime:Ljava/util/Calendar;

    .line 130
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mEndDateTime:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v1}, Lcom/google/android/calendar/api/EventModifications;->getEndMillisSinceEpoch()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->updateUi()V

    .line 134
    return-void

    .line 120
    :cond_1
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 98
    const-string v0, "TIME_TYPE"

    iget v1, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mLastRequestedTimeType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    const-string v0, "DATE_TYPE"

    iget v1, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mLastRequestedDateType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    const-string v0, "START_TIME"

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mStartDateTime:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 101
    const-string v0, "END_TIME"

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mEndDateTime:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 102
    const-string v0, "TIMEZONE"

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mStartDateTime:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-super {p0, p1}, Lcom/android/calendar/newapi/segment/common/SegmentController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 104
    return-void
.end method

.method public onStartDateClicked()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mStartDateTime:Ljava/util/Calendar;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->showDatePicker(Ljava/util/Calendar;I)V

    .line 169
    return-void
.end method

.method protected onStartDateSet(III)V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mStartDateTime:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 219
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 220
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->updateEventTime(Ljava/util/Calendar;I)V

    .line 221
    return-void
.end method

.method public onStartTimeClicked()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mStartDateTime:Ljava/util/Calendar;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->showTimePicker(Ljava/util/Calendar;I)V

    .line 159
    return-void
.end method

.method protected onStartTimeSet(II)V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mStartDateTime:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 203
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 204
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 205
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->updateEventTime(Ljava/util/Calendar;I)V

    .line 206
    return-void
.end method

.method public onTimeSet(II)V
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->mLastRequestedTimeType:I

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->onStartTimeSet(II)V

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/newapi/segment/time/EventTimeEditSegmentController;->onEndTimeSet(II)V

    goto :goto_0
.end method
