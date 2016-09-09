.class public Lcom/android/datetimepicker/date/DatePickerCompat;
.super Ljava/lang/Object;
.source "DatePickerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;,
        Lcom/android/datetimepicker/date/DatePickerCompat$LibraryDateSetListenerWrapper;,
        Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDateSetListenerWrapper;,
        Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;
    }
.end annotation


# instance fields
.field private final mDateListener:Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;

.field private mDialogFragmentListener:Lcom/android/datetimepicker/DialogFragmentListener;

.field private mFirstDayOfWeek:I

.field private mFragment:Landroid/app/DialogFragment;

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mRtlEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mFirstDayOfWeek:I

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mRtlEnabled:Z

    .line 58
    iput-object p1, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mDateListener:Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;

    .line 59
    return-void
.end method


# virtual methods
.method public getFragment()Landroid/app/DialogFragment;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mFragment:Landroid/app/DialogFragment;

    return-object v0
.end method

.method public initialize(III)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 100
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mFragment:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 104
    :cond_0
    iget v0, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mFirstDayOfWeek:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 105
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    .line 108
    :goto_0
    invoke-static {}, Lcom/android/datetimepicker/Utils;->isRunningLOrLater()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    invoke-static {p1, p2, p3}, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->newInstance(III)Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;

    move-result-object v1

    .line 111
    new-instance v2, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDateSetListenerWrapper;

    iget-object v3, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mDateListener:Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;

    invoke-direct {v2, v3}, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDateSetListenerWrapper;-><init>(Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;)V

    invoke-virtual {v1, v2}, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->setOnDateSetListener(Landroid/app/DatePickerDialog$OnDateSetListener;)V

    .line 112
    iget-object v2, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mDialogFragmentListener:Lcom/android/datetimepicker/DialogFragmentListener;

    invoke-virtual {v1, v2}, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->setDialogFragmentListener(Lcom/android/datetimepicker/DialogFragmentListener;)V

    .line 113
    iget-object v2, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->setMinDate(Ljava/util/Calendar;)V

    .line 114
    iget-object v2, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->setMaxDate(Ljava/util/Calendar;)V

    .line 115
    invoke-virtual {v1, v0}, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->setFirstDayOfWeek(I)V

    .line 116
    iput-object v1, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mFragment:Landroid/app/DialogFragment;

    .line 135
    :goto_1
    return-void

    .line 106
    :cond_1
    iget v0, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mFirstDayOfWeek:I

    goto :goto_0

    .line 122
    :cond_2
    new-instance v1, Lcom/android/datetimepicker/date/DatePickerCompat$LibraryDateSetListenerWrapper;

    iget-object v2, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mDateListener:Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;

    invoke-direct {v1, v2}, Lcom/android/datetimepicker/date/DatePickerCompat$LibraryDateSetListenerWrapper;-><init>(Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;)V

    .line 123
    invoke-static {v1, p1, p2, p3}, Lcom/android/datetimepicker/date/DatePickerDialog;->newInstance(Lcom/android/datetimepicker/date/DatePickerDialog$OnDateSetListener;III)Lcom/android/datetimepicker/date/DatePickerDialog;

    move-result-object v2

    .line 125
    invoke-virtual {v2, v0}, Lcom/android/datetimepicker/date/DatePickerDialog;->setFirstDayOfWeek(I)V

    .line 126
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mMinDate:Ljava/util/Calendar;

    if-eqz v0, :cond_3

    .line 127
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    :goto_2
    iget-object v1, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mMaxDate:Ljava/util/Calendar;

    if-eqz v1, :cond_4

    .line 128
    iget-object v1, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 126
    :goto_3
    invoke-virtual {v2, v0, v1}, Lcom/android/datetimepicker/date/DatePickerDialog;->setYearRange(II)V

    .line 129
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mDialogFragmentListener:Lcom/android/datetimepicker/DialogFragmentListener;

    invoke-virtual {v2, v0}, Lcom/android/datetimepicker/date/DatePickerDialog;->setDialogFragmentListener(Lcom/android/datetimepicker/DialogFragmentListener;)V

    .line 130
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Lcom/android/datetimepicker/date/DatePickerDialog;->setMinDate(Ljava/util/Calendar;)V

    .line 131
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Lcom/android/datetimepicker/date/DatePickerDialog;->setMaxDate(Ljava/util/Calendar;)V

    .line 132
    iget-boolean v0, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mRtlEnabled:Z

    invoke-virtual {v2, v0}, Lcom/android/datetimepicker/date/DatePickerDialog;->setRtlEnabled(Z)V

    .line 133
    iput-object v2, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mFragment:Landroid/app/DialogFragment;

    goto :goto_1

    .line 127
    :cond_3
    const/16 v0, 0x7b2

    goto :goto_2

    .line 128
    :cond_4
    const/16 v1, 0x7f4

    goto :goto_3
.end method

.method public initialize(Landroid/app/DialogFragment;)V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mFragment:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 152
    :cond_0
    instance-of v0, p1, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 153
    check-cast v0, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;

    new-instance v1, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDateSetListenerWrapper;

    iget-object v2, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mDateListener:Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;

    invoke-direct {v1, v2}, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDateSetListenerWrapper;-><init>(Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;)V

    .line 154
    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->setOnDateSetListener(Landroid/app/DatePickerDialog$OnDateSetListener;)V

    .line 159
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mFragment:Landroid/app/DialogFragment;

    .line 160
    return-void

    .line 155
    :cond_2
    instance-of v0, p1, Lcom/android/datetimepicker/date/DatePickerDialog;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 156
    check-cast v0, Lcom/android/datetimepicker/date/DatePickerDialog;

    new-instance v1, Lcom/android/datetimepicker/date/DatePickerCompat$LibraryDateSetListenerWrapper;

    iget-object v2, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mDateListener:Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;

    invoke-direct {v1, v2}, Lcom/android/datetimepicker/date/DatePickerCompat$LibraryDateSetListenerWrapper;-><init>(Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;)V

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/date/DatePickerDialog;->setOnDateSetListener(Lcom/android/datetimepicker/date/DatePickerDialog$OnDateSetListener;)V

    goto :goto_0
.end method

.method public setDialogFragmentListener(Lcom/android/datetimepicker/DialogFragmentListener;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mDialogFragmentListener:Lcom/android/datetimepicker/DialogFragmentListener;

    .line 67
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mFirstDayOfWeek:I

    .line 93
    return-void
.end method

.method public setMinDate(Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mMinDate:Ljava/util/Calendar;

    .line 75
    return-void
.end method

.method public setRtlEnabled(Z)V
    .locals 0

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mRtlEnabled:Z

    .line 145
    return-void
.end method

.method public setTargetFragment(Landroid/app/Fragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FragmentT:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;",
            ">(TFragmentT;)V"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mFragment:Landroid/app/DialogFragment;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to set target fragment before #initialize(...) was called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/datetimepicker/date/DatePickerCompat;->mFragment:Landroid/app/DialogFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 174
    return-void
.end method
