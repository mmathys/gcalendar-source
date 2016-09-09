.class Lcom/android/calendar/timely/FindTimeGridFragment$2;
.super Ljava/lang/Object;
.source "FindTimeGridFragment.java"

# interfaces
.implements Lcom/android/calendar/timely/FindTimeGridViewPager$SwipeAwareOnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/FindTimeGridFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/FindTimeGridFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/FindTimeGridFragment;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$2;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(IZ)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 190
    if-nez p2, :cond_0

    .line 216
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$2;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    # invokes: Lcom/android/calendar/timely/FindTimeGridFragment;->rememberSlabSwiped()V
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$200(Lcom/android/calendar/timely/FindTimeGridFragment;)V

    .line 194
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$2;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    # setter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mSuggestionIndex:I
    invoke-static {v0, p1}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$302(Lcom/android/calendar/timely/FindTimeGridFragment;I)I

    .line 195
    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeGridFragment$2;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$2;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mGridData:Lcom/android/calendar/timely/FindTimeGridData;
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$500(Lcom/android/calendar/timely/FindTimeGridFragment;)Lcom/android/calendar/timely/FindTimeGridData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeGridData;->getSuggestions()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget-object v3, p0, Lcom/android/calendar/timely/FindTimeGridFragment$2;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mSuggestionIndex:I
    invoke-static {v3}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$300(Lcom/android/calendar/timely/FindTimeGridFragment;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineSuggestion;

    # setter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mCurrentSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;
    invoke-static {v2, v0}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$402(Lcom/android/calendar/timely/FindTimeGridFragment;Lcom/android/calendar/timely/TimelineSuggestion;)Lcom/android/calendar/timely/TimelineSuggestion;

    .line 196
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$2;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    # setter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mIsManualTimeSlot:Z
    invoke-static {v0, v1}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$602(Lcom/android/calendar/timely/FindTimeGridFragment;Z)Z

    move v2, v1

    .line 197
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$2;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mBottomPager:Lcom/android/calendar/timely/FindTimeGridViewPager;
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$700(Lcom/android/calendar/timely/FindTimeGridFragment;)Lcom/android/calendar/timely/FindTimeGridViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeGridViewPager;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$2;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    .line 199
    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mBottomPager:Lcom/android/calendar/timely/FindTimeGridViewPager;
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$700(Lcom/android/calendar/timely/FindTimeGridFragment;)Lcom/android/calendar/timely/FindTimeGridViewPager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/FindTimeGridViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeGridSlabPage;

    .line 200
    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 201
    if-ne v3, p1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$2;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    # invokes: Lcom/android/calendar/timely/FindTimeGridFragment;->updateMainContentMargin(Lcom/android/calendar/timely/FindTimeGridSlabPage;)V
    invoke-static {v1, v0}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$800(Lcom/android/calendar/timely/FindTimeGridFragment;Lcom/android/calendar/timely/FindTimeGridSlabPage;)V

    .line 204
    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->sendFocusAccessibilityEventIfEnabled()V

    .line 197
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$2;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    .line 207
    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$1000(Lcom/android/calendar/timely/FindTimeGridFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/timely/FindTimeUtil;->getInstance(Landroid/content/Context;)Lcom/android/calendar/timely/FindTimeUtil;

    move-result-object v4

    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$2;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    .line 208
    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mGridData:Lcom/android/calendar/timely/FindTimeGridData;
    invoke-static {v1}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$500(Lcom/android/calendar/timely/FindTimeGridFragment;)Lcom/android/calendar/timely/FindTimeGridData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/timely/FindTimeGridData;->getSuggestions()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/TimelineSuggestion;

    iget-object v5, p0, Lcom/android/calendar/timely/FindTimeGridFragment$2;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mAccountName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$900(Lcom/android/calendar/timely/FindTimeGridFragment;)Ljava/lang/String;

    move-result-object v5

    .line 207
    invoke-virtual {v4, v1, v5}, Lcom/android/calendar/timely/FindTimeUtil;->getDescription(Lcom/android/calendar/timely/TimelineSuggestion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 210
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$2;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    .line 211
    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mGridData:Lcom/android/calendar/timely/FindTimeGridData;
    invoke-static {v1}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$500(Lcom/android/calendar/timely/FindTimeGridFragment;)Lcom/android/calendar/timely/FindTimeGridData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/timely/FindTimeGridData;->getSuggestions()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/TimelineSuggestion;

    iget-object v5, p0, Lcom/android/calendar/timely/FindTimeGridFragment$2;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    .line 212
    # invokes: Lcom/android/calendar/timely/FindTimeGridFragment;->isLastSuggestion(I)Z
    invoke-static {v5, v3}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$1100(Lcom/android/calendar/timely/FindTimeGridFragment;I)Z

    move-result v3

    .line 210
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->setTimelineSuggestion(Lcom/android/calendar/timely/TimelineSuggestion;Ljava/lang/String;Z)V

    goto :goto_2

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$2;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    const/4 v1, 0x1

    # invokes: Lcom/android/calendar/timely/FindTimeGridFragment;->updateGrid(Z)V
    invoke-static {v0, v1}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$1200(Lcom/android/calendar/timely/FindTimeGridFragment;Z)V

    goto/16 :goto_0
.end method
