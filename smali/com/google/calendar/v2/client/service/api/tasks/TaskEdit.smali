.class public Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;
.super Ljava/lang/Object;
.source "TaskEdit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;
    }
.end annotation


# instance fields
.field private final initialTask:Lcom/google/calendar/v2/client/service/api/tasks/Task;

.field private final originalTask:Lcom/google/calendar/v2/client/service/api/tasks/ImmutableTask;

.field private final task:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;


# direct methods
.method private constructor <init>(Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    # getter for: Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;->originalTask:Lcom/google/calendar/v2/client/service/api/tasks/ImmutableTask;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;->access$000(Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;)Lcom/google/calendar/v2/client/service/api/tasks/ImmutableTask;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;->initialTask:Lcom/google/calendar/v2/client/service/api/tasks/Task;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;->access$100(Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;)Lcom/google/calendar/v2/client/service/api/tasks/Task;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 28
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 30
    # getter for: Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;->task:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;->access$200(Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;)Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->task:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    .line 31
    # getter for: Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;->originalTask:Lcom/google/calendar/v2/client/service/api/tasks/ImmutableTask;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;->access$000(Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;)Lcom/google/calendar/v2/client/service/api/tasks/ImmutableTask;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->originalTask:Lcom/google/calendar/v2/client/service/api/tasks/ImmutableTask;

    .line 32
    # getter for: Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;->initialTask:Lcom/google/calendar/v2/client/service/api/tasks/Task;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;->access$100(Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;)Lcom/google/calendar/v2/client/service/api/tasks/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->initialTask:Lcom/google/calendar/v2/client/service/api/tasks/Task;

    .line 33
    return-void

    .line 29
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$1;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;-><init>(Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;)V

    return-void
.end method

.method public static newBuilder(Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;)Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;-><init>(Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$1;)V

    return-object v0
.end method


# virtual methods
.method public getInitialTask()Lcom/google/calendar/v2/client/service/api/tasks/Task;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->initialTask:Lcom/google/calendar/v2/client/service/api/tasks/Task;

    return-object v0
.end method

.method public getOriginalTask()Lcom/google/calendar/v2/client/service/api/tasks/ImmutableTask;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->originalTask:Lcom/google/calendar/v2/client/service/api/tasks/ImmutableTask;

    return-object v0
.end method

.method public getTask()Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->task:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    return-object v0
.end method

.method public hasManualChanges()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 61
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->initialTask:Lcom/google/calendar/v2/client/service/api/tasks/Task;

    if-eqz v2, :cond_2

    .line 62
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->task:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    iget-object v3, p0, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->initialTask:Lcom/google/calendar/v2/client/service/api/tasks/Task;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 62
    goto :goto_0

    .line 64
    :cond_2
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->originalTask:Lcom/google/calendar/v2/client/service/api/tasks/ImmutableTask;

    if-eqz v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->originalTask:Lcom/google/calendar/v2/client/service/api/tasks/ImmutableTask;

    iget-object v3, p0, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->task:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    invoke-interface {v2, v3}, Lcom/google/calendar/v2/client/service/api/tasks/ImmutableTask;->isEquivalentTo(Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->task:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->task:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->getDueTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
