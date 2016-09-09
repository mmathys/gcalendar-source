.class public abstract Lcom/android/calendar/task/TimelineTaskBundle;
.super Ljava/lang/Object;
.source "TimelineTaskBundle.java"

# interfaces
.implements Lcom/android/calendar/task/TimelineTaskType;


# instance fields
.field protected mAccountName:Ljava/lang/String;

.field protected mAllDay:Z

.field protected mColor:I

.field protected mDone:Z

.field protected mEndMillis:J

.field protected mEndTime:I

.field protected mSingleLineTitle:Ljava/lang/String;

.field protected mStartDay:I

.field protected mStartMillis:J

.field protected mStartTime:I

.field protected mSubtitle:Ljava/lang/String;

.field protected final mTimelineTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mTitle:Ljava/lang/String;

.field protected mUpdateFinished:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mTimelineTaskList:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Lcom/android/calendar/task/TimelineTaskBundle;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mColor:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mTitle:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mSubtitle:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mSingleLineTitle:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mUpdateFinished:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mAccountName:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mDone:Z

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mStartTime:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mStartDay:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mStartMillis:J

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mEndTime:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mEndMillis:J

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mAllDay:Z

    .line 81
    return-void

    :cond_0
    move v0, v2

    .line 71
    goto :goto_0

    :cond_1
    move v0, v2

    .line 73
    goto :goto_1

    :cond_2
    move v1, v2

    .line 80
    goto :goto_2
.end method

.method public constructor <init>(Lcom/android/calendar/task/TimelineTask;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/calendar/task/TimelineTaskBundle;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mTitle:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mSubtitle:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mSingleLineTitle:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mUpdateFinished:Z

    .line 54
    invoke-virtual {p1}, Lcom/android/calendar/task/TimelineTask;->getColor()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mColor:I

    .line 55
    invoke-virtual {p1}, Lcom/android/calendar/task/TimelineTask;->getAccountName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mAccountName:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Lcom/android/calendar/task/TimelineTask;->isDone()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mDone:Z

    .line 57
    invoke-virtual {p1}, Lcom/android/calendar/task/TimelineTask;->getStartTime()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mStartTime:I

    .line 58
    invoke-virtual {p1}, Lcom/android/calendar/task/TimelineTask;->getStartDay()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mStartDay:I

    .line 59
    invoke-virtual {p1}, Lcom/android/calendar/task/TimelineTask;->getStartMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mStartMillis:J

    .line 60
    invoke-virtual {p1}, Lcom/android/calendar/task/TimelineTask;->getEndTime()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mEndTime:I

    .line 61
    invoke-virtual {p1}, Lcom/android/calendar/task/TimelineTask;->getEndMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mEndMillis:J

    .line 62
    invoke-virtual {p1}, Lcom/android/calendar/task/TimelineTask;->isAllDay()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mAllDay:Z

    .line 63
    return-void
.end method


# virtual methods
.method protected addTimelineTask(Lcom/android/calendar/task/TimelineTask;)V
    .locals 4

    .prologue
    .line 347
    invoke-virtual {p1}, Lcom/android/calendar/task/TimelineTask;->getEndMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mEndMillis:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 348
    invoke-virtual {p1}, Lcom/android/calendar/task/TimelineTask;->getEndTime()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mEndTime:I

    .line 349
    invoke-virtual {p1}, Lcom/android/calendar/task/TimelineTask;->getEndMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mEndMillis:J

    .line 351
    :cond_0
    return-void
.end method

.method public abstract contains(Lcom/android/calendar/task/TimelineTask;)Z
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public getAllTitles()Ljava/lang/String;
    .locals 4

    .prologue
    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    iget-object v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mTimelineTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    .line 261
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 262
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_0
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarId()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mColor:I

    return v0
.end method

.method public getEndDay()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mStartDay:I

    return v0
.end method

.method public getEndMillis()J
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mEndMillis:J

    return-wide v0
.end method

.method public getEndTime()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mEndTime:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumReminders()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mTimelineTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getOrganizer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantityString(Landroid/content/res/Resources;Z)Ljava/lang/String;
    .locals 5

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/calendar/task/TimelineTaskBundle;->getNumReminders()I

    move-result v1

    .line 328
    if-eqz p2, :cond_0

    sget v0, Lcom/android/calendar/R$plurals;->done_reminders_title:I

    .line 329
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 328
    :cond_0
    sget v0, Lcom/android/calendar/R$plurals;->reminders_title:I

    goto :goto_0
.end method

.method public getReminders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mTimelineTaskList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelfAttendeeStatus()I
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public getSingleLineTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mSingleLineTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSortId()J
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSortType()I
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/android/calendar/task/TimelineTaskBundle;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getStartDay()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mStartDay:I

    return v0
.end method

.method public getStartMillis()J
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mStartMillis:J

    return-wide v0
.end method

.method public getStartTime()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mStartTime:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mSubtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleAndLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/calendar/task/TimelineTaskBundle;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasDeclinedStatus()Z
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/calendar/task/TimelineTaskBundle;->isDone()Z

    move-result v0

    return v0
.end method

.method public hasHeadlineImage()Z
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/calendar/task/TimelineTaskBundle;->hasImage()Z

    move-result v0

    return v0
.end method

.method public hasImage()Z
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public hasInvitedStatus()Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public isAllDay()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mAllDay:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mDone:Z

    return v0
.end method

.method public abstract reset()V
.end method

.method public abstract reset(Lcom/android/calendar/task/TimelineTask;)V
.end method

.method public setDone(Z)V
    .locals 0

    .prologue
    .line 244
    iput-boolean p1, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mDone:Z

    .line 245
    return-void
.end method

.method public setSingleLineTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mSingleLineTitle:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mSubtitle:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mTitle:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public shouldShowOrganizerImage()Z
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public showEndTime()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public spansAtLeastOneDay()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mAllDay:Z

    return v0
.end method

.method public supportsSwipe()Z
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/android/calendar/task/TimelineTaskBundle;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/calendar/task/TimelineTaskBundle;->getNumReminders()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/calendar/task/TimelineTaskBundle;->getAllTitles()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mStartDay:I

    iget-boolean v4, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mDone:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x3f

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "[title="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", count="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", day="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", done="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateTaskDone(Landroid/content/Context;Z)Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;
    .locals 3

    .prologue
    .line 232
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 234
    iget-object v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mTimelineTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 235
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mTimelineTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mTimelineTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getId()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    .line 235
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 238
    :cond_0
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getTaskDataFactory()Lcom/android/calendar/task/BaseTaskDataFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/calendar/task/BaseTaskDataFactory;->updateTasksDoneStatus(Landroid/content/Context;Ljava/lang/String;Z[Ljava/lang/String;)Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;

    move-result-object v0

    return-object v0
.end method

.method public updateTitles(Landroid/content/res/Resources;)V
    .locals 6

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mUpdateFinished:Z

    if-eqz v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/task/TimelineTaskBundle;->isDone()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/task/TimelineTaskBundle;->getQuantityString(Landroid/content/res/Resources;Z)Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-virtual {p0}, Lcom/android/calendar/task/TimelineTaskBundle;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    invoke-virtual {p0, v0}, Lcom/android/calendar/task/TimelineTaskBundle;->setTitle(Ljava/lang/String;)V

    .line 318
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/calendar/task/TimelineTaskBundle;->setSingleLineTitle(Ljava/lang/String;)V

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mUpdateFinished:Z

    goto :goto_0

    .line 309
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/task/TimelineTaskBundle;->getAllTitles()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/calendar/task/TimelineTaskBundle;->setTitle(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/calendar/task/TimelineTaskBundle;->isAllDay()Z

    move-result v1

    if-nez v1, :cond_2

    .line 312
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {}, Lcom/android/calendar/DateTimeFormatHelper;->getInstance()Lcom/android/calendar/DateTimeFormatHelper;

    move-result-object v1

    .line 314
    invoke-virtual {p0}, Lcom/android/calendar/task/TimelineTaskBundle;->getStartMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/calendar/task/TimelineTaskBundle;->getStartMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/calendar/DateTimeFormatHelper;->getTimeRangeText(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/calendar/task/TimelineTaskBundle;->setSubtitle(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    iget v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mSubtitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mSingleLineTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-boolean v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mUpdateFinished:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 91
    iget-object v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-boolean v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mDone:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 94
    iget v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mStartTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mStartDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-wide v4, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mStartMillis:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    iget v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mEndTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-wide v4, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mEndMillis:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    iget-boolean v0, p0, Lcom/android/calendar/task/TimelineTaskBundle;->mAllDay:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 100
    return-void

    :cond_0
    move v0, v2

    .line 90
    goto :goto_0

    :cond_1
    move v0, v2

    .line 92
    goto :goto_1

    :cond_2
    move v1, v2

    .line 99
    goto :goto_2
.end method
