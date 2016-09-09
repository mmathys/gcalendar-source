.class public Lcom/android/calendar/calendarlist/SelectCalendarsHelper;
.super Ljava/lang/Object;
.source "SelectCalendarsHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postProcessItems(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    return-void
.end method

.method public registerForChanges(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public unregisterForChanges(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method
