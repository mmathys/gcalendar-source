.class Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor$1;
.super Ljava/lang/Object;
.source "CalendarRequestExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->prefetch(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

.field final synthetic val$request:Lcom/google/api/services/calendar/CalendarRequest;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor$1;->this$0:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    iput-object p2, p0, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor$1;->val$tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor$1;->val$request:Lcom/google/api/services/calendar/CalendarRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 81
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 82
    # getter for: Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start(%s) @%s"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor$1;->val$tag:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 83
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor$1;->this$0:Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor$1;->val$tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor$1;->val$request:Lcom/google/api/services/calendar/CalendarRequest;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->executeInternal(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    # getter for: Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stop(%s) @%s"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor$1;->val$tag:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 85
    return-object v0
.end method
