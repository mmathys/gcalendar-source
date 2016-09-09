.class public Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;
.super Ljava/lang/Object;
.source "TaskEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private initialTask:Lcom/google/calendar/v2/client/service/api/tasks/Task;

.field private originalTask:Lcom/google/calendar/v2/client/service/api/tasks/ImmutableTask;

.field private task:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;


# direct methods
.method private constructor <init>(Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;->task:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    .line 91
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$1;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;-><init>(Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;)Lcom/google/calendar/v2/client/service/api/tasks/ImmutableTask;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;->originalTask:Lcom/google/calendar/v2/client/service/api/tasks/ImmutableTask;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;)Lcom/google/calendar/v2/client/service/api/tasks/Task;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;->initialTask:Lcom/google/calendar/v2/client/service/api/tasks/Task;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;)Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;->task:Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;-><init>(Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$1;)V

    return-object v0
.end method

.method public setInitialTask(Lcom/google/calendar/v2/client/service/api/tasks/Task;)Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;->initialTask:Lcom/google/calendar/v2/client/service/api/tasks/Task;

    .line 112
    return-object p0
.end method

.method public setOriginalTask(Lcom/google/calendar/v2/client/service/api/tasks/ImmutableTask;)Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;->originalTask:Lcom/google/calendar/v2/client/service/api/tasks/ImmutableTask;

    .line 101
    return-object p0
.end method
