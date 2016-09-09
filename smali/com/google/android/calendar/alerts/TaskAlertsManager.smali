.class public Lcom/google/android/calendar/alerts/TaskAlertsManager;
.super Ljava/lang/Object;
.source "TaskAlertsManager.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/google/android/calendar/alerts/TaskAlertsManager;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/alerts/TaskAlertsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-direct {p0, p1, v0}, Lcom/google/android/calendar/alerts/TaskAlertsManager;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/NotificationManager;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/calendar/alerts/TaskAlertsManager;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/google/android/calendar/alerts/TaskAlertsManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 32
    return-void
.end method


# virtual methods
.method public cancel(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/reminders/model/Task;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    return-void
.end method

.method public notify(Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;)V
    .locals 4

    .prologue
    .line 44
    invoke-interface {p2}, Lcom/google/android/gms/reminders/model/Task;->getTaskId()Lcom/google/android/gms/reminders/model/TaskId;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/TaskId;->getClientAssignedId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 46
    iget-object v1, p0, Lcom/google/android/calendar/alerts/TaskAlertsManager;->mContext:Landroid/content/Context;

    .line 47
    invoke-static {v1, p1, p2, v0}, Lcom/google/android/calendar/alerts/TaskAlertsFactory;->createSingleNotification(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;I)Landroid/app/Notification;

    move-result-object v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    iget-object v2, p0, Lcom/google/android/calendar/alerts/TaskAlertsManager;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "tasks"

    invoke-virtual {v2, v3, v0, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    .line 52
    :cond_0
    return-void
.end method
