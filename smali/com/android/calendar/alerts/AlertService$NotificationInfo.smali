.class Lcom/android/calendar/alerts/AlertService$NotificationInfo;
.super Ljava/lang/Object;
.source "AlertService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/alerts/AlertService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationInfo"
.end annotation


# instance fields
.field alertMillis:J

.field allDay:Z

.field endMillis:J

.field endTimeUnspecified:Z

.field eventId:J

.field eventName:Ljava/lang/String;

.field location:Ljava/lang/String;

.field newAlert:Z

.field startMillis:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JZJJJZZ)V
    .locals 0

    .prologue
    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 799
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventName:Ljava/lang/String;

    .line 800
    iput-object p2, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->location:Ljava/lang/String;

    .line 801
    iput-wide p3, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->startMillis:J

    .line 802
    iput-boolean p5, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->endTimeUnspecified:Z

    .line 803
    iput-wide p6, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->endMillis:J

    .line 804
    iput-wide p8, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->alertMillis:J

    .line 805
    iput-wide p10, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->eventId:J

    .line 806
    iput-boolean p13, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->newAlert:Z

    .line 807
    iput-boolean p12, p0, Lcom/android/calendar/alerts/AlertService$NotificationInfo;->allDay:Z

    .line 808
    return-void
.end method
