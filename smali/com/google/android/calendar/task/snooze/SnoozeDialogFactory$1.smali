.class final Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;
.super Ljava/lang/Object;
.source "SnoozeDialogFactory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JIZLcom/google/android/calendar/task/snooze/SnoozeDialogFactory$SnoozeTaskListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$accountName:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$durationMillis:I

.field final synthetic val$nowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

.field final synthetic val$resources:Landroid/content/res/Resources;

.field final synthetic val$shortSnoozeEnabled:Z

.field final synthetic val$snoozeTaskListener:Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$SnoozeTaskListener;

.field final synthetic val$startMillis:J

.field final synthetic val$taskId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$SnoozeTaskListener;ZLandroid/content/Context;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Lcom/google/calendar/v2/client/service/api/time/DateTime;JI)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;->val$snoozeTaskListener:Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$SnoozeTaskListener;

    iput-boolean p2, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;->val$shortSnoozeEnabled:Z

    iput-object p3, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;->val$resources:Landroid/content/res/Resources;

    iput-object p5, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;->val$accountName:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;->val$taskId:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;->val$nowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    iput-wide p8, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;->val$startMillis:J

    iput p10, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;->val$durationMillis:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;->val$snoozeTaskListener:Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$SnoozeTaskListener;

    invoke-interface {v0}, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$SnoozeTaskListener;->onTaskSnoozeStart()V

    .line 65
    iget-boolean v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;->val$shortSnoozeEnabled:Z

    if-eqz v0, :cond_0

    move v3, p2

    .line 67
    :goto_0
    new-instance v0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1$1;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1$1;-><init>(Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;)V

    .line 88
    new-instance v8, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1$2;

    invoke-direct {v8, p0, v0}, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1$2;-><init>(Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;Lcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask$Listener;)V

    .line 97
    if-nez v3, :cond_1

    .line 99
    iget-object v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;->val$nowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 100
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    .line 99
    invoke-interface {v8, v0, v1}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask$Listener;->onSnoozeTimeFound(J)V

    .line 106
    :goto_1
    return-void

    .line 65
    :cond_0
    add-int/lit8 v3, p2, 0x1

    goto :goto_0

    .line 102
    :cond_1
    new-instance v0, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;

    iget-object v1, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;->val$accountName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;->val$startMillis:J

    iget v6, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;->val$durationMillis:I

    iget-object v7, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;->val$nowDateTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;-><init>(Landroid/content/Context;Ljava/lang/String;IJILcom/google/calendar/v2/client/service/api/time/DateTime;Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask$Listener;)V

    sget-object v1, Lcom/google/android/calendar/net/AsyncRequestLoader;->EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method
