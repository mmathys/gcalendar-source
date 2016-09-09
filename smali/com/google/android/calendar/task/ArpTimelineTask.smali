.class public Lcom/google/android/calendar/task/ArpTimelineTask;
.super Lcom/google/android/calendar/task/TimelyTimelineTask;
.source "ArpTimelineTask.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/task/ArpTimelineTask;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mArchivedTimeMillis:Ljava/lang/Long;

.field private final mCreatedTimeMillis:Ljava/lang/Long;

.field private final mExternalApplicationLink:Lcom/google/android/gms/reminders/model/ExternalApplicationLink;

.field private final mId:Ljava/lang/String;

.field private final mOriginalDueMillis:Ljava/lang/Long;

.field private final mRecurrence:Lcom/google/android/gms/reminders/model/Recurrence;

.field private final mRecurrenceId:Ljava/lang/String;

.field private final mRecurringSometimeToday:Z

.field private final mTaskAssistHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

.field private final mUnscheduled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/google/android/calendar/task/ArpTimelineTask;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/task/ArpTimelineTask;->TAG:Ljava/lang/String;

    .line 195
    new-instance v0, Lcom/google/android/calendar/task/ArpTimelineTask$1;

    invoke-direct {v0}, Lcom/google/android/calendar/task/ArpTimelineTask$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/task/ArpTimelineTask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/calendar/task/TimelyTimelineTask;-><init>(Landroid/os/Parcel;)V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mId:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mUnscheduled:Z

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mRecurringSometimeToday:Z

    .line 42
    const-class v0, Lcom/google/android/gms/reminders/model/ExternalApplicationLink;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/ExternalApplicationLink;

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mExternalApplicationLink:Lcom/google/android/gms/reminders/model/ExternalApplicationLink;

    .line 44
    const-class v0, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/Recurrence;

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mRecurrence:Lcom/google/android/gms/reminders/model/Recurrence;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mRecurrenceId:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTimelineTask;->getTaskAssistanceProtoBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/task/TaskAssistanceUtils;->createTaskAssistHolder([B)Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mTaskAssistHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mArchivedTimeMillis:Ljava/lang/Long;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mCreatedTimeMillis:Ljava/lang/Long;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mOriginalDueMillis:Ljava/lang/Long;

    .line 51
    return-void

    :cond_0
    move v0, v2

    .line 40
    goto :goto_0

    :cond_1
    move v1, v2

    .line 41
    goto :goto_1
.end method

.method public constructor <init>(Lcom/google/android/calendar/task/ArpTaskSetup;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/calendar/task/TimelyTimelineTask;-><init>(Lcom/android/calendar/task/TaskSetup;)V

    .line 69
    invoke-virtual {p1}, Lcom/google/android/calendar/task/ArpTaskSetup;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mId:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Lcom/google/android/calendar/task/ArpTaskSetup;->getExternalApplicationLink()Lcom/google/android/gms/reminders/model/ExternalApplicationLink;

    move-result-object v0

    .line 75
    invoke-virtual {p1}, Lcom/google/android/calendar/task/ArpTaskSetup;->getRecurrence()Lcom/google/android/gms/reminders/model/Recurrence;

    move-result-object v2

    .line 76
    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mExternalApplicationLink:Lcom/google/android/gms/reminders/model/ExternalApplicationLink;

    .line 77
    if-nez v2, :cond_1

    :goto_1
    iput-object v1, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mRecurrence:Lcom/google/android/gms/reminders/model/Recurrence;

    .line 79
    invoke-virtual {p1}, Lcom/google/android/calendar/task/ArpTaskSetup;->getRecurrenceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mRecurrenceId:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Lcom/google/android/calendar/task/ArpTaskSetup;->getTaskAssistHolder()Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mTaskAssistHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    .line 81
    invoke-virtual {p1}, Lcom/google/android/calendar/task/ArpTaskSetup;->isUnscheduled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mUnscheduled:Z

    .line 82
    invoke-virtual {p1}, Lcom/google/android/calendar/task/ArpTaskSetup;->isRecurringSometimeToday()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mRecurringSometimeToday:Z

    .line 83
    invoke-virtual {p1}, Lcom/google/android/calendar/task/ArpTaskSetup;->getArchivedTime()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mArchivedTimeMillis:Ljava/lang/Long;

    .line 84
    invoke-virtual {p1}, Lcom/google/android/calendar/task/ArpTaskSetup;->getCreatedTime()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mCreatedTimeMillis:Ljava/lang/Long;

    .line 85
    invoke-virtual {p1}, Lcom/google/android/calendar/task/ArpTaskSetup;->getOriginalDueTimeMillis()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mOriginalDueMillis:Ljava/lang/Long;

    .line 86
    return-void

    .line 76
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/ExternalApplicationLink;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/ExternalApplicationLink;

    goto :goto_0

    .line 77
    :cond_1
    invoke-interface {v2}, Lcom/google/android/gms/reminders/model/Recurrence;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/Recurrence;

    move-object v1, v0

    goto :goto_1
.end method


# virtual methods
.method public addArgs(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/google/android/calendar/task/TimelyTimelineTask;->addArgs(Landroid/os/Bundle;)V

    .line 146
    const-string v0, "account_name"

    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTimelineTask;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v0, "task_id"

    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 134
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v0

    .line 137
    :cond_1
    check-cast p1, Lcom/google/android/calendar/task/ArpTimelineTask;

    .line 139
    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mId:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/calendar/task/ArpTimelineTask;->mId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-super {p0, p1}, Lcom/google/android/calendar/task/TimelyTimelineTask;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getArchivedTimeMillis()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mArchivedTimeMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public getAssistActionText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mTaskAssistHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    invoke-virtual {v0, p1}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->isClickable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mTaskAssistHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    invoke-virtual {v0, p1}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->getAssistActionText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAssistInfoText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mTaskAssistHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    invoke-virtual {v0, p1}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->getAssistInfoText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreatedTimeMillis()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mCreatedTimeMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public getDetailsDueMillis()J
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTimelineTask;->getStartMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDetailsEventRecurrence(Lcom/android/calendar/time/DateTimeService;)Lcom/android/calendarcommon2/EventRecurrence;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mRecurrence:Lcom/google/android/gms/reminders/model/Recurrence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mRecurrence:Lcom/google/android/gms/reminders/model/Recurrence;

    invoke-static {v0, p1}, Lcom/google/android/calendar/task/RecurrenceConverter;->toRfcRecurrence(Lcom/google/android/gms/reminders/model/Recurrence;Lcom/android/calendar/time/DateTimeService;)Lcom/android/calendarcommon2/EventRecurrence;

    move-result-object v0

    goto :goto_0
.end method

.method public getDetailsIsAllDay()Z
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTimelineTask;->isAllDay()Z

    move-result v0

    return v0
.end method

.method public getDurationMillis()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mDurationMillis:I

    return v0
.end method

.method public getExternalApplicationLink()Lcom/google/android/gms/reminders/model/ExternalApplicationLink;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mExternalApplicationLink:Lcom/google/android/gms/reminders/model/ExternalApplicationLink;

    return-object v0
.end method

.method public bridge synthetic getId()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTimelineTask;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mTaskAssistHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    invoke-virtual {v0}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalDueTimeMillis()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mOriginalDueMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public getRecurrenceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mRecurrenceId:Ljava/lang/String;

    return-object v0
.end method

.method public gotoAssist(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 126
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mTaskAssistHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mTaskAssistHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    sget v1, Lcom/android/calendar/R$string;->analytics_category_chip_action:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->logClick(Landroid/content/Context;I)V

    .line 128
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mTaskAssistHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    invoke-virtual {v0, p1}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->gotoAssist(Landroid/content/Context;)V

    .line 130
    :cond_0
    return-void
.end method

.method public hasAssist()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mTaskAssistHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImage()Z
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTimelineTask;->hasAssist()Z

    move-result v0

    return v0
.end method

.method public isRecurringSometimeToday()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mRecurringSometimeToday:Z

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    .prologue
    .line 100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isUnscheduled()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mUnscheduled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 264
    const-string v0, "%s(title=%s, id=%s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 265
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTimelineTask;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTimelineTask;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 264
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateTaskDone(Landroid/content/Context;Z)Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;
    .locals 5

    .prologue
    .line 181
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getTaskDataFactory()Lcom/android/calendar/task/BaseTaskDataFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/task/BaseTaskDataFactory;->getTaskConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/TaskConnection;

    .line 182
    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTimelineTask;->getAccountName()Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-virtual {p0, p2}, Lcom/google/android/calendar/task/ArpTimelineTask;->setDone(Z)V

    .line 184
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTimelineTask;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, p1, v1, p2, v2}, Lcom/google/android/calendar/task/TaskConnection;->updateTasksDoneStatus(Landroid/content/Context;Ljava/lang/String;Z[Ljava/lang/String;)Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    invoke-super {p0, p1, p2}, Lcom/google/android/calendar/task/TimelyTimelineTask;->writeToParcel(Landroid/os/Parcel;I)V

    .line 56
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-boolean v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mUnscheduled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-boolean v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mRecurringSometimeToday:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mExternalApplicationLink:Lcom/google/android/gms/reminders/model/ExternalApplicationLink;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 60
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mRecurrence:Lcom/google/android/gms/reminders/model/Recurrence;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 61
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mRecurrenceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mArchivedTimeMillis:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 63
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mCreatedTimeMillis:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 64
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTimelineTask;->mOriginalDueMillis:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 65
    return-void

    :cond_0
    move v0, v2

    .line 57
    goto :goto_0

    :cond_1
    move v1, v2

    .line 58
    goto :goto_1
.end method
