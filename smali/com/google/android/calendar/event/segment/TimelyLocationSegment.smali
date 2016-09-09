.class public Lcom/google/android/calendar/event/segment/TimelyLocationSegment;
.super Lcom/android/calendar/event/segment/LocationSegment;
.source "TimelyLocationSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/event/segment/TimelyLocationSegment$TimelyLocationProvider;
    }
.end annotation


# instance fields
.field private mEventLocation:Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

.field private mPlace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/calendar/event/segment/LocationSegment;-><init>(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/event/segment/LocationSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/LocationSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method


# virtual methods
.method protected extractLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->mEventLocation:Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    invoke-static {p1, v0}, Lcom/google/android/calendar/utils/MapsUrlBuilder;->buildMapsLink(Ljava/lang/String;Lcom/google/calendar/v2/client/service/api/geo/EventLocation;)Ljava/lang/String;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/calendar/event/segment/LocationSegment;->extractLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getDetailId()I
    .locals 1

    .prologue
    .line 143
    sget v0, Lcom/android/calendar/R$id;->detail:I

    return v0
.end method

.method protected getDetailPaddingId()I
    .locals 1

    .prologue
    .line 147
    sget v0, Lcom/android/calendar/R$dimen;->info_segment_detail_text_extend_padding:I

    return v0
.end method

.method protected getValuePaddingId()I
    .locals 1

    .prologue
    .line 151
    sget v0, Lcom/android/calendar/R$dimen;->info_segment_title_text_extend_padding:I

    return v0
.end method

.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 2

    .prologue
    .line 72
    sget v0, Lcom/android/calendar/R$layout;->segment_timely_location_with_conferencecall:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 73
    sget v0, Lcom/android/calendar/R$id;->value:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/ConferenceCallView;

    invoke-virtual {v0, p0}, Lcom/android/calendar/event/ConferenceCallView;->setConferenceNumberClickListener(Lcom/android/calendar/event/ConferenceCallView$OnConferenceNumberClickListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->getDetailId()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->getDetailPaddingId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->setOnMeasureDetailView(II)V

    .line 75
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->getValueId()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->getValuePaddingId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->setOnMeasureMultiLineView(II)V

    .line 76
    return-void
.end method

.method public onRefreshModel()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    instance-of v0, v0, Lcom/google/android/calendar/event/segment/TimelyLocationSegment$TimelyLocationProvider;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/google/android/calendar/event/segment/TimelyLocationSegment$TimelyLocationProvider;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/segment/TimelyLocationSegment$TimelyLocationProvider;->getEventLocation()Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->mEventLocation:Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    .line 85
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->mEventLocation:Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->mEventLocation:Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->getPostalAddress()Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;

    move-result-object v2

    .line 89
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->mEventLocation:Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/geo/EventLocation;->getName()Ljava/lang/String;

    move-result-object v0

    .line 90
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->getFormattedAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 91
    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/api/geo/PostalAddress;->getFormattedAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 95
    :cond_0
    iput-object v0, p0, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->mPlace:Ljava/lang/String;

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/google/android/calendar/event/segment/TimelyLocationSegment$TimelyLocationProvider;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/segment/TimelyLocationSegment$TimelyLocationProvider;->getAnalyticsAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->mAnalyticsAction:Ljava/lang/String;

    .line 101
    :cond_1
    invoke-super {p0}, Lcom/android/calendar/event/segment/LocationSegment;->onRefreshModel()V

    .line 102
    return-void

    .line 97
    :cond_2
    iput-object v1, p0, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->mPlace:Ljava/lang/String;

    goto :goto_0
.end method

.method protected showContent(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 119
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->hide()V

    .line 136
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->mEventLocation:Lcom/google/calendar/v2/client/service/api/geo/EventLocation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->mPlace:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->mPlace:Ljava/lang/String;

    .line 122
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->mPlace:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 124
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->mPlace:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->address_intra_delimiter:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->mPlace:Ljava/lang/String;

    invoke-super {p0, v0}, Lcom/android/calendar/event/segment/LocationSegment;->showContent(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->getDetailId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->showTextOrHide(ILjava/lang/CharSequence;)I

    goto :goto_0

    .line 126
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 133
    :cond_3
    invoke-super {p0, p1}, Lcom/android/calendar/event/segment/LocationSegment;->showContent(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->getDetailId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/TimelyLocationSegment;->hideView(I)V

    goto :goto_0
.end method
