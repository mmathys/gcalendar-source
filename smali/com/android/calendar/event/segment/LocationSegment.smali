.class public Lcom/android/calendar/event/segment/LocationSegment;
.super Lcom/android/calendar/event/segment/ClickableSegment;
.source "LocationSegment.java"

# interfaces
.implements Lcom/android/calendar/event/ConferenceCallView$OnConferenceNumberClickListener;
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelListener;


# instance fields
.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/event/segment/LocationSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/event/segment/LocationSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/ClickableSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    const-string v0, "open_location"

    iput-object v0, p0, Lcom/android/calendar/event/segment/LocationSegment;->mAnalyticsAction:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private findAddress(Landroid/text/Spannable;II)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 143
    invoke-interface {p1, p2, p3}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 144
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 157
    :goto_0
    return-object v1

    .line 148
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/calendar/event/segment/LocationSegment;->makeGeoAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 150
    goto :goto_0

    .line 154
    :cond_1
    invoke-static {v2}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 155
    invoke-static {v0}, Lcom/android/common/extendedlinkify/ExtendedLinkify;->forceGeoLink(Landroid/text/Spannable;)V

    .line 156
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {v0, v4, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 157
    array-length v2, v0

    if-lez v2, :cond_2

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private static getBestAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    if-nez p0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-object p1

    .line 171
    :cond_1
    if-nez p1, :cond_2

    move-object p1, p0

    .line 172
    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    move-object p1, p0

    .line 176
    goto :goto_0
.end method

.method private makeGeoAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-static {p1}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_1

    .line 124
    :try_start_0
    const-string v2, "geo:0,0?q="

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    .line 125
    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/LocationSegment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "makeGeoAddress failed"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 132
    goto :goto_0
.end method


# virtual methods
.method protected extractLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    :goto_0
    return-object v0

    .line 205
    :cond_0
    invoke-static {p1, v3}, Lcom/android/common/extendedlinkify/ExtendedLinkify;->extendedLinkify(Ljava/lang/String;Z)Landroid/text/Spannable;

    move-result-object v5

    .line 206
    invoke-static {v5}, Lcom/android/calendar/event/ConferenceCallUtils;->addConferenceNumberLinks(Landroid/text/Spannable;)V

    .line 208
    invoke-interface {v5}, Landroid/text/Spannable;->length()I

    move-result v6

    .line 209
    const-class v1, Ljava/lang/Object;

    invoke-interface {v5, v3, v6, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    .line 210
    array-length v1, v7

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    .line 212
    invoke-direct {p0, p1}, Lcom/android/calendar/event/segment/LocationSegment;->makeGeoAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    if-nez v1, :cond_2

    .line 215
    :try_start_0
    const-string v0, "geo:0,0?q="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "UTF-8"

    .line 216
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 219
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/LocationSegment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string v4, "createGeoUrl failed"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v4, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 231
    :cond_3
    array-length v8, v7

    move v2, v3

    move-object v1, v0

    move v4, v3

    :goto_1
    if-ge v2, v8, :cond_6

    aget-object v0, v7, v2

    .line 232
    invoke-interface {v5, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 233
    if-ge v4, v9, :cond_4

    .line 234
    invoke-direct {p0, v5, v4, v9}, Lcom/android/calendar/event/segment/LocationSegment;->findAddress(Landroid/text/Spannable;II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/calendar/event/segment/LocationSegment;->getBestAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    :cond_4
    invoke-interface {v5, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 238
    instance-of v9, v0, Landroid/text/style/URLSpan;

    if-eqz v9, :cond_5

    .line 239
    check-cast v0, Landroid/text/style/URLSpan;

    .line 240
    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v9

    const-string v10, "geo:0,0?q="

    invoke-virtual {v9, v10, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 242
    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 231
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 246
    :cond_6
    if-ge v4, v6, :cond_7

    .line 247
    invoke-direct {p0, v5, v4, v6}, Lcom/android/calendar/event/segment/LocationSegment;->findAddress(Landroid/text/Spannable;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/calendar/event/segment/LocationSegment;->getBestAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    :cond_7
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/LocationSegment;->getValueId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/LocationSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 254
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    invoke-static {}, Lcom/android/calendar/event/ConferenceCallView$ConferenceCallLinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    .line 258
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    move-object v0, v1

    .line 260
    goto/16 :goto_0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/calendar/event/segment/LocationSegment;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getValueId()I
    .locals 1

    .prologue
    .line 279
    sget v0, Lcom/android/calendar/R$id;->value:I

    return v0
.end method

.method public onClick(Lcom/android/calendar/event/ConferenceCallView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/LocationSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->analytics_label_in_segment_location:I

    invoke-static {v0, v1}, Lcom/android/calendar/event/ConferenceCallUtils;->logConferenceLinksTapped(Landroid/content/Context;I)V

    .line 286
    iget-object v0, p0, Lcom/android/calendar/event/segment/LocationSegment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/calendar/event/segment/LocationSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    invoke-static {v0, p2, v1}, Lcom/android/calendar/event/ConferenceCallUtils;->dialConferenceCall(Landroid/app/Activity;Ljava/lang/String;Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 287
    return-void
.end method

.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/android/calendar/R$layout;->segment_location_with_conferencecall:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 68
    sget v0, Lcom/android/calendar/R$id;->value:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/LocationSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/ConferenceCallView;

    invoke-virtual {v0, p0}, Lcom/android/calendar/event/ConferenceCallView;->setConferenceNumberClickListener(Lcom/android/calendar/event/ConferenceCallView$OnConferenceNumberClickListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/LocationSegment;->getValueId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/LocationSegment;->setOnMeasureView(I)V

    .line 70
    return-void
.end method

.method public onRefreshModel()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lcom/android/calendar/event/segment/ClickableSegment;->onRefreshModel()V

    .line 75
    const/4 v1, 0x0

    .line 76
    iget-object v0, p0, Lcom/android/calendar/event/segment/LocationSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    instance-of v0, v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;

    if-eqz v0, :cond_3

    .line 77
    iget-object v0, p0, Lcom/android/calendar/event/segment/LocationSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;

    invoke-interface {v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;->getModelData()Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    iget-object v1, v0, Lcom/android/calendar/event/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    .line 83
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/LocationSegment;->showContent(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/LocationSegment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/LocationSegment;->extractLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/segment/LocationSegment;->mUrl:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/LocationSegment;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/LocationSegment;->enableAction(Z)V

    .line 91
    :cond_0
    return-void

    .line 79
    :cond_1
    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method protected show()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Lcom/android/calendar/event/segment/ClickableSegment;->show()V

    .line 103
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/LocationSegment;->getValueId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/LocationSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 104
    instance-of v1, v0, Lcom/android/calendar/event/ConferenceCallView;

    if-eqz v1, :cond_0

    .line 105
    check-cast v0, Lcom/android/calendar/event/ConferenceCallView;

    .line 106
    invoke-virtual {v0}, Lcom/android/calendar/event/ConferenceCallView;->hasConferenceLink()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/LocationSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->analytics_label_in_segment_location:I

    invoke-static {v0, v1}, Lcom/android/calendar/event/ConferenceCallUtils;->logConferenceLinksShown(Landroid/content/Context;I)V

    .line 111
    :cond_0
    return-void
.end method

.method protected showContent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/LocationSegment;->getValueId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/calendar/event/segment/LocationSegment;->showValueOrHideSegment(ILjava/lang/String;)V

    .line 98
    return-void
.end method

.method protected startAction()V
    .locals 3

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/LocationSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/event/segment/LocationSegment;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendar/event/segment/LocationSegment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->startActivityForUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 269
    return-void
.end method
