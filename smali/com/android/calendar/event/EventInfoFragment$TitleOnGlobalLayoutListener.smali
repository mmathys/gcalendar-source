.class Lcom/android/calendar/event/EventInfoFragment$TitleOnGlobalLayoutListener;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TitleOnGlobalLayoutListener"
.end annotation


# instance fields
.field private mBigMargin:I

.field private mCount:I

.field private mSmallMargin:I

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 4703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4699
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/event/EventInfoFragment$TitleOnGlobalLayoutListener;->mCount:I

    .line 4704
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$TitleOnGlobalLayoutListener;->mTitleView:Landroid/widget/TextView;

    .line 4705
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4706
    sget v1, Lcom/android/calendar/R$dimen;->info_headline_title_margin_end_small:I

    .line 4707
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/event/EventInfoFragment$TitleOnGlobalLayoutListener;->mSmallMargin:I

    .line 4708
    sget v1, Lcom/android/calendar/R$dimen;->info_headline_title_margin_end_big:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/EventInfoFragment$TitleOnGlobalLayoutListener;->mBigMargin:I

    .line 4709
    return-void
.end method

.method private updateTitleViewMargin()V
    .locals 4

    .prologue
    .line 4721
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$TitleOnGlobalLayoutListener;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_3

    .line 4722
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$TitleOnGlobalLayoutListener;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 4723
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$TitleOnGlobalLayoutListener;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_1

    .line 4724
    iget v0, p0, Lcom/android/calendar/event/EventInfoFragment$TitleOnGlobalLayoutListener;->mSmallMargin:I

    move v1, v0

    .line 4726
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$TitleOnGlobalLayoutListener;->mTitleView:Landroid/widget/TextView;

    .line 4727
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4730
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    if-eq v2, v1, :cond_0

    iget v2, p0, Lcom/android/calendar/event/EventInfoFragment$TitleOnGlobalLayoutListener;->mCount:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 4731
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$TitleOnGlobalLayoutListener;->mTitleView:Landroid/widget/TextView;

    invoke-static {v0, p0}, Lcom/android/calendar/Utils;->removeOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4741
    :goto_1
    return-void

    .line 4725
    :cond_1
    iget v0, p0, Lcom/android/calendar/event/EventInfoFragment$TitleOnGlobalLayoutListener;->mBigMargin:I

    move v1, v0

    goto :goto_0

    .line 4733
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 4734
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$TitleOnGlobalLayoutListener;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4735
    iget v0, p0, Lcom/android/calendar/event/EventInfoFragment$TitleOnGlobalLayoutListener;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/event/EventInfoFragment$TitleOnGlobalLayoutListener;->mCount:I

    goto :goto_1

    .line 4739
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$TitleOnGlobalLayoutListener;->mTitleView:Landroid/widget/TextView;

    invoke-static {v0, p0}, Lcom/android/calendar/Utils;->removeOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 0

    .prologue
    .line 4713
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoFragment$TitleOnGlobalLayoutListener;->updateTitleViewMargin()V

    .line 4714
    return-void
.end method
