.class Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter$1;
.super Ljava/lang/Object;
.source "FindTimeGridFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;)V
    .locals 0

    .prologue
    .line 677
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter$1;->this$1:Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter$1;->this$1:Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;

    iget-object v0, v0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mIsManualTimeSlot:Z
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$600(Lcom/android/calendar/timely/FindTimeGridFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter$1;->this$1:Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;

    iget-object v0, v0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mSuggestionIndex:I
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$300(Lcom/android/calendar/timely/FindTimeGridFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter$1;->this$1:Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;

    iget-object v1, v1, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mBestTimesCount:I
    invoke-static {v1}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$1700(Lcom/android/calendar/timely/FindTimeGridFragment;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 681
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter$1;->this$1:Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;

    iget-object v1, v1, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mListener:Lcom/android/calendar/timely/FindTimeGridUi$Listener;
    invoke-static {v1}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$100(Lcom/android/calendar/timely/FindTimeGridFragment;)Lcom/android/calendar/timely/FindTimeGridUi$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter$1;->this$1:Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;

    iget-object v2, v2, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    .line 682
    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mCurrentSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;
    invoke-static {v2}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$400(Lcom/android/calendar/timely/FindTimeGridFragment;)Lcom/android/calendar/timely/TimelineSuggestion;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter$1;->this$1:Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;

    iget-object v3, v3, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment;->mIsManualTimeSlot:Z
    invoke-static {v3}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$600(Lcom/android/calendar/timely/FindTimeGridFragment;)Z

    move-result v3

    .line 681
    invoke-interface {v1, v2, v0, v3}, Lcom/android/calendar/timely/FindTimeGridUi$Listener;->onGridTimeSlotSelected(Lcom/android/calendar/timely/TimelineSuggestion;ZZ)V

    .line 683
    return-void

    .line 680
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
