.class final Lcom/google/android/syncadapters/calendar/EventHandler$2;
.super Ljava/lang/Object;
.source "EventHandler.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/syncadapters/calendar/EventHandler;->getReminderSet(Lcom/google/api/services/calendar/model/Event$Reminders;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/api/services/calendar/model/EventReminder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/api/services/calendar/model/EventReminder;Lcom/google/api/services/calendar/model/EventReminder;)I
    .locals 2

    .prologue
    .line 1598
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/EventReminder;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/EventReminder;->getMethod()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/google/android/syncadapters/calendar/EventHandler;->compareObjects(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/EventHandler;->access$000(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 1599
    if-nez v0, :cond_0

    .line 1600
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/EventReminder;->getMinutes()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/EventReminder;->getMinutes()Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/google/android/syncadapters/calendar/EventHandler;->compareObjects(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/EventHandler;->access$000(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 1602
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1595
    check-cast p1, Lcom/google/api/services/calendar/model/EventReminder;

    check-cast p2, Lcom/google/api/services/calendar/model/EventReminder;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/syncadapters/calendar/EventHandler$2;->compare(Lcom/google/api/services/calendar/model/EventReminder;Lcom/google/api/services/calendar/model/EventReminder;)I

    move-result v0

    return v0
.end method
