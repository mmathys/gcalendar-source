.class public Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;
.super Landroid/app/Fragment;
.source "DurationTimeframeFragment.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Lcom/android/calendar/event/CustomDurationDialog$OnCustomDurationSetListener;
.implements Lcom/android/datetimepicker/DialogFragmentListener;
.implements Lcom/android/datetimepicker/date/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment$Listener;
    }
.end annotation


# instance fields
.field private mBarElevation:I

.field mDurationRadioGroup:Landroid/widget/RadioGroup;

.field private mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

.field private mEventColor:I

.field private mRoomOptionsContainer:Landroid/view/View;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTimeframeDurationHeader:Landroid/widget/FrameLayout;

.field private mTimeframeDurationView:Landroid/widget/TextView;

.field mTimeframeRadioGroup:Landroid/widget/RadioGroup;

.field private mTimezone:Ljava/util/TimeZone;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;)Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private getDurationLabels(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 437
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 438
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 439
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0, v2}, Lcom/android/calendar/timely/findatime/ui/LabelsUtil;->getDurationLabel(Landroid/app/Fragment;IZ)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 441
    :cond_0
    sget v0, Lcom/android/calendar/R$string;->find_time_duration_custom_option:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    return-object v3
.end method

.method private getSelectedDurationId()I
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getSelectedDurationIndex()I

    move-result v0

    add-int/lit16 v0, v0, 0xc8

    return v0
.end method

.method private launchDatePicker()V
    .locals 6

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mTimezone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->getNowDateTime(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v2

    .line 406
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    new-instance v0, Landroid/app/DatePickerDialog;

    .line 408
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 410
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getYear()I

    move-result v3

    .line 411
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMonthOfYear()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 412
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getDayOfMonth()I

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 413
    invoke-virtual {v0, p0}, Landroid/app/DatePickerDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 414
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    .line 415
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/timely/FindTimeUtil;->getMinDateForDatePicker(Landroid/content/Context;)Ljava/util/Calendar;

    move-result-object v2

    .line 416
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 415
    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 417
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/Utils;->getFirstDayOfWeekAsCalendar(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/DatePicker;->setFirstDayOfWeek(I)V

    .line 419
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 420
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 434
    :goto_0
    return-void

    .line 424
    :cond_0
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getYear()I

    move-result v0

    .line 425
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMonthOfYear()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 426
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getDayOfMonth()I

    move-result v2

    .line 422
    invoke-static {p0, v0, v1, v2}, Lcom/android/datetimepicker/date/DatePickerDialog;->newInstance(Lcom/android/datetimepicker/date/DatePickerDialog$OnDateSetListener;III)Lcom/android/datetimepicker/date/DatePickerDialog;

    move-result-object v0

    .line 427
    invoke-virtual {v0, p0}, Lcom/android/datetimepicker/date/DatePickerDialog;->setDialogFragmentListener(Lcom/android/datetimepicker/DialogFragmentListener;)V

    .line 428
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/timely/FindTimeUtil;->getMinDateForDatePicker(Landroid/content/Context;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/date/DatePickerDialog;->setMinDate(Ljava/util/Calendar;)V

    .line 429
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->getFirstDayOfWeekAsCalendar(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/date/DatePickerDialog;->setFirstDayOfWeek(I)V

    .line 430
    const/16 v1, 0x7b2

    const/16 v2, 0x7f4

    invoke-virtual {v0, v1, v2}, Lcom/android/datetimepicker/date/DatePickerDialog;->setYearRange(II)V

    .line 431
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/date/DatePickerDialog;->setRtlEnabled(Z)V

    .line 432
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "datePickerDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/android/datetimepicker/date/DatePickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private logCustomDurationCancelled()V
    .locals 6

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 500
    invoke-static {v1}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$string;->analytics_category_find_a_time:I

    .line 501
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->analytics_action_ft_filter_duration_v2:I

    .line 502
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->analytics_label_ft_filter_cancelled:I

    .line 503
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 500
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 505
    return-void
.end method

.method private logDateCancelled()V
    .locals 6

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 509
    invoke-static {v1}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$string;->analytics_category_find_a_time:I

    .line 510
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->analytics_action_ft_filter_timeframe_v2:I

    .line 511
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->analytics_label_ft_filter_cancelled:I

    .line 512
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 509
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 514
    return-void
.end method

.method private logDurationSelected()V
    .locals 8

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 518
    invoke-static {v1}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$string;->analytics_category_find_a_time:I

    .line 519
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->analytics_action_ft_filter_duration_v2:I

    .line 520
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->analytics_label_ft_filter_selected:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    iget v7, v7, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->durationInMinutes:I

    .line 522
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 521
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 518
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 524
    return-void
.end method

.method private logTimeframeSelected()V
    .locals 8

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 528
    invoke-static {v1}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$string;->analytics_category_find_a_time:I

    .line 529
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->analytics_action_ft_filter_timeframe_v2:I

    .line 530
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->analytics_label_ft_filter_selected:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    .line 532
    invoke-virtual {v7}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getTimeframeTag()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 531
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 528
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 534
    return-void
.end method

.method public static newInstance(ILcom/android/calendar/timely/findatime/ui/DurationTimeframe;Ljava/lang/String;)Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;
    .locals 3

    .prologue
    .line 97
    new-instance v0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;

    invoke-direct {v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;-><init>()V

    .line 98
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 100
    const-string v2, "event_color"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const-string v2, "timezone"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v2, "duration_timeframe"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 104
    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 105
    return-object v0
.end method

.method private ninjaCheck(Landroid/widget/RadioGroup;I)V
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 360
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->check(I)V

    .line 361
    invoke-virtual {p1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 362
    return-void
.end method

.method private onDateSet(III)V
    .locals 2

    .prologue
    .line 482
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, p1, v0, p3}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->updateTimeframePick(III)V

    .line 483
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->redrawTimeframeOptions()V

    .line 484
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->setTimeframeDurationLabel()V

    .line 486
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment$6;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment$6;-><init>(Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 493
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mTimeframeRadioGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->requestSelectedButtonFocus(Landroid/widget/RadioGroup;)V

    .line 495
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->logTimeframeSelected()V

    .line 496
    return-void
.end method

.method private redrawDurationOptions()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 272
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 273
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->removeAllViews()V

    .line 274
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 276
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getDurationLabels()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->find_time_2_duration_timeframe_option:I

    .line 279
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 280
    add-int/lit16 v1, v2, 0xc8

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setId(I)V

    .line 281
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    invoke-virtual {v1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getDurationLabels()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 276
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getSelectedDurationIndex()I

    move-result v0

    add-int/lit16 v0, v0, 0xc8

    .line 285
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 286
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 287
    return-void
.end method

.method private redrawTimeframeOptions()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 290
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mTimeframeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 291
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mTimeframeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->removeAllViews()V

    .line 292
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mTimeframeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 294
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getTimeframeLabels()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->find_time_2_duration_timeframe_option:I

    .line 297
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 298
    add-int/lit8 v1, v2, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setId(I)V

    .line 299
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    invoke-virtual {v1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getTimeframeLabels()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mTimeframeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 294
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    .line 303
    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getSelectedTimeframeIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    .line 304
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mTimeframeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 305
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mTimeframeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 306
    return-void
.end method

.method private requestSelectedButtonFocus(Landroid/widget/RadioGroup;)V
    .locals 2

    .prologue
    .line 326
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment$5;-><init>(Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;Landroid/widget/RadioGroup;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 335
    return-void
.end method

.method private restoreCheckboxSelections()V
    .locals 3

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->getSelectedDurationId()I

    move-result v0

    .line 398
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    .line 399
    invoke-virtual {v1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getSelectedTimeframeIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    .line 400
    iget-object v2, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationRadioGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0, v2, v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->ninjaCheck(Landroid/widget/RadioGroup;I)V

    .line 401
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mTimeframeRadioGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->ninjaCheck(Landroid/widget/RadioGroup;I)V

    .line 402
    return-void
.end method

.method private setTimeframeDurationLabel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 446
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    .line 447
    invoke-static {p0, v0, v4}, Lcom/android/calendar/timely/findatime/ui/LabelsUtil;->getTimeframeDurationLabel(Landroid/app/Fragment;Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;Z)Ljava/lang/String;

    move-result-object v0

    .line 449
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mTimeframeDurationView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->accessibility_find_time_timeframe_duration_label:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 453
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mTimeframeDurationView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 454
    return-void
.end method

.method private updateTimeframePick(III)V
    .locals 3

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mTimeframeRadioGroup:Landroid/widget/RadioGroup;

    .line 459
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    add-int/lit8 v1, v1, -0x64

    .line 458
    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->setTimeframeOption(I)V

    .line 460
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getTimeframeOption()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 478
    :goto_0
    :pswitch_0
    return-void

    .line 467
    :pswitch_1
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->removeCustomTimeframeLabel()V

    .line 468
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mTimezone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/time/DateTimeUtils;->getNowDateTime(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v1

    .line 469
    invoke-interface {v1, p1, p2, p3}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withDate(III)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->customDate:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 470
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    const/4 v2, 0x0

    .line 471
    invoke-static {p0, v1, v2}, Lcom/android/calendar/timely/findatime/ui/LabelsUtil;->getDateBasedTimeframeLabel(Landroid/app/Fragment;Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;Z)Ljava/lang/String;

    move-result-object v1

    .line 470
    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->addTimeframeLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 460
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->edit_title_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mBarElevation:I

    .line 242
    if-eqz p1, :cond_1

    .line 243
    const-string v0, "duration_timeframe"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    iput-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    .line 257
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getDurationLabels()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 258
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getDurationLabels()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    .line 259
    invoke-virtual {v1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getDurationValues()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->getDurationLabels(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 261
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->redrawTimeframeOptions()V

    .line 262
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->redrawDurationOptions()V

    .line 263
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->setTimeframeDurationLabel()V

    .line 264
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->isDateBasedTimeframe()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/calendar/timely/findatime/ui/LabelsUtil;->getDateBasedTimeframeLabel(Landroid/app/Fragment;Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;Z)Ljava/lang/String;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->containsTimeframeLabel(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 249
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    invoke-virtual {v1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->removeCustomTimeframeLabel()V

    .line 250
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->addTimeframeLabel(Ljava/lang/String;)V

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    iget v1, v1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->durationInMinutes:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->containsDurationValue(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    iget v1, v1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->durationInMinutes:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->addDurationValue(I)V

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->restoreCheckboxSelections()V

    .line 367
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->setTimeframeDurationLabel()V

    .line 368
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mTimeframeRadioGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->requestSelectedButtonFocus(Landroid/widget/RadioGroup;)V

    .line 369
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->logDateCancelled()V

    .line 370
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .prologue
    .line 204
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mTimeframeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 205
    add-int/lit8 v0, p2, -0x64

    .line 206
    invoke-static {v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->isDateBasedTimeframe(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->launchDatePicker()V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->setTimeframeOption(I)V

    .line 210
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->setTimeframeDurationLabel()V

    .line 211
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->logTimeframeSelected()V

    goto :goto_0

    .line 213
    :cond_2
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 214
    add-int/lit16 v0, p2, -0xc8

    .line 215
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->isCustomDuration(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 216
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->setDurationOption(I)V

    .line 217
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->setTimeframeDurationLabel()V

    .line 218
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->logDurationSelected()V

    goto :goto_0

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    iget v0, v0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->durationInMinutes:I

    .line 222
    new-instance v1, Lcom/android/calendar/event/CustomDurationDialog$Builder;

    invoke-direct {v1, v0}, Lcom/android/calendar/event/CustomDurationDialog$Builder;-><init>(I)V

    const/16 v0, 0x5a0

    .line 223
    invoke-virtual {v1, v0}, Lcom/android/calendar/event/CustomDurationDialog$Builder;->setMaximumDuration(I)Lcom/android/calendar/event/CustomDurationDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->find_time_custom_duration_max_error_msg:I

    .line 224
    invoke-virtual {v0, v1}, Lcom/android/calendar/event/CustomDurationDialog$Builder;->setMaximumDurationErrorMsgId(I)Lcom/android/calendar/event/CustomDurationDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 226
    invoke-virtual {v0, v1}, Lcom/android/calendar/event/CustomDurationDialog$Builder;->setMinimumDuration(I)Lcom/android/calendar/event/CustomDurationDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->find_time_custom_duration_min_error_msg:I

    .line 227
    invoke-virtual {v0, v1}, Lcom/android/calendar/event/CustomDurationDialog$Builder;->setMinimumDurationErrorMsgId(I)Lcom/android/calendar/event/CustomDurationDialog$Builder;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lcom/android/calendar/event/CustomDurationDialog$Builder;->build()Lcom/android/calendar/event/CustomDurationDialog;

    move-result-object v0

    .line 230
    invoke-virtual {v0, p0}, Lcom/android/calendar/event/CustomDurationDialog;->setOnCustomDurationSetListener(Lcom/android/calendar/event/CustomDurationDialog$OnCustomDurationSetListener;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/CustomDurationDialog;->show(Landroid/app/FragmentManager;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 111
    sget v0, Lcom/android/calendar/R$layout;->find_time_2_duration_timeframe_fragment:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 114
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "timezone"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mTimezone:Ljava/util/TimeZone;

    .line 115
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "duration_timeframe"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    iput-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    .line 116
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "event_color"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mEventColor:I

    .line 118
    sget v1, Lcom/android/calendar/R$id;->toolbar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    iput-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 119
    sget v1, Lcom/android/calendar/R$id;->duration_radio_group:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationRadioGroup:Landroid/widget/RadioGroup;

    .line 120
    sget v1, Lcom/android/calendar/R$id;->timeframe_radio_group:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mTimeframeRadioGroup:Landroid/widget/RadioGroup;

    .line 121
    sget v1, Lcom/android/calendar/R$id;->timeframe_duration:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mTimeframeDurationView:Landroid/widget/TextView;

    .line 122
    sget v1, Lcom/android/calendar/R$id;->scroll_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 123
    sget v1, Lcom/android/calendar/R$id;->timeframe_duration_header:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mTimeframeDurationHeader:Landroid/widget/FrameLayout;

    .line 125
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 126
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mTimeframeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 127
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 130
    sget v1, Lcom/android/calendar/R$id;->timeframe_header:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 131
    sget v1, Lcom/android/calendar/R$id;->duration_header:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 132
    sget v1, Lcom/android/calendar/R$id;->rooms_header:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 134
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget v2, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mEventColor:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 135
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    sget v2, Lcom/android/calendar/R$menu;->find_time_2_duration_timeframe_menu:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->inflateMenu(I)V

    .line 136
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v2, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment$1;

    invoke-direct {v2, p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment$1;-><init>(Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v2, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment$2;

    invoke-direct {v2, p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment$2;-><init>(Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V

    .line 149
    sget v1, Lcom/android/calendar/R$id;->room_options_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mRoomOptionsContainer:Landroid/view/View;

    .line 151
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mRoomOptionsContainer:Landroid/view/View;

    invoke-static {v1, v3}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 153
    sget v1, Lcom/android/calendar/R$id;->rooms_header:I

    .line 154
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 153
    invoke-static {v1, v3}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 176
    return-object v0
.end method

.method public onCustomDurationDialogCancel()V
    .locals 1

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->restoreCheckboxSelections()V

    .line 375
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->setTimeframeDurationLabel()V

    .line 376
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationRadioGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->requestSelectedButtonFocus(Landroid/widget/RadioGroup;)V

    .line 377
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->logCustomDurationCancelled()V

    .line 378
    return-void
.end method

.method public onCustomDurationSet(I)V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->containsDurationValue(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->removeCustomDurationValue()V

    .line 341
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->addDurationValue(I)V

    .line 342
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getDurationLabels()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 343
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getDurationLabels()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    .line 344
    invoke-virtual {v1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getDurationValues()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->getDurationLabels(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 345
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->redrawDurationOptions()V

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    iput p1, v0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->durationInMinutes:I

    .line 348
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationRadioGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->getSelectedDurationId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->ninjaCheck(Landroid/widget/RadioGroup;I)V

    .line 349
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationRadioGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->requestSelectedButtonFocus(Landroid/widget/RadioGroup;)V

    .line 350
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->setTimeframeDurationLabel()V

    .line 351
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->logDurationSelected()V

    .line 352
    return-void
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0, p2, p3, p4}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->onDateSet(III)V

    .line 318
    return-void
.end method

.method public onDateSet(Lcom/android/datetimepicker/date/DatePickerDialog;III)V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0, p2, p3, p4}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->onDateSet(III)V

    .line 323
    return-void
.end method

.method public onDialogCancelled(Landroid/app/DialogFragment;)V
    .locals 1

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->restoreCheckboxSelections()V

    .line 383
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->setTimeframeDurationLabel()V

    .line 384
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mTimeframeRadioGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->requestSelectedButtonFocus(Landroid/widget/RadioGroup;)V

    .line 385
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->logDateCancelled()V

    .line 386
    return-void
.end method

.method public onDialogCreated(Landroid/app/DialogFragment;)V
    .locals 0

    .prologue
    .line 390
    return-void
.end method

.method public onDialogDestroyed(Landroid/app/DialogFragment;)V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 310
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 312
    const-string v0, "duration_timeframe"

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mDurationTimeframe:Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 313
    return-void
.end method

.method public onScrollChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 181
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    .line 186
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mTimeframeDurationHeader:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getElevation()F

    move-result v1

    .line 187
    cmpl-float v2, v1, v3

    if-nez v2, :cond_2

    if-lez v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mTimeframeDurationHeader:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mBarElevation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 190
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mBarElevation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setElevation(F)V

    goto :goto_0

    .line 191
    :cond_2
    if-gtz v0, :cond_0

    cmpl-float v0, v1, v3

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mTimeframeDurationHeader:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 194
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Toolbar;->setElevation(F)V

    goto :goto_0
.end method
