.class Lcom/android/calendar/widget/WidgetDataMachine;
.super Lcom/android/calendar/widget/CalendarAppWidgetModel;
.source "WidgetDataMachine.java"

# interfaces
.implements Lcom/android/calendar/widget/WidgetEventLoader$EventsProcessor;
.implements Lcom/android/calendar/widget/WidgetTaskLoader$TaskProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/widget/WidgetDataMachine$OnProcessCompleteListener;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/android/calendar/widget/WidgetDataMachine$OnProcessCompleteListener;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/calendar/widget/WidgetDataMachine$OnProcessCompleteListener;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/widget/CalendarAppWidgetModel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/widget/WidgetDataMachine;->mResources:Landroid/content/res/Resources;

    .line 32
    iput-object p3, p0, Lcom/android/calendar/widget/WidgetDataMachine;->mListener:Lcom/android/calendar/widget/WidgetDataMachine$OnProcessCompleteListener;

    .line 33
    return-void
.end method

.method private addTasks()V
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getTaskDataFactory()Lcom/android/calendar/task/BaseTaskDataFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/widget/WidgetDataMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/calendar/task/BaseTaskDataFactory;->getInstanceWidgetTaskLoader(Landroid/content/Context;)Lcom/android/calendar/widget/WidgetTaskLoader;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0, p0}, Lcom/android/calendar/widget/WidgetTaskLoader;->loadTasks(Lcom/android/calendar/widget/WidgetTaskLoader$TaskProcessor;)V

    .line 72
    :cond_0
    return-void
.end method

.method private processBirthdayItems(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/calendar/timely/TimelineBirthday;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 92
    :cond_0
    return-void

    .line 85
    :cond_1
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getBirthdayManager()Lcom/android/calendar/BirthdayManagerInterface;

    move-result-object v1

    .line 86
    new-instance v2, Lcom/android/calendar/SparseArrayIterator;

    invoke-direct {v2, p1}, Lcom/android/calendar/SparseArrayIterator;-><init>(Landroid/util/SparseArray;)V

    .line 87
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineBirthday;

    .line 89
    iget-object v3, p0, Lcom/android/calendar/widget/WidgetDataMachine;->mContext:Landroid/content/Context;

    invoke-interface {v1, v3, v0}, Lcom/android/calendar/BirthdayManagerInterface;->initBirthdayItem(Landroid/content/Context;Lcom/android/calendar/timely/TimelineBirthday;)V

    .line 90
    iget-object v3, p0, Lcom/android/calendar/widget/WidgetDataMachine;->mResources:Landroid/content/res/Resources;

    invoke-interface {v1, v3, v0}, Lcom/android/calendar/BirthdayManagerInterface;->updateTitle(Landroid/content/res/Resources;Lcom/android/calendar/timely/TimelineBirthday;)V

    goto :goto_0
.end method

.method private processTasks(Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;)V
    .locals 3

    .prologue
    .line 98
    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p1, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mAllDayTaskBuckets:Landroid/util/SparseArray;

    .line 100
    invoke-virtual {p0}, Lcom/android/calendar/widget/WidgetDataMachine;->getStartDay()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/calendar/widget/WidgetDataMachine;->getEndDay()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->sortBucketSet(Landroid/util/SparseArray;II)V

    .line 101
    iget-object v0, p1, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mTimedTaskBuckets:Landroid/util/SparseArray;

    .line 102
    invoke-virtual {p0}, Lcom/android/calendar/widget/WidgetDataMachine;->getStartDay()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/calendar/widget/WidgetDataMachine;->getEndDay()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->sortBucketSet(Landroid/util/SparseArray;II)V

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getStorage()Lcom/android/calendar/timely/RangedData$EventResults;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/calendar/widget/CalendarAppWidgetModel;->getStorage()Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;

    move-result-object v0

    return-object v0
.end method

.method public processResults(Lcom/android/calendar/timely/RangedData;Lcom/android/calendar/timely/RangedData$EventResults;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 43
    invoke-static {p0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    const-string v0, "CalendarWidget"

    const-string v1, "Unable to process %d. This does not match %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 45
    invoke-virtual {p0}, Lcom/android/calendar/widget/WidgetDataMachine;->getToken()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p1, v2, v4

    .line 44
    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 64
    :goto_0
    return-void

    .line 48
    :cond_0
    const-string v0, "CalendarWidget"

    const-string v2, "Querying completed for %d ..."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/calendar/widget/WidgetDataMachine;->getToken()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 50
    invoke-direct {p0}, Lcom/android/calendar/widget/WidgetDataMachine;->addTasks()V

    .line 52
    invoke-virtual {p0}, Lcom/android/calendar/widget/WidgetDataMachine;->getStorage()Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;

    move-result-object v2

    .line 54
    invoke-direct {p0, v2}, Lcom/android/calendar/widget/WidgetDataMachine;->processTasks(Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;)V

    .line 55
    if-eqz v2, :cond_3

    iget-object v0, v2, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mBirthdays:Landroid/util/SparseArray;

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/calendar/widget/WidgetDataMachine;->processBirthdayItems(Landroid/util/SparseArray;)V

    .line 56
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetDataMachine;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 57
    iget-object v1, v2, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->mHolidayBuckets:Landroid/util/SparseArray;

    .line 56
    :cond_1
    invoke-static {v0, v1}, Lcom/android/calendar/timely/TimelineHoliday;->initHolidayInformation(Landroid/content/Context;Landroid/util/SparseArray;)V

    .line 59
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->size()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_2

    .line 60
    const-string v0, "CalendarWidget"

    const-string v1, "... storage.size: too small"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetDataMachine;->mListener:Lcom/android/calendar/widget/WidgetDataMachine$OnProcessCompleteListener;

    invoke-interface {v0, p0}, Lcom/android/calendar/widget/WidgetDataMachine$OnProcessCompleteListener;->onProcessComplete(Lcom/android/calendar/widget/CalendarAppWidgetModel;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 55
    goto :goto_1
.end method
