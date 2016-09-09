.class public final Lcom/google/android/calendar/task/edit/TimelyMutableTask;
.super Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;
.source "TimelyMutableTask.java"


# instance fields
.field private final mCanChangeTitle:Z

.field private final mSuggestionTextForAnnotationHint:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskAssistance:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskDurationMillis:Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/task/edit/TimelyImmutableTask;)V
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->getTaskKey()Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->getBackgroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->getForegroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/calendar/v2/client/service/impl/tasks/MutableTaskImpl;-><init>(Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;Lcom/google/calendar/v2/client/service/api/common/Color;Lcom/google/calendar/v2/client/service/api/common/Color;)V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->mutableTitle()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {p0}, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->mutableDueTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->getDueTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {p0}, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->mutableIsDueAllDay()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->isDueAllDay()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->set(Z)V

    .line 47
    invoke-virtual {p0}, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->mutableIsComplete()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->isComplete()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->set(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->mutableTitle()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p0}, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->mutableRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->getRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;->set(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {p1}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->getOriginalTask()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getAssistance()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/task/TaskAssistanceUtils;->getAssistance([B)Lcom/google/android/calendar/task/nano/CalendarAssistance;

    move-result-object v1

    .line 52
    if-nez v1, :cond_0

    .line 53
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->mTaskAssistance:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 56
    invoke-virtual {p0}, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->mutableAnnotationHint()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v2

    if-nez v1, :cond_1

    const-string v0, ""

    :goto_1
    invoke-interface {v2, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {p1}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->mSuggestionTextForAnnotationHint:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 58
    invoke-virtual {p1}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->canChangeTitle()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->mCanChangeTitle:Z

    .line 60
    invoke-virtual {p1}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->getOriginalTask()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getExtensions()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/task/TaskUtils;->getTaskExtensions([B)Lcom/google/caribou/tasks/nano/TaskExtensions;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/google/android/calendar/task/TaskUtils;->getDurationMillisFromTaskExtension(Lcom/google/caribou/tasks/nano/TaskExtensions;)I

    move-result v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(I)Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->mTaskDurationMillis:Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

    .line 63
    return-void

    .line 53
    :cond_0
    iget-object v0, v1, Lcom/google/android/calendar/task/nano/CalendarAssistance;->taskAssistance:Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;

    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, v1, Lcom/google/android/calendar/task/nano/CalendarAssistance;->taskAnnotationHint:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public canChangeTitle()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->mCanChangeTitle:Z

    return v0
.end method

.method public isAnnotationHintRelevant()Z
    .locals 3

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 98
    :goto_0
    return v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->mSuggestionTextForAnnotationHint:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    const/4 v0, 0x1

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public mutableSuggestionTextForAnnotationHint()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->mSuggestionTextForAnnotationHint:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public mutableTaskAssistance()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->mTaskAssistance:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public mutableTaskDurationMillis()Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->mTaskDurationMillis:Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

    return-object v0
.end method
