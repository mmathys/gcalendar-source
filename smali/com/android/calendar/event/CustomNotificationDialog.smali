.class public Lcom/android/calendar/event/CustomNotificationDialog;
.super Landroid/app/DialogFragment;
.source "CustomNotificationDialog.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;,
        Lcom/android/calendar/event/CustomNotificationDialog$OptionViewHolder;,
        Lcom/android/calendar/event/CustomNotificationDialog$OnNotificationSetListener;
    }
.end annotation


# instance fields
.field private mAllowNotificationsAfterEvent:Z

.field private mAtTime:Ljava/lang/String;

.field private mCount:I

.field private mDefaultTextColor:I

.field private mDoneButton:Landroid/widget/TextView;

.field private mDoneButtonPressed:Z

.field private mEditText:Landroid/widget/EditText;

.field private mErrorTextView:Landroid/widget/TextView;

.field private mListener:Lcom/android/calendar/event/CustomNotificationDialog$OnNotificationSetListener;

.field private mMethodLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMethodOptions:Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;

.field private mMethodValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPlatformTimePickerDialog:Landroid/app/TimePickerDialog;

.field private mResources:Landroid/content/res/Resources;

.field private mRobotoMedium:Landroid/graphics/Typeface;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSelectedTextColor:I

.field private mTime:Lcom/android/calendar/time/Time;

.field private mTimePickerButton:Landroid/widget/TextView;

.field private mTimePickerDialog:Lcom/android/datetimepicker/time/TimePickerDialog;

.field private mUnitMaxValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUnitOptions:Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;

.field private mUnitValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mMethodValues:Ljava/util/List;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mMethodLabels:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mUnitMaxValues:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mUnitValues:Ljava/util/List;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mDoneButtonPressed:Z

    .line 105
    new-instance v0, Lcom/android/calendar/event/CustomNotificationDialog$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/CustomNotificationDialog$1;-><init>(Lcom/android/calendar/event/CustomNotificationDialog;)V

    iput-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mUnitOptions:Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;

    .line 140
    new-instance v0, Lcom/android/calendar/event/CustomNotificationDialog$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/CustomNotificationDialog$2;-><init>(Lcom/android/calendar/event/CustomNotificationDialog;)V

    iput-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mMethodOptions:Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;

    .line 161
    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/event/CustomNotificationDialog;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/event/CustomNotificationDialog;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mDefaultTextColor:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/calendar/event/CustomNotificationDialog;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/event/CustomNotificationDialog;)Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/event/CustomNotificationDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/event/CustomNotificationDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/calendar/event/CustomNotificationDialog;->validateIntervalText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/calendar/event/CustomNotificationDialog;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mMethodLabels:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/calendar/event/CustomNotificationDialog;Z)Z
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mDoneButtonPressed:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/calendar/event/CustomNotificationDialog;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/calendar/event/CustomNotificationDialog;->showTimePicker()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/calendar/event/CustomNotificationDialog;)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mRobotoMedium:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/calendar/event/CustomNotificationDialog;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mSelectedTextColor:I

    return v0
.end method

.method private getMethod()I
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mMethodValues:Ljava/util/List;

    iget-object v1, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mMethodOptions:Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;

    invoke-virtual {v1}, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->getSelectedIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getMinutes()I
    .locals 3

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mUnitValues:Ljava/util/List;

    iget-object v2, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mUnitOptions:Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;

    .line 360
    invoke-virtual {v2}, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->getSelectedIndex()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v1

    .line 361
    invoke-virtual {p0}, Lcom/android/calendar/event/CustomNotificationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "all_day"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mTime:Lcom/android/calendar/time/Time;

    iget v1, v1, Lcom/android/calendar/time/Time;->hour:I

    mul-int/lit8 v1, v1, 0x3c

    iget-object v2, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mTime:Lcom/android/calendar/time/Time;

    iget v2, v2, Lcom/android/calendar/time/Time;->minute:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 364
    :cond_0
    return v0
.end method

.method public static newInstance(ZLjava/lang/String;Z)Lcom/android/calendar/event/CustomNotificationDialog;
    .locals 3

    .prologue
    .line 165
    new-instance v0, Lcom/android/calendar/event/CustomNotificationDialog;

    invoke-direct {v0}, Lcom/android/calendar/event/CustomNotificationDialog;-><init>()V

    .line 167
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/CustomNotificationDialog;->setCancelable(Z)V

    .line 168
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 169
    const-string v2, "all_day"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 170
    const-string v2, "allowed_reminders"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v2, "allow_notifications_after_event"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 172
    invoke-virtual {v0, v1}, Lcom/android/calendar/event/CustomNotificationDialog;->setArguments(Landroid/os/Bundle;)V

    .line 174
    return-object v0
.end method

.method private onTimeSet(II)V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mTime:Lcom/android/calendar/time/Time;

    iput p1, v0, Lcom/android/calendar/time/Time;->hour:I

    .line 414
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mTime:Lcom/android/calendar/time/Time;

    iput p2, v0, Lcom/android/calendar/time/Time;->minute:I

    .line 415
    invoke-direct {p0}, Lcom/android/calendar/event/CustomNotificationDialog;->setTime()V

    .line 416
    invoke-direct {p0}, Lcom/android/calendar/event/CustomNotificationDialog;->validateNotificationTime()V

    .line 417
    return-void
.end method

.method private setTime()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 420
    invoke-virtual {p0}, Lcom/android/calendar/event/CustomNotificationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 421
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0, v7}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v2

    .line 424
    const/16 v0, 0x1401

    .line 425
    invoke-virtual {p0}, Lcom/android/calendar/event/CustomNotificationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 426
    const/16 v0, 0x1481

    .line 428
    :cond_0
    iget-object v4, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mTimePickerButton:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mAtTime:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 429
    invoke-static {v1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    .line 428
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    return-void
.end method

.method private showTimePicker()V
    .locals 6

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/android/calendar/event/CustomNotificationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 326
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mPlatformTimePickerDialog:Landroid/app/TimePickerDialog;

    if-nez v0, :cond_1

    .line 328
    new-instance v0, Landroid/app/TimePickerDialog;

    .line 329
    invoke-virtual {p0}, Lcom/android/calendar/event/CustomNotificationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mTime:Lcom/android/calendar/time/Time;

    iget v3, v3, Lcom/android/calendar/time/Time;->hour:I

    iget-object v4, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mTime:Lcom/android/calendar/time/Time;

    iget v4, v4, Lcom/android/calendar/time/Time;->minute:I

    .line 333
    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mPlatformTimePickerDialog:Landroid/app/TimePickerDialog;

    .line 338
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mPlatformTimePickerDialog:Landroid/app/TimePickerDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mPlatformTimePickerDialog:Landroid/app/TimePickerDialog;

    .line 339
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mPlatformTimePickerDialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 356
    :cond_0
    :goto_1
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mPlatformTimePickerDialog:Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mTime:Lcom/android/calendar/time/Time;

    iget v1, v1, Lcom/android/calendar/time/Time;->hour:I

    iget-object v2, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mTime:Lcom/android/calendar/time/Time;

    iget v2, v2, Lcom/android/calendar/time/Time;->minute:I

    invoke-virtual {v0, v1, v2}, Landroid/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mTimePickerDialog:Lcom/android/datetimepicker/time/TimePickerDialog;

    if-nez v0, :cond_3

    .line 344
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mTime:Lcom/android/calendar/time/Time;

    iget v0, v0, Lcom/android/calendar/time/Time;->hour:I

    iget-object v1, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mTime:Lcom/android/calendar/time/Time;

    iget v1, v1, Lcom/android/calendar/time/Time;->minute:I

    .line 345
    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    .line 344
    invoke-static {p0, v0, v1, v3}, Lcom/android/datetimepicker/time/TimePickerDialog;->newInstance(Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;IIZ)Lcom/android/datetimepicker/time/TimePickerDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mTimePickerDialog:Lcom/android/datetimepicker/time/TimePickerDialog;

    .line 350
    :goto_2
    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 352
    iget-object v1, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mTimePickerDialog:Lcom/android/datetimepicker/time/TimePickerDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mTimePickerDialog:Lcom/android/datetimepicker/time/TimePickerDialog;

    invoke-virtual {v1}, Lcom/android/datetimepicker/time/TimePickerDialog;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mTimePickerDialog:Lcom/android/datetimepicker/time/TimePickerDialog;

    const-string v2, "TimePickerDialog"

    invoke-virtual {v1, v0, v2}, Lcom/android/datetimepicker/time/TimePickerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 347
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mTimePickerDialog:Lcom/android/datetimepicker/time/TimePickerDialog;

    iget-object v1, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mTime:Lcom/android/calendar/time/Time;

    iget v1, v1, Lcom/android/calendar/time/Time;->hour:I

    iget-object v3, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mTime:Lcom/android/calendar/time/Time;

    iget v3, v3, Lcom/android/calendar/time/Time;->minute:I

    invoke-virtual {v0, v1, v3}, Lcom/android/datetimepicker/time/TimePickerDialog;->setStartTime(II)V

    goto :goto_2
.end method

.method private validateIntervalText(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mUnitMaxValues:Ljava/util/List;

    iget-object v1, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mUnitOptions:Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;

    invoke-virtual {v1}, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->getSelectedIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 453
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 454
    if-le v1, v0, :cond_0

    .line 456
    iget-object v1, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mEditText:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mEditText:Landroid/widget/EditText;

    sget v1, Lcom/android/calendar/R$string;->custom_notification_override_announcement:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mEditText:Landroid/widget/EditText;

    .line 459
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    aput-object v4, v2, v3

    .line 458
    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/event/CustomNotificationDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 457
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mDoneButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 468
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mCount:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mUnitOptions:Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;

    invoke-virtual {v0}, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->refreshViewText()V

    .line 474
    return-void

    .line 461
    :cond_0
    if-gez v1, :cond_1

    .line 462
    const/4 v0, 0x1

    .line 463
    :try_start_1
    iget-object v1, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mEditText:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mDoneButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    iput v5, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mCount:I

    .line 471
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mDoneButton:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 466
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/calendar/event/CustomNotificationDialog;->validateNotificationTime()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private validateNotificationTime()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 487
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v0

    .line 489
    iget-object v1, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v1

    .line 490
    iget-boolean v2, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mAllowNotificationsAfterEvent:Z

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/calendar/event/CustomNotificationDialog;->getMinutes()I

    move-result v2

    if-gez v2, :cond_1

    .line 491
    iget-object v2, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 492
    iget-object v2, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mEditText:Landroid/widget/EditText;

    sget v3, Lcom/android/calendar/R$drawable;->edittext_error_background:I

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 493
    iget-object v2, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mDoneButton:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 502
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v5, v0, v5, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 504
    :cond_0
    return-void

    .line 495
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mErrorTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 496
    iget-object v2, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mEditText:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 497
    iget-object v2, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mEditText:Landroid/widget/EditText;

    sget v3, Lcom/android/calendar/R$drawable;->edittext_selected_background:I

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 498
    iget-object v2, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mEditText:Landroid/widget/EditText;

    .line 499
    invoke-virtual {p0}, Lcom/android/calendar/event/CustomNotificationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$color;->google_blue:I

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 498
    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 500
    iget-object v2, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mDoneButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 447
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/CustomNotificationDialog;->validateIntervalText(Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 438
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 394
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 395
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mListener:Lcom/android/calendar/event/CustomNotificationDialog$OnNotificationSetListener;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mListener:Lcom/android/calendar/event/CustomNotificationDialog$OnNotificationSetListener;

    invoke-interface {v0}, Lcom/android/calendar/event/CustomNotificationDialog$OnNotificationSetListener;->onCancel()V

    .line 398
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/calendar/event/CustomNotificationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 180
    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mResources:Landroid/content/res/Resources;

    .line 181
    invoke-virtual {p0}, Lcom/android/calendar/event/CustomNotificationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    .line 182
    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 185
    const-wide/16 v2, 0x0

    .line 186
    const/4 v1, 0x0

    .line 187
    const/4 v0, 0x0

    .line 188
    if-eqz p1, :cond_9

    .line 189
    const-string v0, "atTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 190
    const-string v0, "selectedUnitsIndex"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 191
    const-string v1, "selectedMethodIndex"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    move-wide v4, v2

    move v2, v1

    move v1, v0

    .line 195
    :goto_0
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/android/calendar/R$layout;->custom_notifications_dialog:I

    const/4 v8, 0x0

    invoke-virtual {v0, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 197
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/android/calendar/R$string;->at_time:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mAtTime:Ljava/lang/String;

    .line 199
    invoke-static {v6}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mRobotoMedium:Landroid/graphics/Typeface;

    .line 201
    sget v0, Lcom/android/calendar/R$id;->title:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mRobotoMedium:Landroid/graphics/Typeface;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 203
    sget v0, Lcom/android/calendar/R$id;->done:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mDoneButton:Landroid/widget/TextView;

    .line 204
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mDoneButton:Landroid/widget/TextView;

    new-instance v8, Lcom/android/calendar/event/CustomNotificationDialog$3;

    invoke-direct {v8, p0}, Lcom/android/calendar/event/CustomNotificationDialog$3;-><init>(Lcom/android/calendar/event/CustomNotificationDialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mDoneButton:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mRobotoMedium:Landroid/graphics/Typeface;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 215
    sget v0, Lcom/android/calendar/R$id;->scroll_view:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mScrollView:Landroid/widget/ScrollView;

    .line 217
    sget v0, Lcom/android/calendar/R$id;->interval_error_text:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mErrorTextView:Landroid/widget/TextView;

    .line 218
    sget v0, Lcom/android/calendar/R$id;->interval:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mEditText:Landroid/widget/EditText;

    .line 219
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 220
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mEditText:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mRobotoMedium:Landroid/graphics/Typeface;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 222
    sget v0, Lcom/android/calendar/R$id;->time:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mTimePickerButton:Landroid/widget/TextView;

    .line 223
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mTimePickerButton:Landroid/widget/TextView;

    new-instance v8, Lcom/android/calendar/event/CustomNotificationDialog$4;

    invoke-direct {v8, p0}, Lcom/android/calendar/event/CustomNotificationDialog$4;-><init>(Lcom/android/calendar/event/CustomNotificationDialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mTimePickerButton:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mRobotoMedium:Landroid/graphics/Typeface;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 232
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/android/calendar/R$color;->edit_text_dark:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mDefaultTextColor:I

    .line 233
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/android/calendar/R$color;->google_blue:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mSelectedTextColor:I

    .line 236
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/android/calendar/R$array;->reminder_methods_values:I

    invoke-static {v0, v8}, Lcom/android/calendar/event/segment/ReminderSegment;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mMethodValues:Ljava/util/List;

    .line 238
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/android/calendar/R$array;->reminder_methods_labels:I

    .line 239
    invoke-static {v0, v8}, Lcom/android/calendar/event/segment/ReminderSegment;->loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 240
    const-string v8, "allowed_reminders"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 241
    if-eqz v8, :cond_0

    .line 242
    iget-object v9, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mMethodValues:Ljava/util/List;

    invoke-static {v9, v0, v8}, Lcom/android/calendar/event/ReminderUtils;->reduceMethodList(Ljava/util/List;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mMethodValues:Ljava/util/List;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v8, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mMethodOptions:Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;

    sget v0, Lcom/android/calendar/R$id;->as_notification:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v8, v0}, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->add(Landroid/view/ViewGroup;)V

    .line 247
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mMethodLabels:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/android/calendar/R$string;->as_notification:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mMethodValues:Ljava/util/List;

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    iget-object v8, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mMethodOptions:Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;

    sget v0, Lcom/android/calendar/R$id;->as_email:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v8, v0}, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->add(Landroid/view/ViewGroup;)V

    .line 252
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mMethodLabels:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/android/calendar/R$string;->as_email:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mMethodOptions:Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;

    invoke-virtual {v0}, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 256
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mMethodOptions:Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;

    invoke-virtual {v0, v2}, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->setSelection(I)V

    .line 259
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mMethodOptions:Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;

    invoke-virtual {v0}, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_4

    .line 261
    sget v0, Lcom/android/calendar/R$id;->notification_methods_layout:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 264
    const-string v0, "all_day"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 265
    sget v0, Lcom/android/calendar/R$id;->time_divider:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 271
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/calendar/R$array;->custom_notification_interval_values:I

    invoke-static {v0, v2}, Lcom/android/calendar/event/segment/ReminderSegment;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mUnitValues:Ljava/util/List;

    .line 273
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/calendar/R$array;->custom_notification_interval_max_values:I

    invoke-static {v0, v2}, Lcom/android/calendar/event/segment/ReminderSegment;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mUnitMaxValues:Ljava/util/List;

    .line 276
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-direct {v0}, Lcom/android/calendar/time/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mTime:Lcom/android/calendar/time/Time;

    .line 279
    const-string v0, "all_day"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 280
    sget v0, Lcom/android/calendar/R$id;->minutes:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 281
    sget v0, Lcom/android/calendar/R$id;->hours:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mUnitValues:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 283
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mUnitValues:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mUnitMaxValues:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 285
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mUnitMaxValues:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 286
    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-eqz v0, :cond_7

    .line 287
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0, v4, v5}, Lcom/android/calendar/time/Time;->set(J)V

    .line 291
    :goto_2
    invoke-direct {p0}, Lcom/android/calendar/event/CustomNotificationDialog;->setTime()V

    .line 299
    :goto_3
    iget-object v2, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mUnitOptions:Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;

    sget v0, Lcom/android/calendar/R$id;->days:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->add(Landroid/view/ViewGroup;)V

    .line 300
    iget-object v2, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mUnitOptions:Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;

    sget v0, Lcom/android/calendar/R$id;->weeks:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->add(Landroid/view/ViewGroup;)V

    .line 302
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mUnitOptions:Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->setSelection(I)V

    .line 304
    if-nez p1, :cond_5

    .line 305
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mEditText:Landroid/widget/EditText;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 308
    :cond_5
    invoke-virtual {p0}, Lcom/android/calendar/event/CustomNotificationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "allow_notifications_after_event"

    .line 309
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mAllowNotificationsAfterEvent:Z

    .line 311
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 312
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 314
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 315
    return-object v0

    .line 267
    :cond_6
    sget v0, Lcom/android/calendar/R$id;->unit_divider:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 289
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mTime:Lcom/android/calendar/time/Time;

    const/16 v2, 0x9

    iput v2, v0, Lcom/android/calendar/time/Time;->hour:I

    goto :goto_2

    .line 294
    :cond_8
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mTimePickerButton:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    sget v0, Lcom/android/calendar/R$id;->time_divider:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object v2, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mUnitOptions:Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;

    sget v0, Lcom/android/calendar/R$id;->minutes:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->add(Landroid/view/ViewGroup;)V

    .line 297
    iget-object v2, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mUnitOptions:Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;

    sget v0, Lcom/android/calendar/R$id;->hours:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->add(Landroid/view/ViewGroup;)V

    goto/16 :goto_3

    :cond_9
    move-wide v4, v2

    move v2, v1

    move v1, v0

    goto/16 :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 381
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 382
    invoke-virtual {p0}, Lcom/android/calendar/event/CustomNotificationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 383
    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mListener:Lcom/android/calendar/event/CustomNotificationDialog$OnNotificationSetListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mDoneButtonPressed:Z

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mListener:Lcom/android/calendar/event/CustomNotificationDialog$OnNotificationSetListener;

    invoke-direct {p0}, Lcom/android/calendar/event/CustomNotificationDialog;->getMinutes()I

    move-result v1

    invoke-direct {p0}, Lcom/android/calendar/event/CustomNotificationDialog;->getMethod()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/calendar/event/CustomNotificationDialog$OnNotificationSetListener;->onCustomNotificationSet(II)V

    .line 390
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 373
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 374
    const-string v0, "selectedUnitsIndex"

    iget-object v1, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mUnitOptions:Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;

    invoke-virtual {v1}, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->getSelectedIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 375
    const-string v0, "selectedMethodIndex"

    iget-object v1, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mMethodOptions:Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;

    invoke-virtual {v1}, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->getSelectedIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 376
    const-string v0, "atTime"

    iget-object v1, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mTime:Lcom/android/calendar/time/Time;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 377
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 443
    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 0

    .prologue
    .line 404
    invoke-direct {p0, p2, p3}, Lcom/android/calendar/event/CustomNotificationDialog;->onTimeSet(II)V

    .line 405
    return-void
.end method

.method public onTimeSet(Lcom/android/datetimepicker/time/RadialPickerLayout;II)V
    .locals 0

    .prologue
    .line 409
    invoke-direct {p0, p2, p3}, Lcom/android/calendar/event/CustomNotificationDialog;->onTimeSet(II)V

    .line 410
    return-void
.end method

.method public setOnNotificationSetListener(Lcom/android/calendar/event/CustomNotificationDialog$OnNotificationSetListener;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/calendar/event/CustomNotificationDialog;->mListener:Lcom/android/calendar/event/CustomNotificationDialog$OnNotificationSetListener;

    .line 320
    return-void
.end method
