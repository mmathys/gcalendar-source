.class Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1$2;
.super Ljava/lang/Object;
.source "SnoozeDialogFactory.java"

# interfaces
.implements Lcom/google/android/calendar/task/snooze/SnoozeFindTimeAsyncTask$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;

.field final synthetic val$snoozeUpdateTaskListener:Lcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask$Listener;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;Lcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask$Listener;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1$2;->this$0:Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;

    iput-object p2, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1$2;->val$snoozeUpdateTaskListener:Lcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSnoozeTimeFound(J)V
    .locals 7

    .prologue
    .line 92
    new-instance v0, Lcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask;

    iget-object v1, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1$2;->this$0:Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;

    iget-object v1, v1, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1$2;->this$0:Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;

    iget-object v2, v2, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;->val$accountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1$2;->this$0:Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;

    iget-object v3, v3, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;->val$taskId:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1$2;->val$snoozeUpdateTaskListener:Lcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask$Listener;

    move-wide v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask$Listener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 93
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    return-void
.end method
