.class final Lcom/android/calendar/timely/TimelineItem$1;
.super Ljava/lang/Object;
.source "TimelineItem.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/TimelineItem;
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
        "Lcom/android/calendar/timely/TimelineItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/timely/TimelineItem;)I
    .locals 4

    .prologue
    .line 102
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getStartDay()I

    move-result v0

    invoke-interface {p2}, Lcom/android/calendar/timely/TimelineItem;->getStartDay()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 103
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getStartDay()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/calendar/timely/TimelineItem;->getStartDay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    .line 136
    :goto_0
    return v0

    .line 107
    :cond_0
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->isAllDay()Z

    move-result v0

    invoke-interface {p2}, Lcom/android/calendar/timely/TimelineItem;->isAllDay()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 108
    invoke-interface {p2}, Lcom/android/calendar/timely/TimelineItem;->isAllDay()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->isAllDay()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_0

    .line 111
    :cond_1
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->isAllDay()Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getStartTime()I

    move-result v0

    invoke-interface {p2}, Lcom/android/calendar/timely/TimelineItem;->getStartTime()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 114
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getStartTime()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/calendar/timely/TimelineItem;->getStartTime()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    goto :goto_0

    .line 119
    :cond_2
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getEndDay()I

    move-result v0

    invoke-interface {p2}, Lcom/android/calendar/timely/TimelineItem;->getEndDay()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 120
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getEndDay()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/calendar/timely/TimelineItem;->getEndDay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    goto :goto_0

    .line 123
    :cond_3
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->isAllDay()Z

    move-result v0

    if-nez v0, :cond_4

    .line 125
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getEndTime()I

    move-result v0

    invoke-interface {p2}, Lcom/android/calendar/timely/TimelineItem;->getEndTime()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 126
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getEndTime()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/calendar/timely/TimelineItem;->getEndTime()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    goto/16 :goto_0

    .line 131
    :cond_4
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getSortType()I

    move-result v0

    invoke-interface {p2}, Lcom/android/calendar/timely/TimelineItem;->getSortType()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 132
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getSortType()I

    move-result v0

    invoke-interface {p2}, Lcom/android/calendar/timely/TimelineItem;->getSortType()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    goto/16 :goto_0

    .line 136
    :cond_5
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getSortId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/calendar/timely/TimelineItem;->getSortId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 98
    check-cast p1, Lcom/android/calendar/timely/TimelineItem;

    check-cast p2, Lcom/android/calendar/timely/TimelineItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/TimelineItem$1;->compare(Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/timely/TimelineItem;)I

    move-result v0

    return v0
.end method
