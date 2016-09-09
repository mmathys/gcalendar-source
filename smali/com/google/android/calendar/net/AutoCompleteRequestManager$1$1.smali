.class Lcom/google/android/calendar/net/AutoCompleteRequestManager$1$1;
.super Ljava/lang/Object;
.source "AutoCompleteRequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/net/AutoCompleteRequestManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/calendar/net/AutoCompleteRequestManager$1;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/net/AutoCompleteRequestManager$1;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager$1$1;->this$1:Lcom/google/android/calendar/net/AutoCompleteRequestManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager$1$1;->this$1:Lcom/google/android/calendar/net/AutoCompleteRequestManager$1;

    iget-object v0, v0, Lcom/google/android/calendar/net/AutoCompleteRequestManager$1;->val$requestId:Lcom/google/android/calendar/net/AutoCompleteRequestManager$QueueIdRequestToken;

    invoke-virtual {v0}, Lcom/google/android/calendar/net/AutoCompleteRequestManager$QueueIdRequestToken;->getQueueId()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager$1$1;->this$1:Lcom/google/android/calendar/net/AutoCompleteRequestManager$1;

    iget-object v1, v1, Lcom/google/android/calendar/net/AutoCompleteRequestManager$1;->this$0:Lcom/google/android/calendar/net/AutoCompleteRequestManager;

    # getter for: Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mCurrentRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->access$000(Lcom/google/android/calendar/net/AutoCompleteRequestManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager$1$1;->this$1:Lcom/google/android/calendar/net/AutoCompleteRequestManager$1;

    iget-object v0, v0, Lcom/google/android/calendar/net/AutoCompleteRequestManager$1;->this$0:Lcom/google/android/calendar/net/AutoCompleteRequestManager;

    iget-object v1, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager$1$1;->this$1:Lcom/google/android/calendar/net/AutoCompleteRequestManager$1;

    iget-object v1, v1, Lcom/google/android/calendar/net/AutoCompleteRequestManager$1;->val$requestId:Lcom/google/android/calendar/net/AutoCompleteRequestManager$QueueIdRequestToken;

    iget-object v2, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager$1$1;->this$1:Lcom/google/android/calendar/net/AutoCompleteRequestManager$1;

    iget-object v2, v2, Lcom/google/android/calendar/net/AutoCompleteRequestManager$1;->val$input:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->executeSuggestionQuery(Lcom/google/android/calendar/net/AutoCompleteRequestManager$QueueIdRequestToken;Ljava/lang/Object;)V

    .line 163
    :cond_0
    return-void
.end method
