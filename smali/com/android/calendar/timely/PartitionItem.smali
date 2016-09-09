.class public interface abstract Lcom/android/calendar/timely/PartitionItem;
.super Ljava/lang/Object;
.source "PartitionItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/PartitionItem$PartitionTimedItemComparator;,
        Lcom/android/calendar/timely/PartitionItem$PartitionItemComparator;
    }
.end annotation


# virtual methods
.method public abstract getEndDay()I
.end method

.method public abstract getEndMillis()J
.end method

.method public abstract getMaxPartitions()I
.end method

.method public abstract getPartition()I
.end method

.method public abstract getStartDay()I
.end method

.method public abstract getStartMillis()J
.end method

.method public abstract getTimelineItem()Lcom/android/calendar/timely/TimelineItem;
.end method

.method public abstract setMaxPartitions(I)V
.end method

.method public abstract setPartition(I)V
.end method

.method public abstract spansAtLeastOneDay()Z
.end method
