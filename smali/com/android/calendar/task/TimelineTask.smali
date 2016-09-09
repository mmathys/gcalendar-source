.class public abstract Lcom/android/calendar/task/TimelineTask;
.super Ljava/lang/Object;
.source "TimelineTask.java"

# interfaces
.implements Lcom/android/calendar/task/TimelineTaskType;


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field protected final mAllDay:Z

.field private final mColor:I

.field protected final mDueDateMillis:J

.field protected final mDurationMillis:I

.field protected final mEndMillis:J

.field protected final mEndMinute:I

.field private final mInfoUri:Landroid/net/Uri;

.field protected final mJulianDay:I

.field protected final mStartMinute:I

.field private mState:I

.field private final mTaskAssistanceProtoBytes:[B

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/calendar/task/TimelineTask;->mInfoUri:Landroid/net/Uri;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/task/TimelineTask;->mAccountName:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/task/TimelineTask;->mColor:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/task/TimelineTask;->mTitle:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/task/TimelineTask;->mDueDateMillis:J

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/task/TimelineTask;->mDurationMillis:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/task/TimelineTask;->mAllDay:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/task/TimelineTask;->mState:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/task/TimelineTask;->mTaskAssistanceProtoBytes:[B

    .line 109
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/task/TimelineTask;->mJulianDay:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/task/TimelineTask;->mEndMillis:J

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/task/TimelineTask;->mStartMinute:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/task/TimelineTask;->mEndMinute:I

    .line 113
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 105
    :cond_1
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/calendar/task/TimelineTask;->mTaskAssistanceProtoBytes:[B

    .line 106
    iget-object v0, p0, Lcom/android/calendar/task/TimelineTask;->mTaskAssistanceProtoBytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/calendar/task/TaskSetup;)V
    .locals 6

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-interface {p1}, Lcom/android/calendar/task/TaskSetup;->getInfoUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/task/TimelineTask;->mInfoUri:Landroid/net/Uri;

    .line 69
    invoke-interface {p1}, Lcom/android/calendar/task/TaskSetup;->getAccountName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/task/TimelineTask;->mAccountName:Ljava/lang/String;

    .line 70
    invoke-interface {p1}, Lcom/android/calendar/task/TaskSetup;->getColor()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/task/TimelineTask;->mColor:I

    .line 71
    invoke-interface {p1}, Lcom/android/calendar/task/TaskSetup;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/task/TimelineTask;->mTitle:Ljava/lang/String;

    .line 72
    invoke-interface {p1}, Lcom/android/calendar/task/TaskSetup;->getTaskState()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/task/TimelineTask;->mState:I

    .line 73
    invoke-interface {p1}, Lcom/android/calendar/task/TaskSetup;->getTaskAssistanceProtoBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/task/TimelineTask;->mTaskAssistanceProtoBytes:[B

    .line 75
    invoke-interface {p1}, Lcom/android/calendar/task/TaskSetup;->getDueDateMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/task/TimelineTask;->mDueDateMillis:J

    .line 76
    invoke-interface {p1}, Lcom/android/calendar/task/TaskSetup;->getDurationMillis()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/task/TimelineTask;->mDurationMillis:I

    .line 77
    invoke-interface {p1}, Lcom/android/calendar/task/TaskSetup;->isAllDay()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/task/TimelineTask;->mAllDay:Z

    .line 78
    invoke-interface {p1}, Lcom/android/calendar/task/TaskSetup;->getDueDateJulian()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/task/TimelineTask;->mJulianDay:I

    .line 79
    invoke-interface {p1}, Lcom/android/calendar/task/TaskSetup;->getDueMinuteOnDueDate()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/task/TimelineTask;->mStartMinute:I

    .line 81
    iget-boolean v0, p0, Lcom/android/calendar/task/TimelineTask;->mAllDay:Z

    if-eqz v0, :cond_0

    .line 82
    iget-wide v0, p0, Lcom/android/calendar/task/TimelineTask;->mDueDateMillis:J

    const-wide/32 v2, 0x52571a0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/calendar/task/TimelineTask;->mEndMillis:J

    .line 83
    iget v0, p0, Lcom/android/calendar/task/TimelineTask;->mStartMinute:I

    add-int/lit16 v0, v0, 0x59f

    iput v0, p0, Lcom/android/calendar/task/TimelineTask;->mEndMinute:I

    .line 90
    :goto_0
    return-void

    .line 85
    :cond_0
    iget v0, p0, Lcom/android/calendar/task/TimelineTask;->mDurationMillis:I

    if-nez v0, :cond_1

    .line 86
    const v0, 0x1b7740

    .line 87
    :goto_1
    iget-wide v2, p0, Lcom/android/calendar/task/TimelineTask;->mDueDateMillis:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/calendar/task/TimelineTask;->mEndMillis:J

    .line 88
    iget v1, p0, Lcom/android/calendar/task/TimelineTask;->mStartMinute:I

    int-to-long v2, v0

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/task/TimelineTask;->mEndMinute:I

    goto :goto_0

    .line 86
    :cond_1
    iget v0, p0, Lcom/android/calendar/task/TimelineTask;->mDurationMillis:I

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 295
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 301
    :cond_0
    :goto_0
    return v0

    .line 299
    :cond_1
    check-cast p1, Lcom/android/calendar/task/TimelineTask;

    .line 301
    iget-object v1, p0, Lcom/android/calendar/task/TimelineTask;->mAccountName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/task/TimelineTask;->mAccountName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/task/TimelineTask;->mInfoUri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/android/calendar/task/TimelineTask;->mInfoUri:Landroid/net/Uri;

    .line 302
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/calendar/task/TimelineTask;->mAllDay:Z

    .line 303
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/calendar/task/TimelineTask;->mAllDay:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/calendar/task/TimelineTask;->mColor:I

    .line 304
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/android/calendar/task/TimelineTask;->mColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/calendar/task/TimelineTask;->mDueDateMillis:J

    .line 305
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/calendar/task/TimelineTask;->mDueDateMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/calendar/task/TimelineTask;->mDurationMillis:I

    .line 306
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/android/calendar/task/TimelineTask;->mDurationMillis:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/calendar/task/TimelineTask;->mEndMillis:J

    .line 307
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/calendar/task/TimelineTask;->mEndMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/calendar/task/TimelineTask;->mEndMinute:I

    .line 308
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/android/calendar/task/TimelineTask;->mEndMinute:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/calendar/task/TimelineTask;->mJulianDay:I

    .line 309
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/android/calendar/task/TimelineTask;->mJulianDay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/calendar/task/TimelineTask;->mStartMinute:I

    .line 310
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/android/calendar/task/TimelineTask;->mStartMinute:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/calendar/task/TimelineTask;->mState:I

    .line 311
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/android/calendar/task/TimelineTask;->mState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/task/TimelineTask;->mTaskAssistanceProtoBytes:[B

    iget-object v2, p1, Lcom/android/calendar/task/TimelineTask;->mTaskAssistanceProtoBytes:[B

    .line 312
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/task/TimelineTask;->mTitle:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/calendar/task/TimelineTask;->mTitle:Ljava/lang/String;

    .line 313
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/calendar/task/TimelineTask;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getCalendarId()I
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/android/calendar/task/TimelineTask;->mColor:I

    return v0
.end method

.method public getEndDay()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/android/calendar/task/TimelineTask;->mJulianDay:I

    return v0
.end method

.method public getEndMillis()J
    .locals 2

    .prologue
    .line 207
    iget-wide v0, p0, Lcom/android/calendar/task/TimelineTask;->mEndMillis:J

    return-wide v0
.end method

.method public getEndTime()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/android/calendar/task/TimelineTask;->mEndMinute:I

    return v0
.end method

.method public getInfoUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/calendar/task/TimelineTask;->mInfoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrganizer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/calendar/task/TimelineTask;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getSelfAttendeeStatus()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public getSortId()J
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/calendar/task/TimelineTask;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSortType()I
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/android/calendar/task/TimelineTask;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getStartDay()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/android/calendar/task/TimelineTask;->mJulianDay:I

    return v0
.end method

.method public getStartMillis()J
    .locals 2

    .prologue
    .line 202
    iget-wide v0, p0, Lcom/android/calendar/task/TimelineTask;->mDueDateMillis:J

    return-wide v0
.end method

.method public getStartTime()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/android/calendar/task/TimelineTask;->mStartMinute:I

    return v0
.end method

.method public getTaskAssistanceProtoBytes()[B
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/calendar/task/TimelineTask;->mTaskAssistanceProtoBytes:[B

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/calendar/task/TimelineTask;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleAndLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/calendar/task/TimelineTask;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasDeclinedStatus()Z
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/calendar/task/TimelineTask;->isDone()Z

    move-result v0

    return v0
.end method

.method public hasHeadlineImage()Z
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/calendar/task/TimelineTask;->hasImage()Z

    move-result v0

    return v0
.end method

.method public hasImage()Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public hasInvitedStatus()Z
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/calendar/task/TimelineTask;->mInfoUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAllDay()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/android/calendar/task/TimelineTask;->mAllDay:Z

    return v0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 272
    iget v1, p0, Lcom/android/calendar/task/TimelineTask;->mState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDone(Z)V
    .locals 1

    .prologue
    .line 282
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/calendar/task/TimelineTask;->mState:I

    .line 283
    return-void

    .line 282
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowOrganizerImage()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public showEndTime()Z
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public spansAtLeastOneDay()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/android/calendar/task/TimelineTask;->mAllDay:Z

    return v0
.end method

.method public supportsSwipe()Z
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/android/calendar/task/TimelineTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract updateTaskDone(Landroid/content/Context;Z)Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 122
    iget-object v1, p0, Lcom/android/calendar/task/TimelineTask;->mInfoUri:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 123
    iget-object v1, p0, Lcom/android/calendar/task/TimelineTask;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget v1, p0, Lcom/android/calendar/task/TimelineTask;->mColor:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object v1, p0, Lcom/android/calendar/task/TimelineTask;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-wide v2, p0, Lcom/android/calendar/task/TimelineTask;->mDueDateMillis:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 127
    iget v1, p0, Lcom/android/calendar/task/TimelineTask;->mDurationMillis:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-boolean v1, p0, Lcom/android/calendar/task/TimelineTask;->mAllDay:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v0, p0, Lcom/android/calendar/task/TimelineTask;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-object v0, p0, Lcom/android/calendar/task/TimelineTask;->mTaskAssistanceProtoBytes:[B

    if-nez v0, :cond_1

    .line 131
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    :goto_0
    iget v0, p0, Lcom/android/calendar/task/TimelineTask;->mJulianDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-wide v0, p0, Lcom/android/calendar/task/TimelineTask;->mEndMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 139
    iget v0, p0, Lcom/android/calendar/task/TimelineTask;->mStartMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget v0, p0, Lcom/android/calendar/task/TimelineTask;->mEndMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/task/TimelineTask;->mTaskAssistanceProtoBytes:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v0, p0, Lcom/android/calendar/task/TimelineTask;->mTaskAssistanceProtoBytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0
.end method
