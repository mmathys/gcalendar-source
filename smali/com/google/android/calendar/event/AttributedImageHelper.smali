.class public abstract Lcom/google/android/calendar/event/AttributedImageHelper;
.super Lcom/android/calendar/event/ImageHelper;
.source "AttributedImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/event/AttributedImageHelper$OnImageLoaded;,
        Lcom/google/android/calendar/event/AttributedImageHelper$ImageAttributionData;,
        Lcom/google/android/calendar/event/AttributedImageHelper$CustomURLSpan;,
        Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;,
        Lcom/google/android/calendar/event/AttributedImageHelper$ImageMetadata;
    }
.end annotation


# instance fields
.field protected mAttributedImageRequestKey:Lcom/android/calendar/timely/EventImageRequestKey;


# direct methods
.method public constructor <init>([Landroid/view/ViewGroup;Landroid/view/ViewGroup;ILcom/android/calendar/timely/TimelineItem;Landroid/view/LayoutInflater;)V
    .locals 0

    .prologue
    .line 307
    invoke-direct/range {p0 .. p5}, Lcom/android/calendar/event/ImageHelper;-><init>([Landroid/view/ViewGroup;Landroid/view/ViewGroup;ILcom/android/calendar/timely/TimelineItem;Landroid/view/LayoutInflater;)V

    .line 308
    return-void
.end method

.method private cleanAttributionText(Ljava/lang/String;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)Lcom/google/common/base/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    invoke-virtual {p2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    const-string v0, " ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 440
    invoke-virtual {p2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    .line 441
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 442
    invoke-virtual {p3}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")]"

    .line 443
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 452
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 454
    :goto_1
    return-object v0

    .line 444
    :cond_1
    invoke-virtual {p3}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 445
    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 446
    invoke-virtual {p3}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    .line 447
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 448
    :cond_2
    invoke-virtual {p2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {p2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 454
    :cond_3
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_1
.end method

.method protected static disableAttribution(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 562
    sget v0, Lcom/android/calendar/R$id;->attribute:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 563
    if-eqz v0, :cond_0

    .line 564
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 566
    :cond_0
    sget v0, Lcom/android/calendar/R$id;->selector:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 567
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 569
    return-void
.end method

.method protected static enableAttribution(Landroid/view/ViewGroup;Lcom/google/android/calendar/event/AttributedImageHelper$ImageMetadata;)V
    .locals 8

    .prologue
    .line 486
    sget v0, Lcom/android/calendar/R$id;->attribute:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 487
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 489
    invoke-virtual {p1}, Lcom/google/android/calendar/event/AttributedImageHelper$ImageMetadata;->getImageAttributionSegments()Ljava/util/List;

    move-result-object v1

    .line 490
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->list_delimiter:I

    .line 491
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 494
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;

    .line 495
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 496
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 498
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;->isFullHtml()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 499
    invoke-virtual {v1}, Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;->getFullHtml()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 501
    :cond_2
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 502
    invoke-virtual {v1}, Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;->getDisplayText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 503
    invoke-virtual {v1}, Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 504
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 505
    new-instance v7, Landroid/text/style/URLSpan;

    invoke-direct {v7, v6}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v1}, Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;->getDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v5

    const/16 v6, 0x21

    .line 506
    invoke-virtual {v2, v7, v5, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 514
    :cond_3
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 515
    invoke-static {v2}, Lcom/google/android/calendar/event/AttributedImageHelper;->removeUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v1

    .line 516
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 520
    sget v1, Lcom/android/calendar/R$id;->title:I

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 522
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 523
    sget v2, Lcom/android/calendar/R$id;->selector:I

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/google/android/calendar/event/AttributedImageHelper$2;

    invoke-direct {v3, v0, v1}, Lcom/google/android/calendar/event/AttributedImageHelper$2;-><init>(Landroid/widget/TextView;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    :goto_1
    return-void

    .line 538
    :cond_4
    invoke-static {p0}, Lcom/google/android/calendar/event/AttributedImageHelper;->disableAttribution(Landroid/view/ViewGroup;)V

    goto :goto_1
.end method

.method private getAuthorSegment(Lcom/google/android/calendar/event/AttributedImageHelper$ImageAttributionData;)Lcom/google/common/base/Optional;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/calendar/event/AttributedImageHelper$ImageAttributionData;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    invoke-virtual {p1}, Lcom/google/android/calendar/event/AttributedImageHelper$ImageAttributionData;->getAuthorName()Lcom/google/common/base/Optional;

    move-result-object v1

    .line 459
    invoke-virtual {p1}, Lcom/google/android/calendar/event/AttributedImageHelper$ImageAttributionData;->getAuthorUri()Lcom/google/common/base/Optional;

    move-result-object v3

    .line 460
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 462
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "\u00a9"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    new-instance v2, Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;

    .line 465
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 470
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 472
    :goto_1
    return-object v0

    .line 467
    :cond_0
    new-instance v2, Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;

    const-string v0, "\u00a9 "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 468
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_2
    invoke-virtual {v3}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v1, v0}, Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_2

    .line 472
    :cond_2
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_1
.end method

.method private getCcByLicenseSegments(Ljava/lang/String;Lcom/google/android/calendar/event/AttributedImageHelper$ImageAttributionData;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/calendar/event/AttributedImageHelper$ImageAttributionData;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    invoke-virtual {p2}, Lcom/google/android/calendar/event/AttributedImageHelper$ImageAttributionData;->getLicenseName()Lcom/google/common/base/Optional;

    move-result-object v4

    .line 404
    invoke-virtual {p2}, Lcom/google/android/calendar/event/AttributedImageHelper$ImageAttributionData;->getLicenseUri()Lcom/google/common/base/Optional;

    move-result-object v5

    .line 405
    if-eqz p1, :cond_2

    .line 406
    invoke-virtual {p2, p1}, Lcom/google/android/calendar/event/AttributedImageHelper$ImageAttributionData;->getLicenseAttributionText(Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 407
    :goto_0
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_4

    .line 409
    const-string v0, "en"

    .line 410
    invoke-virtual {p2, v0}, Lcom/google/android/calendar/event/AttributedImageHelper$ImageAttributionData;->getLicenseAttributionText(Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object v0

    move-object v2, v0

    .line 412
    :goto_1
    invoke-virtual {p2}, Lcom/google/android/calendar/event/AttributedImageHelper$ImageAttributionData;->getAuthorUri()Lcom/google/common/base/Optional;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_3

    .line 414
    invoke-virtual {p2}, Lcom/google/android/calendar/event/AttributedImageHelper$ImageAttributionData;->getReferrerUrl()Lcom/google/common/base/Optional;

    move-result-object v0

    move-object v3, v0

    .line 417
    :goto_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 418
    invoke-virtual {v4}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v5}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    new-instance v7, Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;

    .line 420
    invoke-virtual {v4}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v7, v0, v1}, Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    :cond_0
    invoke-virtual {v2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {v2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 423
    invoke-direct {p0, v0, v4, v5}, Lcom/google/android/calendar/event/AttributedImageHelper;->cleanAttributionText(Ljava/lang/String;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 425
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    new-instance v2, Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;

    .line 427
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    :cond_1
    return-object v6

    .line 406
    :cond_2
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v3, v0

    goto :goto_2

    :cond_4
    move-object v2, v0

    goto :goto_1
.end method

.method private isCcLicense(Lcom/google/common/base/Optional;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 476
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CC-BY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static removeUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 546
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/style/URLSpan;

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 547
    array-length v3, v0

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 548
    invoke-interface {p0, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 549
    invoke-interface {p0, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 550
    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 551
    new-instance v7, Lcom/google/android/calendar/event/AttributedImageHelper$CustomURLSpan;

    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Lcom/google/android/calendar/event/AttributedImageHelper$CustomURLSpan;-><init>(Ljava/lang/String;)V

    .line 552
    invoke-interface {p0, v7, v5, v6, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 547
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 554
    :cond_0
    return-object p0
.end method


# virtual methods
.method public fetch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 317
    new-instance v0, Lcom/google/android/calendar/event/AttributedImageHelper$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/calendar/event/AttributedImageHelper$1;-><init>(Lcom/google/android/calendar/event/AttributedImageHelper;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 359
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/event/AttributedImageHelper$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 360
    return-void
.end method

.method getAttributionSegments(Ljava/lang/String;Lcom/google/android/calendar/event/AttributedImageHelper$ImageAttributionData;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/calendar/event/AttributedImageHelper$ImageAttributionData;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 368
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 370
    invoke-virtual {p2}, Lcom/google/android/calendar/event/AttributedImageHelper$ImageAttributionData;->getLicenseRequirements()Ljava/util/Set;

    move-result-object v0

    .line 371
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 398
    :goto_0
    return-object v0

    .line 376
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 378
    invoke-virtual {p2}, Lcom/google/android/calendar/event/AttributedImageHelper$ImageAttributionData;->getLicenseName()Lcom/google/common/base/Optional;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/calendar/event/AttributedImageHelper;->isCcLicense(Lcom/google/common/base/Optional;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 379
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/event/AttributedImageHelper;->getCcByLicenseSegments(Ljava/lang/String;Lcom/google/android/calendar/event/AttributedImageHelper$ImageAttributionData;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 388
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    .line 389
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 393
    :cond_2
    invoke-direct {p0, p2}, Lcom/google/android/calendar/event/AttributedImageHelper;->getAuthorSegment(Lcom/google/android/calendar/event/AttributedImageHelper$ImageAttributionData;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 395
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/event/AttributedImageHelper$AttributionSpan;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v0, v1

    .line 398
    goto :goto_0

    .line 380
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/calendar/event/AttributedImageHelper$ImageAttributionData;->getLicenseName()Lcom/google/common/base/Optional;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 383
    const-string v2, "AttributedImageHelper"

    const-string v3, "Unsupported image license: %s"

    new-array v4, v4, [Ljava/lang/Object;

    .line 384
    invoke-virtual {p2}, Lcom/google/android/calendar/event/AttributedImageHelper$ImageAttributionData;->getLicenseName()Lcom/google/common/base/Optional;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v6

    .line 383
    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method protected getExtendedBitmapDrawable(Lcom/android/bitmap/BitmapCache;Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;
    .locals 3

    .prologue
    .line 294
    new-instance v0, Lcom/android/calendar/timely/ListenableBitmapDrawable;

    .line 295
    invoke-virtual {p0}, Lcom/google/android/calendar/event/AttributedImageHelper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/android/calendar/timely/ListenableBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V

    .line 296
    new-instance v1, Lcom/google/android/calendar/event/AttributedImageHelper$OnImageLoaded;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/calendar/event/AttributedImageHelper$OnImageLoaded;-><init>(Lcom/google/android/calendar/event/AttributedImageHelper;Lcom/google/android/calendar/event/AttributedImageHelper$1;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/ListenableBitmapDrawable;->setOnLoadCompleteListener(Lcom/android/calendar/timely/ListenableBitmapDrawable$OnLoadCompleteListener;)V

    .line 297
    return-object v0
.end method

.method public abstract getImageUrl()Ljava/lang/String;
.end method

.method public abstract onImageLoadComplete()V
.end method

.method public abstract onImageMetadataLoadComplete(Lcom/google/android/calendar/event/AttributedImageHelper$ImageMetadata;)V
.end method

.method public abstract onImageMetadataLoadFailed()V
.end method
