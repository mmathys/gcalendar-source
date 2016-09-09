.class public Lcom/android/calendar/launch/LaunchIntentConstants;
.super Ljava/lang/Object;
.source "LaunchIntentConstants.java"


# static fields
.field private static sEditAction:Ljava/lang/String;

.field private static sFindTimeAction:Ljava/lang/String;

.field private static sInsertAction:Ljava/lang/String;

.field private static sInsertReminderAction:Ljava/lang/String;

.field private static sTaskViewAction:Ljava/lang/String;

.field private static sViewAction:Ljava/lang/String;


# direct methods
.method public static getEditAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/android/calendar/launch/LaunchIntentConstants;->sEditAction:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".EVENT_EDIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/launch/LaunchIntentConstants;->sEditAction:Ljava/lang/String;

    .line 27
    :cond_0
    sget-object v0, Lcom/android/calendar/launch/LaunchIntentConstants;->sEditAction:Ljava/lang/String;

    return-object v0
.end method

.method public static getFindTimeAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/android/calendar/launch/LaunchIntentConstants;->sFindTimeAction:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".FIND_TIME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/launch/LaunchIntentConstants;->sFindTimeAction:Ljava/lang/String;

    .line 67
    :cond_0
    sget-object v0, Lcom/android/calendar/launch/LaunchIntentConstants;->sFindTimeAction:Ljava/lang/String;

    return-object v0
.end method

.method public static getInsertAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/android/calendar/launch/LaunchIntentConstants;->sInsertAction:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".EVENT_INSERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/launch/LaunchIntentConstants;->sInsertAction:Ljava/lang/String;

    .line 37
    :cond_0
    sget-object v0, Lcom/android/calendar/launch/LaunchIntentConstants;->sInsertAction:Ljava/lang/String;

    return-object v0
.end method

.method public static getInsertReminderAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lcom/android/calendar/launch/LaunchIntentConstants;->sInsertReminderAction:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".REMINDER_INSERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/launch/LaunchIntentConstants;->sInsertReminderAction:Ljava/lang/String;

    .line 74
    :cond_0
    sget-object v0, Lcom/android/calendar/launch/LaunchIntentConstants;->sInsertReminderAction:Ljava/lang/String;

    return-object v0
.end method

.method public static getTaskViewAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/android/calendar/launch/LaunchIntentConstants;->sTaskViewAction:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".TASK_VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/launch/LaunchIntentConstants;->sTaskViewAction:Ljava/lang/String;

    .line 57
    :cond_0
    sget-object v0, Lcom/android/calendar/launch/LaunchIntentConstants;->sTaskViewAction:Ljava/lang/String;

    return-object v0
.end method

.method public static getViewAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/android/calendar/launch/LaunchIntentConstants;->sViewAction:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".EVENT_VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/launch/LaunchIntentConstants;->sViewAction:Ljava/lang/String;

    .line 47
    :cond_0
    sget-object v0, Lcom/android/calendar/launch/LaunchIntentConstants;->sViewAction:Ljava/lang/String;

    return-object v0
.end method

.method public static isEditIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 78
    invoke-static {p0}, Lcom/android/calendar/launch/LaunchIntentConstants;->getEditAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFindTimeIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 82
    invoke-static {p0}, Lcom/android/calendar/launch/LaunchIntentConstants;->getFindTimeAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isInsertIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 86
    invoke-static {p0}, Lcom/android/calendar/launch/LaunchIntentConstants;->getInsertAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isInsertReminderIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 90
    invoke-static {p0}, Lcom/android/calendar/launch/LaunchIntentConstants;->getInsertReminderAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isTaskViewIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 94
    invoke-static {p0}, Lcom/android/calendar/launch/LaunchIntentConstants;->getTaskViewAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isViewIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 98
    invoke-static {p0}, Lcom/android/calendar/launch/LaunchIntentConstants;->getViewAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
