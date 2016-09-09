.class Lcom/android/calendar/timely/SyncOffNotificationsManager$2;
.super Landroid/os/AsyncTask;
.source "SyncOffNotificationsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/SyncOffNotificationsManager;->enableSync()V
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
.field final synthetic this$0:Lcom/android/calendar/timely/SyncOffNotificationsManager;

.field final synthetic val$accounts:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/SyncOffNotificationsManager;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager$2;->this$0:Lcom/android/calendar/timely/SyncOffNotificationsManager;

    iput-object p2, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager$2;->val$accounts:Ljava/util/Set;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 356
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/SyncOffNotificationsManager$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 359
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager$2;->this$0:Lcom/android/calendar/timely/SyncOffNotificationsManager;

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->addCallback(Lcom/google/android/syncadapters/calendar/SyncProgressTracker$SyncProgressCallback;)V

    .line 360
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager$2;->this$0:Lcom/android/calendar/timely/SyncOffNotificationsManager;

    # invokes: Lcom/android/calendar/timely/SyncOffNotificationsManager;->isMasterSyncOff()Z
    invoke-static {v0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->access$100(Lcom/android/calendar/timely/SyncOffNotificationsManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-static {v4}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager$2;->val$accounts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 365
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 367
    const-string v2, "com.android.calendar"

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 371
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 372
    invoke-static {}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->getInstance()Lcom/google/android/syncadapters/calendar/SyncProgressTracker;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->addPendingSync(Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 373
    const-string v2, "com.android.calendar"

    invoke-static {v0, v2, v4}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_0

    .line 375
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
