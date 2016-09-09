.class public Lcom/android/datetimepicker/date/DatePickerDialog;
.super Lcom/android/datetimepicker/DialogFragmentWithListener;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/datetimepicker/date/DatePickerController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/datetimepicker/date/DatePickerDialog$OnDateChangedListener;,
        Lcom/android/datetimepicker/date/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static DAY_FORMAT:Ljava/text/SimpleDateFormat;

.field private static YEAR_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field private mAnimator:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

.field private final mCalendar:Ljava/util/Calendar;

.field private mCallBack:Lcom/android/datetimepicker/date/DatePickerDialog$OnDateSetListener;

.field private mCurrentView:I

.field private mDayOfWeekView:Landroid/widget/TextView;

.field private mDayPickerDescription:Ljava/lang/String;

.field private mDayPickerView:Lcom/android/datetimepicker/date/DayPickerView;

.field private mDelayAnimation:Z

.field private mDoneButton:Landroid/widget/Button;

.field private mHapticFeedbackController:Lcom/android/datetimepicker/HapticFeedbackController;

.field private mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/datetimepicker/date/DatePickerDialog$OnDateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxDate:Ljava/util/Calendar;

.field private mMaxYear:I

.field private mMinDate:Ljava/util/Calendar;

.field private mMinYear:I

.field private mMonthAndDayView:Landroid/widget/LinearLayout;

.field private mRtlEnabled:Z

.field private mSelectDay:Ljava/lang/String;

.field private mSelectYear:Ljava/lang/String;

.field private mSelectedDayTextView:Landroid/widget/TextView;

.field private mSelectedMonthTextView:Landroid/widget/TextView;

.field private mWeekStart:I

.field private mYearPickerDescription:Ljava/lang/String;

.field private mYearPickerView:Lcom/android/datetimepicker/date/YearPickerView;

.field private mYearView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 82
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/datetimepicker/date/DatePickerDialog;->YEAR_FORMAT:Ljava/text/SimpleDateFormat;

    .line 83
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/datetimepicker/date/DatePickerDialog;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/datetimepicker/DialogFragmentWithListener;-><init>()V

    .line 85
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mListeners:Ljava/util/HashSet;

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCurrentView:I

    .line 102
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mWeekStart:I

    .line 103
    const/16 v0, 0x76c

    iput v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mMinYear:I

    .line 104
    const/16 v0, 0x834

    iput v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mMaxYear:I

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mDelayAnimation:Z

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mRtlEnabled:Z

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/android/datetimepicker/date/DatePickerDialog;)Lcom/android/datetimepicker/date/DatePickerDialog$OnDateSetListener;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCallBack:Lcom/android/datetimepicker/date/DatePickerDialog$OnDateSetListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/datetimepicker/date/DatePickerDialog;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method private adjustDayInMonthIfNeeded(II)V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 467
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 468
    invoke-static {p1, p2}, Lcom/android/datetimepicker/Utils;->getDaysInMonth(II)I

    move-result v1

    .line 469
    if-le v0, v1, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 472
    :cond_0
    return-void
.end method

.method public static newInstance(Lcom/android/datetimepicker/date/DatePickerDialog$OnDateSetListener;III)Lcom/android/datetimepicker/date/DatePickerDialog;
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lcom/android/datetimepicker/date/DatePickerDialog;

    invoke-direct {v0}, Lcom/android/datetimepicker/date/DatePickerDialog;-><init>()V

    .line 156
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/datetimepicker/date/DatePickerDialog;->initialize(Lcom/android/datetimepicker/date/DatePickerDialog$OnDateSetListener;III)V

    .line 157
    return-object v0
.end method

.method private setCurrentView(I)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1f4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 323
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 325
    packed-switch p1, :pswitch_data_0

    .line 367
    :goto_0
    return-void

    .line 327
    :pswitch_0
    iget-object v2, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    const v3, 0x3f666666    # 0.9f

    const v4, 0x3f866666    # 1.05f

    invoke-static {v2, v3, v4}, Lcom/android/datetimepicker/Utils;->getPulseAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 329
    iget-boolean v3, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mDelayAnimation:Z

    if-eqz v3, :cond_0

    .line 330
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 331
    iput-boolean v5, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mDelayAnimation:Z

    .line 333
    :cond_0
    iget-object v3, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/android/datetimepicker/date/DayPickerView;

    invoke-virtual {v3}, Lcom/android/datetimepicker/date/DayPickerView;->onDateChanged()V

    .line 334
    iget v3, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCurrentView:I

    if-eq v3, p1, :cond_1

    .line 335
    iget-object v3, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 336
    iget-object v3, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mYearView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 337
    iget-object v3, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v3, v5}, Lcom/android/datetimepicker/date/AccessibleDateAnimator;->setDisplayedChild(I)V

    .line 338
    iput p1, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCurrentView:I

    .line 340
    :cond_1
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 342
    const/16 v2, 0x10

    .line 343
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/DatePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    iget-object v2, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mDayPickerDescription:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/datetimepicker/date/AccessibleDateAnimator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    iget-object v1, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mSelectDay:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 348
    :pswitch_1
    iget-object v2, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mYearView:Landroid/widget/TextView;

    const v3, 0x3f59999a    # 0.85f

    const v4, 0x3f8ccccd    # 1.1f

    invoke-static {v2, v3, v4}, Lcom/android/datetimepicker/Utils;->getPulseAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 349
    iget-boolean v3, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mDelayAnimation:Z

    if-eqz v3, :cond_2

    .line 350
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 351
    iput-boolean v5, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mDelayAnimation:Z

    .line 353
    :cond_2
    iget-object v3, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mYearPickerView:Lcom/android/datetimepicker/date/YearPickerView;

    invoke-virtual {v3}, Lcom/android/datetimepicker/date/YearPickerView;->onDateChanged()V

    .line 354
    iget v3, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCurrentView:I

    if-eq v3, p1, :cond_3

    .line 355
    iget-object v3, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 356
    iget-object v3, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mYearView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 357
    iget-object v3, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v3, v6}, Lcom/android/datetimepicker/date/AccessibleDateAnimator;->setDisplayedChild(I)V

    .line 358
    iput p1, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCurrentView:I

    .line 360
    :cond_3
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 362
    sget-object v2, Lcom/android/datetimepicker/date/DatePickerDialog;->YEAR_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    iget-object v2, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mYearPickerDescription:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/datetimepicker/date/AccessibleDateAnimator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    iget-object v1, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mSelectYear:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateDisplay(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 370
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mDayOfWeekView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mDayOfWeekView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x7

    .line 372
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 371
    invoke-virtual {v1, v2, v4, v3}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 372
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 371
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mSelectedMonthTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    .line 376
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 375
    invoke-virtual {v1, v4, v2, v3}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 376
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 375
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mSelectedDayTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/android/datetimepicker/date/DatePickerDialog;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mYearView:Landroid/widget/TextView;

    sget-object v1, Lcom/android/datetimepicker/date/DatePickerDialog;->YEAR_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 382
    iget-object v2, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v2, v0, v1}, Lcom/android/datetimepicker/date/AccessibleDateAnimator;->setDateMillis(J)V

    .line 383
    const/16 v2, 0x18

    .line 384
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/DatePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    .line 385
    iget-object v3, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 387
    if-eqz p1, :cond_1

    .line 388
    const/16 v2, 0x14

    .line 389
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/DatePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    invoke-static {v1, v0}, Lcom/android/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 392
    :cond_1
    return-void
.end method

.method private updatePickers()V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/datetimepicker/date/DatePickerDialog$OnDateChangedListener;

    .line 504
    invoke-interface {v0}, Lcom/android/datetimepicker/date/DatePickerDialog$OnDateChangedListener;->onDateChanged()V

    goto :goto_0

    .line 506
    :cond_0
    return-void
.end method


# virtual methods
.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mWeekStart:I

    return v0
.end method

.method public getMaxDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMaxYear()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mMaxYear:I

    return v0
.end method

.method public getMinDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMinYear()I
    .locals 1

    .prologue
    .line 516
    iget v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mMinYear:I

    return v0
.end method

.method public getSelectedDay()Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;
    .locals 2

    .prologue
    .line 511
    new-instance v0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    iget-object v1, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-direct {v0, v1}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public initialize(Lcom/android/datetimepicker/date/DatePickerDialog$OnDateSetListener;III)V
    .locals 2

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCallBack:Lcom/android/datetimepicker/date/DatePickerDialog$OnDateSetListener;

    .line 162
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 163
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 164
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 165
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/DatePickerDialog;->tryVibrate()V

    .line 477
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/datetimepicker/R$id;->date_picker_year:I

    if-ne v0, v1, :cond_1

    .line 478
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/datetimepicker/date/DatePickerDialog;->setCurrentView(I)V

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/datetimepicker/R$id;->date_picker_month_and_day:I

    if-ne v0, v1, :cond_0

    .line 480
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/datetimepicker/date/DatePickerDialog;->setCurrentView(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/android/datetimepicker/DialogFragmentWithListener;->onCreate(Landroid/os/Bundle;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/DatePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 173
    if-eqz p1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    const-string v2, "year"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 175
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    const-string v2, "month"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 176
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    const-string v2, "day"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 178
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/android/datetimepicker/DialogFragmentWithListener;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    .line 185
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/DatePickerDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 186
    instance-of v2, v0, Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;

    if-eqz v2, :cond_0

    .line 187
    new-instance v2, Lcom/android/datetimepicker/date/DatePickerCompat$LibraryDateSetListenerWrapper;

    check-cast v0, Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;

    invoke-direct {v2, v0}, Lcom/android/datetimepicker/date/DatePickerCompat$LibraryDateSetListenerWrapper;-><init>(Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;)V

    iput-object v2, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCallBack:Lcom/android/datetimepicker/date/DatePickerDialog$OnDateSetListener;

    .line 190
    :cond_0
    return-object v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    .line 222
    const-string v0, "DatePickerDialog"

    const-string v1, "onCreateView: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/DatePickerDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 225
    sget v0, Lcom/android/datetimepicker/R$layout;->date_picker_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 227
    sget v0, Lcom/android/datetimepicker/R$id;->date_picker_header:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mDayOfWeekView:Landroid/widget/TextView;

    .line 228
    sget v0, Lcom/android/datetimepicker/R$id;->date_picker_month_and_day:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    .line 229
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    sget v0, Lcom/android/datetimepicker/R$id;->date_picker_month:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mSelectedMonthTextView:Landroid/widget/TextView;

    .line 231
    sget v0, Lcom/android/datetimepicker/R$id;->date_picker_day:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mSelectedDayTextView:Landroid/widget/TextView;

    .line 232
    sget v0, Lcom/android/datetimepicker/R$id;->date_picker_year:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mYearView:Landroid/widget/TextView;

    .line 233
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mYearView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    const/4 v2, -0x1

    .line 236
    const/4 v1, 0x0

    .line 237
    const/4 v0, 0x0

    .line 238
    if-eqz p3, :cond_1

    .line 239
    const-string v0, "week_start"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mWeekStart:I

    .line 240
    const-string v0, "year_start"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mMinYear:I

    .line 241
    const-string v0, "year_end"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mMaxYear:I

    .line 242
    const-string v0, "current_view"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 243
    const-string v1, "list_position"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 244
    const-string v1, "list_position_offset"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 245
    const-string v3, "min_date"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 247
    const-string v5, "min_date"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 248
    invoke-virtual {p0, v3}, Lcom/android/datetimepicker/date/DatePickerDialog;->setMinDate(Ljava/util/Calendar;)V

    .line 250
    :cond_0
    const-string v3, "max_date"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 252
    const-string v5, "max_date"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 253
    invoke-virtual {p0, v3}, Lcom/android/datetimepicker/date/DatePickerDialog;->setMaxDate(Ljava/util/Calendar;)V

    :cond_1
    move v3, v2

    move v2, v1

    move v1, v0

    .line 257
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/DatePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 258
    new-instance v0, Lcom/android/datetimepicker/date/SimpleDayPickerView;

    invoke-direct {v0, v5, p0}, Lcom/android/datetimepicker/date/SimpleDayPickerView;-><init>(Landroid/content/Context;Lcom/android/datetimepicker/date/DatePickerController;)V

    iput-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/android/datetimepicker/date/DayPickerView;

    .line 259
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/android/datetimepicker/date/DayPickerView;

    iget-boolean v6, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mRtlEnabled:Z

    invoke-virtual {v0, v6}, Lcom/android/datetimepicker/date/DayPickerView;->setRtlEnabled(Z)V

    .line 260
    new-instance v0, Lcom/android/datetimepicker/date/YearPickerView;

    invoke-direct {v0, v5, p0}, Lcom/android/datetimepicker/date/YearPickerView;-><init>(Landroid/content/Context;Lcom/android/datetimepicker/date/DatePickerController;)V

    iput-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mYearPickerView:Lcom/android/datetimepicker/date/YearPickerView;

    .line 262
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/DatePickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 263
    sget v6, Lcom/android/datetimepicker/R$string;->day_picker_description:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mDayPickerDescription:Ljava/lang/String;

    .line 264
    sget v6, Lcom/android/datetimepicker/R$string;->select_day:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mSelectDay:Ljava/lang/String;

    .line 265
    sget v6, Lcom/android/datetimepicker/R$string;->year_picker_description:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mYearPickerDescription:Ljava/lang/String;

    .line 266
    sget v6, Lcom/android/datetimepicker/R$string;->select_year:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mSelectYear:Ljava/lang/String;

    .line 268
    sget v0, Lcom/android/datetimepicker/R$id;->animator:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    iput-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    .line 269
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    iget-object v6, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/android/datetimepicker/date/DayPickerView;

    invoke-virtual {v0, v6}, Lcom/android/datetimepicker/date/AccessibleDateAnimator;->addView(Landroid/view/View;)V

    .line 270
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    iget-object v6, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mYearPickerView:Lcom/android/datetimepicker/date/YearPickerView;

    invoke-virtual {v0, v6}, Lcom/android/datetimepicker/date/AccessibleDateAnimator;->addView(Landroid/view/View;)V

    .line 271
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    iget-object v6, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/android/datetimepicker/date/AccessibleDateAnimator;->setDateMillis(J)V

    .line 273
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 274
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 275
    iget-object v6, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v6, v0}, Lcom/android/datetimepicker/date/AccessibleDateAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 277
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 278
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 279
    iget-object v6, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mAnimator:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v6, v0}, Lcom/android/datetimepicker/date/AccessibleDateAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 281
    sget v0, Lcom/android/datetimepicker/R$id;->done:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mDoneButton:Landroid/widget/Button;

    .line 282
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mDoneButton:Landroid/widget/Button;

    new-instance v6, Lcom/android/datetimepicker/date/DatePickerDialog$1;

    invoke-direct {v6, p0}, Lcom/android/datetimepicker/date/DatePickerDialog$1;-><init>(Lcom/android/datetimepicker/date/DatePickerDialog;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/datetimepicker/date/DatePickerDialog;->updateDisplay(Z)V

    .line 296
    invoke-direct {p0, v1}, Lcom/android/datetimepicker/date/DatePickerDialog;->setCurrentView(I)V

    .line 298
    const/4 v0, -0x1

    if-eq v3, v0, :cond_2

    .line 299
    if-nez v1, :cond_3

    .line 300
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/android/datetimepicker/date/DayPickerView;

    invoke-virtual {v0, v3}, Lcom/android/datetimepicker/date/DayPickerView;->postSetSelection(I)V

    .line 306
    :cond_2
    :goto_0
    new-instance v0, Lcom/android/datetimepicker/HapticFeedbackController;

    invoke-direct {v0, v5}, Lcom/android/datetimepicker/HapticFeedbackController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mHapticFeedbackController:Lcom/android/datetimepicker/HapticFeedbackController;

    .line 307
    return-object v4

    .line 301
    :cond_3
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mYearPickerView:Lcom/android/datetimepicker/date/YearPickerView;

    invoke-virtual {v0, v3, v2}, Lcom/android/datetimepicker/date/YearPickerView;->postSetSelectionFromTop(II)V

    goto :goto_0
.end method

.method public onDayOfMonthSelected(III)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 495
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 496
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 497
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 498
    invoke-direct {p0}, Lcom/android/datetimepicker/date/DatePickerDialog;->updatePickers()V

    .line 499
    invoke-direct {p0, v2}, Lcom/android/datetimepicker/date/DatePickerDialog;->updateDisplay(Z)V

    .line 500
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 318
    invoke-super {p0}, Lcom/android/datetimepicker/DialogFragmentWithListener;->onPause()V

    .line 319
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mHapticFeedbackController:Lcom/android/datetimepicker/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/android/datetimepicker/HapticFeedbackController;->stop()V

    .line 320
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 312
    invoke-super {p0}, Lcom/android/datetimepicker/DialogFragmentWithListener;->onResume()V

    .line 313
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mHapticFeedbackController:Lcom/android/datetimepicker/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/android/datetimepicker/HapticFeedbackController;->start()V

    .line 314
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 195
    invoke-super {p0, p1}, Lcom/android/datetimepicker/DialogFragmentWithListener;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 196
    const-string v0, "year"

    iget-object v1, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    const-string v0, "month"

    iget-object v1, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    const-string v0, "day"

    iget-object v1, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    const-string v0, "week_start"

    iget v1, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mWeekStart:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    const-string v0, "year_start"

    iget v1, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mMinYear:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    const-string v0, "year_end"

    iget v1, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mMaxYear:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    const-string v0, "current_view"

    iget v1, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCurrentView:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    const/4 v0, -0x1

    .line 204
    iget v1, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCurrentView:I

    if-nez v1, :cond_3

    .line 205
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/android/datetimepicker/date/DayPickerView;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/DayPickerView;->getMostVisiblePosition()I

    move-result v0

    .line 210
    :cond_0
    :goto_0
    const-string v1, "list_position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/DatePickerDialog;->getMinDate()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 212
    const-string v0, "min_date"

    invoke-virtual {p0}, Lcom/android/datetimepicker/date/DatePickerDialog;->getMinDate()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 214
    :cond_1
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/DatePickerDialog;->getMaxDate()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 215
    const-string v0, "max_date"

    invoke-virtual {p0}, Lcom/android/datetimepicker/date/DatePickerDialog;->getMaxDate()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 217
    :cond_2
    return-void

    .line 206
    :cond_3
    iget v1, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCurrentView:I

    if-ne v1, v3, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mYearPickerView:Lcom/android/datetimepicker/date/YearPickerView;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/YearPickerView;->getFirstVisiblePosition()I

    move-result v0

    .line 208
    const-string v1, "list_position_offset"

    iget-object v2, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mYearPickerView:Lcom/android/datetimepicker/date/YearPickerView;

    invoke-virtual {v2}, Lcom/android/datetimepicker/date/YearPickerView;->getFirstPositionOffset()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onYearSelected(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 486
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/datetimepicker/date/DatePickerDialog;->adjustDayInMonthIfNeeded(II)V

    .line 487
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 488
    invoke-direct {p0}, Lcom/android/datetimepicker/date/DatePickerDialog;->updatePickers()V

    .line 489
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/datetimepicker/date/DatePickerDialog;->setCurrentView(I)V

    .line 490
    invoke-direct {p0, v2}, Lcom/android/datetimepicker/date/DatePickerDialog;->updateDisplay(Z)V

    .line 491
    return-void
.end method

.method public registerOnDateChangedListener(Lcom/android/datetimepicker/date/DatePickerDialog$OnDateChangedListener;)V
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 532
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 2

    .prologue
    .line 395
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    .line 396
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value must be between Calendar.SUNDAY and Calendar.SATURDAY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_1
    iput p1, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mWeekStart:I

    .line 400
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/android/datetimepicker/date/DayPickerView;

    if-eqz v0, :cond_2

    .line 401
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/android/datetimepicker/date/DayPickerView;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/DayPickerView;->onChange()V

    .line 403
    :cond_2
    return-void
.end method

.method public setMaxDate(Ljava/util/Calendar;)V
    .locals 1

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mMaxDate:Ljava/util/Calendar;

    .line 445
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/android/datetimepicker/date/DayPickerView;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/android/datetimepicker/date/DayPickerView;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/DayPickerView;->onChange()V

    .line 448
    :cond_0
    return-void
.end method

.method public setMinDate(Ljava/util/Calendar;)V
    .locals 1

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mMinDate:Ljava/util/Calendar;

    .line 424
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/android/datetimepicker/date/DayPickerView;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/android/datetimepicker/date/DayPickerView;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/DayPickerView;->onChange()V

    .line 427
    :cond_0
    return-void
.end method

.method public setOnDateSetListener(Lcom/android/datetimepicker/date/DatePickerDialog$OnDateSetListener;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mCallBack:Lcom/android/datetimepicker/date/DatePickerDialog$OnDateSetListener;

    .line 460
    return-void
.end method

.method public setRtlEnabled(Z)V
    .locals 0

    .prologue
    .line 550
    iput-boolean p1, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mRtlEnabled:Z

    .line 551
    return-void
.end method

.method public setYearRange(II)V
    .locals 2

    .prologue
    .line 406
    if-gt p2, p1, :cond_0

    .line 407
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Year end must be larger than year start"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_0
    iput p1, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mMinYear:I

    .line 410
    iput p2, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mMaxYear:I

    .line 411
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/android/datetimepicker/date/DayPickerView;

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/android/datetimepicker/date/DayPickerView;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/DayPickerView;->onChange()V

    .line 414
    :cond_1
    return-void
.end method

.method public tryVibrate()V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerDialog;->mHapticFeedbackController:Lcom/android/datetimepicker/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/android/datetimepicker/HapticFeedbackController;->tryVibrate()V

    .line 542
    return-void
.end method
