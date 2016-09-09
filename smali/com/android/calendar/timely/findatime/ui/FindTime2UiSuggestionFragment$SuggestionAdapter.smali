.class Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FindTime2UiSuggestionFragment.java"

# interfaces
.implements Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView$OnMoreInformationRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/calendar/timely/SuggestionRow;",
        ">;",
        "Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView$OnMoreInformationRequestListener;"
    }
.end annotation


# instance fields
.field private mCount:I

.field private mOnItemSecondaryClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSuggestionRows:Lcom/android/calendar/timely/SuggestionRows;

.field private mTotalCount:I

.field final synthetic this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;


# direct methods
.method public constructor <init>(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/SuggestionRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 702
    iput-object p1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    .line 703
    sget v0, Lcom/android/calendar/R$layout;->find_time_2_suggestion_item:I

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 704
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->mTotalCount:I

    .line 705
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->computeCount()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->mCount:I

    .line 706
    return-void
.end method

.method private computeCount()I
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 715
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->mSuggestionRows:Lcom/android/calendar/timely/SuggestionRows;

    if-nez v0, :cond_1

    move v0, v1

    .line 716
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->mSuggestionRows:Lcom/android/calendar/timely/SuggestionRows;

    if-nez v2, :cond_2

    move v2, v1

    .line 718
    :goto_1
    iget-object v3, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->mSuggestionRows:Lcom/android/calendar/timely/SuggestionRows;

    if-nez v3, :cond_3

    move v3, v1

    .line 720
    :goto_2
    const/4 v5, 0x4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-eqz v2, :cond_4

    move v0, v4

    .line 721
    :goto_3
    add-int/2addr v0, v5

    if-eqz v3, :cond_0

    move v1, v4

    .line 722
    :cond_0
    add-int/2addr v0, v1

    .line 720
    return v0

    .line 715
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->mSuggestionRows:Lcom/android/calendar/timely/SuggestionRows;

    invoke-virtual {v0}, Lcom/android/calendar/timely/SuggestionRows;->getBestBucketSize()I

    move-result v0

    goto :goto_0

    .line 717
    :cond_2
    iget-object v2, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->mSuggestionRows:Lcom/android/calendar/timely/SuggestionRows;

    invoke-virtual {v2}, Lcom/android/calendar/timely/SuggestionRows;->hasNotConsidered()Z

    move-result v2

    goto :goto_1

    .line 719
    :cond_3
    iget-object v3, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->mSuggestionRows:Lcom/android/calendar/timely/SuggestionRows;

    invoke-virtual {v3}, Lcom/android/calendar/timely/SuggestionRows;->hasNoBestSuggestions()Z

    move-result v3

    goto :goto_2

    :cond_4
    move v0, v1

    .line 721
    goto :goto_3
.end method

.method private getFindTimeNoBestSuggestionsView(Landroid/view/View;)Landroid/view/View;
    .locals 4

    .prologue
    .line 882
    .line 884
    if-nez p1, :cond_0

    .line 885
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->find_time_2_no_best_suggestions:I

    iget-object v2, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    .line 886
    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$700(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 887
    sget v0, Lcom/android/calendar/R$id;->find_later_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    .line 888
    invoke-virtual {v1}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 891
    :cond_0
    return-object p1
.end method

.method private getFindTimeNotConsideredView(Landroid/view/View;Lcom/android/calendar/timely/SuggestionRow;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 867
    .line 869
    if-nez p1, :cond_0

    .line 870
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->find_time_list_not_considered:I

    iget-object v2, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    .line 871
    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$700(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->find_time_not_considered:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p2, Lcom/android/calendar/timely/SuggestionRow;->omittedAttendees:Ljava/util/List;

    const-string v4, ", "

    .line 874
    invoke-static {v3, v4}, Lcom/android/calendar/Utils;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 873
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 875
    sget v0, Lcom/android/calendar/R$id;->find_a_time_not_considered_textview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 876
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 878
    return-object p1
.end method

.method private getFindTimeSuggestionHeaderView(Landroid/view/View;Lcom/android/calendar/timely/SuggestionRow;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 828
    check-cast p1, Landroid/widget/TextView;

    .line 829
    if-nez p1, :cond_1

    .line 830
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$layout;->find_time_list_header:I

    iget-object v3, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    .line 831
    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$700(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 832
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 834
    :goto_0
    iget-object v2, p2, Lcom/android/calendar/timely/SuggestionRow;->headerName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 836
    iget-object v2, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    invoke-virtual {v2}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$dimen;->find_time_2_suggestion_list_header_top_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 839
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    .line 840
    invoke-virtual {p2}, Lcom/android/calendar/timely/SuggestionRow;->isInFirstBucket()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 841
    :goto_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    .line 842
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    .line 838
    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 844
    return-object v0

    :cond_0
    move v1, v2

    .line 840
    goto :goto_1

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private getFindTimeSuggestionItemView(Landroid/view/View;Lcom/android/calendar/timely/SuggestionRow;)Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;
    .locals 3

    .prologue
    .line 849
    check-cast p1, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;

    .line 851
    if-nez p1, :cond_0

    .line 852
    new-instance p1, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;

    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mTimezone:Ljava/util/TimeZone;
    invoke-static {v1}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$900(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;-><init>(Landroid/content/Context;Ljava/util/TimeZone;)V

    .line 856
    invoke-virtual {p1, p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->setOnMoreInformationRequestListener(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView$OnMoreInformationRequestListener;)V

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mTimezone:Ljava/util/TimeZone;
    invoke-static {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$900(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->setTimezone(Ljava/util/TimeZone;)V

    .line 860
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$1600(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeUtil;->getInstance(Landroid/content/Context;)Lcom/android/calendar/timely/FindTimeUtil;

    move-result-object v0

    iget-object v1, p2, Lcom/android/calendar/timely/SuggestionRow;->suggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    iget-object v2, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    .line 861
    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mAccountName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$1500(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/FindTimeUtil;->getDescription(Lcom/android/calendar/timely/TimelineSuggestion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 862
    invoke-virtual {p1, p2, v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;->setSuggestionRow(Lcom/android/calendar/timely/SuggestionRow;Ljava/lang/String;)V

    .line 863
    return-object p1
.end method


# virtual methods
.method public add(Lcom/android/calendar/timely/SuggestionRow;)V
    .locals 1

    .prologue
    .line 736
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 737
    iget v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->mTotalCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->mTotalCount:I

    .line 738
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->computeCount()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->mCount:I

    .line 739
    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 683
    check-cast p1, Lcom/android/calendar/timely/SuggestionRow;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->add(Lcom/android/calendar/timely/SuggestionRow;)V

    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/calendar/timely/SuggestionRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 743
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 744
    iget v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->mTotalCount:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->mTotalCount:I

    .line 745
    invoke-direct {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->computeCount()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->mCount:I

    .line 746
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 817
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 750
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 751
    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->mCount:I

    .line 752
    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->mTotalCount:I

    .line 753
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 731
    iget v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->mCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 794
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/SuggestionRow;

    .line 795
    iget v2, v0, Lcom/android/calendar/timely/SuggestionRow;->type:I

    if-eq v2, v1, :cond_0

    iget v2, v0, Lcom/android/calendar/timely/SuggestionRow;->type:I

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/android/calendar/timely/SuggestionRow;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, v0, Lcom/android/calendar/timely/SuggestionRow;->type:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 799
    sget-object v2, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->TAG:Ljava/lang/String;

    const-string v3, "Unrecognized row type %d"

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v0, v0, Lcom/android/calendar/timely/SuggestionRow;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 802
    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lcom/android/calendar/timely/SuggestionRow;->type:I

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 757
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->getItemViewType(I)I

    move-result v1

    .line 758
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/SuggestionRow;

    .line 759
    packed-switch v1, :pswitch_data_0

    .line 769
    sget-object v0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->TAG:Ljava/lang/String;

    const-string v2, "Row type unknown %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 770
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 761
    :pswitch_0
    invoke-direct {p0, p2, v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->getFindTimeSuggestionHeaderView(Landroid/view/View;Lcom/android/calendar/timely/SuggestionRow;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 763
    :pswitch_1
    invoke-direct {p0, p2, v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->getFindTimeSuggestionItemView(Landroid/view/View;Lcom/android/calendar/timely/SuggestionRow;)Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;

    move-result-object v0

    goto :goto_0

    .line 765
    :pswitch_2
    invoke-direct {p0, p2, v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->getFindTimeNotConsideredView(Landroid/view/View;Lcom/android/calendar/timely/SuggestionRow;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 767
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->getFindTimeNoBestSuggestionsView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 759
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 789
    const/4 v0, 0x4

    return v0
.end method

.method public hasMoreToShow()Z
    .locals 2

    .prologue
    .line 775
    iget v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->mCount:I

    iget v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->mTotalCount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2

    .prologue
    .line 822
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/SuggestionRow;

    .line 823
    iget v1, v0, Lcom/android/calendar/timely/SuggestionRow;->type:I

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/android/calendar/timely/SuggestionRow;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMoreInformationRequest(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionItemView;Lcom/android/calendar/timely/SuggestionRow;)V
    .locals 6

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->mOnItemSecondaryClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 809
    invoke-virtual {p0, p2}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v3

    .line 810
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->mOnItemSecondaryClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    .line 811
    invoke-virtual {v1}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->getItemId(I)J

    move-result-wide v4

    move-object v2, p1

    .line 810
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 813
    :cond_0
    return-void
.end method

.method public setCount(I)V
    .locals 1

    .prologue
    .line 726
    iget v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->mTotalCount:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->mCount:I

    .line 727
    return-void
.end method

.method public setOnItemMoreInformationRequestListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 784
    iput-object p1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->mOnItemSecondaryClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 785
    return-void
.end method

.method public setSuggestionRows(Lcom/android/calendar/timely/SuggestionRows;)V
    .locals 1

    .prologue
    .line 709
    iput-object p1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->mSuggestionRows:Lcom/android/calendar/timely/SuggestionRows;

    .line 710
    invoke-virtual {p0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->clear()V

    .line 711
    iget-object v0, p1, Lcom/android/calendar/timely/SuggestionRows;->suggestions:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->addAll(Ljava/util/Collection;)V

    .line 712
    return-void
.end method

.method public showMore()V
    .locals 1

    .prologue
    .line 779
    iget v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->mTotalCount:I

    iput v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$SuggestionAdapter;->mCount:I

    .line 780
    return-void
.end method
