.class Lcom/android/calendar/widget/CalendarAppWidgetModel;
.super Ljava/lang/Object;
.source "CalendarAppWidgetModel.java"

# interfaces
.implements Lcom/android/calendar/timely/RangedData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field private mEventToken:I

.field final mMaxJulianDay:I

.field final mNow:J

.field mRangedEventResults:Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;

.field final mTimezone:Ljava/lang/String;

.field final mTodayJulianDay:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mEventToken:I

    .line 291
    iput-object p2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mTimezone:Ljava/lang/String;

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mNow:J

    .line 293
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-direct {v0, p2}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0}, Lcom/android/calendar/time/Time;->setToNow()V

    .line 295
    iget-wide v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mNow:J

    iget-wide v0, v0, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {v2, v3, v0, v1}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mTodayJulianDay:I

    .line 296
    iget v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mTodayJulianDay:I

    add-int/lit8 v0, v0, 0xe

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mMaxJulianDay:I

    .line 298
    iput-object p1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mContext:Landroid/content/Context;

    .line 299
    return-void
.end method


# virtual methods
.method public containsDay(I)Z
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mTodayJulianDay:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mMaxJulianDay:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDebugTag()Ljava/lang/String;
    .locals 6

    .prologue
    .line 360
    iget-wide v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mNow:J

    iget v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mTodayJulianDay:I

    iget v3, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mMaxJulianDay:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x31

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndDay()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mMaxJulianDay:I

    return v0
.end method

.method public getStartDay()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mTodayJulianDay:I

    return v0
.end method

.method public getStorage()Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRangedEventResults:Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;

    if-nez v0, :cond_0

    .line 315
    const-string v0, "CalendarWidgetModel"

    const-string v1, "createStorage"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 316
    new-instance v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;

    iget-object v1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mTimezone:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRangedEventResults:Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRangedEventResults:Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;

    return-object v0
.end method

.method public getToken()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mEventToken:I

    return v0
.end method

.method public hadEventsToday()Z
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRangedEventResults:Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRangedEventResults:Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;

    iget-boolean v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mHadEventsToday:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEventsToday()Z
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRangedEventResults:Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRangedEventResults:Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;

    iget-boolean v0, v0, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mHasEventsToday:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRangedEventResults:Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRangedEventResults:Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;

    invoke-virtual {v0}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle(I)V
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRangedEventResults:Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;

    .line 346
    return-void
.end method

.method public setToken(I)V
    .locals 0

    .prologue
    .line 355
    iput p1, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mEventToken:I

    .line 356
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRangedEventResults:Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/widget/CalendarAppWidgetModel;->getDebugTag()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/widget/CalendarAppWidgetModel;->mRangedEventResults:Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;

    invoke-virtual {v0}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
