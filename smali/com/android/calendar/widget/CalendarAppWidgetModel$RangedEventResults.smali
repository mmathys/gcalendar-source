.class Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;
.super Ljava/lang/Object;
.source "CalendarAppWidgetModel.java"

# interfaces
.implements Lcom/android/calendar/timely/RangedData$EventResults;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/CalendarAppWidgetModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RangedEventResults"
.end annotation


# instance fields
.field final mAllDayBuckets:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field final mAllDayTaskBuckets:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/task/TimelineTaskType;",
            ">;>;"
        }
    .end annotation
.end field

.field final mBirthdays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/calendar/timely/TimelineBirthday;",
            ">;"
        }
    .end annotation
.end field

.field mHadEventsToday:Z

.field mHasEventsToday:Z

.field final mHolidayBuckets:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineHoliday;",
            ">;>;"
        }
    .end annotation
.end field

.field final mMaxJulianDay:I

.field final mNow:J

.field final mTimedBuckets:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field final mTimedTaskBuckets:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/task/TimelineTaskType;",
            ">;>;"
        }
    .end annotation
.end field

.field final mTimezone:Ljava/lang/String;

.field final mTodayJulianDay:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/16 v4, 0xe

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mHadEventsToday:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mHasEventsToday:Z

    .line 67
    iput-object p1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mTimezone:Ljava/lang/String;

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mNow:J

    .line 69
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-direct {v0, p1}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Lcom/android/calendar/time/Time;->setToNow()V

    .line 72
    iget-wide v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mNow:J

    iget-wide v0, v0, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {v2, v3, v0, v1}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mTodayJulianDay:I

    .line 73
    iget v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mTodayJulianDay:I

    add-int/lit8 v0, v0, 0xe

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mMaxJulianDay:I

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v4}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mBirthdays:Landroid/util/SparseArray;

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v4}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mTimedBuckets:Landroid/util/SparseArray;

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v4}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mAllDayBuckets:Landroid/util/SparseArray;

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v4}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mHolidayBuckets:Landroid/util/SparseArray;

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v4}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mTimedTaskBuckets:Landroid/util/SparseArray;

    .line 80
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v4}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mAllDayTaskBuckets:Landroid/util/SparseArray;

    .line 81
    return-void
.end method

.method private isItemTypeUnsorted(Lcom/android/calendar/timely/TimelineItem;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">(TT;)Z"
        }
    .end annotation

    .prologue
    .line 135
    instance-of v0, p1, Lcom/android/calendar/task/TimelineTaskType;

    return v0
.end method

.method static maxDay(Landroid/util/SparseArray;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray",
            "<TT;>;I)I"
        }
    .end annotation

    .prologue
    .line 226
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 227
    if-eqz v0, :cond_0

    .line 228
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 227
    :cond_0
    return p1
.end method

.method public static sortBucketSet(Landroid/util/SparseArray;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<TT;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 170
    :goto_0
    if-gt p1, p2, :cond_1

    .line 171
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 172
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 173
    invoke-static {v0}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->sortItemList(Ljava/util/List;)V

    .line 170
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 176
    :cond_1
    return-void
.end method

.method public static sortItemList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults$1;

    invoke-direct {v0}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 200
    return-void
.end method


# virtual methods
.method public addTimelineItem(Lcom/android/calendar/timely/TimelineItem;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 86
    instance-of v2, p1, Lcom/android/calendar/timely/TimelineEvent;

    if-nez v2, :cond_1

    instance-of v2, p1, Lcom/android/calendar/task/TimelineTaskType;

    if-nez v2, :cond_1

    instance-of v2, p1, Lcom/android/calendar/timely/TimelineBirthday;

    if-nez v2, :cond_1

    .line 89
    const-string v2, "CalendarWidgetModel"

    const-string v3, "dropping:%s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {v2, v3, v0}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getStartDay()I

    move-result v2

    iget v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mTodayJulianDay:I

    if-gt v2, v3, :cond_2

    .line 95
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getEndDay()I

    move-result v2

    iget v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mTodayJulianDay:I

    if-lt v2, v3, :cond_2

    .line 96
    :goto_1
    iget-boolean v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mHadEventsToday:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mHadEventsToday:Z

    .line 99
    iget-wide v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mNow:J

    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mTimezone:Ljava/lang/String;

    invoke-static {p1, v2, v3, v1}, Lcom/android/calendar/Utils;->isItemInPast(Lcom/android/calendar/timely/TimelineItem;JLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    iget-boolean v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mHasEventsToday:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mHasEventsToday:Z

    .line 105
    instance-of v0, p1, Lcom/android/calendar/timely/TimelineBirthday;

    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mBirthdays:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getStartDay()I

    move-result v1

    check-cast p1, Lcom/android/calendar/timely/TimelineBirthday;

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 95
    goto :goto_1

    .line 109
    :cond_3
    instance-of v0, p1, Lcom/android/calendar/timely/TimelineHoliday;

    if-eqz v0, :cond_4

    .line 110
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mHolidayBuckets:Landroid/util/SparseArray;

    check-cast p1, Lcom/android/calendar/timely/TimelineHoliday;

    invoke-virtual {p0, v0, p1}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->populateBucketSet(Landroid/util/SparseArray;Lcom/android/calendar/timely/TimelineItem;)V

    goto :goto_0

    .line 112
    :cond_4
    instance-of v0, p1, Lcom/android/calendar/task/TimelineTaskType;

    if-eqz v0, :cond_6

    move-object v0, p1

    .line 113
    check-cast v0, Lcom/android/calendar/task/TimelineTaskType;

    .line 114
    invoke-interface {v0}, Lcom/android/calendar/task/TimelineTaskType;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->isAllDay()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mAllDayTaskBuckets:Landroid/util/SparseArray;

    .line 119
    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->populateBucketSet(Landroid/util/SparseArray;Lcom/android/calendar/timely/TimelineItem;)V

    goto :goto_0

    .line 118
    :cond_5
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mTimedTaskBuckets:Landroid/util/SparseArray;

    goto :goto_2

    :cond_6
    move-object v0, p1

    .line 124
    check-cast v0, Lcom/android/calendar/timely/TimelineEvent;

    .line 126
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->isAllDay()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mAllDayBuckets:Landroid/util/SparseArray;

    .line 128
    :goto_3
    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->populateBucketSet(Landroid/util/SparseArray;Lcom/android/calendar/timely/TimelineItem;)V

    goto :goto_0

    .line 126
    :cond_7
    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mTimedBuckets:Landroid/util/SparseArray;

    goto :goto_3
.end method

.method public getAllDayBuckets(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mAllDayBuckets:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getAllDayTaskBuckets(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/task/TimelineTaskType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mAllDayTaskBuckets:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getBirthday(I)Lcom/android/calendar/timely/TimelineBirthday;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mBirthdays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineBirthday;

    return-object v0
.end method

.method public getHolidayBuckets(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineHoliday;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mHolidayBuckets:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getMaxDay()I
    .locals 7

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mHolidayBuckets:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mBirthdays:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mTimedTaskBuckets:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mAllDayTaskBuckets:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mTimedBuckets:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mAllDayBuckets:Landroid/util/SparseArray;

    iget v6, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mTodayJulianDay:I

    .line 219
    invoke-static {v5, v6}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->maxDay(Landroid/util/SparseArray;I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->maxDay(Landroid/util/SparseArray;I)I

    move-result v4

    .line 218
    invoke-static {v3, v4}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->maxDay(Landroid/util/SparseArray;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->maxDay(Landroid/util/SparseArray;I)I

    move-result v2

    .line 217
    invoke-static {v1, v2}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->maxDay(Landroid/util/SparseArray;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->maxDay(Landroid/util/SparseArray;I)I

    move-result v0

    return v0
.end method

.method public getTimedBuckets(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mTimedBuckets:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getTimedTaskBuckets(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/task/TimelineTaskType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mTimedTaskBuckets:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getTodayTimedBuckets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    iget v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mTodayJulianDay:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->getTimedBuckets(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTodayTimedTaskBuckets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/task/TimelineTaskType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    iget v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mTodayJulianDay:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->getTimedTaskBuckets(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mAllDayBuckets:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mTimedBuckets:Landroid/util/SparseArray;

    .line 209
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mAllDayTaskBuckets:Landroid/util/SparseArray;

    .line 210
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mTimedTaskBuckets:Landroid/util/SparseArray;

    .line 211
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mBirthdays:Landroid/util/SparseArray;

    .line 212
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mHolidayBuckets:Landroid/util/SparseArray;

    .line 213
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 208
    :goto_0
    return v0

    .line 213
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method populateBucketSet(Landroid/util/SparseArray;Lcom/android/calendar/timely/TimelineItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<TT;>;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 145
    invoke-interface {p2}, Lcom/android/calendar/timely/TimelineItem;->getStartDay()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mTodayJulianDay:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 146
    invoke-interface {p2}, Lcom/android/calendar/timely/TimelineItem;->getEndDay()I

    move-result v1

    iget v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mMaxJulianDay:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v1, v0

    .line 147
    :goto_0
    if-gt v1, v2, :cond_2

    .line 148
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 149
    if-nez v0, :cond_0

    .line 150
    invoke-direct {p0, p2}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->isItemTypeUnsorted(Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 153
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    goto :goto_1

    .line 159
    :cond_2
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mAllDayBuckets:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mTimedBuckets:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mAllDayTaskBuckets:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mTimedTaskBuckets:Landroid/util/SparseArray;

    .line 204
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mBirthdays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mHolidayBuckets:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 203
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 269
    iget v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mTodayJulianDay:I

    invoke-virtual {p0}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->getMaxDay()I

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mAllDayBuckets:Landroid/util/SparseArray;

    .line 270
    invoke-static {v2}, Lcom/android/calendar/Utils;->sparseArrayToString(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mTimedBuckets:Landroid/util/SparseArray;

    .line 271
    invoke-static {v3}, Lcom/android/calendar/Utils;->sparseArrayToString(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mAllDayTaskBuckets:Landroid/util/SparseArray;

    .line 272
    invoke-static {v4}, Lcom/android/calendar/Utils;->sparseArrayToString(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mTimedTaskBuckets:Landroid/util/SparseArray;

    .line 273
    invoke-static {v5}, Lcom/android/calendar/Utils;->sparseArrayToString(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mHolidayBuckets:Landroid/util/SparseArray;

    .line 274
    invoke-static {v6}, Lcom/android/calendar/Utils;->sparseArrayToString(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mBirthdays:Landroid/util/SparseArray;

    .line 275
    invoke-static {v7}, Lcom/android/calendar/Utils;->sparseArrayToString(Landroid/util/SparseArray;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit16 v9, v9, 0x83

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "from-to="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "-"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[all day events="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n[timed events="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[all day tasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n[timed tasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n[holiday events="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n[birthday events="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    return-object v0
.end method
