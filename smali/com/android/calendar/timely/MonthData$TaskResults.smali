.class public Lcom/android/calendar/timely/MonthData$TaskResults;
.super Ljava/lang/Object;
.source "MonthData.java"

# interfaces
.implements Lcom/android/calendar/timely/RangedData$EventResults;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/MonthData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskResults"
.end annotation


# instance fields
.field protected final mEndDay:I

.field protected final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/task/TimelineTaskType;",
            ">;"
        }
    .end annotation
.end field

.field protected final mStartDay:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p2, p0, Lcom/android/calendar/timely/MonthData$TaskResults;->mEndDay:I

    .line 49
    iput p1, p0, Lcom/android/calendar/timely/MonthData$TaskResults;->mStartDay:I

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/MonthData$TaskResults;->mList:Ljava/util/List;

    .line 51
    return-void
.end method


# virtual methods
.method public addTimelineItem(Lcom/android/calendar/timely/TimelineItem;)V
    .locals 1

    .prologue
    .line 75
    instance-of v0, p1, Lcom/android/calendar/task/TimelineTaskType;

    if-eqz v0, :cond_0

    .line 76
    check-cast p1, Lcom/android/calendar/task/TimelineTaskType;

    .line 77
    iget-object v0, p0, Lcom/android/calendar/timely/MonthData$TaskResults;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    return-void
.end method

.method public containsDay(I)Z
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/android/calendar/timely/MonthData$TaskResults;->mStartDay:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/calendar/timely/MonthData$TaskResults;->mEndDay:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 59
    instance-of v0, p1, Lcom/android/calendar/timely/MonthData$TaskResults;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/MonthData$TaskResults;->mList:Ljava/util/List;

    check-cast p1, Lcom/android/calendar/timely/MonthData$TaskResults;

    iget-object v1, p1, Lcom/android/calendar/timely/MonthData$TaskResults;->mList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStartDay()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/android/calendar/timely/MonthData$TaskResults;->mStartDay:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 64
    const/4 v0, 0x1

    .line 65
    iget-object v2, p0, Lcom/android/calendar/timely/MonthData$TaskResults;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    move v3, v0

    :goto_0
    if-ge v2, v4, :cond_2

    .line 66
    iget-object v0, p0, Lcom/android/calendar/timely/MonthData$TaskResults;->mList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/task/TimelineTaskType;

    .line 67
    mul-int/lit8 v3, v3, 0x1f

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0}, Lcom/android/calendar/task/TimelineTaskType;->getId()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    move v0, v1

    :goto_1
    add-int/2addr v3, v0

    .line 65
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 68
    :cond_1
    invoke-interface {v0}, Lcom/android/calendar/task/TimelineTaskType;->getId()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    .line 70
    :cond_2
    return v3
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/calendar/timely/MonthData$TaskResults;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method
