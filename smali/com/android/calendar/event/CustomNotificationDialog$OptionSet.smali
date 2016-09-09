.class abstract Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;
.super Ljava/lang/Object;
.source "CustomNotificationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/CustomNotificationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "OptionSet"
.end annotation


# instance fields
.field private mSelectedIndex:I

.field private mSelectedView:Landroid/view/View;

.field private mViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/calendar/event/CustomNotificationDialog;


# direct methods
.method private constructor <init>(Lcom/android/calendar/event/CustomNotificationDialog;)V
    .locals 1

    .prologue
    .line 520
    iput-object p1, p0, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->mViewList:Ljava/util/List;

    .line 523
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->mSelectedIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/event/CustomNotificationDialog;Lcom/android/calendar/event/CustomNotificationDialog$1;)V
    .locals 0

    .prologue
    .line 520
    invoke-direct {p0, p1}, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;-><init>(Lcom/android/calendar/event/CustomNotificationDialog;)V

    return-void
.end method

.method private setSelected(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 545
    .line 546
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->mViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 547
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/event/CustomNotificationDialog$OptionViewHolder;

    .line 548
    if-ne v0, p1, :cond_1

    const/4 v4, 0x1

    .line 549
    :goto_1
    iget-object v7, v1, Lcom/android/calendar/event/CustomNotificationDialog$OptionViewHolder;->mTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    # getter for: Lcom/android/calendar/event/CustomNotificationDialog;->mSelectedTextColor:I
    invoke-static {v5}, Lcom/android/calendar/event/CustomNotificationDialog;->access$900(Lcom/android/calendar/event/CustomNotificationDialog;)I

    move-result v5

    :goto_2
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 550
    iget-object v7, v1, Lcom/android/calendar/event/CustomNotificationDialog$OptionViewHolder;->mCheck:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    move v5, v3

    :goto_3
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 551
    if-eqz v4, :cond_0

    .line 552
    iput v2, p0, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->mSelectedIndex:I

    .line 553
    iput-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->mSelectedView:Landroid/view/View;

    .line 555
    :cond_0
    iget-object v0, v1, Lcom/android/calendar/event/CustomNotificationDialog$OptionViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->getViewText(IIZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 557
    goto :goto_0

    :cond_1
    move v4, v3

    .line 548
    goto :goto_1

    .line 549
    :cond_2
    iget-object v5, p0, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    # getter for: Lcom/android/calendar/event/CustomNotificationDialog;->mDefaultTextColor:I
    invoke-static {v5}, Lcom/android/calendar/event/CustomNotificationDialog;->access$1000(Lcom/android/calendar/event/CustomNotificationDialog;)I

    move-result v5

    goto :goto_2

    .line 550
    :cond_3
    const/16 v5, 0x8

    goto :goto_3

    .line 558
    :cond_4
    invoke-virtual {p0}, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->onItemSelected()V

    .line 559
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    # getter for: Lcom/android/calendar/event/CustomNotificationDialog;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/android/calendar/event/CustomNotificationDialog;->access$1100(Lcom/android/calendar/event/CustomNotificationDialog;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 560
    return-void
.end method


# virtual methods
.method public add(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 527
    new-instance v0, Lcom/android/calendar/event/CustomNotificationDialog$OptionViewHolder;

    iget-object v1, p0, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    invoke-direct {v0, v1, p1}, Lcom/android/calendar/event/CustomNotificationDialog$OptionViewHolder;-><init>(Lcom/android/calendar/event/CustomNotificationDialog;Landroid/view/View;)V

    .line 528
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 529
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->mViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    return-void
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 578
    iget v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->mSelectedIndex:I

    return v0
.end method

.method protected abstract getViewText(IIZ)Ljava/lang/String;
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->mSelectedView:Landroid/view/View;

    if-eq p1, v0, :cond_0

    .line 540
    invoke-direct {p0, p1}, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->setSelected(Landroid/view/View;)V

    .line 542
    :cond_0
    return-void
.end method

.method protected onItemSelected()V
    .locals 0

    .prologue
    .line 589
    return-void
.end method

.method public refreshViewText()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 563
    move v2, v3

    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->mViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->mViewList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 565
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/event/CustomNotificationDialog$OptionViewHolder;

    .line 566
    iget-object v1, v1, Lcom/android/calendar/event/CustomNotificationDialog$OptionViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    iget v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->mSelectedIndex:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v4, v2, v0}, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->getViewText(IIZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v3

    .line 566
    goto :goto_1

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    # getter for: Lcom/android/calendar/event/CustomNotificationDialog;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/android/calendar/event/CustomNotificationDialog;->access$1100(Lcom/android/calendar/event/CustomNotificationDialog;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 569
    return-void
.end method

.method public setSelection(I)V
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->mSelectedIndex:I

    if-eq v0, p1, :cond_0

    .line 573
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->mViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->setSelected(Landroid/view/View;)V

    .line 575
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;->mViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
