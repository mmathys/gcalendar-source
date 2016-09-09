.class public abstract Lcom/android/calendar/event/data/AbstractTaskEditManager;
.super Lcom/android/calendar/event/data/AbstractEditManager;
.source "AbstractTaskEditManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/data/AbstractTaskEditManager$BaseTaskInputAspects;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/event/data/AbstractEditManager",
        "<",
        "Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;",
        ">;"
    }
.end annotation


# static fields
.field public static final TIME_ASPECT:Lcom/android/calendar/editor/AspectKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/editor/AspectKey",
            "<",
            "Lcom/android/calendar/event/data/InputAspectTime;",
            ">;"
        }
    .end annotation
.end field

.field public static final TITLE_ASPECT:Lcom/android/calendar/editor/AspectKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/editor/AspectKey",
            "<",
            "Lcom/android/calendar/event/data/InputAspectTitle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mInputAspects:Lcom/android/calendar/event/data/AbstractTaskEditManager$BaseTaskInputAspects;

.field private mLogMetrics:Lcom/android/calendar/event/data/TaskEditLogMetrics;

.field protected mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "com.android.calendar.task.title"

    const-class v1, Lcom/android/calendar/event/data/InputAspectTitle;

    invoke-static {v0, v1}, Lcom/android/calendar/editor/AspectKey;->from(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/calendar/editor/AspectKey;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->TITLE_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 40
    const-string v0, "com.android.calendar.task.time"

    const-class v1, Lcom/android/calendar/event/data/InputAspectTime;

    invoke-static {v0, v1}, Lcom/android/calendar/editor/AspectKey;->from(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/calendar/editor/AspectKey;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->TIME_ASPECT:Lcom/android/calendar/editor/AspectKey;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Landroid/app/LoaderManager;I)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/data/AbstractEditManager;-><init>(Landroid/app/Activity;Landroid/app/LoaderManager;I)V

    .line 52
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/calendar/event/data/AbstractEditManager;-><init>(Landroid/os/Parcel;)V

    .line 56
    return-void
.end method


# virtual methods
.method protected buildCalendarModelFromTask()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 94
    iget-object v1, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getOriginalTask()Lcom/google/calendar/v2/client/service/api/tasks/ImmutableTask;

    move-result-object v2

    .line 95
    if-nez v2, :cond_8

    move v1, v0

    .line 96
    :goto_0
    iget-object v3, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    invoke-virtual {v3}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getTask()Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    move-result-object v3

    .line 98
    iget-object v4, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    if-nez v4, :cond_0

    .line 99
    new-instance v4, Lcom/android/calendar/event/CalendarEventModel;

    invoke-direct {v4}, Lcom/android/calendar/event/CalendarEventModel;-><init>()V

    iput-object v4, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    .line 102
    :cond_0
    iget-object v4, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iput-boolean v0, v4, Lcom/android/calendar/event/CalendarEventModel;->mIsTask:Z

    .line 104
    if-eqz v1, :cond_1

    .line 105
    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->observableAccountKey()Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    .line 106
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/common/AccountKey;->getPrincipalKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 107
    iget-object v4, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iput-object v0, v4, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 109
    iget-object v4, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iput-object v0, v4, Lcom/android/calendar/event/CalendarEventModel;->mCalendarOwnerAccount:Ljava/lang/String;

    .line 110
    iget-object v4, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iput-object v0, v4, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    .line 111
    iget-object v4, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iput-object v0, v4, Lcom/android/calendar/event/CalendarEventModel;->mCalendarDisplayName:Ljava/lang/String;

    .line 114
    :cond_1
    if-nez v1, :cond_2

    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/tasks/ImmutableTask;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->getTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 117
    :cond_3
    if-nez v1, :cond_4

    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->getDueTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/tasks/ImmutableTask;->getDueTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 118
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->getDueTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    .line 119
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->getDueTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/calendar/v2/client/service/api/time/TimeZone;->getId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/calendar/event/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 121
    :cond_5
    if-nez v1, :cond_6

    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->isDueAllDay()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/tasks/ImmutableTask;->isDueAllDay()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 122
    :cond_6
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->isDueAllDay()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    .line 124
    :cond_7
    return-void

    .line 95
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public eventIsNewOrHasChanged()Z
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->taskHasChanged()Z

    move-result v0

    return v0
.end method

.method protected getDefaultTaskAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getDefaultTaskAccount()Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getInputAspect(Lcom/android/calendar/editor/AspectKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AspectType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/calendar/editor/AspectKey",
            "<TAspectType;>;)TAspectType;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mInputAspects:Lcom/android/calendar/event/data/AbstractTaskEditManager$BaseTaskInputAspects;

    if-nez v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->getTaskInputAspects()Lcom/android/calendar/event/data/AbstractTaskEditManager$BaseTaskInputAspects;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mInputAspects:Lcom/android/calendar/event/data/AbstractTaskEditManager$BaseTaskInputAspects;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mInputAspects:Lcom/android/calendar/event/data/AbstractTaskEditManager$BaseTaskInputAspects;

    invoke-virtual {v0, p1}, Lcom/android/calendar/event/data/AbstractTaskEditManager$BaseTaskInputAspects;->implementsAspect(Lcom/android/calendar/editor/AspectKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mInputAspects:Lcom/android/calendar/event/data/AbstractTaskEditManager$BaseTaskInputAspects;

    invoke-virtual {p1, v0}, Lcom/android/calendar/editor/AspectKey;->castAspect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 213
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLogMetrics()Lcom/android/calendar/event/data/TaskEditLogMetrics;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mLogMetrics:Lcom/android/calendar/event/data/TaskEditLogMetrics;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Lcom/android/calendar/event/data/TaskEditLogMetrics;

    invoke-direct {v0}, Lcom/android/calendar/event/data/TaskEditLogMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mLogMetrics:Lcom/android/calendar/event/data/TaskEditLogMetrics;

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mLogMetrics:Lcom/android/calendar/event/data/TaskEditLogMetrics;

    return-object v0
.end method

.method public getModel()Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    return-object v0
.end method

.method protected abstract getTaskInputAspects()Lcom/android/calendar/event/data/AbstractTaskEditManager$BaseTaskInputAspects;
.end method

.method protected getToastString(Z)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 138
    if-eqz p1, :cond_5

    .line 139
    sget-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->PROJECT_DUBAI:Lcom/google/android/calendar/experiments/Experiment;

    iget-object v1, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/experiments/Experiment;->isActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    invoke-virtual {p0}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->isNewTask()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->taskDueTimeHasChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getTask()Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    move-result-object v2

    .line 143
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->mutableDueTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v0

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->getDueTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/api/time/TimeZone;->getId()Ljava/lang/String;

    move-result-object v6

    .line 146
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->mutableIsDueAllDay()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v7

    iget-object v9, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mActivity:Landroid/app/Activity;

    move-wide v2, v0

    .line 144
    invoke-static/range {v0 .. v9}, Lcom/android/calendar/Utils;->getDisplayedDatetime(JJJLjava/lang/String;ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-virtual {p0}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->isNewTask()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/calendar/R$string;->creating_flex_reminder:I

    .line 149
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v8

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_1
    return-object v0

    .line 148
    :cond_1
    sget v0, Lcom/android/calendar/R$string;->saving_flex_reminder:I

    goto :goto_0

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/calendar/R$string;->saving_reminder:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 154
    :cond_3
    invoke-virtual {p0}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->isNewTask()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/calendar/R$string;->creating_reminder:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 157
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/calendar/R$string;->saving_reminder:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 159
    :cond_5
    invoke-virtual {p0}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->isNewTaskEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 160
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/calendar/R$string;->empty_reminder:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 162
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->isNewTaskEmpty()Z

    move-result v0

    return v0
.end method

.method public isNewEvent()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isNewTask()Z
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->isNewEvent()Z

    move-result v0

    return v0
.end method

.method protected abstract isNewTaskEmpty()Z
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->buildCalendarModelFromTask()V

    .line 202
    invoke-super {p0, p1}, Lcom/android/calendar/event/data/AbstractEditManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 203
    return-void
.end method

.method public save()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    if-nez v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->buildCalendarModelFromTask()V

    .line 190
    invoke-virtual {p0}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->eventIsNewOrHasChanged()Z

    move-result v0

    if-nez v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AbstractEditManager$Callback;

    .line 192
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/calendar/event/data/AbstractEditManager$Callback;->onSaveInitiated(Z)V

    goto :goto_1

    .line 196
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->saveTask()V

    goto :goto_0
.end method

.method protected abstract saveTask()V
.end method

.method public taskDueTimeHasChanged()Z
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getOriginalTask()Lcom/google/calendar/v2/client/service/api/tasks/ImmutableTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/tasks/ImmutableTask;->getDueTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getTask()Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->getDueTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract taskHasChanged()Z
.end method
