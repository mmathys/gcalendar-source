.class public Lcom/android/datetimepicker/date/SimpleMonthAdapter;
.super Lcom/android/datetimepicker/date/MonthAdapter;
.source "SimpleMonthAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/datetimepicker/date/DatePickerController;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/datetimepicker/date/MonthAdapter;-><init>(Landroid/content/Context;Lcom/android/datetimepicker/date/DatePickerController;)V

    .line 28
    return-void
.end method


# virtual methods
.method public createMonthView(Landroid/content/Context;)Lcom/android/datetimepicker/date/MonthView;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/android/datetimepicker/date/SimpleMonthView;

    invoke-direct {v0, p1}, Lcom/android/datetimepicker/date/SimpleMonthView;-><init>(Landroid/content/Context;)V

    .line 33
    iget-object v1, p0, Lcom/android/datetimepicker/date/SimpleMonthAdapter;->mController:Lcom/android/datetimepicker/date/DatePickerController;

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/date/MonthView;->setDatePickerController(Lcom/android/datetimepicker/date/DatePickerController;)V

    .line 34
    return-object v0
.end method
