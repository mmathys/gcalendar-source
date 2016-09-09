.class public Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;
.super Lcom/android/calendar/newapi/segment/common/SegmentController;
.source "TimeZoneEditSegmentController.java"

# interfaces
.implements Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegment$Listener;
.implements Lcom/android/timezonepicker/TimeZonePickerDialog$OnTimeZoneSetListener;


# instance fields
.field private mDefaultTimeZone:Ljava/util/TimeZone;

.field private mEventModifications:Lcom/google/android/calendar/api/EventModifications;

.field private mView:Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/common/SegmentController;-><init>()V

    return-void
.end method

.method private adjustTimeToNewTimezone(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    .line 114
    invoke-interface {v0}, Lcom/google/android/calendar/api/EventModifications;->getStartMillisSinceEpoch()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;->getTimeZoneId()Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-static {v0, v1, v2, p1}, Lcom/android/calendar/time/CalendarUtils;->createTimeInNewTimeZoneRetainingFields(JLjava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/android/calendar/api/EventModifications;->setStartMillisSinceEpoch(J)Lcom/google/android/calendar/api/EventModifications;

    .line 117
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    .line 118
    invoke-interface {v0}, Lcom/google/android/calendar/api/EventModifications;->getEndMillisSinceEpoch()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;->getTimeZoneId()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {v0, v1, v2, p1}, Lcom/android/calendar/time/CalendarUtils;->createTimeInNewTimeZoneRetainingFields(JLjava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/android/calendar/api/EventModifications;->setEndMillisSinceEpoch(J)Lcom/google/android/calendar/api/EventModifications;

    .line 120
    return-void
.end method

.method public static getInstance(Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegment;Lcom/google/android/calendar/api/EventModifications;Ljava/util/TimeZone;)Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;
    .locals 2

    .prologue
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;

    .line 43
    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;

    invoke-direct {v0}, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;-><init>()V

    .line 45
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 47
    :cond_0
    invoke-direct {v0, p2}, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;->setView(Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegment;)V

    .line 48
    invoke-direct {v0, p3, p4}, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;->setData(Lcom/google/android/calendar/api/EventModifications;Ljava/util/TimeZone;)V

    .line 49
    return-object v0
.end method

.method private getTimeZoneId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-interface {v0}, Lcom/google/android/calendar/api/EventModifications;->getSingleStartTimeZoneId()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;->mDefaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 128
    :cond_0
    return-object v0
.end method

.method public static newView(Landroid/view/LayoutInflater;)Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegment;
    .locals 2

    .prologue
    .line 32
    sget v0, Lcom/android/calendar/R$layout;->newapi_timezone_edit_segment:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegment;

    return-object v0
.end method

.method private setData(Lcom/google/android/calendar/api/EventModifications;Ljava/util/TimeZone;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    .line 59
    iput-object p2, p0, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;->mDefaultTimeZone:Ljava/util/TimeZone;

    .line 60
    return-void
.end method

.method private setView(Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegment;)V
    .locals 1

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegment;

    .line 54
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegment;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegment;->setListener(Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method private showTimezoneDialog()V
    .locals 4

    .prologue
    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    const-string v1, "bundle_event_start_time"

    iget-object v2, p0, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    .line 90
    invoke-interface {v2}, Lcom/google/android/calendar/api/EventModifications;->getStartMillisSinceEpoch()J

    move-result-wide v2

    .line 89
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 91
    const-string v1, "bundle_event_time_zone"

    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;->getTimeZoneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 94
    new-instance v2, Lcom/android/timezonepicker/TimeZonePickerDialog;

    invoke-direct {v2}, Lcom/android/timezonepicker/TimeZonePickerDialog;-><init>()V

    .line 95
    invoke-virtual {v2, v0}, Lcom/android/timezonepicker/TimeZonePickerDialog;->setArguments(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {v2, p0}, Lcom/android/timezonepicker/TimeZonePickerDialog;->setOnTimeZoneSetListener(Lcom/android/timezonepicker/TimeZonePickerDialog$OnTimeZoneSetListener;)V

    .line 98
    sget-object v0, Lcom/android/timezonepicker/TimeZonePickerDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/android/timezonepicker/TimeZonePickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method private updateUi()V
    .locals 4

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;->getTimeZoneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 103
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    .line 104
    invoke-interface {v2}, Lcom/google/android/calendar/api/EventModifications;->getStartMillisSinceEpoch()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    .line 105
    iget-object v2, p0, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;->mView:Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegment;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegment;->setText(Ljava/lang/String;)V

    .line 106
    return-void
.end method


# virtual methods
.method public onInitialize()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;->updateUi()V

    .line 65
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;->updateUi()V

    .line 85
    return-void
.end method

.method public onTimeZoneButtonClicked()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;->showTimezoneDialog()V

    .line 70
    return-void
.end method

.method public onTimeZoneSet(Lcom/android/timezonepicker/TimeZoneInfo;)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p1, Lcom/android/timezonepicker/TimeZoneInfo;->mTzId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;->adjustTimeToNewTimezone(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    iget-object v1, p1, Lcom/android/timezonepicker/TimeZoneInfo;->mTzId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/EventModifications;->setSingleStartTimeZoneId(Ljava/lang/String;)Lcom/google/android/calendar/api/EventModifications;

    .line 76
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    iget-object v1, p1, Lcom/android/timezonepicker/TimeZoneInfo;->mTzId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/EventModifications;->setSingleEndTimeZoneId(Ljava/lang/String;)Lcom/google/android/calendar/api/EventModifications;

    .line 77
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/timezone/TimeZoneEditSegmentController;->updateUi()V

    .line 78
    return-void
.end method
