.class public Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;
.super Lcom/android/datetimepicker/DialogFragmentWithListener;
.source "DatePickerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/datetimepicker/date/DatePickerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultDatePickerFragment"
.end annotation


# instance fields
.field private mDateListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mFirstDayOfWeek:I

.field private mMaxDateMillis:J

.field private mMinDateMillis:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 223
    invoke-direct {p0}, Lcom/android/datetimepicker/DialogFragmentWithListener;-><init>()V

    .line 232
    iput-wide v0, p0, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->mMinDateMillis:J

    .line 233
    iput-wide v0, p0, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->mMaxDateMillis:J

    .line 234
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->mFirstDayOfWeek:I

    return-void
.end method

.method public static newInstance(III)Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;
    .locals 3

    .prologue
    .line 237
    new-instance v0, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;

    invoke-direct {v0}, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;-><init>()V

    .line 238
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 239
    const-string v2, "year"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 240
    const-string v2, "month"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    const-string v2, "day"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 242
    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 243
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 270
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 271
    const-string v1, "year"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 272
    const-string v1, "month"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 273
    const-string v1, "day"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 275
    if-eqz p1, :cond_0

    .line 276
    const-string v0, "first_day_of_week"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->mFirstDayOfWeek:I

    .line 277
    const-string v0, "min_date"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->mMinDateMillis:J

    .line 278
    const-string v0, "max_date"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->mMaxDateMillis:J

    .line 281
    :cond_0
    iget-object v2, p0, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->mDateListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 284
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 285
    instance-of v1, v0, Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;

    if-eqz v1, :cond_1

    .line 286
    new-instance v2, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDateSetListenerWrapper;

    check-cast v0, Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;

    invoke-direct {v2, v0}, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDateSetListenerWrapper;-><init>(Lcom/android/datetimepicker/date/DatePickerCompat$OnDateSetListener;)V

    .line 290
    :cond_1
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 292
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    .line 294
    iget-wide v2, p0, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->mMinDateMillis:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    .line 295
    iget-wide v2, p0, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->mMinDateMillis:J

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 297
    :cond_2
    iget-wide v2, p0, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->mMaxDateMillis:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    .line 298
    iget-wide v2, p0, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->mMaxDateMillis:J

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 300
    :cond_3
    iget v2, p0, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->mFirstDayOfWeek:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 301
    iget v2, p0, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->mFirstDayOfWeek:I

    invoke-virtual {v1, v2}, Landroid/widget/DatePicker;->setFirstDayOfWeek(I)V

    .line 303
    :cond_4
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 308
    invoke-super {p0, p1}, Lcom/android/datetimepicker/DialogFragmentWithListener;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 309
    const-string v0, "min_date"

    iget-wide v2, p0, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->mMinDateMillis:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 310
    const-string v0, "max_date"

    iget-wide v2, p0, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->mMaxDateMillis:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 311
    const-string v0, "first_day_of_week"

    iget v1, p0, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->mFirstDayOfWeek:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 312
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 0

    .prologue
    .line 265
    iput p1, p0, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->mFirstDayOfWeek:I

    .line 266
    return-void
.end method

.method public setMaxDate(Ljava/util/Calendar;)V
    .locals 2

    .prologue
    .line 255
    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    iput-wide v0, p0, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->mMaxDateMillis:J

    .line 256
    return-void

    .line 255
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public setMinDate(Ljava/util/Calendar;)V
    .locals 2

    .prologue
    .line 251
    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    iput-wide v0, p0, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->mMinDateMillis:J

    .line 252
    return-void

    .line 251
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public setOnDateSetListener(Landroid/app/DatePickerDialog$OnDateSetListener;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/datetimepicker/date/DatePickerCompat$DefaultDatePickerFragment;->mDateListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 248
    return-void
.end method
