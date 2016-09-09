.class public Lcom/android/recurrencepicker/RecurrencePickerDialog;
.super Landroid/app/DialogFragment;
.source "RecurrencePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;,
        Lcom/android/recurrencepicker/RecurrencePickerDialog$OnRecurrenceSetListener;,
        Lcom/android/recurrencepicker/RecurrencePickerDialog$minMaxTextWatcher;,
        Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final mFreqModelToEventRecurrence:[I


# instance fields
.field private final TIME_DAY_TO_CALENDAR_DAY:[I

.field private mDatePickerCompat:Lcom/android/datetimepicker/date/DatePickerCompat;

.field private mDone:Landroid/widget/Button;

.field private mEndCount:Landroid/widget/EditText;

.field private mEndCountLabel:Ljava/lang/String;

.field private mEndDateLabel:Ljava/lang/String;

.field private mEndDateTextView:Landroid/widget/TextView;

.field private mEndNeverStr:Ljava/lang/String;

.field private mEndSpinner:Landroid/widget/Spinner;

.field private mEndSpinnerAdapter:Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;

.field private mEndSpinnerArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstDayOfWeek:I

.field private mFreqSpinner:Landroid/widget/Spinner;

.field private mHidePostEndCount:Z

.field private mInterval:Landroid/widget/EditText;

.field private mIntervalPostText:Landroid/widget/TextView;

.field private mIntervalPreText:Landroid/widget/TextView;

.field private mIntervalResId:I

.field private mIsWeeklyOnly:Z

.field private mMainLayout:Landroid/widget/LinearLayout;

.field private mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

.field private mMonthGroup:Landroid/widget/LinearLayout;

.field private mMonthRepeatByDayOfWeekStr:Ljava/lang/String;

.field private mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;

.field private mMonthRepeatByRadioGroup:Landroid/widget/RadioGroup;

.field private mNumDaysInMonth:I

.field private mPostEndCount:Landroid/widget/TextView;

.field private mRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

.field private mRecurrenceSetListener:Lcom/android/recurrencepicker/RecurrencePickerDialog$OnRecurrenceSetListener;

.field private mRepeatMonthlyByLastDayOfMonth:Landroid/widget/RadioButton;

.field private mRepeatMonthlyByNthDayOfMonth:Landroid/widget/RadioButton;

.field private mRepeatMonthlyByNthDayOfWeek:Landroid/widget/RadioButton;

.field private mRepeatSwitch:Landroid/widget/Switch;

.field private mRepeatText:Landroid/widget/TextView;

.field private mResources:Landroid/content/res/Resources;

.field private mRtlEnabled:Z

.field private mTime:Landroid/text/format/Time;

.field private mView:Landroid/view/View;

.field private mWeekByDayButtons:[Landroid/widget/ToggleButton;

.field private mWeekGroup:Landroid/widget/LinearLayout;

.field private mWeekGroup2:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/android/recurrencepicker/RecurrencePickerDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->TAG:Ljava/lang/String;

    .line 325
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mFreqModelToEventRecurrence:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 392
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 300
    new-instance v0, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct {v0}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    .line 301
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mTime:Landroid/text/format/Time;

    .line 303
    new-instance v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    invoke-direct {v0}, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;-><init>()V

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    .line 305
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->TIME_DAY_TO_CALENDAR_DAY:[I

    .line 349
    iput v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mIntervalResId:I

    .line 357
    iput-boolean v3, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRtlEnabled:Z

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndSpinnerArray:Ljava/util/ArrayList;

    .line 369
    new-array v0, v4, [Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mWeekByDayButtons:[Landroid/widget/ToggleButton;

    .line 386
    iput-boolean v3, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mIsWeeklyOnly:Z

    .line 390
    iput v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mFirstDayOfWeek:I

    .line 393
    return-void

    .line 305
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/recurrencepicker/RecurrencePickerDialog;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->updateDoneButtonState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/recurrencepicker/RecurrencePickerDialog;)Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/recurrencepicker/RecurrencePickerDialog;)Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/recurrencepicker/RecurrencePickerDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndCountLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/recurrencepicker/RecurrencePickerDialog;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mPostEndCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/recurrencepicker/RecurrencePickerDialog;Z)Z
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mHidePostEndCount:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/recurrencepicker/RecurrencePickerDialog;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->togglePickerOptions()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/recurrencepicker/RecurrencePickerDialog;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mIntervalResId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/recurrencepicker/RecurrencePickerDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mInterval:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/recurrencepicker/RecurrencePickerDialog;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->updateIntervalText()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/recurrencepicker/RecurrencePickerDialog;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->updateEndCountText()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/recurrencepicker/RecurrencePickerDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndCount:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/recurrencepicker/RecurrencePickerDialog;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/recurrencepicker/RecurrencePickerDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndDateLabel:Ljava/lang/String;

    return-object v0
.end method

.method public static canHandleRecurrenceRule(Lcom/android/calendarcommon2/EventRecurrence;)Z
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 411
    iget v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    packed-switch v0, :pswitch_data_0

    .line 463
    :cond_0
    :goto_0
    return v1

    .line 421
    :pswitch_0
    iget v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    move v0, v1

    move v2, v1

    .line 434
    :goto_1
    iget v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-ge v0, v4, :cond_3

    .line 435
    iget-object v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    aget v4, v4, v0

    invoke-static {v4}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->isSupportedMonthlyByNthDayOfWeek(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 436
    add-int/lit8 v2, v2, 0x1

    .line 434
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 440
    :cond_3
    if-gt v2, v3, :cond_0

    .line 444
    if-lez v2, :cond_4

    iget v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    if-ne v0, v5, :cond_0

    .line 450
    :cond_4
    iget v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    if-gt v0, v3, :cond_0

    .line 454
    iget v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    if-ne v0, v5, :cond_5

    .line 455
    iget v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-gt v0, v3, :cond_0

    .line 458
    iget v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-lez v0, :cond_5

    iget v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    if-gtz v0, :cond_0

    :cond_5
    move v1, v3

    .line 463
    goto :goto_0

    .line 411
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static copyEventRecurrenceToModel(Lcom/android/calendarcommon2/EventRecurrence;Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;)V
    .locals 7

    .prologue
    const/16 v3, 0x10

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 470
    iget v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    packed-switch v0, :pswitch_data_0

    .line 484
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "freq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :pswitch_0
    iput v1, p1, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->freq:I

    .line 488
    :goto_0
    iget v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->interval:I

    if-lez v0, :cond_0

    .line 489
    iget v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->interval:I

    iput v0, p1, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->interval:I

    .line 494
    :cond_0
    iget v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    iput v0, p1, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endCount:I

    .line 495
    iget v0, p1, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endCount:I

    if-lez v0, :cond_1

    .line 496
    iput v6, p1, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->end:I

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 501
    iget-object v0, p1, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    if-nez v0, :cond_2

    .line 502
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p1, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    .line 506
    :cond_2
    :try_start_0
    iget-object v0, p1, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :goto_1
    iget v0, p1, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->end:I

    if-ne v0, v6, :cond_3

    iget-object v0, p1, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    if-eqz v0, :cond_3

    .line 513
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "freq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :pswitch_1
    iput v6, p1, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->freq:I

    goto :goto_0

    .line 478
    :pswitch_2
    const/4 v0, 0x3

    iput v0, p1, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->freq:I

    goto :goto_0

    .line 481
    :pswitch_3
    iput v5, p1, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->freq:I

    goto :goto_0

    .line 507
    :catch_0
    move-exception v0

    .line 508
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    goto :goto_1

    .line 516
    :cond_3
    iput v5, p1, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->end:I

    .line 521
    :cond_4
    iget-object v0, p1, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->weeklyByDayOfWeek:[Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 522
    iget v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-lez v0, :cond_8

    move v0, v1

    move v2, v1

    .line 524
    :goto_2
    iget v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-ge v0, v3, :cond_6

    .line 525
    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    aget v3, v3, v0

    invoke-static {v3}, Lcom/android/calendarcommon2/EventRecurrence;->day2TimeDay(I)I

    move-result v3

    .line 526
    iget-object v4, p1, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->weeklyByDayOfWeek:[Z

    aput-boolean v5, v4, v3

    .line 528
    iget v4, p1, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->freq:I

    if-ne v4, v6, :cond_5

    iget-object v4, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    aget v4, v4, v0

    .line 529
    invoke-static {v4}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->isSupportedMonthlyByNthDayOfWeek(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 533
    iput v3, p1, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyByDayOfWeek:I

    .line 534
    iget-object v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    aget v3, v3, v0

    iput v3, p1, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyByNthDayOfWeek:I

    .line 535
    iput v5, p1, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyRepeat:I

    .line 536
    add-int/lit8 v2, v2, 0x1

    .line 524
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 540
    :cond_6
    iget v0, p1, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->freq:I

    if-ne v0, v6, :cond_8

    .line 541
    iget v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-eq v0, v5, :cond_7

    .line 543
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can handle only 1 byDayOfWeek in monthly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_7
    if-eq v2, v5, :cond_8

    .line 546
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Didn\'t specify which nth day of week to repeat for a monthly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_8
    iget v0, p1, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->freq:I

    if-ne v0, v6, :cond_a

    .line 554
    iget v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    if-ne v0, v5, :cond_b

    .line 555
    iget v0, p1, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyRepeat:I

    if-ne v0, v5, :cond_9

    .line 556
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can handle only by monthday or by nth day of week, not both"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_9
    iget-object v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthday:[I

    aget v0, v0, v1

    iput v0, p1, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyByMonthDay:I

    .line 560
    iput v1, p1, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyRepeat:I

    .line 566
    :cond_a
    return-void

    .line 561
    :cond_b
    iget v0, p0, Lcom/android/calendarcommon2/EventRecurrence;->bymonthCount:I

    if-le v0, v5, :cond_a

    .line 563
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can handle only one bymonthday"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static copyModelToEventRecurrence(Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;Lcom/android/calendarcommon2/EventRecurrence;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 570
    iget v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->recurrenceState:I

    if-nez v0, :cond_0

    .line 571
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There\'s no recurrence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    :cond_0
    sget-object v0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mFreqModelToEventRecurrence:[I

    iget v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->freq:I

    aget v0, v0, v1

    iput v0, p1, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    .line 578
    iget v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->interval:I

    if-gt v0, v3, :cond_3

    .line 579
    iput v2, p1, Lcom/android/calendarcommon2/EventRecurrence;->interval:I

    .line 585
    :goto_0
    iget v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->end:I

    packed-switch v0, :pswitch_data_0

    .line 604
    iput v2, p1, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    .line 605
    iput-object v4, p1, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    .line 610
    :cond_1
    :goto_1
    iput v2, p1, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    .line 611
    iput v2, p1, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    .line 613
    iget v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->freq:I

    packed-switch v0, :pswitch_data_1

    .line 661
    :cond_2
    :goto_2
    invoke-static {p1}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->canHandleRecurrenceRule(Lcom/android/calendarcommon2/EventRecurrence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 662
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 663
    invoke-virtual {p1}, Lcom/android/calendarcommon2/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x39

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "UI generated recurrence that it can\'t handle. ER:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Model: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_3
    iget v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->interval:I

    iput v0, p1, Lcom/android/calendarcommon2/EventRecurrence;->interval:I

    goto :goto_0

    .line 587
    :pswitch_0
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    if-eqz v0, :cond_4

    .line 588
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 590
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    .line 591
    iput v2, p1, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    goto :goto_1

    .line 593
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "end = END_BY_DATE but endDate is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :pswitch_1
    iget v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endCount:I

    iput v0, p1, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    .line 598
    iput-object v4, p1, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    .line 599
    iget v0, p1, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    if-gtz v0, :cond_1

    .line 600
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p1, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :pswitch_2
    iget v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyRepeat:I

    if-nez v0, :cond_8

    .line 616
    iget v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyByMonthDay:I

    if-gtz v0, :cond_5

    iget v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyByMonthDay:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 617
    :cond_5
    iget-object v0, p1, Lcom/android/calendarcommon2/EventRecurrence;->bymonthday:[I

    if-eqz v0, :cond_6

    iget v0, p1, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    if-ge v0, v3, :cond_7

    .line 618
    :cond_6
    new-array v0, v3, [I

    iput-object v0, p1, Lcom/android/calendarcommon2/EventRecurrence;->bymonthday:[I

    .line 620
    :cond_7
    iget-object v0, p1, Lcom/android/calendarcommon2/EventRecurrence;->bymonthday:[I

    iget v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyByMonthDay:I

    aput v1, v0, v2

    .line 621
    iput v3, p1, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    goto/16 :goto_2

    .line 623
    :cond_8
    iget v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyRepeat:I

    if-ne v0, v3, :cond_2

    .line 624
    iget v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyByNthDayOfWeek:I

    invoke-static {v0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->isSupportedMonthlyByNthDayOfWeek(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 625
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyByNthDayOfWeek:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "month repeat by nth week but n is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_9
    iget v0, p1, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-lt v0, v3, :cond_a

    iget-object v0, p1, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    if-nez v0, :cond_b

    .line 630
    :cond_a
    new-array v0, v3, [I

    iput-object v0, p1, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    .line 631
    new-array v0, v3, [I

    iput-object v0, p1, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    .line 633
    :cond_b
    iput v3, p1, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    .line 634
    iget-object v0, p1, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    iget v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyByDayOfWeek:I

    invoke-static {v1}, Lcom/android/calendarcommon2/EventRecurrence;->timeDay2Day(I)I

    move-result v1

    aput v1, v0, v2

    .line 635
    iget-object v0, p1, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    iget v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyByNthDayOfWeek:I

    aput v1, v0, v2

    goto/16 :goto_2

    :pswitch_3
    move v1, v2

    move v0, v2

    .line 640
    :goto_3
    const/4 v3, 0x7

    if-ge v1, v3, :cond_d

    .line 641
    iget-object v3, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->weeklyByDayOfWeek:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_c

    .line 642
    add-int/lit8 v0, v0, 0x1

    .line 640
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 646
    :cond_d
    iget v1, p1, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-lt v1, v0, :cond_e

    iget-object v1, p1, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    if-eqz v1, :cond_e

    iget-object v1, p1, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    if-nez v1, :cond_f

    .line 647
    :cond_e
    new-array v1, v0, [I

    iput-object v1, p1, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    .line 648
    new-array v1, v0, [I

    iput-object v1, p1, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    .line 650
    :cond_f
    iput v0, p1, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    .line 652
    const/4 v1, 0x6

    :goto_4
    if-ltz v1, :cond_2

    .line 653
    iget-object v3, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->weeklyByDayOfWeek:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_10

    .line 654
    iget-object v3, p1, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    add-int/lit8 v0, v0, -0x1

    aput v2, v3, v0

    .line 655
    iget-object v3, p1, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    invoke-static {v1}, Lcom/android/calendarcommon2/EventRecurrence;->timeDay2Day(I)I

    move-result v4

    aput v4, v3, v0

    .line 652
    :cond_10
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 665
    :cond_11
    return-void

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 613
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getContextInternal()Landroid/content/Context;
    .locals 2

    .prologue
    .line 1175
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method private initMonthlyOnWeekDay()V
    .locals 2

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x7

    iput v1, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyByNthDayOfWeek:I

    .line 1121
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, 0x7

    iget v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mNumDaysInMonth:I

    if-le v0, v1, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyByNthDayOfWeek:I

    .line 1124
    :cond_0
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->weekDay:I

    iput v1, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyByDayOfWeek:I

    .line 1125
    return-void
.end method

.method private initUi(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x7

    const/4 v8, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 724
    invoke-virtual {p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mResources:Landroid/content/res/Resources;

    .line 725
    sget v0, Lcom/android/recurrencepicker/R$layout;->recurrencepicker:I

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mView:Landroid/view/View;

    .line 727
    invoke-direct {p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->initializeViews()V

    .line 729
    iget-boolean v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mIsWeeklyOnly:Z

    if-eqz v0, :cond_0

    .line 730
    invoke-direct {p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->showWeeklyOnlyUi()V

    .line 733
    :cond_0
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRepeatSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->recurrenceState:I

    if-ne v0, v6, :cond_3

    move v0, v6

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 734
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRepeatSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/android/recurrencepicker/RecurrencePickerDialog$1;

    invoke-direct {v1, p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog$1;-><init>(Lcom/android/recurrencepicker/RecurrencePickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 744
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mFreqSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 746
    invoke-direct {p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->getContextInternal()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/recurrencepicker/R$array;->recurrence_freq:I

    sget v2, Lcom/android/recurrencepicker/R$layout;->recurrencepicker_freq_item:I

    invoke-static {v0, v1, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 748
    sget v1, Lcom/android/recurrencepicker/R$layout;->recurrencepicker_freq_item:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 749
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mFreqSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 751
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mInterval:Landroid/widget/EditText;

    new-instance v1, Lcom/android/recurrencepicker/RecurrencePickerDialog$2;

    const/16 v2, 0x63

    invoke-direct {v1, p0, v6, v6, v2}, Lcom/android/recurrencepicker/RecurrencePickerDialog$2;-><init>(Lcom/android/recurrencepicker/RecurrencePickerDialog;III)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 763
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/recurrencepicker/R$string;->recurrence_end_continously:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndNeverStr:Ljava/lang/String;

    .line 764
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/recurrencepicker/R$string;->recurrence_end_date_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndDateLabel:Ljava/lang/String;

    .line 765
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/recurrencepicker/R$string;->recurrence_end_count_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndCountLabel:Ljava/lang/String;

    .line 767
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndSpinnerArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndNeverStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndSpinnerArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndDateLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndSpinnerArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndCountLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 772
    new-instance v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;

    invoke-direct {p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->getContextInternal()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndSpinnerArray:Ljava/util/ArrayList;

    sget v4, Lcom/android/recurrencepicker/R$layout;->recurrencepicker_freq_item:I

    sget v5, Lcom/android/recurrencepicker/R$layout;->recurrencepicker_end_text:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;-><init>(Lcom/android/recurrencepicker/RecurrencePickerDialog;Landroid/content/Context;Ljava/util/ArrayList;II)V

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndSpinnerAdapter:Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;

    .line 774
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndSpinnerAdapter:Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;

    sget v1, Lcom/android/recurrencepicker/R$layout;->recurrencepicker_freq_item:I

    invoke-virtual {v0, v1}, Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;->setDropDownViewResource(I)V

    .line 775
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndSpinnerAdapter:Lcom/android/recurrencepicker/RecurrencePickerDialog$EndSpinnerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 777
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndCount:Landroid/widget/EditText;

    new-instance v1, Lcom/android/recurrencepicker/RecurrencePickerDialog$3;

    const/4 v2, 0x5

    const/16 v3, 0x2da

    invoke-direct {v1, p0, v6, v2, v3}, Lcom/android/recurrencepicker/RecurrencePickerDialog$3;-><init>(Lcom/android/recurrencepicker/RecurrencePickerDialog;III)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 788
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndDateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 789
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget-object v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    if-nez v0, :cond_1

    .line 790
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mTime:Landroid/text/format/Time;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    iput-object v1, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    .line 791
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->freq:I

    packed-switch v0, :pswitch_data_0

    .line 803
    :goto_1
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget-object v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->normalize(Z)J

    .line 808
    :cond_1
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    .line 810
    new-array v0, v9, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;

    .line 812
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/recurrencepicker/R$array;->repeat_by_nth_sun:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 813
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/recurrencepicker/R$array;->repeat_by_nth_mon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 814
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/recurrencepicker/R$array;->repeat_by_nth_tues:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 815
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/recurrencepicker/R$array;->repeat_by_nth_wed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 816
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/recurrencepicker/R$array;->repeat_by_nth_thurs:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 817
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/recurrencepicker/R$array;->repeat_by_nth_fri:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 818
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/recurrencepicker/R$array;->repeat_by_nth_sat:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 821
    iget v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mFirstDayOfWeek:I

    invoke-static {v0}, Lcom/android/recurrencepicker/Utils;->convertDayOfWeekFromCalendarToTime(I)I

    move-result v3

    .line 824
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v5

    .line 829
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v1, 0x1c2

    if-le v0, v1, :cond_4

    .line 832
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mWeekGroup2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 833
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mWeekGroup2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    move v1, v7

    move v2, v9

    :goto_2
    move v4, v7

    .line 845
    :goto_3
    if-ge v4, v9, :cond_6

    .line 846
    if-lt v4, v2, :cond_5

    .line 847
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mWeekGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    move v0, v3

    .line 845
    :cond_2
    :goto_4
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    goto :goto_3

    :cond_3
    move v0, v7

    .line 733
    goto/16 :goto_0

    .line 794
    :pswitch_0
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget-object v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iget v1, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/text/format/Time;->month:I

    goto/16 :goto_1

    .line 797
    :pswitch_1
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget-object v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iget v1, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/text/format/Time;->month:I

    goto/16 :goto_1

    .line 800
    :pswitch_2
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget-object v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iget v1, v0, Landroid/text/format/Time;->year:I

    add-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/text/format/Time;->year:I

    goto/16 :goto_1

    .line 835
    :cond_4
    const/4 v0, 0x4

    .line 838
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mWeekGroup2:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 841
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mWeekGroup2:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    move v1, v8

    move v2, v0

    goto :goto_2

    .line 851
    :cond_5
    iget-object v6, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mWeekByDayButtons:[Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mWeekGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    aput-object v0, v6, v3

    .line 852
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mWeekByDayButtons:[Landroid/widget/ToggleButton;

    aget-object v0, v0, v3

    iget-object v6, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->TIME_DAY_TO_CALENDAR_DAY:[I

    aget v6, v6, v3

    aget-object v6, v5, v6

    invoke-virtual {v0, v6}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 853
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mWeekByDayButtons:[Landroid/widget/ToggleButton;

    aget-object v0, v0, v3

    iget-object v6, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->TIME_DAY_TO_CALENDAR_DAY:[I

    aget v6, v6, v3

    aget-object v6, v5, v6

    invoke-virtual {v0, v6}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 854
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mWeekByDayButtons:[Landroid/widget/ToggleButton;

    aget-object v0, v0, v3

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 856
    add-int/lit8 v0, v3, 0x1

    if-lt v0, v9, :cond_2

    move v0, v7

    .line 857
    goto :goto_4

    :cond_6
    move v2, v3

    move v3, v7

    .line 862
    :goto_5
    if-ge v3, v8, :cond_9

    .line 863
    if-lt v3, v1, :cond_8

    .line 864
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mWeekGroup2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    move v0, v2

    .line 862
    :cond_7
    :goto_6
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_5

    .line 867
    :cond_8
    iget-object v4, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mWeekByDayButtons:[Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mWeekGroup2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    aput-object v0, v4, v2

    .line 868
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mWeekByDayButtons:[Landroid/widget/ToggleButton;

    aget-object v0, v0, v2

    iget-object v4, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->TIME_DAY_TO_CALENDAR_DAY:[I

    aget v4, v4, v2

    aget-object v4, v5, v4

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 869
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mWeekByDayButtons:[Landroid/widget/ToggleButton;

    aget-object v0, v0, v2

    iget-object v4, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->TIME_DAY_TO_CALENDAR_DAY:[I

    aget v4, v4, v2

    aget-object v4, v5, v4

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 870
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mWeekByDayButtons:[Landroid/widget/ToggleButton;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 872
    add-int/lit8 v0, v2, 0x1

    if-lt v0, v9, :cond_7

    move v0, v7

    .line 873
    goto :goto_6

    .line 877
    :cond_9
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mMonthRepeatByRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 880
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    iget v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mNumDaysInMonth:I

    if-eq v0, v1, :cond_a

    .line 881
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRepeatMonthlyByLastDayOfMonth:Landroid/widget/RadioButton;

    invoke-virtual {v0, v10}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 884
    :cond_a
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mDone:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 886
    invoke-direct {p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->togglePickerOptions()V

    .line 887
    invoke-virtual {p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->updateDialog()V

    .line 888
    return-void

    .line 791
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initializeViews()V
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/recurrencepicker/R$id;->mainLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mMainLayout:Landroid/widget/LinearLayout;

    .line 673
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/recurrencepicker/R$id;->repeatText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRepeatText:Landroid/widget/TextView;

    .line 674
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/recurrencepicker/R$id;->repeat_switch:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRepeatSwitch:Landroid/widget/Switch;

    .line 675
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/recurrencepicker/R$id;->freqSpinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mFreqSpinner:Landroid/widget/Spinner;

    .line 676
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/recurrencepicker/R$id;->interval:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mInterval:Landroid/widget/EditText;

    .line 677
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/recurrencepicker/R$id;->intervalPreText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mIntervalPreText:Landroid/widget/TextView;

    .line 678
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/recurrencepicker/R$id;->intervalPostText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mIntervalPostText:Landroid/widget/TextView;

    .line 679
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/recurrencepicker/R$id;->endSpinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndSpinner:Landroid/widget/Spinner;

    .line 680
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/recurrencepicker/R$id;->endCount:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndCount:Landroid/widget/EditText;

    .line 681
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/recurrencepicker/R$id;->postEndCount:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mPostEndCount:Landroid/widget/TextView;

    .line 682
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/recurrencepicker/R$id;->endDate:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndDateTextView:Landroid/widget/TextView;

    .line 683
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/recurrencepicker/R$id;->weekGroup:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mWeekGroup:Landroid/widget/LinearLayout;

    .line 684
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/recurrencepicker/R$id;->weekGroup2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mWeekGroup2:Landroid/widget/LinearLayout;

    .line 685
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/recurrencepicker/R$id;->monthGroup:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mMonthGroup:Landroid/widget/LinearLayout;

    .line 686
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/recurrencepicker/R$id;->monthGroup:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mMonthRepeatByRadioGroup:Landroid/widget/RadioGroup;

    .line 687
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/recurrencepicker/R$id;->repeatMonthlyByNthDayOfTheWeek:I

    .line 688
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRepeatMonthlyByNthDayOfWeek:Landroid/widget/RadioButton;

    .line 689
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/recurrencepicker/R$id;->repeatMonthlyByNthDayOfMonth:I

    .line 690
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRepeatMonthlyByNthDayOfMonth:Landroid/widget/RadioButton;

    .line 691
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/recurrencepicker/R$id;->repeatMonthlyByLastDayOfMonth:I

    .line 692
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRepeatMonthlyByLastDayOfMonth:Landroid/widget/RadioButton;

    .line 693
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/recurrencepicker/R$id;->done:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mDone:Landroid/widget/Button;

    .line 694
    return-void
.end method

.method public static isSupportedMonthlyByNthDayOfWeek(I)Z
    .locals 1

    .prologue
    .line 407
    if-lez p0, :cond_0

    const/4 v0, 0x5

    if-le p0, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showWeeklyOnlyUi()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 702
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRepeatText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 703
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 704
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mFreqSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 705
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mInterval:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mIntervalPreText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 707
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mIntervalPostText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 708
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 709
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndCount:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 710
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mPostEndCount:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 711
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndDateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 712
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mMonthGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 713
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mMonthRepeatByRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 714
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRepeatMonthlyByNthDayOfWeek:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 715
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRepeatMonthlyByNthDayOfMonth:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 716
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRepeatMonthlyByLastDayOfMonth:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 717
    return-void
.end method

.method private togglePickerOptions()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 957
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget v1, v1, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->recurrenceState:I

    if-nez v1, :cond_0

    .line 958
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mFreqSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 959
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 960
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mIntervalPreText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 961
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mInterval:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 962
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mIntervalPostText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 963
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mMonthRepeatByRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    .line 964
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndCount:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 965
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mPostEndCount:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 966
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndDateTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 967
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRepeatMonthlyByNthDayOfWeek:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 968
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRepeatMonthlyByNthDayOfMonth:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 969
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRepeatMonthlyByLastDayOfMonth:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 970
    iget-object v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mWeekByDayButtons:[Landroid/widget/ToggleButton;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 971
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 970
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 974
    :cond_0
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mView:Landroid/view/View;

    sget v2, Lcom/android/recurrencepicker/R$id;->options:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 975
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mFreqSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 976
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 977
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mIntervalPreText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 978
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mInterval:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 979
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mIntervalPostText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 980
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mMonthRepeatByRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    .line 981
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndCount:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 982
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mPostEndCount:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 983
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndDateTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 984
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRepeatMonthlyByNthDayOfWeek:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 985
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRepeatMonthlyByNthDayOfMonth:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 986
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRepeatMonthlyByLastDayOfMonth:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 987
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mWeekByDayButtons:[Landroid/widget/ToggleButton;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 988
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 987
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 991
    :cond_1
    invoke-direct {p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->updateDoneButtonState()V

    .line 992
    return-void
.end method

.method private updateDoneButtonState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 995
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->recurrenceState:I

    if-nez v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mDone:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1023
    :goto_0
    return-void

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mInterval:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1001
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mDone:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 1005
    :cond_1
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndCount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndCount:Landroid/widget/EditText;

    .line 1006
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1007
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mDone:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 1011
    :cond_2
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->freq:I

    if-ne v0, v5, :cond_5

    .line 1012
    iget-object v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mWeekByDayButtons:[Landroid/widget/ToggleButton;

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_4

    aget-object v4, v2, v0

    .line 1013
    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1014
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mDone:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 1012
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1018
    :cond_4
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mDone:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 1022
    :cond_5
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mDone:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateEndCountText()V
    .locals 4

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/recurrencepicker/R$plurals;->recurrence_end_count:I

    iget-object v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget v2, v2, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endCount:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 1153
    const-string v1, "%d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1155
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1156
    if-nez v1, :cond_1

    .line 1157
    sget-object v0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->TAG:Ljava/lang/String;

    const-string v1, "No text to put in to recurrence\'s end spinner."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_0
    :goto_0
    return-void

    .line 1159
    :cond_1
    const-string v2, "%d"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 1160
    iget-object v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mPostEndCount:Landroid/widget/TextView;

    .line 1161
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1160
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1161
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1160
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateIntervalText()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 1129
    iget v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mIntervalResId:I

    if-ne v0, v3, :cond_1

    .line 1143
    :cond_0
    :goto_0
    return-void

    .line 1134
    :cond_1
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mResources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mIntervalResId:I

    iget-object v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget v2, v2, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->interval:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 1135
    const-string v1, "%d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1137
    if-eq v1, v3, :cond_0

    .line 1138
    const-string v2, "%d"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    .line 1139
    iget-object v3, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mIntervalPostText:Landroid/widget/TextView;

    .line 1140
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 1139
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1140
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1139
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1141
    iget-object v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mIntervalPreText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1325
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1326
    invoke-virtual {p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "tag_date_picker_frag"

    .line 1327
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 1328
    if-eqz v0, :cond_1

    .line 1329
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mDatePickerCompat:Lcom/android/datetimepicker/date/DatePickerCompat;

    if-nez v1, :cond_0

    .line 1330
    new-instance v1, Lcom/android/datetimepicker/date/DatePickerCompat;

    invoke-direct {v1, p0}, Lcom/android/datetimepicker/date/DatePickerCompat;-><init>(Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;)V

    iput-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mDatePickerCompat:Lcom/android/datetimepicker/date/DatePickerCompat;

    .line 1332
    :cond_0
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mDatePickerCompat:Lcom/android/datetimepicker/date/DatePickerCompat;

    invoke-virtual {v1, v0}, Lcom/android/datetimepicker/date/DatePickerCompat;->initialize(Landroid/app/DialogFragment;)V

    .line 1334
    :cond_1
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 1238
    .line 1239
    const/4 v1, 0x0

    move v0, v2

    :goto_0
    const/4 v3, 0x7

    if-ge v1, v3, :cond_1

    .line 1240
    if-ne v0, v2, :cond_0

    iget-object v3, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mWeekByDayButtons:[Landroid/widget/ToggleButton;

    aget-object v3, v3, v1

    if-ne p1, v3, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget-object v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->weeklyByDayOfWeek:[Z

    aput-boolean p2, v0, v1

    move v0, v1

    .line 1239
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1245
    :cond_1
    invoke-virtual {p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->updateDialog()V

    .line 1246
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1252
    sget v0, Lcom/android/recurrencepicker/R$id;->repeatMonthlyByNthDayOfMonth:I

    if-ne p2, v0, :cond_1

    .line 1253
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iput v1, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyRepeat:I

    .line 1254
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->monthDay:I

    iput v1, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyByMonthDay:I

    .line 1261
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->updateDialog()V

    .line 1262
    return-void

    .line 1255
    :cond_1
    sget v0, Lcom/android/recurrencepicker/R$id;->repeatMonthlyByLastDayOfMonth:I

    if-ne p2, v0, :cond_2

    .line 1256
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iput v1, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyRepeat:I

    .line 1257
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyByMonthDay:I

    goto :goto_0

    .line 1258
    :cond_2
    sget v0, Lcom/android/recurrencepicker/R$id;->repeatMonthlyByNthDayOfTheWeek:I

    if-ne p2, v0, :cond_0

    .line 1259
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyRepeat:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndDateTextView:Landroid/widget/TextView;

    if-ne v0, p1, :cond_2

    .line 1270
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mDatePickerCompat:Lcom/android/datetimepicker/date/DatePickerCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mDatePickerCompat:Lcom/android/datetimepicker/date/DatePickerCompat;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/DatePickerCompat;->getFragment()Landroid/app/DialogFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mDatePickerCompat:Lcom/android/datetimepicker/date/DatePickerCompat;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/DatePickerCompat;->getFragment()Landroid/app/DialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 1273
    :cond_0
    new-instance v0, Lcom/android/datetimepicker/date/DatePickerCompat;

    invoke-direct {v0, p0}, Lcom/android/datetimepicker/date/DatePickerCompat;-><init>(Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;)V

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mDatePickerCompat:Lcom/android/datetimepicker/date/DatePickerCompat;

    .line 1274
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mDatePickerCompat:Lcom/android/datetimepicker/date/DatePickerCompat;

    iget v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mFirstDayOfWeek:I

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/date/DatePickerCompat;->setFirstDayOfWeek(I)V

    .line 1275
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1276
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->year:I

    iget-object v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->month:I

    iget-object v3, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 1277
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mDatePickerCompat:Lcom/android/datetimepicker/date/DatePickerCompat;

    invoke-virtual {v1, v0}, Lcom/android/datetimepicker/date/DatePickerCompat;->setMinDate(Ljava/util/Calendar;)V

    .line 1278
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mDatePickerCompat:Lcom/android/datetimepicker/date/DatePickerCompat;

    iget-boolean v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRtlEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/date/DatePickerCompat;->setRtlEnabled(Z)V

    .line 1279
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mDatePickerCompat:Lcom/android/datetimepicker/date/DatePickerCompat;

    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget-object v1, v1, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->year:I

    iget-object v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget-object v2, v2, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->month:I

    iget-object v3, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget-object v3, v3, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/datetimepicker/date/DatePickerCompat;->initialize(III)V

    .line 1282
    invoke-virtual {p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1283
    if-eqz v0, :cond_1

    .line 1284
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mDatePickerCompat:Lcom/android/datetimepicker/date/DatePickerCompat;

    invoke-virtual {v1}, Lcom/android/datetimepicker/date/DatePickerCompat;->getFragment()Landroid/app/DialogFragment;

    move-result-object v1

    const-string v2, "tag_date_picker_frag"

    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1297
    :cond_1
    :goto_0
    return-void

    .line 1286
    :cond_2
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mDone:Landroid/widget/Button;

    if-ne v0, p1, :cond_1

    .line 1288
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->recurrenceState:I

    if-nez v0, :cond_3

    .line 1289
    const/4 v0, 0x0

    .line 1294
    :goto_1
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRecurrenceSetListener:Lcom/android/recurrencepicker/RecurrencePickerDialog$OnRecurrenceSetListener;

    invoke-interface {v1, v0}, Lcom/android/recurrencepicker/RecurrencePickerDialog$OnRecurrenceSetListener;->onRecurrenceSet(Ljava/lang/String;)V

    .line 1295
    invoke-virtual {p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->dismiss()V

    goto :goto_0

    .line 1291
    :cond_3
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    invoke-static {v0, v1}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->copyModelToEventRecurrence(Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;Lcom/android/calendarcommon2/EventRecurrence;)V

    .line 1292
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    invoke-virtual {v0}, Lcom/android/calendarcommon2/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 893
    iget v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mFirstDayOfWeek:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 895
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    iput v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mFirstDayOfWeek:I

    .line 897
    :cond_0
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    iget v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mFirstDayOfWeek:I

    invoke-static {v2}, Lcom/android/calendarcommon2/EventRecurrence;->calendarDay2Day(I)I

    move-result v2

    iput v2, v1, Lcom/android/calendarcommon2/EventRecurrence;->wkst:I

    .line 899
    invoke-virtual {p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->requestFeature(I)Z

    .line 903
    invoke-virtual {p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 904
    if-eqz v1, :cond_5

    .line 905
    iget-object v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mTime:Landroid/text/format/Time;

    const-string v3, "bundle_event_start_time"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 907
    const-string v2, "bundle_event_time_zone"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 908
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 909
    iget-object v3, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mTime:Landroid/text/format/Time;

    iput-object v2, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 911
    :cond_1
    iget-object v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 913
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 914
    iget-object v3, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->year:I

    invoke-virtual {v2, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 915
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->month:I

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 916
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    iput v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mNumDaysInMonth:I

    .line 921
    :goto_0
    if-eqz p3, :cond_6

    .line 922
    const-string v0, "bundle_model"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    .line 923
    if-eqz v0, :cond_2

    .line 924
    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    .line 926
    :cond_2
    const-string v0, "bundle_end_count_has_focus"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 927
    const-string v1, "weekly_only_view"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mIsWeeklyOnly:Z

    .line 948
    :cond_3
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->initUi(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 949
    if-eqz v0, :cond_4

    .line 950
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndCount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 953
    :cond_4
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mView:Landroid/view/View;

    return-object v0

    .line 918
    :cond_5
    iget-object v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    goto :goto_0

    .line 928
    :cond_6
    if-eqz v1, :cond_3

    .line 930
    iget-object v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget-object v2, v2, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->weeklyByDayOfWeek:[Z

    iget-object v3, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->weekDay:I

    aput-boolean v6, v2, v3

    .line 931
    const-string v2, "bundle_event_rrule"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 932
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 933
    iget-object v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iput v6, v2, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->recurrenceState:I

    .line 934
    iget-object v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    invoke-virtual {v2, v1}, Lcom/android/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 935
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    iget-object v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    invoke-static {v1, v2}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->copyEventRecurrenceToModel(Lcom/android/calendarcommon2/EventRecurrence;Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;)V

    .line 937
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    iget v1, v1, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-nez v1, :cond_7

    .line 938
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget-object v1, v1, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->weeklyByDayOfWeek:[Z

    iget-object v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->weekDay:I

    aput-boolean v6, v1, v2

    goto :goto_1

    .line 939
    :cond_7
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    iget v1, v1, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-ne v1, v6, :cond_3

    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    iget v1, v1, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 943
    invoke-direct {p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->initMonthlyOnWeekDay()V

    goto :goto_1
.end method

.method public onDateSet(III)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1223
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget-object v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    if-nez v0, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mTime:Landroid/text/format/Time;

    iget-object v2, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    .line 1225
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget-object v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget-object v1, v1, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget-object v2, v2, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iput v3, v2, Landroid/text/format/Time;->second:I

    iput v3, v1, Landroid/text/format/Time;->minute:I

    iput v3, v0, Landroid/text/format/Time;->hour:I

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget-object v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iput p1, v0, Landroid/text/format/Time;->year:I

    .line 1228
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget-object v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iput p2, v0, Landroid/text/format/Time;->month:I

    .line 1229
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget-object v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    iput p3, v0, Landroid/text/format/Time;->monthDay:I

    .line 1230
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget-object v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1231
    invoke-virtual {p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->updateDialog()V

    .line 1232
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/16 v3, 0x2da

    const/16 v2, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1183
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mFreqSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 1184
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iput p3, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->freq:I

    .line 1213
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->updateDialog()V

    .line 1214
    return-void

    .line 1185
    :cond_1
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 1186
    packed-switch p3, :pswitch_data_0

    .line 1204
    :goto_1
    iget-object v3, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndCount:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->end:I

    if-ne v0, v5, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1206
    iget-object v3, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndDateTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->end:I

    if-ne v0, v4, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1208
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mPostEndCount:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget v3, v3, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->end:I

    if-ne v3, v5, :cond_6

    iget-boolean v3, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mHidePostEndCount:Z

    if-nez v3, :cond_6

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1188
    :pswitch_0
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iput v1, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->end:I

    goto :goto_1

    .line 1191
    :pswitch_1
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iput v4, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->end:I

    goto :goto_1

    .line 1194
    :pswitch_2
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iput v5, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->end:I

    .line 1196
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endCount:I

    if-gt v0, v4, :cond_3

    .line 1197
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iput v4, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endCount:I

    .line 1201
    :cond_2
    :goto_5
    invoke-direct {p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->updateEndCountText()V

    goto :goto_1

    .line 1198
    :cond_3
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endCount:I

    if-le v0, v3, :cond_2

    .line 1199
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iput v3, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endCount:I

    goto :goto_5

    :cond_4
    move v0, v2

    .line 1205
    goto :goto_2

    :cond_5
    move v0, v2

    .line 1207
    goto :goto_3

    :cond_6
    move v1, v2

    .line 1210
    goto :goto_4

    .line 1186
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1219
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1027
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1028
    const-string v0, "bundle_model"

    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1029
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndCount:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    const-string v0, "bundle_end_count_has_focus"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1032
    :cond_0
    iget-boolean v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mIsWeeklyOnly:Z

    if-eqz v0, :cond_1

    .line 1033
    const-string v0, "weekly_only_view"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1035
    :cond_1
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 2

    .prologue
    .line 1317
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    .line 1318
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid first day of the week provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1320
    :cond_1
    iput p1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mFirstDayOfWeek:I

    .line 1321
    return-void
.end method

.method public setOnRecurrenceSetListener(Lcom/android/recurrencepicker/RecurrencePickerDialog$OnRecurrenceSetListener;)V
    .locals 0

    .prologue
    .line 1341
    iput-object p1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRecurrenceSetListener:Lcom/android/recurrencepicker/RecurrencePickerDialog$OnRecurrenceSetListener;

    .line 1342
    return-void
.end method

.method public setRtlEnabled(Z)V
    .locals 0

    .prologue
    .line 1306
    iput-boolean p1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRtlEnabled:Z

    .line 1307
    return-void
.end method

.method public updateDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/16 v2, 0x8

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1041
    const-string v0, "%d"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget v4, v4, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->interval:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1042
    iget-object v3, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mInterval:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1043
    iget-object v3, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mInterval:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mFreqSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget v3, v3, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->freq:I

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1047
    iget-object v3, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mWeekGroup:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->freq:I

    if-ne v0, v5, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1048
    iget-object v3, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mWeekGroup2:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->freq:I

    if-ne v0, v5, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1049
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mMonthGroup:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget v3, v3, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->freq:I

    if-ne v3, v6, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1051
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->freq:I

    packed-switch v0, :pswitch_data_0

    .line 1097
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->updateIntervalText()V

    .line 1098
    invoke-direct {p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->updateDoneButtonState()V

    .line 1100
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget v2, v2, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->end:I

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1101
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->end:I

    if-ne v0, v5, :cond_b

    .line 1102
    invoke-direct {p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->getContextInternal()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget-object v2, v2, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endDate:Landroid/text/format/Time;

    .line 1103
    invoke-virtual {v2, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    const/high16 v1, 0x20000

    .line 1102
    invoke-static {v0, v2, v3, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 1104
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndDateTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    :cond_3
    :goto_3
    return-void

    :cond_4
    move v0, v2

    .line 1047
    goto :goto_0

    :cond_5
    move v0, v2

    .line 1048
    goto :goto_1

    .line 1053
    :pswitch_0
    sget v0, Lcom/android/recurrencepicker/R$plurals;->recurrence_interval_daily:I

    iput v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mIntervalResId:I

    goto :goto_2

    .line 1057
    :pswitch_1
    sget v0, Lcom/android/recurrencepicker/R$plurals;->recurrence_interval_weekly:I

    iput v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mIntervalResId:I

    move v0, v1

    .line 1058
    :goto_4
    const/4 v2, 0x7

    if-ge v0, v2, :cond_2

    .line 1059
    iget-object v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mWeekByDayButtons:[Landroid/widget/ToggleButton;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget-object v3, v3, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->weeklyByDayOfWeek:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1058
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1064
    :pswitch_2
    sget v0, Lcom/android/recurrencepicker/R$plurals;->recurrence_interval_monthly:I

    iput v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mIntervalResId:I

    .line 1066
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyRepeat:I

    if-nez v0, :cond_9

    .line 1067
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyByMonthDay:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_8

    .line 1068
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mMonthRepeatByRadioGroup:Landroid/widget/RadioGroup;

    sget v2, Lcom/android/recurrencepicker/R$id;->repeatMonthlyByLastDayOfMonth:I

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 1076
    :cond_6
    :goto_5
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mMonthRepeatByDayOfWeekStr:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1077
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyByNthDayOfWeek:I

    if-nez v0, :cond_7

    .line 1078
    invoke-direct {p0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->initMonthlyOnWeekDay()V

    .line 1081
    :cond_7
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mMonthRepeatByDayOfWeekStrs:[[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget v2, v2, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyByDayOfWeek:I

    aget-object v2, v0, v2

    .line 1085
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyByNthDayOfWeek:I

    if-gez v0, :cond_a

    const/4 v0, 0x5

    .line 1087
    :goto_6
    add-int/lit8 v0, v0, -0x1

    aget-object v0, v2, v0

    iput-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mMonthRepeatByDayOfWeekStr:Ljava/lang/String;

    .line 1089
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mRepeatMonthlyByNthDayOfWeek:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mMonthRepeatByDayOfWeekStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1070
    :cond_8
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mMonthRepeatByRadioGroup:Landroid/widget/RadioGroup;

    sget v2, Lcom/android/recurrencepicker/R$id;->repeatMonthlyByNthDayOfMonth:I

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_5

    .line 1072
    :cond_9
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyRepeat:I

    if-ne v0, v5, :cond_6

    .line 1073
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mMonthRepeatByRadioGroup:Landroid/widget/RadioGroup;

    sget v2, Lcom/android/recurrencepicker/R$id;->repeatMonthlyByNthDayOfTheWeek:I

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_5

    .line 1086
    :cond_a
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->monthlyByNthDayOfWeek:I

    goto :goto_6

    .line 1094
    :pswitch_3
    sget v0, Lcom/android/recurrencepicker/R$plurals;->recurrence_interval_yearly:I

    iput v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mIntervalResId:I

    goto/16 :goto_2

    .line 1106
    :cond_b
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->end:I

    if-ne v0, v6, :cond_3

    .line 1110
    const-string v0, "%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    iget v3, v3, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1111
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndCount:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1112
    iget-object v1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndCount:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1051
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
