.class public Lcom/google/android/calendar/event/segment/TicketInfoSegment;
.super Lcom/google/android/calendar/event/segment/SmartInfoSegment;
.source "TicketInfoSegment.java"

# interfaces
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$OnTimezoneListener;


# instance fields
.field private final mEventTimeView:Lcom/google/android/calendar/event/view/FormattedSpanOfDayView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 23
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/calendar/event/segment/TicketInfoSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/event/segment/TicketInfoSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/calendar/event/segment/SmartInfoSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/TicketInfoSegment;->getValueId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/TicketInfoSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/event/view/FormattedSpanOfDayView;

    iput-object v0, p0, Lcom/google/android/calendar/event/segment/TicketInfoSegment;->mEventTimeView:Lcom/google/android/calendar/event/view/FormattedSpanOfDayView;

    .line 34
    return-void
.end method


# virtual methods
.method protected getLabelId()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/android/calendar/R$id;->event:I

    return v0
.end method

.method protected getValueId()I
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/android/calendar/R$id;->event_time:I

    return v0
.end method

.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 2

    .prologue
    .line 42
    sget v0, Lcom/android/calendar/R$layout;->segment_ticket_info:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/TicketInfoSegment;->getValueId()I

    move-result v0

    sget v1, Lcom/android/calendar/R$dimen;->info_segment_detail_text_extend_padding:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/event/segment/TicketInfoSegment;->setOnMeasureDetailView(II)V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/TicketInfoSegment;->getLabelId()I

    move-result v0

    sget v1, Lcom/android/calendar/R$dimen;->smart_info_segment_title_text_extend_padding:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/event/segment/TicketInfoSegment;->setOnMeasureMultiLineView(II)V

    .line 46
    return-void
.end method

.method public onRefreshModel()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/TicketInfoSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    instance-of v0, v0, Lcom/google/android/calendar/event/segment/Event2Provider;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/TicketInfoSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/google/android/calendar/event/segment/Event2Provider;

    invoke-interface {v0}, Lcom/google/android/calendar/event/segment/Event2Provider;->getEvent2()Lcom/google/api/services/calendar/model/Event2;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/TicketInfoSegment;->getLabelId()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Event2;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/calendar/event/segment/TicketInfoSegment;->showText(ILjava/lang/CharSequence;)V

    .line 55
    iget-object v1, p0, Lcom/google/android/calendar/event/segment/TicketInfoSegment;->mEventTimeView:Lcom/google/android/calendar/event/view/FormattedSpanOfDayView;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Event2;->getStartTime()Lcom/google/api/services/calendar/model/Time;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Event2;->getEndTime()Lcom/google/api/services/calendar/model/Time;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/calendar/event/view/FormattedSpanOfDayView;->setSpan(Lcom/google/api/services/calendar/model/Time;Lcom/google/api/services/calendar/model/Time;)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/TicketInfoSegment;->hide()V

    goto :goto_0
.end method
