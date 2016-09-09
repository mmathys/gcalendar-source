.class public Lcom/android/calendar/timely/SimplePartitionItem;
.super Ljava/lang/Object;
.source "SimplePartitionItem.java"

# interfaces
.implements Lcom/android/calendar/timely/PartitionItem;


# instance fields
.field private final mItem:Lcom/android/calendar/timely/TimelineItem;

.field private mMaxPartitions:I

.field private mPartitionIndex:I


# direct methods
.method public constructor <init>(Lcom/android/calendar/timely/TimelineItem;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/calendar/timely/SimplePartitionItem;->mItem:Lcom/android/calendar/timely/TimelineItem;

    .line 30
    return-void
.end method


# virtual methods
.method public getEndDay()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/timely/SimplePartitionItem;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getEndDay()I

    move-result v0

    return v0
.end method

.method public getEndMillis()J
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/calendar/timely/SimplePartitionItem;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getEndMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxPartitions()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/calendar/timely/SimplePartitionItem;->mMaxPartitions:I

    return v0
.end method

.method public getPartition()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/android/calendar/timely/SimplePartitionItem;->mPartitionIndex:I

    return v0
.end method

.method public getStartDay()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/calendar/timely/SimplePartitionItem;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getStartDay()I

    move-result v0

    return v0
.end method

.method public getStartMillis()J
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/calendar/timely/SimplePartitionItem;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getStartMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimelineItem()Lcom/android/calendar/timely/TimelineItem;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/calendar/timely/SimplePartitionItem;->mItem:Lcom/android/calendar/timely/TimelineItem;

    return-object v0
.end method

.method public setMaxPartitions(I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/android/calendar/timely/SimplePartitionItem;->mMaxPartitions:I

    .line 45
    return-void
.end method

.method public setPartition(I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/android/calendar/timely/SimplePartitionItem;->mPartitionIndex:I

    .line 35
    return-void
.end method

.method public spansAtLeastOneDay()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/calendar/timely/SimplePartitionItem;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->spansAtLeastOneDay()Z

    move-result v0

    return v0
.end method
