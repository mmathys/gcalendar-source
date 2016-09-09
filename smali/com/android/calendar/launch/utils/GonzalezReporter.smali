.class public Lcom/android/calendar/launch/utils/GonzalezReporter;
.super Ljava/lang/Object;
.source "GonzalezReporter.java"


# direct methods
.method private static getShortcutManager(Landroid/content/Context;)Landroid/content/pm/ShortcutManager;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/android/calendar/utils/NycMr1Utils;->isNycMr1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 50
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reportInsertEvent(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 32
    invoke-static {p0}, Lcom/android/calendar/launch/utils/GonzalezReporter;->getShortcutManager(Landroid/content/Context;)Landroid/content/pm/ShortcutManager;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    const-string v1, "launcher_shortcuts_shortcut_new_event"

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutManager;->reportShortcutUsed(Ljava/lang/String;)V

    .line 36
    :cond_0
    return-void
.end method

.method public static reportInsertTask(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 39
    invoke-static {p0}, Lcom/android/calendar/launch/utils/GonzalezReporter;->getShortcutManager(Landroid/content/Context;)Landroid/content/pm/ShortcutManager;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    const-string v1, "launcher_shortcuts_shortcut_new_reminder"

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutManager;->reportShortcutUsed(Ljava/lang/String;)V

    .line 43
    :cond_0
    return-void
.end method
