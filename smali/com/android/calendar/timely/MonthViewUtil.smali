.class public Lcom/android/calendar/timely/MonthViewUtil;
.super Ljava/lang/Object;
.source "MonthViewUtil.java"


# direct methods
.method public static computePartitionItemsInWeek(Landroid/util/SparseArray;ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">;>;I",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/PartitionItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 26
    move v5, v3

    :goto_0
    const/4 v0, 0x7

    if-ge v5, v0, :cond_6

    .line 27
    add-int v6, p1, v5

    .line 30
    invoke-virtual {p0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 31
    if-nez v0, :cond_1

    .line 26
    :cond_0
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 35
    :cond_1
    if-eqz v5, :cond_3

    const/4 v1, 0x1

    move v2, v1

    :goto_1
    move v4, v3

    .line 38
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_0

    .line 39
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/TimelineItem;

    .line 44
    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getStartDay()I

    move-result v7

    if-ge v7, v6, :cond_4

    if-eqz v2, :cond_4

    .line 38
    :cond_2
    :goto_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :cond_3
    move v2, v3

    .line 35
    goto :goto_1

    .line 49
    :cond_4
    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getStartDay()I

    move-result v7

    if-ge v7, v6, :cond_5

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->spansAtLeastOneDay()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 52
    :cond_5
    new-instance v7, Lcom/android/calendar/timely/SimplePartitionItem;

    invoke-direct {v7, v1}, Lcom/android/calendar/timely/SimplePartitionItem;-><init>(Lcom/android/calendar/timely/TimelineItem;)V

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 55
    :cond_6
    return-void
.end method

.method public static mergeEventsAndTasks(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">;",
            "Ljava/util/List",
            "<+",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 67
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 68
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v5

    .line 70
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v2

    .line 75
    :goto_0
    if-ge v3, v4, :cond_1

    if-ge v2, v5, :cond_1

    .line 76
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    .line 77
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/TimelineItem;

    .line 80
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getStartMillis()J

    move-result-wide v8

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getStartMillis()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-gtz v7, :cond_0

    .line 81
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v0, v3, 0x1

    move v1, v0

    move v0, v2

    :goto_1
    move v2, v0

    move v3, v1

    .line 87
    goto :goto_0

    .line 84
    :cond_0
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v0, v2, 0x1

    move v1, v3

    goto :goto_1

    .line 89
    :cond_1
    :goto_2
    if-ge v3, v4, :cond_2

    .line 90
    add-int/lit8 v1, v3, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v1

    goto :goto_2

    .line 93
    :cond_2
    :goto_3
    if-ge v2, v5, :cond_3

    .line 94
    add-int/lit8 v1, v2, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v1

    goto :goto_3

    .line 97
    :cond_3
    return-object v6
.end method
