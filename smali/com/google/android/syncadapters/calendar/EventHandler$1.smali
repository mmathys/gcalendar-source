.class final Lcom/google/android/syncadapters/calendar/EventHandler$1;
.super Ljava/lang/Object;
.source "EventHandler.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/syncadapters/calendar/EventHandler;->getAttendeeSet(Ljava/util/List;)Ljava/util/Set;
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
        "Lcom/google/api/services/calendar/model/EventAttendee;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/api/services/calendar/model/EventAttendee;Lcom/google/api/services/calendar/model/EventAttendee;)I
    .locals 2

    .prologue
    .line 1562
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/EventAttendee;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/EventAttendee;->getEmail()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/google/android/syncadapters/calendar/EventHandler;->compareObjects(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/EventHandler;->access$000(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 1563
    if-nez v0, :cond_0

    .line 1564
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/EventAttendee;->getResponseStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/EventAttendee;->getResponseStatus()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/google/android/syncadapters/calendar/EventHandler;->compareObjects(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/EventHandler;->access$000(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 1566
    :cond_0
    if-nez v0, :cond_1

    .line 1567
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/EventAttendee;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/EventAttendee;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/google/android/syncadapters/calendar/EventHandler;->compareObjects(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/EventHandler;->access$000(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 1569
    :cond_1
    if-nez v0, :cond_2

    .line 1570
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/EventAttendee;->getOptional()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/EventAttendee;->getOptional()Ljava/lang/Boolean;

    move-result-object v1

    # invokes: Lcom/google/android/syncadapters/calendar/EventHandler;->compareObjects(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/EventHandler;->access$000(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 1572
    :cond_2
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1559
    check-cast p1, Lcom/google/api/services/calendar/model/EventAttendee;

    check-cast p2, Lcom/google/api/services/calendar/model/EventAttendee;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/syncadapters/calendar/EventHandler$1;->compare(Lcom/google/api/services/calendar/model/EventAttendee;Lcom/google/api/services/calendar/model/EventAttendee;)I

    move-result v0

    return v0
.end method
