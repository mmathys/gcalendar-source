.class public Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;
.super Lcom/android/calendar/task/TimelineTaskBundle;
.source "TimelyTimelineTaskBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/task/TimelyTimelineTaskBundle$IncompleteTaskComparator;,
        Lcom/google/android/calendar/task/TimelyTimelineTaskBundle$DoneTaskComparator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle$1;

    invoke-direct {v0}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/calendar/task/TimelineTaskBundle;-><init>(Landroid/os/Parcel;)V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 47
    iget-object v0, p0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->mTimelineTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 49
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 50
    new-instance v2, Lcom/google/android/calendar/task/ArpTimelineTask;

    invoke-direct {v2, p1}, Lcom/google/android/calendar/task/ArpTimelineTask;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p0, v2}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->addTimelineTask(Lcom/android/calendar/task/TimelineTask;)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->buildId()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->mId:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/task/TimelineTask;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/calendar/task/TimelineTaskBundle;-><init>(Lcom/android/calendar/task/TimelineTask;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->addTimelineTask(Lcom/android/calendar/task/TimelineTask;)V

    .line 41
    invoke-direct {p0}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->buildId()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->mId:Ljava/lang/String;

    .line 42
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private buildId()Ljava/lang/StringBuilder;
    .locals 6

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->getOrganizer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-virtual {p0}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->getStartDay()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->isAllDay()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    const-string v1, "/allday"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p0}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    const-string v1, "/done"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_0
    :goto_0
    return-object v0

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->isUnscheduled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const-string v1, "/unscheduled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 157
    :cond_2
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->getStartTime()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method protected addTimelineTask(Lcom/android/calendar/task/TimelineTask;)V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/android/calendar/task/TimelineTaskBundle;->addTimelineTask(Lcom/android/calendar/task/TimelineTask;)V

    .line 133
    iget-object v0, p0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->mTimelineTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public contains(Lcom/android/calendar/task/TimelineTask;)Z
    .locals 3

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/android/calendar/task/TimelineTask;->getId()Ljava/lang/Object;

    move-result-object v1

    .line 68
    iget-object v0, p0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->mTimelineTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    .line 69
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getId()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAssistActionText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAssistInfoText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getId()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfoUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getSortId()J
    .locals 4

    .prologue
    .line 283
    invoke-super {p0}, Lcom/android/calendar/task/TimelineTaskBundle;->getSortId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->isUnscheduled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-long v0, v0

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public gotoAssist(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public hasAssist()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    .prologue
    .line 107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected isUnscheduled()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->mTimelineTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->mTimelineTaskList:Ljava/util/ArrayList;

    .line 138
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/ArpTimelineTask;

    invoke-virtual {v0}, Lcom/google/android/calendar/task/ArpTimelineTask;->isUnscheduled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 138
    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->mTimelineTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->mUpdateFinished:Z

    .line 87
    return-void
.end method

.method public reset(Lcom/android/calendar/task/TimelineTask;)V
    .locals 0

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->reset()V

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->addTimelineTask(Lcom/android/calendar/task/TimelineTask;)V

    .line 80
    return-void
.end method

.method public sort()V
    .locals 3

    .prologue
    .line 168
    iget-object v1, p0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->mTimelineTaskList:Ljava/util/ArrayList;

    .line 169
    invoke-virtual {p0}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->getSortType()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    .line 170
    new-instance v0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle$DoneTaskComparator;

    invoke-direct {v0}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle$DoneTaskComparator;-><init>()V

    .line 168
    :goto_0
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 171
    return-void

    .line 170
    :cond_0
    new-instance v0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle$IncompleteTaskComparator;

    invoke-direct {v0}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle$IncompleteTaskComparator;-><init>()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Lcom/android/calendar/task/TimelineTaskBundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 58
    iget-object v0, p0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->mTimelineTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-object v0, p0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->mTimelineTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    .line 61
    invoke-interface {v0, p1, p2}, Lcom/android/calendar/timely/TimelineItem;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method
