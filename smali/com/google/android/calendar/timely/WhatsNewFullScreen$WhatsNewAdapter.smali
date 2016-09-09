.class public abstract Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "WhatsNewFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/timely/WhatsNewFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WhatsNewAdapter"
.end annotation


# instance fields
.field private mItemsToAdd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsToRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field private mRecycledViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->setViews(Landroid/view/View;I)V

    return-void
.end method

.method private setViews(Landroid/view/View;I)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/16 v8, 0x8

    const/4 v2, 0x0

    .line 438
    sget v0, Lcom/android/calendar/R$id;->image_frame:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 439
    sget v0, Lcom/android/calendar/R$id;->image_holder:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 441
    sget v0, Lcom/android/calendar/R$id;->texts_frame:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 442
    sget v1, Lcom/android/calendar/R$id;->custom_frame:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 445
    if-eqz v1, :cond_2

    .line 446
    invoke-virtual {p0, p2}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->getCustomView(I)Landroid/view/View;

    move-result-object v3

    .line 447
    if-eqz v3, :cond_1

    .line 448
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 449
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 450
    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 451
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 460
    :cond_2
    invoke-virtual {p0, p2}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->getImageResource(I)I

    move-result v7

    .line 462
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 463
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 464
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    move v3, v1

    .line 470
    :goto_1
    cmpl-float v1, v3, v4

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    .line 471
    :goto_2
    if-nez v7, :cond_7

    .line 472
    if-nez v6, :cond_6

    .line 475
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    move v1, v2

    .line 490
    :goto_3
    if-eqz v1, :cond_3

    .line 491
    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v4, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter$1;

    invoke-direct {v4, p0, v5, v3}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter$1;-><init>(Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;Landroid/view/View;F)V

    invoke-virtual {v1, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 522
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 523
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 524
    invoke-virtual {p0, p2}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->getTextsView(I)Landroid/view/View;

    move-result-object v1

    .line 525
    if-eqz v1, :cond_0

    .line 526
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    move v3, v4

    .line 466
    goto :goto_1

    :cond_5
    move v1, v2

    .line 470
    goto :goto_2

    .line 477
    :cond_6
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 478
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 481
    :cond_7
    if-nez v6, :cond_8

    .line 482
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 487
    :goto_4
    sget v4, Lcom/android/calendar/R$id;->image:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 484
    :cond_8
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 485
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 598
    check-cast p3, Landroid/view/View;

    .line 599
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->mRecycledViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->mItemsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->mItemsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 606
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->mItemsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 610
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 612
    :cond_1
    return-void
.end method

.method public abstract getBackgroundColor(I)I
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 563
    const/4 v0, 0x1

    return v0
.end method

.method public abstract getCustomView(I)Landroid/view/View;
.end method

.method public abstract getImageResource(I)I
.end method

.method public abstract getTextsView(I)Landroid/view/View;
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 429
    const-string v0, "layout_inflater"

    .line 430
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->mRecycledViews:Ljava/util/ArrayList;

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->mItemsToAdd:Ljava/util/ArrayList;

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->mItemsToRemove:Ljava/util/ArrayList;

    .line 435
    return-void
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 581
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->mRecycledViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->mRecycledViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 591
    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->setViews(Landroid/view/View;I)V

    .line 592
    iget-object v1, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->mItemsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    return-object v0

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/calendar/R$layout;->oobe_page:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 588
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public isLastPage(I)Z
    .locals 1

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 568
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->mItemsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 574
    iget-object v0, p0, Lcom/google/android/calendar/timely/WhatsNewFullScreen$WhatsNewAdapter;->mItemsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 575
    return-void
.end method
