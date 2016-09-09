.class Lcom/android/calendar/alerts/NotificationActionTrampoline$RefreshNotificationsTask;
.super Landroid/os/AsyncTask;
.source "NotificationActionTrampoline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/alerts/NotificationActionTrampoline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefreshNotificationsTask"
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
.field private final mApplicationContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 246
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 247
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/alerts/NotificationActionTrampoline$RefreshNotificationsTask;->mApplicationContext:Landroid/content/Context;

    .line 248
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 238
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calendar/alerts/NotificationActionTrampoline$RefreshNotificationsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/calendar/alerts/NotificationActionTrampoline$RefreshNotificationsTask;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/alerts/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    .line 254
    const/4 v0, 0x0

    return-object v0
.end method
