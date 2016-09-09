.class Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$1;
.super Ljava/lang/Object;
.source "TimelyTaskEditManager.java"

# interfaces
.implements Lcom/android/calendar/event/data/AbstractEditManager$EditModifyOptionDialog$OnModificationSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$1;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModificationCancelled()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$1;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    # invokes: Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->notifyAboutSaveInterruption()V
    invoke-static {v0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->access$000(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)V

    .line 112
    return-void
.end method

.method public onModificationSelected(I)V
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;

    iget-object v1, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$1;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    invoke-direct {v0, v1, p1}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;-><init>(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 107
    return-void
.end method
