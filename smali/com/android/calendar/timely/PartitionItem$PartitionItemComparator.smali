.class public Lcom/android/calendar/timely/PartitionItem$PartitionItemComparator;
.super Ljava/lang/Object;
.source "PartitionItem.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/PartitionItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PartitionItemComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/calendar/timely/PartitionItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/calendar/timely/PartitionItem;Lcom/android/calendar/timely/PartitionItem;)I
    .locals 4

    .prologue
    .line 45
    invoke-interface {p1}, Lcom/android/calendar/timely/PartitionItem;->getStartDay()I

    move-result v0

    invoke-interface {p2}, Lcom/android/calendar/timely/PartitionItem;->getStartDay()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 46
    invoke-interface {p1}, Lcom/android/calendar/timely/PartitionItem;->getStartDay()I

    move-result v0

    invoke-interface {p2}, Lcom/android/calendar/timely/PartitionItem;->getStartDay()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 65
    :goto_0
    return v0

    .line 50
    :cond_0
    invoke-interface {p1}, Lcom/android/calendar/timely/PartitionItem;->getEndDay()I

    move-result v0

    invoke-interface {p2}, Lcom/android/calendar/timely/PartitionItem;->getEndDay()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 51
    invoke-interface {p2}, Lcom/android/calendar/timely/PartitionItem;->getEndDay()I

    move-result v0

    invoke-interface {p1}, Lcom/android/calendar/timely/PartitionItem;->getEndDay()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    goto :goto_0

    .line 54
    :cond_1
    invoke-interface {p1}, Lcom/android/calendar/timely/PartitionItem;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    .line 55
    invoke-interface {p2}, Lcom/android/calendar/timely/PartitionItem;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v1

    .line 58
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getSortType()I

    move-result v2

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getSortType()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 59
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getSortType()I

    move-result v0

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getSortType()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    goto :goto_0

    .line 65
    :cond_2
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getSortId()J

    move-result-wide v2

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getSortId()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 41
    check-cast p1, Lcom/android/calendar/timely/PartitionItem;

    check-cast p2, Lcom/android/calendar/timely/PartitionItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/PartitionItem$PartitionItemComparator;->compare(Lcom/android/calendar/timely/PartitionItem;Lcom/android/calendar/timely/PartitionItem;)I

    move-result v0

    return v0
.end method
