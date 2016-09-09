.class public Lcom/google/android/calendar/event/segment/TaskWhenSegment;
.super Lcom/android/calendar/event/segment/ActionableContentLayout;
.source "TaskWhenSegment.java"

# interfaces
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$OnTimezoneListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 28
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/calendar/event/segment/TaskWhenSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/event/segment/TaskWhenSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/ActionableContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method private getValueId()I
    .locals 1

    .prologue
    .line 137
    sget v0, Lcom/android/calendar/R$id;->when_top:I

    return v0
.end method


# virtual methods
.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 2

    .prologue
    .line 42
    sget v0, Lcom/android/calendar/R$layout;->segment_when:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    sget v0, Lcom/android/calendar/R$id;->when_repeat:I

    sget v1, Lcom/android/calendar/R$dimen;->info_segment_detail_text_extend_padding:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/event/segment/TaskWhenSegment;->setOnMeasureDetailView(II)V

    .line 44
    invoke-direct {p0}, Lcom/google/android/calendar/event/segment/TaskWhenSegment;->getValueId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/TaskWhenSegment;->setOnMeasureView(I)V

    .line 45
    return-void
.end method

.method public onRefreshModel()V
    .locals 21

    .prologue
    .line 49
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/calendar/event/segment/TaskWhenSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    instance-of v2, v2, Lcom/android/calendar/event/segment/InfoSegmentLayout$ItemProvider;

    if-nez v2, :cond_0

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/calendar/event/segment/TaskWhenSegment;->hide()V

    .line 131
    :goto_0
    return-void

    .line 54
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/calendar/event/segment/TaskWhenSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v2, Lcom/android/calendar/event/segment/InfoSegmentLayout$ItemProvider;

    .line 55
    invoke-interface {v2}, Lcom/android/calendar/event/segment/InfoSegmentLayout$ItemProvider;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v2

    .line 56
    instance-of v3, v2, Lcom/google/android/calendar/task/TimelyTimelineTask;

    if-nez v3, :cond_1

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/calendar/event/segment/TaskWhenSegment;->hide()V

    goto :goto_0

    .line 61
    :cond_1
    invoke-super/range {p0 .. p0}, Lcom/android/calendar/event/segment/ActionableContentLayout;->onRefreshModel()V

    move-object/from16 v19, v2

    .line 63
    check-cast v19, Lcom/google/android/calendar/task/TimelyTimelineTask;

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/calendar/event/segment/TaskWhenSegment;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 65
    invoke-static {v11}, Lcom/android/calendar/time/DateTimeService;->getNewInstance(Landroid/content/Context;)Lcom/android/calendar/time/DateTimeService;

    move-result-object v20

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 69
    const/4 v2, 0x0

    invoke-static {v11, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v8

    .line 72
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/calendar/task/TimelyTimelineTask;->getDetailsDueMillis()J

    move-result-wide v2

    .line 76
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/calendar/task/TimelyTimelineTask;->getDetailsIsAllDay()Z

    move-result v9

    .line 78
    const/4 v10, 0x0

    move-wide v4, v2

    invoke-static/range {v2 .. v13}, Lcom/android/calendar/Utils;->getDisplayedDateTimes(JJJLjava/lang/String;ZILandroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/calendar/event/segment/TaskWhenSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 83
    sget-object v4, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->PROJECT_DUBAI:Lcom/google/android/calendar/experiments/Experiment;

    invoke-virtual {v4, v11}, Lcom/google/android/calendar/experiments/Experiment;->isActive(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v9, :cond_2

    .line 85
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/calendar/task/TimelyTimelineTask;->getDurationMillis()I

    move-result v4

    const v6, 0xea60

    div-int/2addr v4, v6

    .line 84
    invoke-static {v5, v4}, Lcom/google/android/calendar/task/TaskUtils;->getDisplayedDuration(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_2
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_5

    .line 89
    invoke-direct/range {p0 .. p0}, Lcom/google/android/calendar/event/segment/TaskWhenSegment;->getValueId()I

    move-result v4

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/google/android/calendar/event/segment/TaskWhenSegment;->showText(ILjava/lang/CharSequence;)V

    .line 101
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/calendar/event/segment/TaskWhenSegment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/calendar/Utils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 105
    invoke-direct/range {p0 .. p0}, Lcom/google/android/calendar/event/segment/TaskWhenSegment;->getValueId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/calendar/event/segment/TaskWhenSegment;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/calendar/event/segment/TaskWhenSegment;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    move v13, v9

    move-wide v14, v2

    move-wide/from16 v16, v2

    move-object/from16 v18, v8

    invoke-static/range {v11 .. v18}, Lcom/android/calendar/Utils;->getAccessibilityDateTimes(Landroid/content/Context;IZJJLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 105
    invoke-virtual {v4, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 111
    :cond_3
    invoke-virtual/range {v19 .. v20}, Lcom/google/android/calendar/task/TimelyTimelineTask;->getDetailsEventRecurrence(Lcom/android/calendar/time/DateTimeService;)Lcom/android/calendarcommon2/EventRecurrence;

    move-result-object v6

    .line 112
    const/4 v4, 0x0

    .line 113
    if-eqz v6, :cond_9

    .line 114
    new-instance v7, Lcom/android/calendar/time/Time;

    invoke-direct {v7, v8}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v7, v2, v3}, Lcom/android/calendar/time/Time;->set(J)V

    .line 116
    if-eqz v9, :cond_4

    .line 117
    const-string v2, "UTC"

    iput-object v2, v7, Lcom/android/calendar/time/Time;->timezone:Ljava/lang/String;

    .line 119
    :cond_4
    invoke-virtual {v7}, Lcom/android/calendar/time/Time;->asAndroidTime()Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/android/calendarcommon2/EventRecurrence;->setStartDate(Landroid/text/format/Time;)V

    .line 120
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 121
    invoke-static {v5, v6, v2, v3}, Lcom/android/recurrencepicker/Utils;->getRepeatString(Landroid/content/res/Resources;Lcom/android/calendarcommon2/EventRecurrence;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 122
    if-eqz v2, :cond_9

    .line 123
    sget v3, Lcom/android/calendar/R$string;->repeats_preamble:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v4, v6

    invoke-virtual {v5, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 126
    :goto_2
    if-nez v2, :cond_8

    .line 127
    sget v2, Lcom/android/calendar/R$id;->when_repeat:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/calendar/event/segment/TaskWhenSegment;->hideView(I)V

    goto/16 :goto_0

    .line 90
    :cond_5
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_6

    .line 91
    invoke-direct/range {p0 .. p0}, Lcom/google/android/calendar/event/segment/TaskWhenSegment;->getValueId()I

    move-result v4

    sget v6, Lcom/android/calendar/R$string;->date_time_two_line:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v12, v7, v10

    const/4 v10, 0x1

    aput-object v13, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/google/android/calendar/event/segment/TaskWhenSegment;->showText(ILjava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 93
    :cond_6
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_7

    .line 94
    invoke-direct/range {p0 .. p0}, Lcom/google/android/calendar/event/segment/TaskWhenSegment;->getValueId()I

    move-result v4

    sget v6, Lcom/android/calendar/R$string;->date_time_two_line:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v12, v7, v10

    const/4 v10, 0x1

    aput-object v14, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/google/android/calendar/event/segment/TaskWhenSegment;->showText(ILjava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 97
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/calendar/event/segment/TaskWhenSegment;->getValueId()I

    move-result v4

    sget v6, Lcom/android/calendar/R$string;->date_time_three_line:I

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v12, v7, v10

    const/4 v10, 0x1

    aput-object v13, v7, v10

    const/4 v10, 0x2

    aput-object v14, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/google/android/calendar/event/segment/TaskWhenSegment;->showText(ILjava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 129
    :cond_8
    sget v3, Lcom/android/calendar/R$id;->when_repeat:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/google/android/calendar/event/segment/TaskWhenSegment;->showText(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    move-object v2, v4

    goto :goto_2
.end method
