.class public final Lcom/google/android/calendar/task/ArpExtendedTaskSetup;
.super Lcom/google/android/calendar/task/ArpTaskSetup;
.source "ArpExtendedTaskSetup.java"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/reminders/model/Task;Ljava/lang/String;ILcom/android/calendar/time/DateTimeService;JZ)V
    .locals 1

    .prologue
    .line 15
    invoke-direct/range {p0 .. p7}, Lcom/google/android/calendar/task/ArpTaskSetup;-><init>(Lcom/google/android/gms/reminders/model/Task;Ljava/lang/String;ILcom/android/calendar/time/DateTimeService;JZ)V

    .line 16
    return-void
.end method


# virtual methods
.method public bridge synthetic getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getArchivedTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->getArchivedTime()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getColor()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->getColor()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCreatedTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->getCreatedTime()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDateTime()Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->getDateTime()Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDueDateJulian()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->getDueDateJulian()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDueDateMillis()J
    .locals 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->getDueDateMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getDueMinuteOnDueDate()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->getDueMinuteOnDueDate()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDurationMillis()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->getDurationMillis()I

    move-result v0

    return v0
.end method

.method public getExternalApplicationLink()Lcom/google/android/gms/reminders/model/ExternalApplicationLink;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpExtendedTaskSetup;->mTask:Lcom/google/android/gms/reminders/model/Task;

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getExternalApplicationLink()Lcom/google/android/gms/reminders/model/ExternalApplicationLink;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInfoUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->getInfoUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOriginalDueTimeMillis()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->getOriginalDueTimeMillis()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getRecurrence()Lcom/google/android/gms/reminders/model/Recurrence;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpExtendedTaskSetup;->mTask:Lcom/google/android/gms/reminders/model/Task;

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpExtendedTaskSetup;->mTask:Lcom/google/android/gms/reminders/model/Task;

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getRecurrence()Lcom/google/android/gms/reminders/model/Recurrence;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getRecurrenceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->getRecurrenceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTaskAssistHolder()Lcom/google/android/calendar/task/assist/TaskAssistHolder;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->getTaskAssistHolder()Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    move-result-object v0

    return-object v0
.end method

.method public getTaskAssistanceProtoBytes()[B
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpExtendedTaskSetup;->mTask:Lcom/google/android/gms/reminders/model/Task;

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getAssistance()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTaskState()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->getTaskState()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isAllDay()Z
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->isAllDay()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isRecurringSometimeToday()Z
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->isRecurringSometimeToday()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isUnscheduled()Z
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->isUnscheduled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
