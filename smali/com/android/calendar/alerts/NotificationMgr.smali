.class public abstract Lcom/android/calendar/alerts/NotificationMgr;
.super Ljava/lang/Object;
.source "NotificationMgr.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cancel(I)V
.end method

.method public cancelAll()V
    .locals 2

    .prologue
    .line 30
    const/4 v0, 0x0

    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/alerts/NotificationMgr;->cancelAllBetween(II)V

    .line 31
    return-void
.end method

.method public cancelAllBetween(II)V
    .locals 0

    .prologue
    .line 37
    :goto_0
    if-gt p1, p2, :cond_0

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/calendar/alerts/NotificationMgr;->cancel(I)V

    .line 37
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method public abstract notify(ILcom/android/calendar/alerts/AlertService$NotificationWrapper;)V
.end method
