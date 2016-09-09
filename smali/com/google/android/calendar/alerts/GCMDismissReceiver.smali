.class public Lcom/google/android/calendar/alerts/GCMDismissReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GCMDismissReceiver.java"


# static fields
.field private static final TYPE_ERROR:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "send_error"

    sput-object v0, Lcom/google/android/calendar/alerts/GCMDismissReceiver;->TYPE_ERROR:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 24
    sget-object v0, Lcom/google/android/calendar/alerts/GCMDismissReceiver;->TYPE_ERROR:Ljava/lang/Object;

    const-string v1, "message_type"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    const-string v0, "GCMDismissReceiver"

    const-string v1, "received a GCM error: %s"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "error_type"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 45
    :goto_0
    return-void

    .line 26
    :cond_0
    const-string v0, "com.android.calendar.alerts.sync_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.calendar.alerts.DISMISS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    const-string v1, "com.android.calendar.alerts.account_name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    const-string v1, "com.android.calendar.alerts.account_name"

    const-string v2, "com.android.calendar.alerts.account_name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    :cond_1
    const-string v1, "com.android.calendar.alerts.sync_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 33
    const-string v1, "com.android.calendar.alerts.sync_id"

    const-string v2, "com.android.calendar.alerts.sync_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    :cond_2
    const-string v1, "com.android.calendar.alerts.start_time"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 36
    const-string v1, "com.android.calendar.alerts.start_time"

    const-string v2, "com.android.calendar.alerts.start_time"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    :cond_3
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 40
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/alerts/GCMDismissReceiver;->setResultCode(I)V

    goto :goto_0

    .line 42
    :cond_4
    const-string v0, "GCMDismissReceiver"

    const-string v1, "received unexpected GCM Message: %s"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "message_type"

    .line 43
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 42
    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
