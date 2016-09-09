.class Lcom/android/calendar/alerts/GlobalDismissManager$1;
.super Landroid/os/AsyncTask;
.source "GlobalDismissManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/alerts/GlobalDismissManager;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/util/Pair",
        "<",
        "Landroid/content/Context;",
        "Landroid/content/Intent;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/alerts/GlobalDismissManager;


# direct methods
.method constructor <init>(Lcom/android/calendar/alerts/GlobalDismissManager;)V
    .locals 0

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/calendar/alerts/GlobalDismissManager$1;->this$0:Lcom/android/calendar/alerts/GlobalDismissManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 536
    check-cast p1, [Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/calendar/alerts/GlobalDismissManager$1;->doInBackground([Landroid/util/Pair;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/util/Pair;)Ljava/lang/Void;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 539
    aget-object v0, p1, v1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 540
    aget-object v1, p1, v1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Landroid/content/Intent;

    .line 541
    const-string v1, "com.android.calendar.alerts.sync_id"

    invoke-virtual {v4, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.android.calendar.alerts.account_name"

    invoke-virtual {v4, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.android.calendar.alerts.start_time"

    .line 542
    invoke-virtual {v4, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    # getter for: Lcom/android/calendar/alerts/GlobalDismissManager;->sReceiverDismissCache:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/calendar/alerts/GlobalDismissManager;->access$000()Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7

    .line 544
    :try_start_0
    # getter for: Lcom/android/calendar/alerts/GlobalDismissManager;->sReceiverDismissCache:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/calendar/alerts/GlobalDismissManager;->access$000()Ljava/util/HashMap;

    move-result-object v8

    new-instance v1, Lcom/android/calendar/alerts/GlobalDismissManager$GlobalDismissId;

    const-string v2, "com.android.calendar.alerts.account_name"

    .line 545
    invoke-virtual {v4, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.calendar.alerts.sync_id"

    .line 546
    invoke-virtual {v4, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.android.calendar.alerts.start_time"

    .line 547
    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/calendar/alerts/GlobalDismissManager$GlobalDismissId;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/android/calendar/alerts/GlobalDismissManager$1;)V

    .line 548
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 544
    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    invoke-static {v0}, Lcom/android/calendar/alerts/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    .line 552
    :cond_0
    return-object v9

    .line 549
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
