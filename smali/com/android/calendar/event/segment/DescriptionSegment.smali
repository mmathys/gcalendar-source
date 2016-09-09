.class public Lcom/android/calendar/event/segment/DescriptionSegment;
.super Lcom/android/calendar/event/segment/ActionableContentLayout;
.source "DescriptionSegment.java"

# interfaces
.implements Lcom/android/calendar/event/ConferenceCallView$OnConferenceNumberClickListener;
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 28
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/event/segment/DescriptionSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/event/segment/DescriptionSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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


# virtual methods
.method public onClick(Lcom/android/calendar/event/ConferenceCallView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/DescriptionSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->analytics_label_in_segment_description:I

    invoke-static {v0, v1}, Lcom/android/calendar/event/ConferenceCallUtils;->logConferenceLinksTapped(Landroid/content/Context;I)V

    .line 87
    iget-object v0, p0, Lcom/android/calendar/event/segment/DescriptionSegment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/calendar/event/segment/DescriptionSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    invoke-static {v0, p2, v1}, Lcom/android/calendar/event/ConferenceCallUtils;->dialConferenceCall(Landroid/app/Activity;Ljava/lang/String;Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 88
    return-void
.end method

.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/android/calendar/R$layout;->segment_description_with_conferencecall:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    sget v0, Lcom/android/calendar/R$id;->value:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/DescriptionSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/ConferenceCallView;

    invoke-virtual {v0, p0}, Lcom/android/calendar/event/ConferenceCallView;->setConferenceNumberClickListener(Lcom/android/calendar/event/ConferenceCallView$OnConferenceNumberClickListener;)V

    .line 44
    sget v0, Lcom/android/calendar/R$id;->value:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/DescriptionSegment;->setOnMeasureView(I)V

    .line 45
    return-void
.end method

.method public onRefreshModel()V
    .locals 3

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/calendar/event/segment/ActionableContentLayout;->onRefreshModel()V

    .line 50
    iget-object v0, p0, Lcom/android/calendar/event/segment/DescriptionSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    instance-of v0, v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/android/calendar/event/segment/DescriptionSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;

    .line 52
    invoke-interface {v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;->getModelData()Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    .line 53
    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 54
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/DescriptionSegment;->hide()V

    .line 68
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string v1, "(\r\n|\n\r|\r|\n)"

    const-string v2, "<br />"

    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/android/calendar/event/ConferenceCallUtils;->addLinks(Landroid/text/Spannable;)V

    .line 62
    sget v1, Lcom/android/calendar/R$id;->value:I

    invoke-virtual {p0, v1}, Lcom/android/calendar/event/segment/DescriptionSegment;->setConferenceCallLinkMovementMethod(I)V

    .line 63
    sget v1, Lcom/android/calendar/R$id;->value:I

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/event/segment/DescriptionSegment;->showValueOrHideSegment(ILandroid/text/Spanned;)V

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/DescriptionSegment;->hide()V

    goto :goto_0
.end method

.method protected show()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Lcom/android/calendar/event/segment/ActionableContentLayout;->show()V

    .line 73
    sget v0, Lcom/android/calendar/R$id;->value:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/DescriptionSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 74
    instance-of v1, v0, Lcom/android/calendar/event/ConferenceCallView;

    if-eqz v1, :cond_0

    .line 75
    check-cast v0, Lcom/android/calendar/event/ConferenceCallView;

    .line 76
    invoke-virtual {v0}, Lcom/android/calendar/event/ConferenceCallView;->hasConferenceLink()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/DescriptionSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->analytics_label_in_segment_description:I

    invoke-static {v0, v1}, Lcom/android/calendar/event/ConferenceCallUtils;->logConferenceLinksShown(Landroid/content/Context;I)V

    .line 81
    :cond_0
    return-void
.end method
