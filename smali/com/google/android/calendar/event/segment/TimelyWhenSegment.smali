.class public Lcom/google/android/calendar/event/segment/TimelyWhenSegment;
.super Lcom/android/calendar/event/segment/ActionableContentLayout;
.source "TimelyWhenSegment.java"

# interfaces
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$OnTimezoneListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 22
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/calendar/event/segment/TimelyWhenSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/event/segment/TimelyWhenSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/ActionableContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method private getValueId()I
    .locals 1

    .prologue
    .line 85
    sget v0, Lcom/android/calendar/R$id;->value:I

    return v0
.end method


# virtual methods
.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/android/calendar/R$layout;->segment_timely_when:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    invoke-direct {p0}, Lcom/google/android/calendar/event/segment/TimelyWhenSegment;->getValueId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/TimelyWhenSegment;->setOnMeasureView(I)V

    .line 38
    return-void
.end method

.method public onRefreshModel()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v8, 0x0

    .line 42
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/TimelyWhenSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    instance-of v0, v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$ItemProvider;

    if-eqz v0, :cond_4

    .line 43
    invoke-super {p0}, Lcom/android/calendar/event/segment/ActionableContentLayout;->onRefreshModel()V

    .line 44
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/TimelyWhenSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$ItemProvider;

    .line 45
    invoke-interface {v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout$ItemProvider;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v12

    .line 46
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/TimelyWhenSegment;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 50
    const/4 v0, 0x0

    invoke-static {v9, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    .line 53
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    invoke-interface {v12}, Lcom/android/calendar/timely/TimelineItem;->showEndTime()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v12}, Lcom/android/calendar/timely/TimelineItem;->getEndMillis()J

    move-result-wide v2

    .line 57
    :goto_0
    invoke-interface {v12}, Lcom/android/calendar/timely/TimelineItem;->getStartMillis()J

    move-result-wide v0

    .line 58
    invoke-interface {v12}, Lcom/android/calendar/timely/TimelineItem;->isAllDay()Z

    move-result v7

    .line 57
    invoke-static/range {v0 .. v11}, Lcom/android/calendar/Utils;->getDisplayedDateTimes(JJJLjava/lang/String;ZILandroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z

    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    invoke-direct {p0}, Lcom/google/android/calendar/event/segment/TimelyWhenSegment;->getValueId()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/TimelyWhenSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/calendar/R$string;->date_range_two_line:I

    new-array v5, v14, [Ljava/lang/Object;

    aput-object v10, v5, v8

    aput-object v11, v5, v13

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/event/segment/TimelyWhenSegment;->showText(ILjava/lang/CharSequence;)V

    .line 68
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/TimelyWhenSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/google/android/calendar/event/segment/TimelyWhenSegment;->getValueId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/TimelyWhenSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/TimelyWhenSegment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-interface {v12}, Lcom/android/calendar/timely/TimelineItem;->isAllDay()Z

    move-result v9

    .line 74
    invoke-interface {v12}, Lcom/android/calendar/timely/TimelineItem;->getStartMillis()J

    move-result-wide v10

    move-wide v12, v2

    move-object v14, v6

    .line 73
    invoke-static/range {v7 .. v14}, Lcom/android/calendar/Utils;->getAccessibilityDateTimes(Landroid/content/Context;IZJJLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 79
    :cond_0
    :goto_2
    return-void

    .line 55
    :cond_1
    invoke-interface {v12}, Lcom/android/calendar/timely/TimelineItem;->getStartMillis()J

    move-result-wide v2

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 63
    invoke-direct {p0}, Lcom/google/android/calendar/event/segment/TimelyWhenSegment;->getValueId()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/TimelyWhenSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/calendar/R$string;->date_time_two_line:I

    new-array v5, v14, [Ljava/lang/Object;

    aput-object v10, v5, v8

    aput-object v11, v5, v13

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/event/segment/TimelyWhenSegment;->showText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 66
    :cond_3
    invoke-direct {p0}, Lcom/google/android/calendar/event/segment/TimelyWhenSegment;->getValueId()I

    move-result v0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/event/segment/TimelyWhenSegment;->showText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 77
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/TimelyWhenSegment;->hide()V

    goto :goto_2
.end method
