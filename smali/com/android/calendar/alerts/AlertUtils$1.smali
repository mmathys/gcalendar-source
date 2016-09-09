.class final Lcom/android/calendar/alerts/AlertUtils$1;
.super Ljava/lang/Object;
.source "AlertUtils.java"

# interfaces
.implements Lcom/android/calendar/alerts/AlarmManagerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/alerts/AlertUtils;->createAlarmManager(Landroid/content/Context;)Lcom/android/calendar/alerts/AlarmManagerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$mgr:Landroid/app/AlarmManager;


# direct methods
.method constructor <init>(Landroid/app/AlarmManager;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertUtils$1;->val$mgr:Landroid/app/AlarmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertUtils$1;->val$mgr:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 110
    return-void
.end method

.method public setExact(IJLandroid/app/PendingIntent;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertUtils$1;->val$mgr:Landroid/app/AlarmManager;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/calendar/AlarmManagerCompat;->setExact(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    .line 99
    return-void
.end method

.method public setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertUtils$1;->val$mgr:Landroid/app/AlarmManager;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/calendar/AlarmManagerCompat;->setExactAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    .line 105
    return-void
.end method
