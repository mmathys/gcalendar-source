.class public Lcom/google/android/calendar/event/segment/LodgingInfoSegment;
.super Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;
.source "LodgingInfoSegment.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 19
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/calendar/event/segment/LodgingInfoSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/event/segment/LodgingInfoSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/LodgingInfoSegment;->getValueId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/LodgingInfoSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 31
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 32
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/LodgingInfoSegment;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method protected getDetailId()I
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/android/calendar/R$id;->address:I

    return v0
.end method

.method protected getDetailPaddingId()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/android/calendar/R$dimen;->smart_info_segment_detail_text_extend_padding:I

    return v0
.end method

.method protected getValueId()I
    .locals 1

    .prologue
    .line 78
    sget v0, Lcom/android/calendar/R$id;->name:I

    return v0
.end method

.method protected getValuePaddingId()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/android/calendar/R$dimen;->smart_info_segment_title_text_extend_padding:I

    return v0
.end method

.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 2

    .prologue
    .line 42
    sget v0, Lcom/android/calendar/R$layout;->segment_lodging_info:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/LodgingInfoSegment;->getDetailId()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/LodgingInfoSegment;->getDetailPaddingId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/event/segment/LodgingInfoSegment;->setOnMeasureDetailView(II)V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/LodgingInfoSegment;->getValueId()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/LodgingInfoSegment;->getValuePaddingId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/event/segment/LodgingInfoSegment;->setOnMeasureMultiLineView(II)V

    .line 45
    return-void
.end method
