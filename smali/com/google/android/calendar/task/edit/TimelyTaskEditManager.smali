.class public final Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;
.super Lcom/android/calendar/event/data/AbstractTaskEditManager;
.source "TimelyTaskEditManager.java"

# interfaces
.implements Lcom/google/android/calendar/task/TaskConnection$TaskLoadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TaskInputAspect;,
        Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECURRENCE_ASPECT:Lcom/android/calendar/editor/AspectKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/editor/AspectKey",
            "<",
            "Lcom/android/calendar/event/data/InputAspectRecurrence;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAreCalendarsLoaded:Z

.field private mIsTaskLoaded:Z

.field private mModificationListener:Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$OnModificationSelectedListener;

.field private mNewTaskAccountEmailOverride:Ljava/lang/String;

.field private mRestoredAccountName:Ljava/lang/String;

.field private mRestoredTask:Lcom/google/android/gms/reminders/model/Task;

.field protected mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "com.android.calendar.task.recurrence"

    const-class v1, Lcom/android/calendar/event/data/InputAspectRecurrence;

    invoke-static {v0, v1}, Lcom/android/calendar/editor/AspectKey;->from(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/calendar/editor/AspectKey;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->RECURRENCE_ASPECT:Lcom/android/calendar/editor/AspectKey;

    .line 115
    new-instance v0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$2;

    invoke-direct {v0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$2;-><init>()V

    sput-object v0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/app/LoaderManager;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 130
    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/event/data/AbstractTaskEditManager;-><init>(Landroid/app/Activity;Landroid/app/LoaderManager;I)V

    .line 74
    iput-boolean v2, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mIsTaskLoaded:Z

    .line 80
    iput-boolean v2, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mAreCalendarsLoaded:Z

    .line 85
    iput-object v1, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mRestoredAccountName:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mRestoredTask:Lcom/google/android/gms/reminders/model/Task;

    .line 97
    iput-object v1, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mNewTaskAccountEmailOverride:Ljava/lang/String;

    .line 102
    new-instance v0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$1;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$1;-><init>(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)V

    iput-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mModificationListener:Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$OnModificationSelectedListener;

    .line 131
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/app/LoaderManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;-><init>(Landroid/app/Activity;Landroid/app/LoaderManager;)V

    .line 136
    iput-object p3, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mNewTaskAccountEmailOverride:Ljava/lang/String;

    .line 137
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 218
    invoke-direct {p0, p1}, Lcom/android/calendar/event/data/AbstractTaskEditManager;-><init>(Landroid/os/Parcel;)V

    .line 74
    iput-boolean v1, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mIsTaskLoaded:Z

    .line 80
    iput-boolean v1, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mAreCalendarsLoaded:Z

    .line 85
    iput-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mRestoredAccountName:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mRestoredTask:Lcom/google/android/gms/reminders/model/Task;

    .line 97
    iput-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mNewTaskAccountEmailOverride:Ljava/lang/String;

    .line 102
    new-instance v0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$1;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$1;-><init>(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)V

    iput-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mModificationListener:Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$OnModificationSelectedListener;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mRestoredAccountName:Ljava/lang/String;

    .line 220
    const-class v0, Lcom/google/android/gms/reminders/model/Task;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/Task;

    iput-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mRestoredTask:Lcom/google/android/gms/reminders/model/Task;

    .line 221
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$1;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->notifyAboutSaveInterruption()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->getToastString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->getToastString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)Lcom/google/android/gms/reminders/model/Task;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->getUpdatedTask()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getTask()Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->observableAccountKey()Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    .line 306
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/common/AccountKey;->getPrincipalKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUpdatedTask()Lcom/google/android/gms/reminders/model/Task;
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    .line 249
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getOriginalTask()Lcom/google/calendar/v2/client/service/api/tasks/ImmutableTask;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;

    .line 250
    iget-object v1, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getTask()Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    move-result-object v1

    check-cast v1, Lcom/google/android/calendar/task/edit/TimelyMutableTask;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->getUpdatedTask(Lcom/google/android/calendar/task/edit/TimelyMutableTask;)Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    return-object v0
.end method

.method private initEditor(Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;)V
    .locals 3

    .prologue
    .line 318
    new-instance v0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;

    iget-object v1, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;)V

    .line 321
    iget-object v1, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mRestoredTask:Lcom/google/android/gms/reminders/model/Task;

    if-nez v1, :cond_0

    .line 322
    :goto_0
    iget-object v1, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mRestoredAccountName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 323
    :goto_1
    new-instance v1, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;

    iget-object v2, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, p1, p2}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;)V

    .line 326
    new-instance v2, Lcom/google/android/calendar/task/edit/TimelyMutableTask;

    invoke-direct {v2, v1}, Lcom/google/android/calendar/task/edit/TimelyMutableTask;-><init>(Lcom/google/android/calendar/task/edit/TimelyImmutableTask;)V

    .line 327
    invoke-static {v2}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->newBuilder(Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;)Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;->setOriginalTask(Lcom/google/calendar/v2/client/service/api/tasks/ImmutableTask;)Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit$Builder;->build()Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    .line 328
    return-void

    .line 321
    :cond_0
    iget-object p2, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mRestoredTask:Lcom/google/android/gms/reminders/model/Task;

    goto :goto_0

    .line 322
    :cond_1
    iget-object p1, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mRestoredAccountName:Ljava/lang/String;

    goto :goto_1
.end method

.method public static loadTask(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/android/calendar/event/CalendarEventModel;)Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;
    .locals 4

    .prologue
    .line 174
    iget-object v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    .line 175
    iget-object v1, p2, Lcom/android/calendar/event/CalendarEventModel;->mUri:Ljava/lang/String;

    .line 177
    new-instance v2, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    invoke-direct {v2, p0, p1}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;-><init>(Landroid/app/Activity;Landroid/app/LoaderManager;)V

    .line 178
    invoke-virtual {v2, p2}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->setInitialModel(Lcom/android/calendar/event/CalendarEventModel;)V

    .line 179
    iget-object v3, v2, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

    invoke-interface {v3, p0, v0, v1, v2}, Lcom/google/android/calendar/task/TaskConnection;->loadTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/calendar/task/TaskConnection$TaskLoadListener;)V

    .line 180
    return-object v2
.end method

.method public static loadTask(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/android/calendar/task/TimelineTask;)Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;
    .locals 2

    .prologue
    .line 161
    new-instance v1, Lcom/android/calendar/event/CalendarEventModel;

    invoke-direct {v1}, Lcom/android/calendar/event/CalendarEventModel;-><init>()V

    .line 162
    invoke-virtual {p2}, Lcom/android/calendar/task/TimelineTask;->getAccountName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    .line 163
    invoke-virtual {p2}, Lcom/android/calendar/task/TimelineTask;->getId()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/android/calendar/event/CalendarEventModel;->mUri:Ljava/lang/String;

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/calendar/event/CalendarEventModel;->mIsTask:Z

    .line 166
    invoke-static {p0, p1, v1}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->loadTask(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/android/calendar/event/CalendarEventModel;)Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    move-result-object v0

    return-object v0
.end method

.method public static newTask(Landroid/app/Activity;Landroid/app/LoaderManager;)Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;
    .locals 2

    .prologue
    .line 187
    new-instance v0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    invoke-direct {v0, p0, p1}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;-><init>(Landroid/app/Activity;Landroid/app/LoaderManager;)V

    .line 188
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mIsTaskLoaded:Z

    .line 189
    return-object v0
.end method

.method public static newTaskForAccount(Landroid/app/Activity;Landroid/app/LoaderManager;Ljava/lang/String;)Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;
    .locals 2

    .prologue
    .line 194
    new-instance v0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;-><init>(Landroid/app/Activity;Landroid/app/LoaderManager;Ljava/lang/String;)V

    .line 196
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mIsTaskLoaded:Z

    .line 197
    return-object v0
.end method

.method private onTaskAndCalendarsLoaded()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 376
    invoke-virtual {p0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->getLogMetrics()Lcom/android/calendar/event/data/TaskEditLogMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/event/data/TaskEditLogMetrics;->logTaskLoaded()V

    .line 378
    invoke-virtual {p0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->isNewTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mExtras:Landroid/os/Bundle;

    const-string v1, "beginTime"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 384
    :goto_0
    iget-object v4, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/calendar/time/TimeZoneImpl;->getTimeZone(Ljava/lang/String;)Lcom/android/calendar/time/TimeZoneImpl;

    move-result-object v4

    .line 389
    iget-object v5, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v0, v1}, Lcom/android/calendar/Utils;->getJulianDay(Landroid/content/Context;J)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/android/calendar/Utils;->getTodayJulianDay(Landroid/content/Context;)I

    move-result v6

    if-gt v5, v6, :cond_3

    .line 390
    sget-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->PROJECT_DUBAI:Lcom/google/android/calendar/experiments/Experiment;

    iget-object v1, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/experiments/Experiment;->isActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->getFutureDateTimeForTask(Landroid/content/Context;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    move-object v1, v0

    move v0, v2

    .line 406
    :goto_1
    iget-object v4, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mNewTaskAccountEmailOverride:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 407
    iget-object v4, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mNewTaskAccountEmailOverride:Ljava/lang/String;

    .line 409
    :goto_2
    invoke-static {v1, v0, v3}, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->fromCalendarDateTime(Lcom/google/calendar/v2/client/service/api/time/DateTime;ZZ)Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    .line 411
    new-instance v1, Lcom/google/android/gms/reminders/model/Task$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/reminders/model/Task$Builder;-><init>()V

    .line 412
    invoke-virtual {v1, v0}, Lcom/google/android/gms/reminders/model/Task$Builder;->setDueDate(Lcom/google/android/gms/reminders/model/DateTime;)Lcom/google/android/gms/reminders/model/Task$Builder;

    move-result-object v0

    .line 413
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/Task$Builder;->setPinned(Ljava/lang/Boolean;)Lcom/google/android/gms/reminders/model/Task$Builder;

    move-result-object v0

    .line 414
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/Task$Builder;->setSnoozed(Ljava/lang/Boolean;)Lcom/google/android/gms/reminders/model/Task$Builder;

    move-result-object v0

    .line 415
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/Task$Builder;->setArchived(Ljava/lang/Boolean;)Lcom/google/android/gms/reminders/model/Task$Builder;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/Task$Builder;->build()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    .line 418
    invoke-direct {p0, v4, v0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->initEditor(Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;)V

    .line 421
    :cond_0
    sget-object v0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->SUCCESS:Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->dispatchOnCompletion(Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;)V

    .line 422
    return-void

    .line 383
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 396
    :cond_2
    new-instance v0, Lcom/android/calendar/time/DateTimeImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v6, v7, v4}, Lcom/android/calendar/time/DateTimeImpl;-><init>(JLcom/google/calendar/v2/client/service/api/time/TimeZone;)V

    move-object v1, v0

    move v0, v3

    .line 397
    goto :goto_1

    .line 401
    :cond_3
    new-instance v5, Lcom/android/calendar/time/DateTimeImpl;

    invoke-direct {v5, v0, v1, v4}, Lcom/android/calendar/time/DateTimeImpl;-><init>(JLcom/google/calendar/v2/client/service/api/time/TimeZone;)V

    invoke-static {v5}, Lcom/android/calendar/time/DateTimeUtils;->getTimeOnGivenFutureDateForTask(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    move-object v1, v0

    move v0, v2

    .line 403
    goto :goto_1

    .line 407
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->getDefaultTaskAccount()Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_2
.end method

.method public static restoreTask(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;
    .locals 3

    .prologue
    .line 206
    const/16 v0, 0x10

    invoke-virtual {p2, p0, p1, v0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->initialize(Landroid/app/Activity;Landroid/app/LoaderManager;I)V

    .line 207
    invoke-virtual {p2}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->isNewTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p2, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    .line 209
    iget-object v1, p2, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mUri:Ljava/lang/String;

    .line 210
    iget-object v2, p2, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

    invoke-interface {v2, p0, v0, v1, p2}, Lcom/google/android/calendar/task/TaskConnection;->loadTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/calendar/task/TaskConnection$TaskLoadListener;)V

    .line 214
    :goto_0
    return-object p2

    .line 212
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mIsTaskLoaded:Z

    goto :goto_0
.end method


# virtual methods
.method protected buildCalendarModelFromTask()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 595
    invoke-virtual {p0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->isNewTask()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    if-nez v0, :cond_1

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    invoke-direct {p0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->getAccountName()Ljava/lang/String;

    move-result-object v3

    .line 602
    invoke-static {}, Lcom/android/calendar/time/DateTimeService;->getInstance()Lcom/android/calendar/time/DateTimeService;

    move-result-object v5

    .line 603
    new-instance v1, Lcom/google/android/calendar/task/ArpExtendedTaskSetup;

    invoke-direct {p0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->getUpdatedTask()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;

    .line 604
    invoke-static {v0, v3}, Lcom/google/android/calendar/task/TaskUtils;->getTaskCalendarColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 605
    invoke-virtual {v5}, Lcom/android/calendar/time/DateTimeService;->today()Lcom/android/calendar/time/DateTimeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/time/DateTimeImpl;->getMillis()J

    move-result-wide v6

    sget-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->PROJECT_DUBAI:Lcom/google/android/calendar/experiments/Experiment;

    iget-object v8, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;

    .line 606
    invoke-virtual {v0, v8}, Lcom/google/android/calendar/experiments/Experiment;->isActive(Landroid/content/Context;)Z

    move-result v8

    invoke-direct/range {v1 .. v8}, Lcom/google/android/calendar/task/ArpExtendedTaskSetup;-><init>(Lcom/google/android/gms/reminders/model/Task;Ljava/lang/String;ILcom/android/calendar/time/DateTimeService;JZ)V

    .line 607
    new-instance v0, Lcom/android/calendar/event/CalendarEventModel;

    invoke-direct {v0}, Lcom/android/calendar/event/CalendarEventModel;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    .line 608
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iput-object v3, v0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    .line 609
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-virtual {v1}, Lcom/google/android/calendar/task/ArpExtendedTaskSetup;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mUri:Ljava/lang/String;

    .line 610
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iput-boolean v9, v0, Lcom/android/calendar/event/CalendarEventModel;->mIsTask:Z

    .line 611
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-virtual {v1}, Lcom/google/android/calendar/task/ArpExtendedTaskSetup;->getColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/calendar/event/CalendarEventModel;->setEventColor(I)V

    .line 612
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iput-boolean v9, v0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerCanModify:Z

    .line 613
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    new-instance v2, Lcom/google/android/calendar/task/ArpTimelineTask;

    invoke-direct {v2, v1}, Lcom/google/android/calendar/task/ArpTimelineTask;-><init>(Lcom/google/android/calendar/task/ArpTaskSetup;)V

    iput-object v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method protected getTaskInputAspects()Lcom/android/calendar/event/data/AbstractTaskEditManager$BaseTaskInputAspects;
    .locals 2

    .prologue
    .line 281
    new-instance v0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TaskInputAspect;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TaskInputAspect;-><init>(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$1;)V

    return-object v0
.end method

.method public initialize(Landroid/app/Activity;Landroid/app/LoaderManager;I)V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->initialize(Landroid/app/Activity;Landroid/app/LoaderManager;I)V

    .line 143
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mLoadersToStart:Ljava/util/Set;

    .line 145
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getTaskDataFactory()Lcom/android/calendar/task/BaseTaskDataFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/task/BaseTaskDataFactory;->getTaskConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/TaskConnection;

    iput-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

    .line 149
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->TAG:Ljava/lang/String;

    .line 150
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;

    .line 151
    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mModificationListener:Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$OnModificationSelectedListener;

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->setModificationSelectedListener(Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$OnModificationSelectedListener;)Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->setIsTask(Z)Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;

    .line 154
    :cond_0
    return-void
.end method

.method public isNewTask()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNewTaskEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 260
    invoke-virtual {p0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->isNewTask()Z

    move-result v1

    if-nez v1, :cond_1

    .line 276
    :cond_0
    :goto_0
    return v0

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getTask()Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    move-result-object v1

    .line 272
    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onAllDataLoaded()V
    .locals 2

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->getDefaultTaskAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 359
    if-nez v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/calendar/R$string;->edit_error_no_calendars:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->newMissingDataStatus(Ljava/lang/String;)Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->dispatchOnCompletion(Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;)V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mAreCalendarsLoaded:Z

    .line 367
    iget-boolean v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mIsTaskLoaded:Z

    if-eqz v0, :cond_0

    .line 368
    invoke-direct {p0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->onTaskAndCalendarsLoaded()V

    goto :goto_0
.end method

.method public onEventDeleted(I)V
    .locals 3

    .prologue
    .line 544
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getOriginalTask()Lcom/google/calendar/v2/client/service/api/tasks/ImmutableTask;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;

    .line 545
    invoke-virtual {v0}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->getOriginalTask()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    .line 546
    invoke-direct {p0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->getAccountName()Ljava/lang/String;

    move-result-object v1

    .line 547
    new-instance v2, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$3;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$3;-><init>(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;ILjava/lang/String;Lcom/google/android/gms/reminders/model/Task;)V

    .line 573
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 574
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    if-eqz v0, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->getAccountName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mRestoredAccountName:Ljava/lang/String;

    .line 239
    invoke-direct {p0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->getUpdatedTask()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mRestoredTask:Lcom/google/android/gms/reminders/model/Task;

    .line 241
    :cond_0
    invoke-super {p0, p1}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 242
    return-void
.end method

.method protected onTaskLoaded(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 581
    return-void
.end method

.method public onTaskLoaded(Lcom/google/android/gms/reminders/model/Task;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 332
    if-nez p1, :cond_1

    .line 333
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/calendar/R$string;->edit_error_task_not_found:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->newMissingDataStatus(Ljava/lang/String;)Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->dispatchOnCompletion(Lcom/android/calendar/event/data/AbstractEditManager$CompletionStatus;)V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iput-boolean v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mIsTaskLoaded:Z

    .line 342
    iget-object v1, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    :goto_1
    iput-boolean v0, v1, Lcom/android/calendar/event/CalendarEventModel;->mIsRepeating:Z

    .line 344
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mOriginalData:Lcom/android/calendar/event/CalendarEventModel;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getTaskId()Lcom/google/android/gms/reminders/model/TaskId;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/reminders/model/TaskId;->getClientAssignedId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/event/CalendarEventModel;->mSyncId:Ljava/lang/String;

    .line 346
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mData:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->initEditor(Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;)V

    .line 348
    iget-boolean v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mAreCalendarsLoaded:Z

    if-eqz v0, :cond_0

    .line 349
    invoke-direct {p0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->onTaskAndCalendarsLoaded()V

    goto :goto_0

    .line 342
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public saveTask()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 427
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getTask()Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    move-result-object v2

    .line 428
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/calendar/R$string;->task_empty_title:I

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 430
    invoke-virtual {p0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->notifyAboutSaveInterruption()V

    .line 471
    :goto_0
    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;

    .line 435
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->getDueTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->isDueAllDay()Z

    move-result v4

    .line 434
    invoke-static {v0, v3, v4}, Lcom/android/calendar/time/DateTimeUtils;->isFutureOrAllDayToday(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/time/DateTime;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/calendar/R$string;->time_in_past:I

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 437
    invoke-virtual {p0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->notifyAboutSaveInterruption()V

    goto :goto_0

    .line 441
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->isNewTask()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 443
    invoke-direct {p0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->setDefaultTaskCalendarFromAccount(Ljava/lang/String;Z)V

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    .line 447
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getOriginalTask()Lcom/google/calendar/v2/client/service/api/tasks/ImmutableTask;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;

    .line 451
    invoke-virtual {p0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->isNewTask()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->getRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    move-result-object v3

    if-nez v3, :cond_5

    .line 455
    :cond_3
    new-instance v3, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->isRecurring()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 456
    const/4 v0, 0x3

    :goto_1
    invoke-direct {v3, p0, v0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;-><init>(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;I)V

    new-array v0, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 462
    :cond_5
    iget-object v2, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getTask()Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->hasRecurrenceChanged(Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 463
    new-instance v0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;

    invoke-direct {v0, p0, v6}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;-><init>(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;I)V

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 467
    :cond_6
    new-instance v0, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;

    invoke-direct {v0}, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;-><init>()V

    iget-object v2, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mModificationListener:Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$OnModificationSelectedListener;

    invoke-virtual {v0, v2}, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->setModificationSelectedListener(Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$OnModificationSelectedListener;)Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;

    move-result-object v0

    .line 468
    invoke-virtual {v0, v6}, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->setMultipleModification(I)Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;

    move-result-object v0

    .line 469
    invoke-virtual {v0, v1}, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->setIsTask(Z)Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;

    .line 470
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected setDefaultTaskCalendarFromAccount(Ljava/lang/String;Z)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 477
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getAccountSettingsStore()Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    move-result-object v0

    .line 478
    invoke-virtual {v0, p1}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->getSettings(Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/timely/AccountSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->areTasksVisible()Z

    move-result v0

    .line 479
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 482
    new-instance v1, Lcom/android/calendar/AsyncQueryService;

    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/android/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    .line 483
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->TASKS_CALENDAR_URI:Landroid/net/Uri;

    .line 484
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 485
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 486
    const-string v0, "visible"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 487
    invoke-static {}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v2

    .line 488
    const-wide/16 v8, 0x0

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v1 .. v9}, Lcom/android/calendar/AsyncQueryService;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 490
    :cond_0
    invoke-static {p1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->setDefaultTaskAccount(Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public taskHasChanged()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 286
    iget-object v2, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    if-nez v2, :cond_1

    move v0, v1

    .line 297
    :cond_0
    :goto_0
    return v0

    .line 291
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->isNewTask()Z

    move-result v2

    if-nez v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getOriginalTask()Lcom/google/calendar/v2/client/service/api/tasks/ImmutableTask;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    invoke-virtual {v3}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getTask()Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/calendar/v2/client/service/api/tasks/ImmutableTask;->isEquivalentTo(Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 230
    invoke-super {p0, p1, p2}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->writeToParcel(Landroid/os/Parcel;I)V

    .line 231
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mRestoredAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mRestoredTask:Lcom/google/android/gms/reminders/model/Task;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 233
    return-void
.end method
