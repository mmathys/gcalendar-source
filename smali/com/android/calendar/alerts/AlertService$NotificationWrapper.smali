.class public Lcom/android/calendar/alerts/AlertService$NotificationWrapper;
.super Ljava/lang/Object;
.source "AlertService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/alerts/AlertService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationWrapper"
.end annotation


# instance fields
.field mBegin:J

.field mEnd:J

.field mEventId:J

.field final mNotification:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Landroid/app/Notification;JJJ)V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->mNotification:Landroid/app/Notification;

    .line 149
    iput-wide p2, p0, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->mEventId:J

    .line 150
    iput-wide p4, p0, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->mBegin:J

    .line 151
    iput-wide p6, p0, Lcom/android/calendar/alerts/AlertService$NotificationWrapper;->mEnd:J

    .line 155
    return-void
.end method
