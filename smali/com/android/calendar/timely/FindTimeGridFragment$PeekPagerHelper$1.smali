.class Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper$1;
.super Ljava/lang/Object;
.source "FindTimeGridFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;->tryPeek()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;)V
    .locals 0

    .prologue
    .line 794
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper$1;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper$1;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;

    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;->mPager:Lcom/android/calendar/timely/FindTimeGridViewPager;
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;->access$2000(Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;)Lcom/android/calendar/timely/FindTimeGridViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeGridViewPager;->isFakeDragging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper$1;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;->mFakeDragged:F
    invoke-static {v0, v1}, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;->access$2102(Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;F)F

    .line 799
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper$1;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;

    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;->mPager:Lcom/android/calendar/timely/FindTimeGridViewPager;
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;->access$2000(Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;)Lcom/android/calendar/timely/FindTimeGridViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeGridViewPager;->beginFakeDrag()Z

    .line 801
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper$1;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;

    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;->mFakeDragged:F
    invoke-static {v1}, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;->access$2100(Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;)F

    move-result v1

    sub-float/2addr v0, v1

    .line 802
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper$1;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;

    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;->mPager:Lcom/android/calendar/timely/FindTimeGridViewPager;
    invoke-static {v1}, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;->access$2000(Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;)Lcom/android/calendar/timely/FindTimeGridViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/FindTimeGridViewPager;->fakeDragBy(F)V

    .line 803
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper$1;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;

    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper$1;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;

    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;->mFakeDragged:F
    invoke-static {v2}, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;->access$2100(Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;)F

    move-result v2

    add-float/2addr v0, v2

    # setter for: Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;->mFakeDragged:F
    invoke-static {v1, v0}, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;->access$2102(Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;F)F

    .line 804
    return-void
.end method
