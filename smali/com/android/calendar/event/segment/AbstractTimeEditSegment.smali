.class public abstract Lcom/android/calendar/event/segment/AbstractTimeEditSegment;
.super Lcom/android/calendar/editor/AspectEditSegment;
.source "AbstractTimeEditSegment.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Lcom/android/datetimepicker/date/DatePickerDialog$OnDateSetListener;
.implements Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/editor/AspectEditSegment",
        "<",
        "Lcom/android/calendar/event/data/InputAspectTime;",
        "Lcom/android/calendar/editor/AspectAdapter;",
        ">;",
        "Landroid/app/DatePickerDialog$OnDateSetListener;",
        "Landroid/app/TimePickerDialog$OnTimeSetListener;",
        "Lcom/android/datetimepicker/date/DatePickerDialog$OnDateSetListener;",
        "Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;"
    }
.end annotation


# instance fields
.field protected mAbbrevDateTimeFormat:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "Ljava/lang/Class",
            "<",
            "Lcom/android/calendar/event/data/InputAspectTime;",
            ">;",
            "Ljava/lang/Class",
            "<",
            "Lcom/android/calendar/editor/AspectAdapter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/editor/AspectEditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$bool;->edit_datetime_formatting_abbrev:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/event/segment/AbstractTimeEditSegment;->mAbbrevDateTimeFormat:Z

    .line 42
    return-void
.end method


# virtual methods
.method protected canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectTime;)Z
    .locals 1

    .prologue
    .line 46
    invoke-interface {p2}, Lcom/android/calendar/event/data/InputAspectTime;->canChangeTime()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 25
    check-cast p2, Lcom/android/calendar/event/data/InputAspectTime;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/segment/AbstractTimeEditSegment;->canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectTime;)Z

    move-result v0

    return v0
.end method

.method protected getDatePickerLOrLater(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Landroid/app/DatePickerDialog;
    .locals 6

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/calendar/event/segment/AbstractTimeEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 72
    new-instance v0, Landroid/app/DatePickerDialog;

    .line 75
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getYear()I

    move-result v3

    .line 76
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMonthOfYear()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    .line 77
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getDayOfMonth()I

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 78
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v2

    .line 79
    invoke-static {v1}, Lcom/android/calendar/Utils;->getFirstDayOfWeekAsCalendar(Landroid/content/Context;)I

    move-result v1

    .line 78
    invoke-virtual {v2, v1}, Landroid/widget/DatePicker;->setFirstDayOfWeek(I)V

    .line 80
    return-object v0
.end method

.method protected getDatePickerPreL(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/android/datetimepicker/date/DatePickerDialog;
    .locals 3

    .prologue
    .line 84
    .line 86
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getYear()I

    move-result v0

    .line 87
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMonthOfYear()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 88
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getDayOfMonth()I

    move-result v2

    .line 84
    invoke-static {p0, v0, v1, v2}, Lcom/android/datetimepicker/date/DatePickerDialog;->newInstance(Lcom/android/datetimepicker/date/DatePickerDialog$OnDateSetListener;III)Lcom/android/datetimepicker/date/DatePickerDialog;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/AbstractTimeEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->getFirstDayOfWeekAsCalendar(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/date/DatePickerDialog;->setFirstDayOfWeek(I)V

    .line 90
    const/16 v1, 0x7b2

    const/16 v2, 0x7f4

    invoke-virtual {v0, v1, v2}, Lcom/android/datetimepicker/date/DatePickerDialog;->setYearRange(II)V

    .line 91
    invoke-virtual {v0, p0}, Lcom/android/datetimepicker/date/DatePickerDialog;->setOnDateSetListener(Lcom/android/datetimepicker/date/DatePickerDialog$OnDateSetListener;)V

    .line 92
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/date/DatePickerDialog;->setRtlEnabled(Z)V

    .line 93
    return-object v0
.end method

.method protected getTimePickerLOrLater(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Landroid/app/TimePickerDialog;
    .locals 6

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/calendar/event/segment/AbstractTimeEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 98
    new-instance v0, Landroid/app/TimePickerDialog;

    .line 101
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getHourOfDay()I

    move-result v3

    .line 102
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMinuteOfHour()I

    move-result v4

    .line 103
    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 98
    return-object v0
.end method

.method protected getTimePickerPreL(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/android/datetimepicker/time/TimePickerDialog;
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/calendar/event/segment/AbstractTimeEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 110
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getHourOfDay()I

    move-result v1

    .line 111
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMinuteOfHour()I

    move-result v2

    .line 112
    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 108
    invoke-static {p0, v1, v2, v0}, Lcom/android/datetimepicker/time/TimePickerDialog;->newInstance(Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;IIZ)Lcom/android/datetimepicker/time/TimePickerDialog;

    move-result-object v0

    .line 113
    invoke-virtual {v0, p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->setOnTimeSetListener(Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;)V

    .line 114
    return-object v0
.end method

.method protected setFormattedDateLabelAndContentDescription(Landroid/widget/TextView;Lcom/android/calendar/time/DateTimeImpl;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-static {}, Lcom/android/calendar/DateTimeFormatHelper;->getInstance()Lcom/android/calendar/DateTimeFormatHelper;

    move-result-object v0

    .line 60
    iget-boolean v1, p0, Lcom/android/calendar/event/segment/AbstractTimeEditSegment;->mAbbrevDateTimeFormat:Z

    invoke-virtual {v0, p2, v1}, Lcom/android/calendar/DateTimeFormatHelper;->formatEditDate(Lcom/google/calendar/v2/client/service/api/time/DateTime;Z)Ljava/lang/String;

    move-result-object v1

    .line 62
    iget-boolean v2, p0, Lcom/android/calendar/event/segment/AbstractTimeEditSegment;->mAbbrevDateTimeFormat:Z

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {v0, p2, v3}, Lcom/android/calendar/DateTimeFormatHelper;->formatEditDate(Lcom/google/calendar/v2/client/service/api/time/DateTime;Z)Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/AbstractTimeEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, p3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 68
    return-void

    :cond_0
    move-object v0, v1

    .line 64
    goto :goto_0
.end method
