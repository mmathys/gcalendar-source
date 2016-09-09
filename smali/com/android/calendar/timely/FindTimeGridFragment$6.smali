.class Lcom/android/calendar/timely/FindTimeGridFragment$6;
.super Ljava/lang/Object;
.source "FindTimeGridFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/FindTimeGridFragment;->updateGridView()V
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
    .line 344
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$6;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$6;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    .line 348
    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mBottomPager:Lcom/android/calendar/timely/FindTimeGridViewPager;
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$700(Lcom/android/calendar/timely/FindTimeGridFragment;)Lcom/android/calendar/timely/FindTimeGridViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$6;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mBottomPager:Lcom/android/calendar/timely/FindTimeGridViewPager;
    invoke-static {v1}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$700(Lcom/android/calendar/timely/FindTimeGridFragment;)Lcom/android/calendar/timely/FindTimeGridViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/timely/FindTimeGridViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/FindTimeGridViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeGridSlabPage;

    .line 349
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$6;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$1000(Lcom/android/calendar/timely/FindTimeGridFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/timely/FindTimeUtil;->getInstance(Landroid/content/Context;)Lcom/android/calendar/timely/FindTimeUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeGridFragment$6;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    .line 350
    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mCurrentSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;
    invoke-static {v2}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$400(Lcom/android/calendar/timely/FindTimeGridFragment;)Lcom/android/calendar/timely/TimelineSuggestion;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/timely/FindTimeGridFragment$6;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mAccountName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$900(Lcom/android/calendar/timely/FindTimeGridFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/calendar/timely/FindTimeUtil;->getDescription(Lcom/android/calendar/timely/TimelineSuggestion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 351
    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeGridFragment$6;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    .line 352
    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mCurrentSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;
    invoke-static {v2}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$400(Lcom/android/calendar/timely/FindTimeGridFragment;)Lcom/android/calendar/timely/TimelineSuggestion;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/timely/FindTimeGridFragment$6;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    iget-object v4, p0, Lcom/android/calendar/timely/FindTimeGridFragment$6;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    .line 353
    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mSuggestionIndex:I
    invoke-static {v4}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$300(Lcom/android/calendar/timely/FindTimeGridFragment;)I

    move-result v4

    # invokes: Lcom/android/calendar/timely/FindTimeGridFragment;->isLastSuggestion(I)Z
    invoke-static {v3, v4}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$1100(Lcom/android/calendar/timely/FindTimeGridFragment;I)Z

    move-result v3

    .line 351
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->setTimelineSuggestion(Lcom/android/calendar/timely/TimelineSuggestion;Ljava/lang/String;Z)V

    .line 354
    return-void
.end method
