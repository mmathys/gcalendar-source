.class Lcom/android/calendar/calendarlist/DrawerSyncUIManager$1;
.super Ljava/lang/Object;
.source "DrawerSyncUIManager.java"

# interfaces
.implements Lcom/google/android/syncadapters/calendar/SyncProgressTracker$SyncProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->startSync(Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/calendarlist/DrawerSyncUIManager;

.field final synthetic val$account:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/android/calendar/calendarlist/DrawerSyncUIManager;Landroid/accounts/Account;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager$1;->this$0:Lcom/android/calendar/calendarlist/DrawerSyncUIManager;

    iput-object p2, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager$1;->val$account:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSyncCompleted(Z)V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager$1;->this$0:Lcom/android/calendar/calendarlist/DrawerSyncUIManager;

    # getter for: Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->mStateMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->access$000(Lcom/android/calendar/calendarlist/DrawerSyncUIManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager$1;->val$account:Landroid/accounts/Account;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/calendarlist/AccountSyncState;

    .line 75
    if-eqz p1, :cond_1

    .line 76
    sget-object v1, Lcom/android/calendar/calendarlist/AccountSyncState;->ERROR:Lcom/android/calendar/calendarlist/AccountSyncState;

    .line 77
    :goto_0
    sget-object v2, Lcom/android/calendar/calendarlist/AccountSyncState;->SYNCING:Lcom/android/calendar/calendarlist/AccountSyncState;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager$1;->this$0:Lcom/android/calendar/calendarlist/DrawerSyncUIManager;

    # getter for: Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->mStateMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->access$000(Lcom/android/calendar/calendarlist/DrawerSyncUIManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager$1;->val$account:Landroid/accounts/Account;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager$1;->this$0:Lcom/android/calendar/calendarlist/DrawerSyncUIManager;

    # invokes: Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->updateDrawerOnUiThread()V
    invoke-static {v0}, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->access$200(Lcom/android/calendar/calendarlist/DrawerSyncUIManager;)V

    .line 89
    return-void

    .line 76
    :cond_1
    sget-object v1, Lcom/android/calendar/calendarlist/AccountSyncState;->COMPLETE:Lcom/android/calendar/calendarlist/AccountSyncState;

    goto :goto_0

    .line 83
    :cond_2
    iget v0, v1, Lcom/android/calendar/calendarlist/AccountSyncState;->textId:I

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager$1;->this$0:Lcom/android/calendar/calendarlist/DrawerSyncUIManager;

    iget v1, v1, Lcom/android/calendar/calendarlist/AccountSyncState;->textId:I

    # invokes: Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->showToast(I)V
    invoke-static {v0, v1}, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->access$100(Lcom/android/calendar/calendarlist/DrawerSyncUIManager;I)V

    goto :goto_1
.end method

.method public onSyncPending()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method
