.class Lcom/google/android/calendar/timely/report/DebugCleanupReceiver$1;
.super Landroid/os/AsyncTask;
.source "DebugCleanupReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/timely/report/DebugCleanupReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/timely/report/DebugCleanupReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/timely/report/DebugCleanupReceiver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/android/calendar/timely/report/DebugCleanupReceiver$1;->this$0:Lcom/google/android/calendar/timely/report/DebugCleanupReceiver;

    iput-object p2, p0, Lcom/google/android/calendar/timely/report/DebugCleanupReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/timely/report/DebugCleanupReceiver$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/calendar/timely/report/DebugCleanupReceiver$1;->this$0:Lcom/google/android/calendar/timely/report/DebugCleanupReceiver;

    iget-object v1, p0, Lcom/google/android/calendar/timely/report/DebugCleanupReceiver$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/google/android/calendar/timely/report/DebugCleanupReceiver;->deleteAllConsistencyReportFiles(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/google/android/calendar/timely/report/DebugCleanupReceiver;->access$000(Lcom/google/android/calendar/timely/report/DebugCleanupReceiver;Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method
