.class public Lcom/google/android/calendar/event/segment/SmartInfoSegment;
.super Lcom/google/android/calendar/event/segment/TimelyInfoSegment;
.source "SmartInfoSegment.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 26
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/calendar/event/segment/SmartInfoSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/event/segment/SmartInfoSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/calendar/event/segment/TimelyInfoSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/SmartInfoSegment;->getLabelId()I

    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/SmartInfoSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 40
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 41
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/SmartInfoSegment;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method protected getLabelId()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/android/calendar/R$id;->segment_label:I

    return v0
.end method

.method protected getValueId()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/android/calendar/R$id;->segment_value:I

    return v0
.end method

.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/android/calendar/R$layout;->segment_smart_info:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    sget v0, Lcom/android/calendar/R$dimen;->smart_info_segment_detail_text_extend_padding:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/SmartInfoSegment;->setDefaultPaddingId(I)V

    .line 54
    return-void
.end method

.method public onRefreshModel()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/SmartInfoSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/event/segment/SmartInfoSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    instance-of v0, v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$StringProvider;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/SmartInfoSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$StringProvider;

    invoke-interface {v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout$StringProvider;->getStringData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/SmartInfoSegment;->showValueOrHideSegment(Ljava/lang/String;)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/SmartInfoSegment;->hide()V

    goto :goto_0
.end method

.method protected showValueOrHideSegment(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/SmartInfoSegment;->getValueId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/calendar/event/segment/SmartInfoSegment;->showValueOrHideSegment(ILjava/lang/String;)V

    .line 91
    return-void
.end method
