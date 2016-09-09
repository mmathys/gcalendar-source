.class Lcom/google/android/calendar/extensions/RefreshUIManager$2;
.super Ljava/lang/Object;
.source "RefreshUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/extensions/RefreshUIManager;->onSyncCompleted(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/extensions/RefreshUIManager;

.field final synthetic val$error:Z


# direct methods
.method constructor <init>(Lcom/google/android/calendar/extensions/RefreshUIManager;Z)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/calendar/extensions/RefreshUIManager$2;->this$0:Lcom/google/android/calendar/extensions/RefreshUIManager;

    iput-boolean p2, p0, Lcom/google/android/calendar/extensions/RefreshUIManager$2;->val$error:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/calendar/extensions/RefreshUIManager$2;->this$0:Lcom/google/android/calendar/extensions/RefreshUIManager;

    # getter for: Lcom/google/android/calendar/extensions/RefreshUIManager;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;
    invoke-static {v0}, Lcom/google/android/calendar/extensions/RefreshUIManager;->access$100(Lcom/google/android/calendar/extensions/RefreshUIManager;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/extensions/RefreshUIManager$2;->this$0:Lcom/google/android/calendar/extensions/RefreshUIManager;

    # getter for: Lcom/google/android/calendar/extensions/RefreshUIManager;->mFinishRefreshLabel:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/calendar/extensions/RefreshUIManager;->access$200(Lcom/google/android/calendar/extensions/RefreshUIManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/calendar/extensions/RefreshUIManager$2;->this$0:Lcom/google/android/calendar/extensions/RefreshUIManager;

    # getter for: Lcom/google/android/calendar/extensions/RefreshUIManager;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;
    invoke-static {v0}, Lcom/google/android/calendar/extensions/RefreshUIManager;->access$100(Lcom/google/android/calendar/extensions/RefreshUIManager;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 91
    iget-object v0, p0, Lcom/google/android/calendar/extensions/RefreshUIManager$2;->this$0:Lcom/google/android/calendar/extensions/RefreshUIManager;

    iget-boolean v1, p0, Lcom/google/android/calendar/extensions/RefreshUIManager$2;->val$error:Z

    # invokes: Lcom/google/android/calendar/extensions/RefreshUIManager;->showToast(Z)V
    invoke-static {v0, v1}, Lcom/google/android/calendar/extensions/RefreshUIManager;->access$300(Lcom/google/android/calendar/extensions/RefreshUIManager;Z)V

    .line 92
    return-void
.end method
