.class public Lcom/android/calendar/alerts/AlertService$NotificationMgrWrapper;
.super Lcom/android/calendar/alerts/NotificationMgr;
.source "AlertService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/alerts/AlertService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationMgrWrapper"
.end annotation


# instance fields
.field mNm:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/app/NotificationManager;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/calendar/alerts/NotificationMgr;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertService$NotificationMgrWrapper;->mNm:Landroid/app/NotificationManager;

    .line 164
    return-void
.end method


# virtual methods
.method public cancel(I)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationMgrWrapper;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 169
    return-void
.end method

.method public notify(ILcom/android/calendar/alerts/AlertService$NotificationWrapper;)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-static {}, Lcom/android/calendar/Utils;->isMOrLater()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p2, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->mNotification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "UID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationMgrWrapper;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 182
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    .line 183
    iget-object v7, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v8, "UID"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 184
    const-string v7, "AlertService"

    const-string v8, "Repost of %s detected"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v1

    const/4 v10, 0x1

    iget-object v11, p2, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->mNotification:Landroid/app/Notification;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v6, v9, v10

    invoke-static {v7, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 185
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    if-ne p1, v5, :cond_0

    iget-object v5, p2, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->mNotification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->priority:I

    if-lez v5, :cond_0

    .line 187
    const-string v0, "AlertService"

    const-string v2, "Ignoring repost"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 194
    :goto_1
    return-void

    .line 181
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationMgrWrapper;->mNm:Landroid/app/NotificationManager;

    iget-object v1, p2, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1
.end method
