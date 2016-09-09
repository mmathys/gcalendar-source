.class public Lcom/android/calendar/event/segment/WhenSegment;
.super Lcom/android/calendar/event/segment/ActionableContentLayout;
.source "WhenSegment.java"

# interfaces
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelListener;
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$OnTimezoneListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 41
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/event/segment/WhenSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/event/segment/WhenSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/ActionableContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method private getValueId()I
    .locals 1

    .prologue
    .line 135
    sget v0, Lcom/android/calendar/R$id;->when_top:I

    return v0
.end method

.method private updateWhen(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 18

    .prologue
    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/segment/WhenSegment;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 73
    if-nez v11, :cond_0

    .line 129
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 78
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 80
    const/4 v2, 0x0

    invoke-static {v11, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v8

    .line 83
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mEndTimeUnspecified:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    .line 86
    :goto_1
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    const/4 v10, 0x0

    invoke-static/range {v2 .. v13}, Lcom/android/calendar/Utils;->getDisplayedDateTimesInTimezone(JJJLjava/lang/String;ZILandroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z

    move-result v2

    .line 89
    if-eqz v2, :cond_1

    .line 90
    sget v2, Lcom/android/calendar/R$string;->date_space_dash:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_1
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 93
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/event/segment/WhenSegment;->getValueId()I

    move-result v2

    const/16 v3, 0xa

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/event/segment/WhenSegment;->showText(ILjava/lang/CharSequence;)V

    .line 97
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/segment/WhenSegment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/Utils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/event/segment/WhenSegment;->getValueId()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/event/segment/WhenSegment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/segment/WhenSegment;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    move-wide v14, v4

    move-object/from16 v16, v8

    invoke-static/range {v9 .. v16}, Lcom/android/calendar/Utils;->getAccessibilityDateTimes(Landroid/content/Context;IZJJLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 101
    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 107
    :cond_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 108
    const/4 v2, 0x0

    .line 109
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 110
    new-instance v4, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct {v4}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    .line 111
    invoke-virtual {v4, v3}, Lcom/android/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 112
    new-instance v3, Lcom/android/calendar/time/Time;

    invoke-direct {v3, v8}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 113
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/calendar/event/CalendarEventModel;->mDbStart:J

    invoke-virtual {v3, v6, v7}, Lcom/android/calendar/time/Time;->set(J)V

    .line 114
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    if-eqz v5, :cond_3

    .line 115
    const-string v5, "UTC"

    iput-object v5, v3, Lcom/android/calendar/time/Time;->timezone:Ljava/lang/String;

    .line 117
    :cond_3
    invoke-virtual {v3}, Lcom/android/calendar/time/Time;->asAndroidTime()Landroid/text/format/Time;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/calendarcommon2/EventRecurrence;->setStartDate(Landroid/text/format/Time;)V

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/event/segment/WhenSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/android/recurrencepicker/Utils;->getRepeatString(Landroid/content/res/Resources;Lcom/android/calendarcommon2/EventRecurrence;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 120
    if-eqz v3, :cond_4

    .line 121
    sget v2, Lcom/android/calendar/R$string;->repeats_preamble:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 124
    :cond_4
    if-nez v2, :cond_7

    .line 125
    sget v2, Lcom/android/calendar/R$id;->when_repeat:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/event/segment/WhenSegment;->hideView(I)V

    goto/16 :goto_0

    .line 85
    :cond_5
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    goto/16 :goto_1

    .line 95
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/event/segment/WhenSegment;->getValueId()I

    move-result v2

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/event/segment/WhenSegment;->showText(ILjava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 127
    :cond_7
    sget v3, Lcom/android/calendar/R$id;->when_repeat:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/calendar/event/segment/WhenSegment;->showText(ILjava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 2

    .prologue
    .line 55
    sget v0, Lcom/android/calendar/R$layout;->segment_when:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 56
    sget v0, Lcom/android/calendar/R$id;->when_repeat:I

    sget v1, Lcom/android/calendar/R$dimen;->info_segment_detail_text_extend_padding:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/segment/WhenSegment;->setOnMeasureDetailView(II)V

    .line 57
    invoke-direct {p0}, Lcom/android/calendar/event/segment/WhenSegment;->getValueId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/WhenSegment;->setOnMeasureView(I)V

    .line 58
    return-void
.end method

.method public onRefreshModel()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/android/calendar/event/segment/ActionableContentLayout;->onRefreshModel()V

    .line 63
    iget-object v0, p0, Lcom/android/calendar/event/segment/WhenSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;

    invoke-interface {v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;->getModelData()Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/segment/WhenSegment;->updateWhen(Lcom/android/calendar/event/CalendarEventModel;)V

    .line 64
    return-void
.end method
