.class public Lcom/android/calendar/ExperimentalOptionsEnabler;
.super Ljava/lang/Object;
.source "ExperimentalOptionsEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/ExperimentalOptionsEnabler$Config;,
        Lcom/android/calendar/ExperimentalOptionsEnabler$DefaultSystemClock;,
        Lcom/android/calendar/ExperimentalOptionsEnabler$Clock;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLOCK:Lcom/android/calendar/ExperimentalOptionsEnabler$Clock;

.field static final DEFAULT_CONFIG:Lcom/android/calendar/ExperimentalOptionsEnabler$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 42
    new-instance v0, Lcom/android/calendar/ExperimentalOptionsEnabler$DefaultSystemClock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/ExperimentalOptionsEnabler$DefaultSystemClock;-><init>(Lcom/android/calendar/ExperimentalOptionsEnabler$1;)V

    sput-object v0, Lcom/android/calendar/ExperimentalOptionsEnabler;->DEFAULT_CLOCK:Lcom/android/calendar/ExperimentalOptionsEnabler$Clock;

    .line 44
    new-instance v0, Lcom/android/calendar/ExperimentalOptionsEnabler$Config;

    const/16 v1, 0x7d0

    const/4 v2, 0x3

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/ExperimentalOptionsEnabler$Config;-><init>(III)V

    sput-object v0, Lcom/android/calendar/ExperimentalOptionsEnabler;->DEFAULT_CONFIG:Lcom/android/calendar/ExperimentalOptionsEnabler$Config;

    return-void
.end method

.method public static areGrooveViewEditScreensEnabled(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public static isEventViewScreenEnabled(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 144
    invoke-static {p0}, Lcom/android/calendar/ExperimentalOptionsEnabler;->isNewViewEditDevelopmentEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "PREF_EVENT_VIEW"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEventViewScreenEnabledForUnsupportedEvents(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 160
    const-string v0, "PREF_EVENT_VIEW_UNSUPPORTED_EVENTS"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNewViewEditDevelopmentEnabled(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 133
    invoke-static {p0}, Lcom/android/calendar/ExperimentalOptionsEnabler;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
