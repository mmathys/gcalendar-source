.class public interface abstract Lcom/android/datetimepicker/date/DatePickerController;
.super Ljava/lang/Object;
.source "DatePickerController.java"


# virtual methods
.method public abstract getFirstDayOfWeek()I
.end method

.method public abstract getMaxDate()Ljava/util/Calendar;
.end method

.method public abstract getMaxYear()I
.end method

.method public abstract getMinDate()Ljava/util/Calendar;
.end method

.method public abstract getMinYear()I
.end method

.method public abstract getSelectedDay()Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;
.end method

.method public abstract onDayOfMonthSelected(III)V
.end method

.method public abstract onYearSelected(I)V
.end method

.method public abstract registerOnDateChangedListener(Lcom/android/datetimepicker/date/DatePickerDialog$OnDateChangedListener;)V
.end method

.method public abstract tryVibrate()V
.end method
