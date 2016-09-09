.class final Lcom/google/android/calendar/task/ArpRemindersBufferIterator;
.super Ljava/lang/Object;
.source "ArpRemindersBufferIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/android/calendar/task/ArpTimelineTask;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccountColor:I

.field private final mAccountName:Ljava/lang/String;

.field private mCurrent:I

.field private final mDateTimeService:Lcom/android/calendar/time/DateTimeService;

.field private final mIsProjectDubaiEnabled:Z

.field private final mRemindersBuffer:Lcom/google/android/gms/reminders/model/RemindersBuffer;

.field private final mRemindersBufferSize:I

.field private final mTodayMillis:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/reminders/model/RemindersBuffer;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->mCurrent:I

    .line 51
    iput-object p2, p0, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->mRemindersBuffer:Lcom/google/android/gms/reminders/model/RemindersBuffer;

    .line 52
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->mRemindersBuffer:Lcom/google/android/gms/reminders/model/RemindersBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/RemindersBuffer;->getCount()I

    move-result v0

    iput v0, p0, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->mRemindersBufferSize:I

    .line 53
    iput-object p3, p0, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->mAccountName:Ljava/lang/String;

    .line 54
    invoke-static {p1, p3}, Lcom/google/android/calendar/task/TaskUtils;->getTaskCalendarColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->mAccountColor:I

    .line 55
    invoke-static {p1}, Lcom/android/calendar/time/DateTimeService;->getNewInstance(Landroid/content/Context;)Lcom/android/calendar/time/DateTimeService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->mDateTimeService:Lcom/android/calendar/time/DateTimeService;

    .line 56
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->mDateTimeService:Lcom/android/calendar/time/DateTimeService;

    invoke-virtual {v0}, Lcom/android/calendar/time/DateTimeService;->today()Lcom/android/calendar/time/DateTimeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/time/DateTimeImpl;->getMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->mTodayMillis:J

    .line 57
    sget-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->PROJECT_DUBAI:Lcom/google/android/calendar/experiments/Experiment;

    invoke-virtual {v0, p1}, Lcom/google/android/calendar/experiments/Experiment;->isActive(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->mIsProjectDubaiEnabled:Z

    .line 60
    invoke-direct {p0}, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->filter()V

    .line 61
    return-void
.end method

.method private filter()V
    .locals 2

    .prologue
    .line 67
    :goto_0
    iget v0, p0, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->mCurrent:I

    iget v1, p0, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->mRemindersBufferSize:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->mRemindersBuffer:Lcom/google/android/gms/reminders/model/RemindersBuffer;

    iget v1, p0, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->mCurrent:I

    .line 68
    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/RemindersBuffer;->get(I)Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/task/TaskUtils;->shouldTaskBeInCalendar(Lcom/google/android/gms/reminders/model/Task;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget v0, p0, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->mCurrent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->mCurrent:I

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->mCurrent:I

    iget v1, p0, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->mRemindersBufferSize:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/google/android/calendar/task/ArpTimelineTask;
    .locals 9

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 30
    iget v1, p0, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->mCurrent:I

    iget v2, p0, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->mRemindersBufferSize:I

    if-ge v1, v2, :cond_0

    .line 31
    new-instance v1, Lcom/google/android/calendar/task/ArpTaskSetup;

    iget-object v0, p0, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->mRemindersBuffer:Lcom/google/android/gms/reminders/model/RemindersBuffer;

    iget v2, p0, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->mCurrent:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/reminders/model/RemindersBuffer;->get(I)Lcom/google/android/gms/reminders/model/Task;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->mAccountName:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->mAccountColor:I

    iget-object v5, p0, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->mDateTimeService:Lcom/android/calendar/time/DateTimeService;

    iget-wide v6, p0, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->mTodayMillis:J

    iget-boolean v8, p0, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->mIsProjectDubaiEnabled:Z

    invoke-direct/range {v1 .. v8}, Lcom/google/android/calendar/task/ArpTaskSetup;-><init>(Lcom/google/android/gms/reminders/model/Task;Ljava/lang/String;ILcom/android/calendar/time/DateTimeService;JZ)V

    .line 34
    new-instance v0, Lcom/google/android/calendar/task/ArpTimelineTask;

    invoke-direct {v0, v1}, Lcom/google/android/calendar/task/ArpTimelineTask;-><init>(Lcom/google/android/calendar/task/ArpTaskSetup;)V

    .line 38
    :cond_0
    iget v1, p0, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->mCurrent:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->mCurrent:I

    .line 39
    invoke-direct {p0}, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->filter()V

    .line 41
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->next()Lcom/google/android/calendar/task/ArpTimelineTask;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
