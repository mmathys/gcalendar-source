.class Lcom/google/android/calendar/extensions/RefreshUIManager$1;
.super Ljava/lang/Object;
.source "RefreshUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/extensions/RefreshUIManager;->onSyncPending()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/extensions/RefreshUIManager;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/extensions/RefreshUIManager;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/calendar/extensions/RefreshUIManager$1;->this$0:Lcom/google/android/calendar/extensions/RefreshUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/calendar/extensions/RefreshUIManager$1;->this$0:Lcom/google/android/calendar/extensions/RefreshUIManager;

    # getter for: Lcom/google/android/calendar/extensions/RefreshUIManager;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;
    invoke-static {v0}, Lcom/google/android/calendar/extensions/RefreshUIManager;->access$100(Lcom/google/android/calendar/extensions/RefreshUIManager;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/extensions/RefreshUIManager$1;->this$0:Lcom/google/android/calendar/extensions/RefreshUIManager;

    # getter for: Lcom/google/android/calendar/extensions/RefreshUIManager;->mStartRefreshLabel:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/calendar/extensions/RefreshUIManager;->access$000(Lcom/google/android/calendar/extensions/RefreshUIManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/google/android/calendar/extensions/RefreshUIManager$1;->this$0:Lcom/google/android/calendar/extensions/RefreshUIManager;

    # getter for: Lcom/google/android/calendar/extensions/RefreshUIManager;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;
    invoke-static {v0}, Lcom/google/android/calendar/extensions/RefreshUIManager;->access$100(Lcom/google/android/calendar/extensions/RefreshUIManager;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 73
    return-void
.end method
