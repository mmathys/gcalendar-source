.class public Lcom/android/calendar/timely/TimelyMonthPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "TimelyMonthPagerAdapter.java"

# interfaces
.implements Lcom/android/datetimepicker/date/MonthView$OnDayClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/TimelyMonthPagerAdapter$OnDayOfMonthSelectedListener;
    }
.end annotation


# static fields
.field private static sRecycleDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/calendar/CalendarController;

.field private mDataFactory:Lcom/android/calendar/timely/DataFactory;

.field private mDatePickerVisibility:Z

.field private mFirstDayOfWeek:I

.field private mItemsAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/timely/TimelyColorMonthView;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsToAdd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsToRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/calendar/timely/TimelyMonthPagerAdapter$OnDayOfMonthSelectedListener;

.field private mRecycledViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

.field private mTimezone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/calendar/timely/DataFactory;Lcom/android/calendar/timely/TimelyMonthPagerAdapter$OnDayOfMonthSelectedListener;)V
    .locals 4

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mDatePickerVisibility:Z

    .line 68
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mContext:Landroid/content/Context;

    .line 69
    invoke-static {p1}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/app/Activity;)Lcom/android/calendar/CalendarController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mController:Lcom/android/calendar/CalendarController;

    .line 70
    iput-object p2, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mRecycledViews:Ljava/util/ArrayList;

    .line 72
    invoke-static {p1}, Lcom/android/calendar/Utils;->getFirstDayOfWeekAsCalendar(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mFirstDayOfWeek:I

    .line 73
    new-instance v0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;-><init>(J)V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mSelectedDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    .line 74
    invoke-static {p1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mTimezone:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mListener:Lcom/android/calendar/timely/TimelyMonthPagerAdapter$OnDayOfMonthSelectedListener;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mItemsToAdd:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mItemsAdded:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mItemsToRemove:Ljava/util/ArrayList;

    .line 80
    return-void
.end method

.method public static getDayFromPosition(I)Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 228
    div-int/lit8 v0, p0, 0xc

    add-int/lit16 v0, v0, 0x7b2

    .line 229
    rem-int/lit8 v1, p0, 0xc

    .line 232
    sget-object v2, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->sRecycleDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    if-nez v2, :cond_0

    .line 233
    new-instance v2, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    invoke-direct {v2, v0, v1, v3}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;-><init>(III)V

    sput-object v2, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->sRecycleDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    .line 237
    :goto_0
    sget-object v0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->sRecycleDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    return-object v0

    .line 235
    :cond_0
    sget-object v2, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->sRecycleDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->setDay(III)V

    goto :goto_0
.end method

.method public static getPositionFromDay(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)I
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, -0x7b2

    mul-int/lit8 v0, v0, 0xc

    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getMonth()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private init(Lcom/android/calendar/timely/TimelyColorMonthView;Ljava/util/HashMap;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/timely/TimelyColorMonthView;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 154
    rem-int/lit8 v1, p3, 0xc

    .line 155
    div-int/lit8 v0, p3, 0xc

    add-int/lit16 v2, v0, 0x7b2

    .line 157
    const/4 v0, -0x1

    .line 158
    invoke-direct {p0, v2, v1}, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->isSelectedDayInMonth(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mSelectedDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getDay()I

    move-result v0

    .line 164
    :cond_0
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyColorMonthView;->reuse()V

    .line 166
    const-string v3, "selected_day"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v0, "year"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v0, "month"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v0, "page_position"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v0, "week_start"

    iget v1, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mFirstDayOfWeek:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getBooleanProperty(Landroid/content/Context;I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 175
    const-string v1, "show_wk_num"

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-virtual {p1, p2}, Lcom/android/calendar/timely/TimelyColorMonthView;->setMonthParams(Ljava/util/HashMap;)V

    .line 178
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyColorMonthView;->invalidate()V

    .line 179
    return-void

    .line 175
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSelectedDayInMonth(II)Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mSelectedDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getYear()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mSelectedDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getMonth()I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 183
    check-cast p3, Lcom/android/datetimepicker/date/MonthView;

    .line 184
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mRecycledViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mItemsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mItemsAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 187
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mItemsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 192
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mItemsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 196
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 198
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 84
    const/16 v0, 0x324

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 91
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/datetimepicker/date/MonthView;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 92
    check-cast v0, Lcom/android/datetimepicker/date/MonthView;

    .line 93
    invoke-virtual {v0}, Lcom/android/datetimepicker/date/MonthView;->getYear()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/MonthView;->getMonth()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->isSelectedDayInMonth(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mSelectedDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    invoke-virtual {v1}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getDay()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/date/MonthView;->setSelectedDay(I)V

    .line 98
    :goto_0
    invoke-virtual {v0}, Lcom/android/datetimepicker/date/MonthView;->invalidate()V

    .line 101
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 96
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/date/MonthView;->setSelectedDay(I)V

    goto :goto_0
.end method

.method public getViewPosition(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 258
    instance-of v0, p1, Lcom/android/calendar/timely/TimelyColorMonthView;

    if-nez v0, :cond_0

    .line 259
    const/4 v0, -0x1

    .line 263
    :goto_0
    return v0

    .line 262
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 263
    const-string v1, "page_position"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 112
    .line 113
    const/4 v0, 0x0

    .line 115
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mRecycledViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mRecycledViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyColorMonthView;

    .line 117
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyColorMonthView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 128
    :goto_0
    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 131
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 133
    invoke-direct {p0, v1, v0, p2}, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->init(Lcom/android/calendar/timely/TimelyColorMonthView;Ljava/util/HashMap;I)V

    .line 135
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mItemsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mItemsAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    return-object v1

    .line 119
    :cond_1
    new-instance v1, Lcom/android/calendar/timely/TimelyColorMonthView;

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-direct {v1, v2, v3}, Lcom/android/calendar/timely/TimelyColorMonthView;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/DataFactory;)V

    .line 120
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 122
    invoke-virtual {v1, v2}, Lcom/android/calendar/timely/TimelyColorMonthView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/calendar/timely/TimelyColorMonthView;->setClickable(Z)V

    .line 124
    invoke-virtual {v1, p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->setOnDayClickListener(Lcom/android/datetimepicker/date/MonthView$OnDayClickListener;)V

    .line 125
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mTimezone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/calendar/timely/TimelyColorMonthView;->setTimezone(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 202
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDatePickerVisibilityChanged(Z)V
    .locals 0

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mDatePickerVisibility:Z

    .line 150
    return-void
.end method

.method public onDayClick(Lcom/android/datetimepicker/date/MonthView;Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)V
    .locals 5

    .prologue
    .line 211
    if-eqz p2, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/calendar/R$string;->analytics_category_menu_item:I

    .line 215
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->analytics_jump_to_date_action:I

    .line 216
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-interface {v1, v2, v3, v0}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mListener:Lcom/android/calendar/timely/TimelyMonthPagerAdapter$OnDayOfMonthSelectedListener;

    invoke-interface {v0, p2}, Lcom/android/calendar/timely/TimelyMonthPagerAdapter$OnDayOfMonthSelectedListener;->onDayOfMonthSelected(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)V

    .line 218
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0, p0}, Lcom/android/calendar/CalendarController;->toggleDatePicker(Ljava/lang/Object;)V

    .line 220
    :cond_0
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 143
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mDatePickerVisibility:Z

    if-eqz v0, :cond_0

    .line 144
    check-cast p3, Lcom/android/calendar/timely/TimelyColorMonthView;

    invoke-virtual {p3}, Lcom/android/calendar/timely/TimelyColorMonthView;->requestInitialAccessibilityFocus()V

    .line 146
    :cond_0
    return-void
.end method

.method public setSelectedDay(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mSelectedDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    .line 224
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->notifyDataSetChanged()V

    .line 225
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mItemsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 107
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mItemsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 108
    return-void
.end method

.method public updateFirstDayOfWeek(I)V
    .locals 0

    .prologue
    .line 245
    iput p1, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mFirstDayOfWeek:I

    .line 246
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->updateVisibleMonths()V

    .line 247
    return-void
.end method

.method public updateVisibleMonths()V
    .locals 4

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->mItemsAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyColorMonthView;

    .line 251
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyColorMonthView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 252
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->getViewPosition(Landroid/view/View;)I

    move-result v3

    .line 253
    invoke-direct {p0, v0, v1, v3}, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->init(Lcom/android/calendar/timely/TimelyColorMonthView;Ljava/util/HashMap;I)V

    goto :goto_0

    .line 255
    :cond_0
    return-void
.end method
