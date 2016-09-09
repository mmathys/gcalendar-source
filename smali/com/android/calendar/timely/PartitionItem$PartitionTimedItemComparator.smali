.class public Lcom/android/calendar/timely/PartitionItem$PartitionTimedItemComparator;
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
    name = "PartitionTimedItemComparator"
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
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/calendar/timely/PartitionItem;Lcom/android/calendar/timely/PartitionItem;)I
    .locals 3

    .prologue
    .line 78
    invoke-interface {p1}, Lcom/android/calendar/timely/PartitionItem;->getStartDay()I

    move-result v0

    invoke-interface {p2}, Lcom/android/calendar/timely/PartitionItem;->getStartDay()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 79
    invoke-interface {p1}, Lcom/android/calendar/timely/PartitionItem;->getStartDay()I

    move-result v0

    invoke-interface {p2}, Lcom/android/calendar/timely/PartitionItem;->getStartDay()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 87
    :goto_0
    return v0

    .line 83
    :cond_0
    invoke-interface {p1}, Lcom/android/calendar/timely/PartitionItem;->getEndDay()I

    move-result v0

    invoke-interface {p2}, Lcom/android/calendar/timely/PartitionItem;->getEndDay()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 84
    invoke-interface {p2}, Lcom/android/calendar/timely/PartitionItem;->getEndDay()I

    move-result v0

    invoke-interface {p1}, Lcom/android/calendar/timely/PartitionItem;->getEndDay()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    goto :goto_0

    .line 87
    :cond_1
    sget-object v0, Lcom/android/calendar/timely/TimelineItem;->ItemComparator:Ljava/util/Comparator;

    invoke-interface {p1}, Lcom/android/calendar/timely/PartitionItem;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v1

    .line 88
    invoke-interface {p2}, Lcom/android/calendar/timely/PartitionItem;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v2

    .line 87
    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 74
    check-cast p1, Lcom/android/calendar/timely/PartitionItem;

    check-cast p2, Lcom/android/calendar/timely/PartitionItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/PartitionItem$PartitionTimedItemComparator;->compare(Lcom/android/calendar/timely/PartitionItem;Lcom/android/calendar/timely/PartitionItem;)I

    move-result v0

    return v0
.end method
