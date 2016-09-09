.class Lcom/google/android/calendar/task/TimelyTimelineTaskBundle$DoneTaskComparator;
.super Ljava/lang/Object;
.source "TimelyTimelineTaskBundle.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DoneTaskComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/calendar/timely/TimelineItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getKey(Lcom/google/android/calendar/task/ArpTimelineTask;)J
    .locals 3

    .prologue
    .line 205
    invoke-virtual {p1}, Lcom/google/android/calendar/task/ArpTimelineTask;->getArchivedTimeMillis()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p1}, Lcom/google/android/calendar/task/ArpTimelineTask;->getArchivedTimeMillis()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 214
    :goto_0
    return-wide v0

    .line 209
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/calendar/task/ArpTimelineTask;->getCreatedTimeMillis()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    .line 210
    # getter for: Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Both creationTime and archivedTime null."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 211
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 214
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/calendar/task/ArpTimelineTask;->getCreatedTimeMillis()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public compare(Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/timely/TimelineItem;)I
    .locals 4

    .prologue
    .line 193
    check-cast p1, Lcom/google/android/calendar/task/ArpTimelineTask;

    invoke-direct {p0, p1}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle$DoneTaskComparator;->getKey(Lcom/google/android/calendar/task/ArpTimelineTask;)J

    move-result-wide v0

    check-cast p2, Lcom/google/android/calendar/task/ArpTimelineTask;

    invoke-direct {p0, p2}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle$DoneTaskComparator;->getKey(Lcom/google/android/calendar/task/ArpTimelineTask;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 178
    check-cast p1, Lcom/android/calendar/timely/TimelineItem;

    check-cast p2, Lcom/android/calendar/timely/TimelineItem;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle$DoneTaskComparator;->compare(Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/timely/TimelineItem;)I

    move-result v0

    return v0
.end method
