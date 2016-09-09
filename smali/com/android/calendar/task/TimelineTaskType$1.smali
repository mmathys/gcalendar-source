.class final Lcom/android/calendar/task/TimelineTaskType$1;
.super Ljava/lang/Object;
.source "TimelineTaskType.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/task/TimelineTaskType;
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
        "Lcom/android/calendar/task/TimelineTaskType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/calendar/task/TimelineTaskType;Lcom/android/calendar/task/TimelineTaskType;)I
    .locals 9

    .prologue
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const-wide/16 v2, 0x0

    .line 60
    invoke-interface {p1}, Lcom/android/calendar/task/TimelineTaskType;->getStartMillis()J

    move-result-wide v0

    long-to-double v6, v0

    invoke-interface {p1}, Lcom/android/calendar/task/TimelineTaskType;->isAllDay()Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide v0, v2

    :goto_0
    add-double/2addr v0, v6

    .line 61
    invoke-interface {p2}, Lcom/android/calendar/task/TimelineTaskType;->getStartMillis()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-interface {p2}, Lcom/android/calendar/task/TimelineTaskType;->isAllDay()Z

    move-result v8

    if-eqz v8, :cond_1

    :goto_1
    add-double/2addr v2, v6

    .line 62
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    return v0

    :cond_0
    move-wide v0, v4

    .line 60
    goto :goto_0

    :cond_1
    move-wide v2, v4

    .line 61
    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 57
    check-cast p1, Lcom/android/calendar/task/TimelineTaskType;

    check-cast p2, Lcom/android/calendar/task/TimelineTaskType;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/task/TimelineTaskType$1;->compare(Lcom/android/calendar/task/TimelineTaskType;Lcom/android/calendar/task/TimelineTaskType;)I

    move-result v0

    return v0
.end method
