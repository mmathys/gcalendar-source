.class public abstract Lcom/android/calendar/event/segment/InfoSegmentLayout;
.super Landroid/widget/RelativeLayout;
.source "InfoSegmentLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/segment/InfoSegmentLayout$StringProvider;,
        Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelListener;,
        Lcom/android/calendar/event/segment/InfoSegmentLayout$ItemProvider;,
        Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;,
        Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;,
        Lcom/android/calendar/event/segment/InfoSegmentLayout$OnResponseListener;,
        Lcom/android/calendar/event/segment/InfoSegmentLayout$OnTimezoneListener;
    }
.end annotation


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mDefaultPaddingId:I

.field protected mDetailPaddingId:I

.field protected mDetailView:Landroid/widget/TextView;

.field protected mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

.field protected mMultiLinePaddingId:I

.field protected mMultiLineText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 293
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    iput-object v0, p0, Lcom/android/calendar/event/segment/InfoSegmentLayout;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    .line 124
    iput-object v0, p0, Lcom/android/calendar/event/segment/InfoSegmentLayout;->mMultiLineText:Landroid/widget/TextView;

    .line 132
    iput-object v0, p0, Lcom/android/calendar/event/segment/InfoSegmentLayout;->mDetailView:Landroid/widget/TextView;

    .line 135
    iput v1, p0, Lcom/android/calendar/event/segment/InfoSegmentLayout;->mDefaultPaddingId:I

    .line 294
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setFocusable(Z)V

    .line 295
    sget v0, Lcom/android/calendar/R$dimen;->info_segment_title_text_extend_padding:I

    iput v0, p0, Lcom/android/calendar/event/segment/InfoSegmentLayout;->mMultiLinePaddingId:I

    .line 296
    sget v0, Lcom/android/calendar/R$dimen;->info_segment_detail_text_extend_padding:I

    iput v0, p0, Lcom/android/calendar/event/segment/InfoSegmentLayout;->mDetailPaddingId:I

    .line 297
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->onMergeLayout(Landroid/view/LayoutInflater;)V

    .line 298
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->linkToResources(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 307
    invoke-static {}, Lcom/android/calendar/Utils;->isKitKatOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p0, v1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setClipChildren(Z)V

    .line 309
    invoke-virtual {p0, v1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setClipToPadding(Z)V

    .line 311
    :cond_0
    return-void
.end method

.method private linkToResources(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 314
    sget-object v0, Lcom/android/calendar/R$styleable;->InfoSegmentLayout:[I

    .line 315
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_0

    .line 320
    sget v1, Lcom/android/calendar/R$id;->segment_label:I

    sget v2, Lcom/android/calendar/R$styleable;->InfoSegmentLayout_segment_label:I

    .line 321
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 320
    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->onAlternativeSegmentLabel(ILandroid/util/TypedValue;)V

    .line 322
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 324
    :cond_0
    return-void
.end method

.method private setBottomPaddingUpdateHeight(I)V
    .locals 4

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 258
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setPadding(IIII)V

    .line 259
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setMeasuredDimension(II)V

    .line 260
    return-void
.end method

.method public static setupOnModelUpdatedListener(Landroid/view/View;ILcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 159
    invoke-static {v0, p2}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 160
    return-void
.end method

.method public static setupOnModelUpdatedListener(Landroid/view/View;Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V
    .locals 1

    .prologue
    .line 163
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/android/calendar/event/segment/InfoSegmentLayout;

    if-eqz v0, :cond_0

    .line 164
    check-cast p0, Lcom/android/calendar/event/segment/InfoSegmentLayout;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setOnModelUpdatedListener(Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 166
    :cond_0
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    sget-object v0, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getModelProvider()Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/calendar/event/segment/InfoSegmentLayout;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    return-object v0
.end method

.method protected hide()V
    .locals 1

    .prologue
    .line 375
    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 376
    return-void
.end method

.method protected hideView(I)V
    .locals 2

    .prologue
    .line 456
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 457
    if-eqz v0, :cond_0

    .line 458
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 460
    :cond_0
    return-void
.end method

.method protected isVisible()Z
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAlternativeSegmentLabel(ILandroid/util/TypedValue;)V
    .locals 2

    .prologue
    .line 273
    if-eqz p2, :cond_0

    .line 274
    const/4 v0, 0x3

    iget v1, p2, Landroid/util/TypedValue;->type:I

    if-ne v0, v1, :cond_1

    .line 275
    iget-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 276
    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setText(ILjava/lang/CharSequence;)V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    const/4 v0, 0x1

    iget v1, p2, Landroid/util/TypedValue;->type:I

    if-ne v0, v1, :cond_0

    .line 280
    iget v0, p2, Landroid/util/TypedValue;->resourceId:I

    .line 281
    if-lez v0, :cond_0

    .line 282
    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setText(II)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 341
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 344
    iget-object v0, p0, Lcom/android/calendar/event/segment/InfoSegmentLayout;->mDetailView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/segment/InfoSegmentLayout;->mDetailView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iget v0, p0, Lcom/android/calendar/event/segment/InfoSegmentLayout;->mDetailPaddingId:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setBottomPadding(I)V

    .line 358
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/segment/InfoSegmentLayout;->mMultiLineText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/android/calendar/event/segment/InfoSegmentLayout;->mMultiLineText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 349
    iget v0, p0, Lcom/android/calendar/event/segment/InfoSegmentLayout;->mMultiLinePaddingId:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setBottomPadding(I)V

    goto :goto_0

    .line 351
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setBottomPaddingUpdateHeight(I)V

    goto :goto_0

    .line 353
    :cond_2
    iget v0, p0, Lcom/android/calendar/event/segment/InfoSegmentLayout;->mDefaultPaddingId:I

    if-eqz v0, :cond_3

    .line 354
    iget v0, p0, Lcom/android/calendar/event/segment/InfoSegmentLayout;->mDefaultPaddingId:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setBottomPadding(I)V

    goto :goto_0

    .line 356
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setBottomPaddingUpdateHeight(I)V

    goto :goto_0
.end method

.method public abstract onMergeLayout(Landroid/view/LayoutInflater;)V
.end method

.method public abstract onRefreshModel()V
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/calendar/event/segment/InfoSegmentLayout;->mActivity:Landroid/app/Activity;

    .line 151
    return-void
.end method

.method public setBottomPadding(I)V
    .locals 2

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 248
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->getPaddingBottom()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 249
    invoke-direct {p0, v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setBottomPaddingUpdateHeight(I)V

    .line 251
    :cond_0
    return-void
.end method

.method protected setConferenceCallLinkMovementMethod(I)V
    .locals 4

    .prologue
    .line 574
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/ConferenceCallView;

    .line 575
    if-eqz v0, :cond_0

    .line 577
    invoke-static {}, Lcom/android/calendar/event/ConferenceCallView$ConferenceCallLinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    .line 576
    invoke-virtual {v0, v1}, Lcom/android/calendar/event/ConferenceCallView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 579
    :catch_0
    move-exception v0

    .line 580
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to cast the view to ConferenceCallView"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public setDefaultPaddingId(I)V
    .locals 0

    .prologue
    .line 220
    iput p1, p0, Lcom/android/calendar/event/segment/InfoSegmentLayout;->mDefaultPaddingId:I

    .line 221
    return-void
.end method

.method public setOnMeasureDetailView(I)V
    .locals 1

    .prologue
    .line 212
    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/segment/InfoSegmentLayout;->mDetailView:Landroid/widget/TextView;

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/segment/InfoSegmentLayout;->mDetailView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public setOnMeasureDetailView(II)V
    .locals 0

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setOnMeasureDetailView(I)V

    .line 205
    iput p2, p0, Lcom/android/calendar/event/segment/InfoSegmentLayout;->mDetailPaddingId:I

    .line 206
    return-void
.end method

.method public setOnMeasureMultiLineView(II)V
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setOnMeasureMultiLineView(Landroid/widget/TextView;)V

    .line 196
    iput p2, p0, Lcom/android/calendar/event/segment/InfoSegmentLayout;->mMultiLinePaddingId:I

    .line 197
    return-void
.end method

.method public setOnMeasureMultiLineView(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/calendar/event/segment/InfoSegmentLayout;->mMultiLineText:Landroid/widget/TextView;

    .line 189
    return-void
.end method

.method public setOnMeasureView(I)V
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setOnMeasureMultiLineView(Landroid/widget/TextView;)V

    .line 182
    return-void
.end method

.method public setOnModelUpdatedListener(Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/calendar/event/segment/InfoSegmentLayout;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    .line 143
    return-void
.end method

.method protected setText(II)V
    .locals 4

    .prologue
    .line 410
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 411
    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 414
    :catch_0
    move-exception v0

    .line 415
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Set Text"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method protected setText(ILandroid/text/Spanned;)V
    .locals 2

    .prologue
    .line 426
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 427
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 428
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    :cond_0
    return-void
.end method

.method protected setText(ILjava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 393
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 394
    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 397
    :catch_0
    move-exception v0

    .line 398
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Set Text"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method protected setToChildrenContentDescription()V
    .locals 1

    .prologue
    .line 563
    .line 564
    invoke-static {p0}, Lcom/android/calendar/AccessibilityUtils;->collectChildrenContentDescription(Landroid/view/ViewGroup;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 563
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 565
    return-void
.end method

.method protected show()V
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 369
    return-void
.end method

.method protected showSegment(II)V
    .locals 3

    .prologue
    .line 500
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 501
    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 503
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 504
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->show()V

    .line 509
    :goto_0
    return-void

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "classCastException Set Text"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 507
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->hide()V

    goto :goto_0
.end method

.method protected showText(ILjava/lang/CharSequence;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 440
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 441
    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 445
    :catch_0
    move-exception v0

    .line 446
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Set Text"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method protected showTextOrHide(ILjava/lang/CharSequence;)I
    .locals 5

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 518
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 520
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 521
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 522
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 523
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 528
    :goto_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    .line 531
    :goto_1
    return v0

    .line 525
    :cond_1
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 530
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "classCastException Set Text"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 531
    if-nez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    goto :goto_1
.end method

.method protected showTextOrHide(ILjava/lang/CharSequence;Landroid/content/res/Resources;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 544
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 545
    if-eqz v0, :cond_1

    .line 546
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 547
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 556
    :cond_1
    :goto_0
    return-void

    .line 549
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p3, p4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 553
    :catch_0
    move-exception v0

    .line 554
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Set Text"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method protected showValueOrHideSegment(ILandroid/text/Spanned;)V
    .locals 1

    .prologue
    .line 485
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/text/Spanned;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 486
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setText(ILandroid/text/Spanned;)V

    .line 487
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->show()V

    .line 491
    :goto_0
    return-void

    .line 489
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->hide()V

    goto :goto_0
.end method

.method protected showValueOrHideSegment(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 469
    if-nez p2, :cond_0

    const-string v0, ""

    .line 470
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 471
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->hide()V

    .line 476
    :goto_1
    return-void

    .line 469
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 473
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setText(ILjava/lang/CharSequence;)V

    .line 474
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->show()V

    goto :goto_1
.end method
