.class final Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults$1;
.super Ljava/lang/Object;
.source "CalendarAppWidgetModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->sortItemList(Ljava/util/List;)V
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
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/timely/TimelineItem;)I
    .locals 4

    .prologue
    .line 186
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getStartTime()I

    move-result v0

    invoke-interface {p2}, Lcom/android/calendar/timely/TimelineItem;->getStartTime()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 187
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

    .line 197
    :goto_0
    return v0

    .line 190
    :cond_0
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getEndTime()I

    move-result v0

    invoke-interface {p2}, Lcom/android/calendar/timely/TimelineItem;->getEndTime()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 191
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

    goto :goto_0

    .line 194
    :cond_1
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getSortType()I

    move-result v0

    invoke-interface {p2}, Lcom/android/calendar/timely/TimelineItem;->getSortType()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 195
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getSortType()I

    move-result v0

    invoke-interface {p2}, Lcom/android/calendar/timely/TimelineItem;->getSortType()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    goto :goto_0

    .line 197
    :cond_2
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getSortId()J

    move-result-wide v0

    invoke-interface {p2}, Lcom/android/calendar/timely/TimelineItem;->getSortId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 182
    check-cast p1, Lcom/android/calendar/timely/TimelineItem;

    check-cast p2, Lcom/android/calendar/timely/TimelineItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults$1;->compare(Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/timely/TimelineItem;)I

    move-result v0

    return v0
.end method
