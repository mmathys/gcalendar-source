.class Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TaskInputAspect;
.super Lcom/android/calendar/event/data/AbstractTaskEditManager$BaseTaskInputAspects;
.source "TimelyTaskEditManager.java"

# interfaces
.implements Lcom/android/calendar/event/data/InputAspectRecurrence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskInputAspect"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;


# direct methods
.method private constructor <init>(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TaskInputAspect;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    invoke-direct {p0, p1}, Lcom/android/calendar/event/data/AbstractTaskEditManager$BaseTaskInputAspects;-><init>(Lcom/android/calendar/event/data/AbstractTaskEditManager;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$1;)V
    .locals 0

    .prologue
    .line 616
    invoke-direct {p0, p1}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TaskInputAspect;-><init>(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)V

    return-void
.end method


# virtual methods
.method public addCanChangeRecurrenceListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 639
    return-void
.end method

.method public canChangeRecurrence()Z
    .locals 1

    .prologue
    .line 628
    const/4 v0, 0x1

    return v0
.end method

.method public implementsAspect(Lcom/android/calendar/editor/AspectKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/editor/AspectKey",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 620
    sget-object v0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->RECURRENCE_ASPECT:Lcom/android/calendar/editor/AspectKey;

    if-ne p1, v0, :cond_0

    .line 621
    const/4 v0, 0x1

    .line 623
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/calendar/event/data/AbstractTaskEditManager$BaseTaskInputAspects;->implementsAspect(Lcom/android/calendar/editor/AspectKey;)Z

    move-result v0

    goto :goto_0
.end method

.method public mutableRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TaskInputAspect;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    # getter for: Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;
    invoke-static {v0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->access$1800(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getTask()Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->mutableRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    move-result-object v0

    return-object v0
.end method

.method public removeCanChangeRecurrenceListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 644
    return-void
.end method
