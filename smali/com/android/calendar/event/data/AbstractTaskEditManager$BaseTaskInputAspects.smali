.class public Lcom/android/calendar/event/data/AbstractTaskEditManager$BaseTaskInputAspects;
.super Ljava/lang/Object;
.source "AbstractTaskEditManager.java"

# interfaces
.implements Lcom/android/calendar/event/data/InputAspectTime;
.implements Lcom/android/calendar/event/data/InputAspectTitle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/data/AbstractTaskEditManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BaseTaskInputAspects"
.end annotation


# instance fields
.field private final mImplementedAspects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/calendar/editor/AspectKey",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mMutableDefaultDuration:Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

.field final synthetic this$0:Lcom/android/calendar/event/data/AbstractTaskEditManager;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/data/AbstractTaskEditManager;)V
    .locals 2

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager$BaseTaskInputAspects;->this$0:Lcom/android/calendar/event/data/AbstractTaskEditManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, -0x1

    .line 221
    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableIntegerImpl;->from(I)Lcom/google/calendar/v2/client/service/common/ModifiableObservableIntegerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager$BaseTaskInputAspects;->mMutableDefaultDuration:Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

    .line 224
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/event/data/AbstractTaskEditManager;->TITLE_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 225
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/event/data/AbstractTaskEditManager;->TIME_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 226
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager$BaseTaskInputAspects;->mImplementedAspects:Ljava/util/Set;

    .line 224
    return-void
.end method


# virtual methods
.method public canChangeTime()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager$BaseTaskInputAspects;->this$0:Lcom/android/calendar/event/data/AbstractTaskEditManager;

    iget-object v0, v0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getTask()Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->mutableDueTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canChangeTitle()Z
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager$BaseTaskInputAspects;->this$0:Lcom/android/calendar/event/data/AbstractTaskEditManager;

    iget-object v0, v0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getTask()Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->canChangeTitle()Z

    move-result v0

    return v0
.end method

.method public handleMoreOptionsButtonClicked()V
    .locals 0

    .prologue
    .line 257
    return-void
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
    .line 233
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager$BaseTaskInputAspects;->mImplementedAspects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager$BaseTaskInputAspects;->this$0:Lcom/android/calendar/event/data/AbstractTaskEditManager;

    invoke-virtual {v0}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->isNewTask()Z

    move-result v0

    return v0
.end method

.method public isSavedAsAllDay()Z
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/android/calendar/event/data/AbstractTaskEditManager$BaseTaskInputAspects;->isNew()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager$BaseTaskInputAspects;->this$0:Lcom/android/calendar/event/data/AbstractTaskEditManager;

    iget-object v0, v0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    iget-boolean v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTask()Z
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method public mutableDefaultDuration()Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager$BaseTaskInputAspects;->mMutableDefaultDuration:Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

    return-object v0
.end method

.method public mutableEndTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    const/4 v0, 0x0

    return-object v0
.end method

.method public mutableIsAllDay()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager$BaseTaskInputAspects;->this$0:Lcom/android/calendar/event/data/AbstractTaskEditManager;

    iget-object v0, v0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getTask()Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->mutableIsDueAllDay()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    return-object v0
.end method

.method public mutableStartTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager$BaseTaskInputAspects;->this$0:Lcom/android/calendar/event/data/AbstractTaskEditManager;

    iget-object v0, v0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getTask()Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->mutableDueTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    return-object v0
.end method

.method public mutableTitle()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
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
    .line 310
    iget-object v0, p0, Lcom/android/calendar/event/data/AbstractTaskEditManager$BaseTaskInputAspects;->this$0:Lcom/android/calendar/event/data/AbstractTaskEditManager;

    iget-object v0, v0, Lcom/android/calendar/event/data/AbstractTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getTask()Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->mutableTitle()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    return-object v0
.end method

.method public showMoreOptionsButton()Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public useDefaultDuration()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method
