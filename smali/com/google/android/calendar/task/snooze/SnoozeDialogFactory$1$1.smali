.class Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1$1;
.super Ljava/lang/Object;
.source "SnoozeDialogFactory.java"

# interfaces
.implements Lcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask$Listener;


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


# direct methods
.method constructor <init>(Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1$1;->this$0:Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSnoozeFailure()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1$1;->this$0:Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;

    iget-object v0, v0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;->val$resources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$string;->task_snooze_failed_message:I

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1$1;->this$0:Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;

    iget-object v1, v1, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;->val$context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 85
    return-void
.end method

.method public onSnoozeSuccess(J)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 72
    iget-object v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1$1;->this$0:Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;

    iget-object v0, v0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;->val$context:Landroid/content/Context;

    .line 73
    invoke-static {v0, p1, p2}, Lcom/google/android/calendar/task/TaskUtils;->getDisplayedDateAndTime(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1$1;->this$0:Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;

    iget-object v1, v1, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;->val$resources:Landroid/content/res/Resources;

    sget v2, Lcom/android/calendar/R$string;->task_snooze_message:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v4, v0, v6

    aput-object v4, v3, v6

    aget-object v0, v0, v5

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1$1;->this$0:Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;

    iget-object v1, v1, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 77
    iget-object v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1$1;->this$0:Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;

    iget-object v0, v0, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$1;->val$snoozeTaskListener:Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$SnoozeTaskListener;

    invoke-interface {v0}, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$SnoozeTaskListener;->onTaskSnoozeSuccess()V

    .line 78
    return-void
.end method
