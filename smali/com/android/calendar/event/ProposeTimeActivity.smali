.class public Lcom/android/calendar/event/ProposeTimeActivity;
.super Landroid/app/Activity;
.source "ProposeTimeActivity.java"

# interfaces
.implements Lcom/android/calendar/event/ProposedTimeConfirmationDialog$OnProposedTimeConfirmListener;
.implements Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$Listener;
.implements Lcom/android/datetimepicker/DialogFragmentListener;
.implements Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;
.implements Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/ProposeTimeActivity$FindTimeSupportTask;
    }
.end annotation


# instance fields
.field private mDateOrTimeSet:Z

.field private mEventColor:I

.field private mEventEndMillis:J

.field private mEventStartMillis:J

.field private mFindTimeSupportTask:Lcom/android/calendar/event/ProposeTimeActivity$FindTimeSupportTask;

.field private mIsFindTimeSupported:Ljava/lang/Boolean;

.field private mProposedNote:Ljava/lang/String;

.field private mProposedStartTime:Lcom/android/calendar/time/Time;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mDateOrTimeSet:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/calendar/event/ProposeTimeActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mIsFindTimeSupported:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calendar/event/ProposeTimeActivity;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->launchFindATime()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/event/ProposeTimeActivity;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->launchDatePicker()V

    return-void
.end method

.method private finishActivityWithResultCanceled()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/ProposeTimeActivity;->setResult(I)V

    .line 229
    invoke-virtual {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->finish()V

    .line 230
    return-void
.end method

.method private getEventDuration()J
    .locals 4

    .prologue
    .line 242
    iget-wide v0, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mEventEndMillis:J

    iget-wide v2, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mEventStartMillis:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private launchAddNoteFragment()V
    .locals 7

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mProposedStartTime:Lcom/android/calendar/time/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v2

    .line 326
    iget v1, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mEventColor:I

    .line 327
    invoke-direct {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->getEventDuration()J

    move-result-wide v4

    add-long/2addr v4, v2

    iget-object v6, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mProposedNote:Ljava/lang/String;

    .line 326
    invoke-static/range {v1 .. v6}, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->newInstance(IJJLjava/lang/String;)Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;

    move-result-object v0

    .line 329
    invoke-virtual {v0, p0}, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->setFragmentListener(Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$Listener;)V

    .line 330
    invoke-virtual {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "addNoteFragment"

    .line 331
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$id;->fragment_container:I

    const-string v3, "addNoteFragment"

    .line 332
    invoke-virtual {v1, v2, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 334
    return-void
.end method

.method private launchDatePicker()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 299
    new-instance v0, Lcom/android/datetimepicker/date/DatePickerCompat;

    invoke-direct {v0, p0}, Lcom/android/datetimepicker/date/DatePickerCompat;-><init>(Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;)V

    .line 300
    invoke-virtual {v0, v7}, Lcom/android/datetimepicker/date/DatePickerCompat;->setRtlEnabled(Z)V

    .line 301
    invoke-virtual {v0, p0}, Lcom/android/datetimepicker/date/DatePickerCompat;->setDialogFragmentListener(Lcom/android/datetimepicker/DialogFragmentListener;)V

    .line 303
    invoke-static {p0}, Lcom/android/calendar/timely/FindTimeUtil;->getMinDateForDatePicker(Landroid/content/Context;)Ljava/util/Calendar;

    move-result-object v1

    .line 304
    iget-object v2, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mProposedStartTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v2}, Lcom/android/calendar/time/Time;->toMillisWithFallback()J

    move-result-wide v2

    .line 305
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 306
    invoke-static {p0}, Lcom/android/calendar/Utils;->getFirstDayOfWeekAsCalendar(Landroid/content/Context;)I

    move-result v6

    .line 308
    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/date/DatePickerCompat;->setMinDate(Ljava/util/Calendar;)V

    .line 309
    invoke-virtual {v0, v6}, Lcom/android/datetimepicker/date/DatePickerCompat;->setFirstDayOfWeek(I)V

    .line 311
    cmp-long v2, v4, v2

    if-gtz v2, :cond_0

    .line 312
    iget-object v1, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mProposedStartTime:Lcom/android/calendar/time/Time;

    iget v1, v1, Lcom/android/calendar/time/Time;->year:I

    iget-object v2, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mProposedStartTime:Lcom/android/calendar/time/Time;

    iget v2, v2, Lcom/android/calendar/time/Time;->month:I

    iget-object v3, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mProposedStartTime:Lcom/android/calendar/time/Time;

    iget v3, v3, Lcom/android/calendar/time/Time;->monthDay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/datetimepicker/date/DatePickerCompat;->initialize(III)V

    .line 321
    :goto_0
    invoke-virtual {v0}, Lcom/android/datetimepicker/date/DatePickerCompat;->getFragment()Landroid/app/DialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "datePickerDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 322
    return-void

    .line 315
    :cond_0
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 316
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 317
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 318
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/datetimepicker/date/DatePickerCompat;->initialize(III)V

    goto :goto_0
.end method

.method private launchFindATime()V
    .locals 3

    .prologue
    .line 233
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/calendar/event/FindTimeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 235
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    invoke-virtual {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 237
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/ProposeTimeActivity;->startActivity(Landroid/content/Intent;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->finish()V

    .line 239
    return-void
.end method

.method private launchProposedTimeConfirmationDialog()V
    .locals 5

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mProposedStartTime:Lcom/android/calendar/time/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v0

    .line 388
    invoke-direct {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->getEventDuration()J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-object v4, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mProposedNote:Ljava/lang/String;

    .line 387
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/calendar/event/ProposedTimeConfirmationDialog;->newInstance(JJLjava/lang/String;)Lcom/android/calendar/event/ProposedTimeConfirmationDialog;

    move-result-object v0

    .line 390
    invoke-virtual {v0, p0}, Lcom/android/calendar/event/ProposedTimeConfirmationDialog;->setOnProposedTimeConfirmListener(Lcom/android/calendar/event/ProposedTimeConfirmationDialog$OnProposedTimeConfirmListener;)V

    .line 391
    invoke-virtual {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/event/ProposedTimeConfirmationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method private launchTimePicker()V
    .locals 4

    .prologue
    .line 348
    new-instance v0, Lcom/android/datetimepicker/time/TimePickerCompat;

    invoke-direct {v0, p0}, Lcom/android/datetimepicker/time/TimePickerCompat;-><init>(Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;)V

    .line 349
    invoke-virtual {v0, p0}, Lcom/android/datetimepicker/time/TimePickerCompat;->setDialogFragmentListener(Lcom/android/datetimepicker/DialogFragmentListener;)V

    .line 350
    iget-object v1, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mProposedStartTime:Lcom/android/calendar/time/Time;

    iget v1, v1, Lcom/android/calendar/time/Time;->hour:I

    iget-object v2, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mProposedStartTime:Lcom/android/calendar/time/Time;

    iget v2, v2, Lcom/android/calendar/time/Time;->minute:I

    .line 351
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    .line 350
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/datetimepicker/time/TimePickerCompat;->initialize(IIZ)V

    .line 352
    invoke-virtual {v0}, Lcom/android/datetimepicker/time/TimePickerCompat;->getFragment()Landroid/app/DialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "timePickerDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 353
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 214
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 215
    invoke-virtual {p0, v0, v0}, Lcom/android/calendar/event/ProposeTimeActivity;->overridePendingTransition(II)V

    .line 216
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "addNoteFragment"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    move-result v0

    .line 443
    if-eqz v0, :cond_0

    .line 444
    invoke-direct {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->launchProposedTimeConfirmationDialog()V

    .line 448
    :goto_0
    return-void

    .line 446
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCancelled(Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;)V
    .locals 3

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "addNoteFragment"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    move-result v0

    .line 421
    if-eqz v0, :cond_0

    .line 422
    invoke-direct {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->launchProposedTimeConfirmationDialog()V

    .line 424
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 126
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    sget v0, Lcom/android/calendar/R$layout;->propose_time_container:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/ProposeTimeActivity;->setContentView(I)V

    .line 129
    invoke-virtual {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "start_millis"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mEventStartMillis:J

    .line 130
    invoke-virtual {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "end_millis"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mEventEndMillis:J

    .line 131
    invoke-virtual {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "event_color"

    .line 132
    invoke-virtual {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$color;->default_find_time_event_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mEventColor:I

    .line 133
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-static {p0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mProposedStartTime:Lcom/android/calendar/time/Time;

    .line 135
    if-eqz p1, :cond_0

    const-string v0, "is_find_time_supported"

    .line 136
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mProposedStartTime:Lcom/android/calendar/time/Time;

    iget-wide v2, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mEventStartMillis:J

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/time/Time;->set(J)V

    .line 139
    invoke-virtual {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "attendees"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    new-instance v1, Lcom/android/calendar/event/ProposeTimeActivity$FindTimeSupportTask;

    invoke-direct {v1, p0, v0}, Lcom/android/calendar/event/ProposeTimeActivity$FindTimeSupportTask;-><init>(Lcom/android/calendar/event/ProposeTimeActivity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mFindTimeSupportTask:Lcom/android/calendar/event/ProposeTimeActivity$FindTimeSupportTask;

    .line 141
    iget-object v0, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mFindTimeSupportTask:Lcom/android/calendar/event/ProposeTimeActivity$FindTimeSupportTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/event/ProposeTimeActivity$FindTimeSupportTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 195
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/google/android/calendar/PerformanceMetricCollector;->start(Landroid/content/Context;)V

    .line 196
    if-eqz p1, :cond_8

    .line 197
    const-string v0, "ProposeTimeActivity.Recreated"

    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    .line 201
    :goto_1
    return-void

    .line 143
    :cond_2
    const-string v0, "is_find_time_supported"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mIsFindTimeSupported:Ljava/lang/Boolean;

    .line 144
    iget-object v0, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mProposedStartTime:Lcom/android/calendar/time/Time;

    const-string v1, "proposed_start_time"

    invoke-virtual {p1, v1, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/time/Time;->set(J)V

    .line 146
    invoke-virtual {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "datePickerDialogFragment"

    .line 147
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 148
    if-eqz v0, :cond_3

    .line 149
    new-instance v1, Lcom/android/datetimepicker/date/DatePickerCompat;

    invoke-direct {v1, p0}, Lcom/android/datetimepicker/date/DatePickerCompat;-><init>(Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;)V

    .line 150
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/datetimepicker/date/DatePickerCompat;->setRtlEnabled(Z)V

    .line 151
    invoke-virtual {v1, v0}, Lcom/android/datetimepicker/date/DatePickerCompat;->initialize(Landroid/app/DialogFragment;)V

    .line 155
    instance-of v1, v0, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;

    if-eqz v1, :cond_6

    .line 156
    check-cast v0, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;

    .line 157
    invoke-virtual {v0, p0}, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->setDialogFragmentListener(Lcom/android/datetimepicker/DialogFragmentListener;)V

    .line 165
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "timePickerDialogFragment"

    .line 166
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 167
    if-eqz v0, :cond_4

    .line 168
    new-instance v1, Lcom/android/datetimepicker/time/TimePickerCompat;

    invoke-direct {v1, p0}, Lcom/android/datetimepicker/time/TimePickerCompat;-><init>(Lcom/android/datetimepicker/time/TimePickerCompat$OnTimeSetListener;)V

    .line 169
    invoke-virtual {v1, v0}, Lcom/android/datetimepicker/time/TimePickerCompat;->initialize(Landroid/app/DialogFragment;)V

    .line 173
    instance-of v1, v0, Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimePickerFragment;

    if-eqz v1, :cond_7

    .line 174
    check-cast v0, Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimePickerFragment;

    .line 175
    invoke-virtual {v0, p0}, Lcom/android/datetimepicker/time/TimePickerCompat$DefaultTimePickerFragment;->setDialogFragmentListener(Lcom/android/datetimepicker/DialogFragmentListener;)V

    .line 184
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "confirmDialogFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/ProposedTimeConfirmationDialog;

    .line 185
    if-eqz v0, :cond_5

    .line 186
    invoke-virtual {v0, p0}, Lcom/android/calendar/event/ProposedTimeConfirmationDialog;->setOnProposedTimeConfirmListener(Lcom/android/calendar/event/ProposedTimeConfirmationDialog$OnProposedTimeConfirmListener;)V

    .line 190
    :cond_5
    invoke-virtual {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "addNoteFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;

    .line 191
    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {v0, p0}, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->setFragmentListener(Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$Listener;)V

    goto/16 :goto_0

    .line 158
    :cond_6
    instance-of v1, v0, Lcom/android/datetimepicker/date/DatePickerDialog;

    if-eqz v1, :cond_3

    .line 160
    check-cast v0, Lcom/android/datetimepicker/date/DatePickerDialog;

    .line 161
    invoke-virtual {v0, p0}, Lcom/android/datetimepicker/date/DatePickerDialog;->setDialogFragmentListener(Lcom/android/datetimepicker/DialogFragmentListener;)V

    goto :goto_2

    .line 176
    :cond_7
    instance-of v1, v0, Lcom/android/datetimepicker/time/TimePickerDialog;

    if-eqz v1, :cond_4

    .line 178
    check-cast v0, Lcom/android/datetimepicker/time/TimePickerDialog;

    .line 179
    invoke-virtual {v0, p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->setDialogFragmentListener(Lcom/android/datetimepicker/DialogFragmentListener;)V

    goto :goto_3

    .line 199
    :cond_8
    const-string v0, "ProposeTimeActivity.Created"

    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onDateSet(III)V
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mDateOrTimeSet:Z

    .line 291
    iget-object v0, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mProposedStartTime:Lcom/android/calendar/time/Time;

    iput p1, v0, Lcom/android/calendar/time/Time;->year:I

    .line 292
    iget-object v0, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mProposedStartTime:Lcom/android/calendar/time/Time;

    iput p2, v0, Lcom/android/calendar/time/Time;->month:I

    .line 293
    iget-object v0, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mProposedStartTime:Lcom/android/calendar/time/Time;

    iput p3, v0, Lcom/android/calendar/time/Time;->monthDay:I

    .line 294
    iget-object v0, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mProposedStartTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0}, Lcom/android/calendar/time/Time;->normalizeSafe()V

    .line 295
    invoke-direct {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->launchTimePicker()V

    .line 296
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mFindTimeSupportTask:Lcom/android/calendar/event/ProposeTimeActivity$FindTimeSupportTask;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mFindTimeSupportTask:Lcom/android/calendar/event/ProposeTimeActivity$FindTimeSupportTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/ProposeTimeActivity$FindTimeSupportTask;->cancel(Z)Z

    .line 223
    :cond_0
    const-string v0, "ProposeTimeActivity.Destroyed"

    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    .line 224
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 225
    return-void
.end method

.method public onDialogCancelled(Landroid/app/DialogFragment;)V
    .locals 0

    .prologue
    .line 397
    return-void
.end method

.method public onDialogCreated(Landroid/app/DialogFragment;)V
    .locals 0

    .prologue
    .line 400
    return-void
.end method

.method public onDialogDestroyed(Landroid/app/DialogFragment;)V
    .locals 1

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mDateOrTimeSet:Z

    if-nez v0, :cond_0

    .line 408
    invoke-direct {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->finishActivityWithResultCanceled()V

    .line 412
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mDateOrTimeSet:Z

    .line 413
    return-void
.end method

.method public onNoteAdded(Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;JJLjava/lang/String;)V
    .locals 3

    .prologue
    .line 429
    iput-object p6, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mProposedNote:Ljava/lang/String;

    .line 430
    invoke-virtual {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "addNoteFragment"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    move-result v0

    .line 432
    if-eqz v0, :cond_0

    .line 433
    invoke-direct {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->launchProposedTimeConfirmationDialog()V

    .line 435
    :cond_0
    return-void
.end method

.method public onProposedNoteEditRequest()V
    .locals 0

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->launchAddNoteFragment()V

    .line 376
    return-void
.end method

.method public onProposedTimeCancel()V
    .locals 0

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->finishActivityWithResultCanceled()V

    .line 382
    return-void
.end method

.method public onProposedTimeConfirm()V
    .locals 6

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mProposedStartTime:Lcom/android/calendar/time/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v0

    .line 360
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 361
    const-string v3, "start_millis"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 362
    const-string v3, "end_millis"

    invoke-direct {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->getEventDuration()J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 363
    const-string v0, "note"

    iget-object v1, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mProposedNote:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/calendar/event/ProposeTimeActivity;->setResult(ILandroid/content/Intent;)V

    .line 365
    invoke-virtual {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->finish()V

    .line 366
    return-void
.end method

.method public onProposedTimeEditRequest()V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->launchDatePicker()V

    .line 371
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 205
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 206
    const-string v0, "proposed_start_time"

    iget-object v1, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mProposedStartTime:Lcom/android/calendar/time/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 207
    iget-object v0, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mIsFindTimeSupported:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 208
    const-string v0, "is_find_time_supported"

    iget-object v1, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mIsFindTimeSupported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 210
    :cond_0
    return-void
.end method

.method public onTimeSet(II)V
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mDateOrTimeSet:Z

    .line 341
    iget-object v0, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mProposedStartTime:Lcom/android/calendar/time/Time;

    iput p1, v0, Lcom/android/calendar/time/Time;->hour:I

    .line 342
    iget-object v0, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mProposedStartTime:Lcom/android/calendar/time/Time;

    iput p2, v0, Lcom/android/calendar/time/Time;->minute:I

    .line 343
    iget-object v0, p0, Lcom/android/calendar/event/ProposeTimeActivity;->mProposedStartTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0}, Lcom/android/calendar/time/Time;->normalizeSafe()V

    .line 344
    invoke-direct {p0}, Lcom/android/calendar/event/ProposeTimeActivity;->launchProposedTimeConfirmationDialog()V

    .line 345
    return-void
.end method
