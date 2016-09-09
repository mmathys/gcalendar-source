.class public abstract Lcom/android/datetimepicker/date/MonthAdapter;
.super Landroid/widget/BaseAdapter;
.source "MonthAdapter.java"

# interfaces
.implements Lcom/android/datetimepicker/date/MonthView$OnDayClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;
    }
.end annotation


# static fields
.field protected static WEEK_7_OVERHANG_HEIGHT:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field protected final mController:Lcom/android/datetimepicker/date/DatePickerController;

.field private mRtlEnabled:Z

.field private mSelectedDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x7

    sput v0, Lcom/android/datetimepicker/date/MonthAdapter;->WEEK_7_OVERHANG_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/datetimepicker/date/DatePickerController;)V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/datetimepicker/date/MonthAdapter;->mRtlEnabled:Z

    .line 122
    iput-object p1, p0, Lcom/android/datetimepicker/date/MonthAdapter;->mContext:Landroid/content/Context;

    .line 123
    iput-object p2, p0, Lcom/android/datetimepicker/date/MonthAdapter;->mController:Lcom/android/datetimepicker/date/DatePickerController;

    .line 124
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthAdapter;->init()V

    .line 125
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthAdapter;->mController:Lcom/android/datetimepicker/date/DatePickerController;

    invoke-interface {v0}, Lcom/android/datetimepicker/date/DatePickerController;->getSelectedDay()Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/MonthAdapter;->setSelectedDay(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)V

    .line 126
    return-void
.end method

.method private isSelectedDayInMonth(II)Z
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthAdapter;->mSelectedDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    iget v0, v0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->year:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthAdapter;->mSelectedDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    iget v0, v0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->month:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract createMonthView(Landroid/content/Context;)Lcom/android/datetimepicker/date/MonthView;
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthAdapter;->mController:Lcom/android/datetimepicker/date/DatePickerController;

    invoke-interface {v0}, Lcom/android/datetimepicker/date/DatePickerController;->getMaxYear()I

    move-result v0

    iget-object v1, p0, Lcom/android/datetimepicker/date/MonthAdapter;->mController:Lcom/android/datetimepicker/date/DatePickerController;

    invoke-interface {v1}, Lcom/android/datetimepicker/date/DatePickerController;->getMinYear()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 174
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 187
    const/4 v0, 0x0

    .line 188
    if-eqz p2, :cond_2

    .line 189
    check-cast p2, Lcom/android/datetimepicker/date/MonthView;

    .line 191
    invoke-virtual {p2}, Lcom/android/datetimepicker/date/MonthView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 202
    :goto_0
    if-nez v0, :cond_0

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 205
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 207
    rem-int/lit8 v2, p1, 0xc

    .line 208
    div-int/lit8 v3, p1, 0xc

    iget-object v4, p0, Lcom/android/datetimepicker/date/MonthAdapter;->mController:Lcom/android/datetimepicker/date/DatePickerController;

    invoke-interface {v4}, Lcom/android/datetimepicker/date/DatePickerController;->getMinYear()I

    move-result v4

    add-int/2addr v3, v4

    .line 211
    invoke-direct {p0, v3, v2}, Lcom/android/datetimepicker/date/MonthAdapter;->isSelectedDayInMonth(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 212
    iget-object v1, p0, Lcom/android/datetimepicker/date/MonthAdapter;->mSelectedDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    iget v1, v1, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->day:I

    .line 217
    :cond_1
    invoke-virtual {p2}, Lcom/android/datetimepicker/date/MonthView;->reuse()V

    .line 219
    const-string v4, "selected_day"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v1, "year"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v1, "month"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v1, "week_start"

    iget-object v2, p0, Lcom/android/datetimepicker/date/MonthAdapter;->mController:Lcom/android/datetimepicker/date/DatePickerController;

    invoke-interface {v2}, Lcom/android/datetimepicker/date/DatePickerController;->getFirstDayOfWeek()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-virtual {p2, v0}, Lcom/android/datetimepicker/date/MonthView;->setMonthParams(Ljava/util/HashMap;)V

    .line 224
    invoke-virtual {p2}, Lcom/android/datetimepicker/date/MonthView;->invalidate()V

    .line 225
    return-object p2

    .line 193
    :cond_2
    iget-object v2, p0, Lcom/android/datetimepicker/date/MonthAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/datetimepicker/date/MonthAdapter;->createMonthView(Landroid/content/Context;)Lcom/android/datetimepicker/date/MonthView;

    move-result-object p2

    .line 195
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 197
    invoke-virtual {p2, v2}, Lcom/android/datetimepicker/date/MonthView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/android/datetimepicker/date/MonthView;->setClickable(Z)V

    .line 199
    invoke-virtual {p2, p0}, Lcom/android/datetimepicker/date/MonthView;->setOnDayClickListener(Lcom/android/datetimepicker/date/MonthView$OnDayClickListener;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthAdapter;->isRtlEnabled()Z

    move-result v2

    invoke-virtual {p2, v2}, Lcom/android/datetimepicker/date/MonthView;->setRtlEnabled(Z)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 159
    new-instance v0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;-><init>(J)V

    iput-object v0, p0, Lcom/android/datetimepicker/date/MonthAdapter;->mSelectedDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    .line 160
    return-void
.end method

.method public isRtlEnabled()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/datetimepicker/date/MonthAdapter;->mRtlEnabled:Z

    return v0
.end method

.method public onDayClick(Lcom/android/datetimepicker/date/MonthView;Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)V
    .locals 0

    .prologue
    .line 237
    if-eqz p2, :cond_0

    .line 238
    invoke-virtual {p0, p2}, Lcom/android/datetimepicker/date/MonthAdapter;->onDayTapped(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)V

    .line 240
    :cond_0
    return-void
.end method

.method protected onDayTapped(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)V
    .locals 4

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthAdapter;->mController:Lcom/android/datetimepicker/date/DatePickerController;

    invoke-interface {v0}, Lcom/android/datetimepicker/date/DatePickerController;->tryVibrate()V

    .line 249
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthAdapter;->mController:Lcom/android/datetimepicker/date/DatePickerController;

    iget v1, p1, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->year:I

    iget v2, p1, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->month:I

    iget v3, p1, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->day:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/datetimepicker/date/DatePickerController;->onDayOfMonthSelected(III)V

    .line 250
    invoke-virtual {p0, p1}, Lcom/android/datetimepicker/date/MonthAdapter;->setSelectedDay(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)V

    .line 251
    return-void
.end method

.method public setRtlEnabled(Z)V
    .locals 0

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/android/datetimepicker/date/MonthAdapter;->mRtlEnabled:Z

    .line 135
    return-void
.end method

.method public setSelectedDay(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/datetimepicker/date/MonthAdapter;->mSelectedDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    .line 148
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthAdapter;->notifyDataSetChanged()V

    .line 149
    return-void
.end method
