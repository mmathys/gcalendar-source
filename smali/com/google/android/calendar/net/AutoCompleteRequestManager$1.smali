.class Lcom/google/android/calendar/net/AutoCompleteRequestManager$1;
.super Ljava/lang/Object;
.source "AutoCompleteRequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/net/AutoCompleteRequestManager;->doRequest(Ljava/lang/Object;)Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/net/AutoCompleteRequestManager;

.field final synthetic val$input:Ljava/lang/Object;

.field final synthetic val$requestId:Lcom/google/android/calendar/net/AutoCompleteRequestManager$QueueIdRequestToken;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/net/AutoCompleteRequestManager;Lcom/google/android/calendar/net/AutoCompleteRequestManager$QueueIdRequestToken;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager$1;->this$0:Lcom/google/android/calendar/net/AutoCompleteRequestManager;

    iput-object p2, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager$1;->val$requestId:Lcom/google/android/calendar/net/AutoCompleteRequestManager$QueueIdRequestToken;

    iput-object p3, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager$1;->val$input:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager$1;->val$requestId:Lcom/google/android/calendar/net/AutoCompleteRequestManager$QueueIdRequestToken;

    invoke-virtual {v0}, Lcom/google/android/calendar/net/AutoCompleteRequestManager$QueueIdRequestToken;->getQueueId()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager$1;->this$0:Lcom/google/android/calendar/net/AutoCompleteRequestManager;

    # getter for: Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mCurrentRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->access$000(Lcom/google/android/calendar/net/AutoCompleteRequestManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager$1;->this$0:Lcom/google/android/calendar/net/AutoCompleteRequestManager;

    # getter for: Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mCachedResponses:Landroid/util/LruCache;
    invoke-static {v0}, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->access$100(Lcom/google/android/calendar/net/AutoCompleteRequestManager;)Landroid/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager$1;->val$input:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_1

    .line 153
    iget-object v1, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager$1;->this$0:Lcom/google/android/calendar/net/AutoCompleteRequestManager;

    iget-object v2, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager$1;->val$input:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager$1;->val$requestId:Lcom/google/android/calendar/net/AutoCompleteRequestManager$QueueIdRequestToken;

    # invokes: Lcom/google/android/calendar/net/AutoCompleteRequestManager;->fireOnAutoCompleteResponse(Ljava/lang/Object;Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Ljava/lang/Object;)V
    invoke-static {v1, v2, v3, v0}, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->access$200(Lcom/google/android/calendar/net/AutoCompleteRequestManager;Ljava/lang/Object;Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Ljava/lang/Object;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager$1;->this$0:Lcom/google/android/calendar/net/AutoCompleteRequestManager;

    # getter for: Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mRequestDelayHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->access$300(Lcom/google/android/calendar/net/AutoCompleteRequestManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/calendar/net/AutoCompleteRequestManager$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/net/AutoCompleteRequestManager$1$1;-><init>(Lcom/google/android/calendar/net/AutoCompleteRequestManager$1;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
