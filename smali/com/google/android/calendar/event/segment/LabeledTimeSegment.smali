.class public Lcom/google/android/calendar/event/segment/LabeledTimeSegment;
.super Lcom/google/android/calendar/event/segment/SmartInfoSegment;
.source "LabeledTimeSegment.java"

# interfaces
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$OnTimezoneListener;


# instance fields
.field private final mTimeView:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 25
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/calendar/event/segment/LabeledTimeSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/event/segment/LabeledTimeSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/calendar/event/segment/SmartInfoSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/LabeledTimeSegment;->getValueId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/LabeledTimeSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;

    iput-object v0, p0, Lcom/google/android/calendar/event/segment/LabeledTimeSegment;->mTimeView:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;

    .line 38
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/LabeledTimeSegment;->mTimeView:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->parseFormattedTimeOfDayAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected getValueId()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/android/calendar/R$id;->formatted_time:I

    return v0
.end method

.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/android/calendar/R$layout;->segment_labeled_time:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    sget v0, Lcom/android/calendar/R$dimen;->smart_info_segment_detail_text_extend_padding:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/LabeledTimeSegment;->setDefaultPaddingId(I)V

    .line 49
    return-void
.end method

.method public onRefreshModel()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/LabeledTimeSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    instance-of v0, v0, Lcom/google/android/calendar/event/segment/TimeProvider;

    if-eqz v0, :cond_1

    .line 54
    iget-object v1, p0, Lcom/google/android/calendar/event/segment/LabeledTimeSegment;->mTimeView:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;

    iget-object v0, p0, Lcom/google/android/calendar/event/segment/LabeledTimeSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/google/android/calendar/event/segment/TimeProvider;

    invoke-interface {v0}, Lcom/google/android/calendar/event/segment/TimeProvider;->getTimeData()Lcom/google/api/services/calendar/model/Time;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->setTime(Lcom/google/api/services/calendar/model/Time;)V

    .line 55
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/LabeledTimeSegment;->mTimeView:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/LabeledTimeSegment;->show()V

    .line 63
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/LabeledTimeSegment;->hide()V

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/LabeledTimeSegment;->hide()V

    goto :goto_0
.end method
