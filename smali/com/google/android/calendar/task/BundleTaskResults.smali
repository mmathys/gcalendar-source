.class Lcom/google/android/calendar/task/BundleTaskResults;
.super Lcom/android/calendar/timely/MonthData$TaskResults;
.source "BundleTaskResults.java"


# instance fields
.field private mDoneBundles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;",
            ">;"
        }
    .end annotation
.end field

.field private mFutureTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/task/TimelineTaskType;",
            ">;"
        }
    .end annotation
.end field

.field private mNumTasks:I

.field private mTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">;"
        }
    .end annotation
.end field

.field private mUnscheduled:Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/timely/MonthData$TaskResults;-><init>(II)V

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mDoneBundles:Landroid/util/SparseArray;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mFutureTasks:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mTasks:Ljava/util/List;

    .line 30
    return-void
.end method

.method private addBundleToTimeline(Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;)V
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p1}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->getNumReminders()I

    move-result v0

    if-lez v0, :cond_0

    .line 140
    invoke-virtual {p1}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->getNumReminders()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 141
    invoke-virtual {p1}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->getReminders()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    invoke-super {p0, v0}, Lcom/android/calendar/timely/MonthData$TaskResults;->addTimelineItem(Lcom/android/calendar/timely/TimelineItem;)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-super {p0, p1}, Lcom/android/calendar/timely/MonthData$TaskResults;->addTimelineItem(Lcom/android/calendar/timely/TimelineItem;)V

    goto :goto_0
.end method

.method private cleanUpRecurrencesInUnscheduledBundle()V
    .locals 8

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mUnscheduled:Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mUnscheduled:Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;

    invoke-virtual {v0}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->getNumReminders()I

    move-result v0

    if-nez v0, :cond_1

    .line 210
    :cond_0
    return-void

    .line 166
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 167
    iget-object v0, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mFutureTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/task/TimelineTaskType;

    .line 168
    check-cast v0, Lcom/google/android/calendar/task/ArpTimelineTask;

    .line 169
    invoke-virtual {v0}, Lcom/google/android/calendar/task/ArpTimelineTask;->isRecurringSometimeToday()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 170
    invoke-virtual {v0}, Lcom/google/android/calendar/task/ArpTimelineTask;->getRecurrenceId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mUnscheduled:Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;

    invoke-virtual {v0}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->getStartMillis()J

    move-result-wide v4

    .line 177
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mDoneBundles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 178
    iget-object v0, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mDoneBundles:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;

    .line 179
    invoke-virtual {v0}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->getStartMillis()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-eqz v3, :cond_5

    .line 177
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 183
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->getReminders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    .line 184
    check-cast v0, Lcom/google/android/calendar/task/ArpTimelineTask;

    .line 185
    invoke-virtual {v0}, Lcom/google/android/calendar/task/ArpTimelineTask;->isRecurringSometimeToday()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 186
    invoke-virtual {v0}, Lcom/google/android/calendar/task/ArpTimelineTask;->getRecurrenceId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 192
    :cond_7
    iget-object v0, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mUnscheduled:Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;

    invoke-virtual {v0}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->getReminders()Ljava/util/List;

    move-result-object v0

    .line 193
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 194
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 195
    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/ArpTimelineTask;

    .line 197
    invoke-virtual {v0}, Lcom/google/android/calendar/task/ArpTimelineTask;->getRecurrenceId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 198
    invoke-virtual {v0}, Lcom/google/android/calendar/task/ArpTimelineTask;->getRecurrenceId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 203
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 204
    :cond_9
    invoke-virtual {v0}, Lcom/google/android/calendar/task/ArpTimelineTask;->getRecurrenceId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 206
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_3
.end method


# virtual methods
.method public addTimelineItem(Lcom/android/calendar/timely/TimelineItem;)V
    .locals 3

    .prologue
    .line 34
    check-cast p1, Lcom/google/android/calendar/task/ArpTimelineTask;

    .line 36
    iget v0, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mNumTasks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mNumTasks:I

    .line 37
    invoke-virtual {p1}, Lcom/google/android/calendar/task/ArpTimelineTask;->isUnscheduled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/calendar/task/ArpTimelineTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mUnscheduled:Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;

    invoke-direct {v0, p1}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;-><init>(Lcom/android/calendar/task/TimelineTask;)V

    iput-object v0, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mUnscheduled:Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;

    .line 54
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mUnscheduled:Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;

    invoke-virtual {v0, p1}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->addTimelineTask(Lcom/android/calendar/task/TimelineTask;)V

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/calendar/task/ArpTimelineTask;->isDone()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    invoke-virtual {p1}, Lcom/google/android/calendar/task/ArpTimelineTask;->getStartDay()I

    move-result v1

    .line 45
    iget-object v0, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mDoneBundles:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;

    .line 46
    if-nez v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mDoneBundles:Landroid/util/SparseArray;

    new-instance v2, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;

    invoke-direct {v2, p1}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;-><init>(Lcom/android/calendar/task/TimelineTask;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->addTimelineTask(Lcom/android/calendar/task/TimelineTask;)V

    goto :goto_0

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mFutureTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public finalizeStorage()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 74
    iget-object v0, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mFutureTasks:Ljava/util/List;

    sget-object v2, Lcom/android/calendar/task/TimelineTaskType;->DATE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 75
    iget-object v0, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mFutureTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_5

    .line 76
    iget-object v0, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mFutureTasks:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/task/TimelineTaskType;

    move v3, v1

    .line 77
    :goto_0
    iget-object v1, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mFutureTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    .line 78
    iget-object v1, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mFutureTasks:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/task/TimelineTaskType;

    .line 79
    sget-object v1, Lcom/android/calendar/task/TimelineTaskType;->DATE_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v1, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_0

    .line 82
    instance-of v1, v0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;

    if-nez v1, :cond_9

    .line 83
    new-instance v1, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;

    check-cast v0, Lcom/android/calendar/task/TimelineTask;

    invoke-direct {v1, v0}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;-><init>(Lcom/android/calendar/task/TimelineTask;)V

    :goto_1
    move-object v0, v1

    .line 85
    check-cast v0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;

    check-cast v2, Lcom/android/calendar/task/TimelineTask;

    invoke-virtual {v0, v2}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->addTimelineTask(Lcom/android/calendar/task/TimelineTask;)V

    .line 77
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v0, v1

    goto :goto_0

    .line 87
    :cond_0
    invoke-super {p0, v0}, Lcom/android/calendar/timely/MonthData$TaskResults;->addTimelineItem(Lcom/android/calendar/timely/TimelineItem;)V

    .line 88
    instance-of v1, v0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;

    if-eqz v1, :cond_1

    .line 89
    check-cast v0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;

    .line 91
    invoke-virtual {v0}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->sort()V

    :cond_1
    move-object v1, v2

    .line 93
    goto :goto_2

    .line 96
    :cond_2
    invoke-super {p0, v0}, Lcom/android/calendar/timely/MonthData$TaskResults;->addTimelineItem(Lcom/android/calendar/timely/TimelineItem;)V

    .line 97
    instance-of v1, v0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;

    if-eqz v1, :cond_3

    .line 98
    check-cast v0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;

    .line 100
    invoke-virtual {v0}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->sort()V

    .line 106
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mUnscheduled:Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;

    if-eqz v0, :cond_4

    .line 107
    iget-object v0, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mUnscheduled:Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;

    invoke-virtual {v0}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->sort()V

    .line 108
    invoke-direct {p0}, Lcom/google/android/calendar/task/BundleTaskResults;->cleanUpRecurrencesInUnscheduledBundle()V

    .line 109
    iget-object v0, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mUnscheduled:Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;

    invoke-direct {p0, v0}, Lcom/google/android/calendar/task/BundleTaskResults;->addBundleToTimeline(Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;)V

    :cond_4
    move v1, v4

    .line 112
    :goto_4
    iget-object v0, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mDoneBundles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 113
    iget-object v0, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mDoneBundles:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 114
    iget-object v2, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mDoneBundles:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;

    .line 115
    invoke-virtual {v0}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->sort()V

    .line 116
    invoke-direct {p0, v0}, Lcom/google/android/calendar/task/BundleTaskResults;->addBundleToTimeline(Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;)V

    .line 112
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 102
    :cond_5
    iget-object v0, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mFutureTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 103
    iget-object v0, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mFutureTasks:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    invoke-super {p0, v0}, Lcom/android/calendar/timely/MonthData$TaskResults;->addTimelineItem(Lcom/android/calendar/timely/TimelineItem;)V

    goto :goto_3

    .line 119
    :cond_6
    iget-object v0, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    .line 120
    instance-of v2, v0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;

    if-eqz v2, :cond_7

    .line 121
    iget-object v2, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mTasks:Ljava/util/List;

    check-cast v0, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;

    invoke-virtual {v0}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->getReminders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 123
    :cond_7
    iget-object v2, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mTasks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 127
    :cond_8
    iput-object v5, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mFutureTasks:Ljava/util/List;

    .line 128
    iput-object v5, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mUnscheduled:Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;

    .line 129
    iput-object v5, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mDoneBundles:Landroid/util/SparseArray;

    .line 130
    return-void

    :cond_9
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public getTasks()Ljava/util/List;
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
    .line 57
    iget-object v0, p0, Lcom/google/android/calendar/task/BundleTaskResults;->mTasks:Ljava/util/List;

    return-object v0
.end method
