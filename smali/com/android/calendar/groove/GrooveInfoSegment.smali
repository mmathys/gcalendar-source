.class public Lcom/android/calendar/groove/GrooveInfoSegment;
.super Lcom/android/calendar/event/segment/InfoSegmentLayout;
.source "GrooveInfoSegment.java"

# interfaces
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelListener;


# instance fields
.field private mDurationAndPreferredTime:Landroid/widget/TextView;

.field private mRateView:Landroid/widget/TextView;

.field private mSessionNumberView:Landroid/widget/TextView;

.field private mWeekDoneCountView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveInfoSegment;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/InfoSegmentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveInfoSegment;->init()V

    .line 32
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/android/calendar/R$id;->session_number:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveInfoSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveInfoSegment;->mSessionNumberView:Landroid/widget/TextView;

    .line 36
    sget v0, Lcom/android/calendar/R$id;->done_this_week:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveInfoSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveInfoSegment;->mWeekDoneCountView:Landroid/widget/TextView;

    .line 37
    sget v0, Lcom/android/calendar/R$id;->rate:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveInfoSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveInfoSegment;->mRateView:Landroid/widget/TextView;

    .line 38
    sget v0, Lcom/android/calendar/R$id;->duration_and_preferred_time:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/GrooveInfoSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/groove/GrooveInfoSegment;->mDurationAndPreferredTime:Landroid/widget/TextView;

    .line 39
    return-void
.end method


# virtual methods
.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 2

    .prologue
    .line 43
    sget v0, Lcom/android/calendar/R$layout;->segment_groove_info:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    sget v0, Lcom/android/calendar/R$id;->rate:I

    sget v1, Lcom/android/calendar/R$dimen;->info_segment_title_text_extend_padding:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveInfoSegment;->setOnMeasureMultiLineView(II)V

    .line 46
    sget v0, Lcom/android/calendar/R$id;->duration_and_preferred_time:I

    sget v1, Lcom/android/calendar/R$dimen;->info_segment_detail_text_extend_padding:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/groove/GrooveInfoSegment;->setOnMeasureDetailView(II)V

    .line 48
    return-void
.end method

.method public onRefreshModel()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 52
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveInfoSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    instance-of v0, v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveInfoSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;

    .line 54
    invoke-interface {v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;->getModelData()Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    .line 55
    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    .line 56
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveInfoSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 57
    invoke-virtual {v0}, Lcom/android/calendar/groove/TimelineGroove;->getContract()Lcom/google/android/calendar/api/HabitContract;

    move-result-object v2

    .line 58
    if-nez v2, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveInfoSegment;->hide()V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveInfoSegment;->show()V

    .line 63
    iget-object v3, p0, Lcom/android/calendar/groove/GrooveInfoSegment;->mSessionNumberView:Landroid/widget/TextView;

    sget v4, Lcom/android/calendar/R$string;->session_number:I

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, v0, Lcom/android/calendar/groove/TimelineGroove;->sessionNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v3, p0, Lcom/android/calendar/groove/GrooveInfoSegment;->mWeekDoneCountView:Landroid/widget/TextView;

    sget v4, Lcom/android/calendar/R$string;->done_this_week:I

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, v0, Lcom/android/calendar/groove/TimelineGroove;->completedThisWeek:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget v6, v0, Lcom/android/calendar/groove/TimelineGroove;->totalThisWeek:I

    .line 65
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 64
    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v3, p0, Lcom/android/calendar/groove/GrooveInfoSegment;->mWeekDoneCountView:Landroid/widget/TextView;

    sget v4, Lcom/android/calendar/R$string;->a11y_done_this_week:I

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, v0, Lcom/android/calendar/groove/TimelineGroove;->completedThisWeek:I

    .line 67
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget v0, v0, Lcom/android/calendar/groove/TimelineGroove;->totalThisWeek:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    .line 66
    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveInfoSegment;->mRateView:Landroid/widget/TextView;

    sget v3, Lcom/android/calendar/R$plurals;->groove_n_times_a_week:I

    .line 69
    invoke-interface {v2}, Lcom/google/android/calendar/api/HabitContract;->getNumInstancesPerInterval()I

    move-result v4

    .line 68
    invoke-static {v1, v3, v4}, Lcom/android/calendar/Utils;->createPluralString(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveInfoSegment;->mDurationAndPreferredTime:Landroid/widget/TextView;

    .line 71
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveInfoSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 70
    invoke-static {v1, v2}, Lcom/android/calendar/groove/GrooveUtils;->getDurationAndPreferredTimesString(Landroid/content/res/Resources;Lcom/google/android/calendar/api/HabitContract;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveInfoSegment;->mDurationAndPreferredTime:Landroid/widget/TextView;

    .line 73
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveInfoSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/calendar/groove/GrooveUtils;->getDurationAndPreferredTimesAccessibilityString(Landroid/content/res/Resources;Lcom/google/android/calendar/api/HabitContract;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
