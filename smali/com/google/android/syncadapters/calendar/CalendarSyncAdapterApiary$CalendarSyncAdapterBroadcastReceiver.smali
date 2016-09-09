.class Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary$CalendarSyncAdapterBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CalendarSyncAdapterApiary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CalendarSyncAdapterBroadcastReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4651
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary$1;)V
    .locals 0

    .prologue
    .line 4651
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary$CalendarSyncAdapterBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 4654
    const-class v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterIntentService;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4655
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4656
    return-void
.end method
