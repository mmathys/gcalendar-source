.class Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "FindTimeGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/FindTimeGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindTimeGridPagerAdapter"
.end annotation


# instance fields
.field private mItemsAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/timely/FindTimeGridSlabPage;",
            ">;"
        }
    .end annotation
.end field

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

.field final synthetic this$0:Lcom/android/calendar/timely/FindTimeGridFragment;


# direct methods
.method public constructor <init>(Lcom/android/calendar/timely/FindTimeGridFragment;)V
    .locals 1

    .prologue
    .line 641
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 642
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->mRecycledViews:Ljava/util/ArrayList;

    .line 643
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->mItemsToAdd:Ljava/util/ArrayList;

    .line 644
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->mItemsAdded:Ljava/util/ArrayList;

    .line 645
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->mItemsToRemove:Ljava/util/ArrayList;

    .line 646
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 713
    check-cast p3, Lcom/android/calendar/timely/FindTimeGridSlabPage;

    .line 714
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->mRecycledViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->mItemsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->mItemsAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 717
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->mItemsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 657
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->mItemsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 661
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 663
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mGridData:Lcom/android/calendar/timely/FindTimeGridData;
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$500(Lcom/android/calendar/timely/FindTimeGridFragment;)Lcom/android/calendar/timely/FindTimeGridData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeGridData;->getSuggestions()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 667
    .line 669
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->mRecycledViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->mRecycledViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeGridSlabPage;

    move-object v1, v0

    .line 698
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mTimezone:Ljava/util/TimeZone;
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$1600(Lcom/android/calendar/timely/FindTimeGridFragment;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->setTimezone(Ljava/util/TimeZone;)V

    .line 699
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$1000(Lcom/android/calendar/timely/FindTimeGridFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeUtil;->getInstance(Landroid/content/Context;)Lcom/android/calendar/timely/FindTimeUtil;

    move-result-object v2

    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    .line 700
    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mGridData:Lcom/android/calendar/timely/FindTimeGridData;
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$500(Lcom/android/calendar/timely/FindTimeGridFragment;)Lcom/android/calendar/timely/FindTimeGridData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeGridData;->getSuggestions()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineSuggestion;

    iget-object v3, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mAccountName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$900(Lcom/android/calendar/timely/FindTimeGridFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/calendar/timely/FindTimeUtil;->getDescription(Lcom/android/calendar/timely/TimelineSuggestion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 701
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    .line 702
    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mGridData:Lcom/android/calendar/timely/FindTimeGridData;
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$500(Lcom/android/calendar/timely/FindTimeGridFragment;)Lcom/android/calendar/timely/FindTimeGridData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeGridData;->getSuggestions()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineSuggestion;

    iget-object v3, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    .line 703
    # invokes: Lcom/android/calendar/timely/FindTimeGridFragment;->isLastSuggestion(I)Z
    invoke-static {v3, p2}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$1100(Lcom/android/calendar/timely/FindTimeGridFragment;I)Z

    move-result v3

    .line 701
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->setTimelineSuggestion(Lcom/android/calendar/timely/TimelineSuggestion;Ljava/lang/String;Z)V

    .line 704
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->setTag(Ljava/lang/Object;)V

    .line 706
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->mItemsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->mItemsAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    return-object v1

    .line 672
    :cond_0
    new-instance v0, Lcom/android/calendar/timely/FindTimeGridSlabPage;

    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    invoke-virtual {v1}, Lcom/android/calendar/timely/FindTimeGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mTimezone:Ljava/util/TimeZone;
    invoke-static {v2}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$1600(Lcom/android/calendar/timely/FindTimeGridFragment;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/timely/FindTimeGridSlabPage;-><init>(Landroid/content/Context;Ljava/util/TimeZone;)V

    .line 673
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 675
    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 676
    invoke-virtual {v0, v4}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->setClickable(Z)V

    .line 677
    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->getFab()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter$1;

    invoke-direct {v2, p0}, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter$1;-><init>(Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    new-instance v1, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter$2;-><init>(Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->setOnSlabPageUpdatedListener(Lcom/android/calendar/timely/FindTimeGridSlabPage$OnSlabPageUpdatedListener;)V

    move-object v1, v0

    goto/16 :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 726
    check-cast p2, Landroid/view/View;

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
    .line 650
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->mItemsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 651
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->mItemsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 652
    return-void
.end method
