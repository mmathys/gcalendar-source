.class Lcom/google/android/calendar/task/TimelyTimelineTaskBundle$IncompleteTaskComparator;
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
    name = "IncompleteTaskComparator"
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
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static coalesce(Ljava/lang/Long;)J
    .locals 2

    .prologue
    .line 277
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method private getKey(Lcom/google/android/calendar/task/ArpTimelineTask;)J
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 265
    invoke-virtual {p1}, Lcom/google/android/calendar/task/ArpTimelineTask;->getCreatedTimeMillis()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle$IncompleteTaskComparator;->coalesce(Ljava/lang/Long;)J

    move-result-wide v0

    .line 266
    invoke-virtual {p1}, Lcom/google/android/calendar/task/ArpTimelineTask;->getOriginalDueTimeMillis()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle$IncompleteTaskComparator;->coalesce(Ljava/lang/Long;)J

    move-result-wide v2

    .line 268
    cmp-long v4, v0, v6

    if-nez v4, :cond_0

    cmp-long v4, v2, v6

    if-nez v4, :cond_0

    .line 269
    # getter for: Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Both creationTime and dueTime null."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 273
    :cond_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public compare(Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/timely/TimelineItem;)I
    .locals 5

    .prologue
    .line 239
    move-object v0, p1

    check-cast v0, Lcom/google/android/calendar/task/ArpTimelineTask;

    invoke-direct {p0, v0}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle$IncompleteTaskComparator;->getKey(Lcom/google/android/calendar/task/ArpTimelineTask;)J

    move-result-wide v2

    move-object v0, p2

    .line 240
    check-cast v0, Lcom/google/android/calendar/task/ArpTimelineTask;

    invoke-direct {p0, v0}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle$IncompleteTaskComparator;->getKey(Lcom/google/android/calendar/task/ArpTimelineTask;)J

    move-result-wide v0

    .line 242
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 245
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    neg-int v0, v0

    .line 250
    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/google/android/calendar/task/ArpTimelineTask;

    .line 251
    invoke-virtual {p1}, Lcom/google/android/calendar/task/ArpTimelineTask;->getCreatedTimeMillis()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle$IncompleteTaskComparator;->coalesce(Ljava/lang/Long;)J

    move-result-wide v0

    check-cast p2, Lcom/google/android/calendar/task/ArpTimelineTask;

    .line 252
    invoke-virtual {p2}, Lcom/google/android/calendar/task/ArpTimelineTask;->getCreatedTimeMillis()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle$IncompleteTaskComparator;->coalesce(Ljava/lang/Long;)J

    move-result-wide v2

    .line 250
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    neg-int v0, v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 223
    check-cast p1, Lcom/android/calendar/timely/TimelineItem;

    check-cast p2, Lcom/android/calendar/timely/TimelineItem;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/task/TimelyTimelineTaskBundle$IncompleteTaskComparator;->compare(Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/timely/TimelineItem;)I

    move-result v0

    return v0
.end method
