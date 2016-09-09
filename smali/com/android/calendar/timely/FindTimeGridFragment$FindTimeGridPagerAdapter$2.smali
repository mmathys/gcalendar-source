.class Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter$2;
.super Ljava/lang/Object;
.source "FindTimeGridFragment.java"

# interfaces
.implements Lcom/android/calendar/timely/FindTimeGridSlabPage$OnSlabPageUpdatedListener;


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

.field final synthetic val$container:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 686
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter$2;->this$1:Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;

    iput-object p2, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter$2;->val$container:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlabBarHeightUpdated(Lcom/android/calendar/timely/FindTimeGridSlabPage;)V
    .locals 2

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter$2;->val$container:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/calendar/timely/FindTimeGridViewPager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeGridViewPager;->getCurrentItem()I

    move-result v1

    .line 690
    invoke-virtual {p1}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter$2;->this$1:Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;

    iget-object v0, v0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment;

    # invokes: Lcom/android/calendar/timely/FindTimeGridFragment;->updateMainContentMargin(Lcom/android/calendar/timely/FindTimeGridSlabPage;)V
    invoke-static {v0, p1}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$800(Lcom/android/calendar/timely/FindTimeGridFragment;Lcom/android/calendar/timely/FindTimeGridSlabPage;)V

    .line 695
    :cond_0
    return-void
.end method
