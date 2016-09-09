.class public Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;
.super Ljava/lang/Object;
.source "MonthAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/datetimepicker/date/MonthAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarDay"
.end annotation


# instance fields
.field private calendar:Ljava/util/Calendar;

.field day:I

.field month:I

.field year:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->setTime(J)V

    .line 61
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->setDay(III)V

    .line 75
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->setTime(J)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->year:I

    .line 69
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->month:I

    .line 70
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->day:I

    .line 71
    return-void
.end method

.method private setTime(J)V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 102
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->month:I

    .line 103
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->year:I

    .line 104
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->day:I

    .line 105
    return-void
.end method


# virtual methods
.method public getDay()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->day:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->month:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->year:I

    return v0
.end method

.method public set(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)V
    .locals 1

    .prologue
    .line 78
    iget v0, p1, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->year:I

    iput v0, p0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->year:I

    .line 79
    iget v0, p1, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->month:I

    iput v0, p0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->month:I

    .line 80
    iget v0, p1, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->day:I

    iput v0, p0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->day:I

    .line 81
    return-void
.end method

.method public setDay(III)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->year:I

    .line 85
    iput p2, p0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->month:I

    .line 86
    iput p3, p0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->day:I

    .line 87
    return-void
.end method
