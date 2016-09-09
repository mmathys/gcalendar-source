.class Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;
.super Ljava/lang/Object;
.source "FindTimeGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/FindTimeGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PeekPagerHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFakeDragged:F

.field private mPager:Lcom/android/calendar/timely/FindTimeGridViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/timely/FindTimeGridViewPager;)V
    .locals 0

    .prologue
    .line 768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 769
    iput-object p2, p0, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;->mPager:Lcom/android/calendar/timely/FindTimeGridViewPager;

    .line 770
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;->mContext:Landroid/content/Context;

    .line 771
    return-void
.end method

.method static synthetic access$1800(Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;)V
    .locals 0

    .prologue
    .line 763
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;->tryPeek()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;)Lcom/android/calendar/timely/FindTimeGridViewPager;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;->mPager:Lcom/android/calendar/timely/FindTimeGridViewPager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;)F
    .locals 1

    .prologue
    .line 763
    iget v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;->mFakeDragged:F

    return v0
.end method

.method static synthetic access$2102(Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;F)F
    .locals 0

    .prologue
    .line 763
    iput p1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;->mFakeDragged:F

    return p1
.end method

.method private tryPeek()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 778
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/calendar/timely/FindTimeGridFragment;->wasSlabSwiped(Landroid/content/Context;)Z
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridFragment;->access$1900(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;->mPager:Lcom/android/calendar/timely/FindTimeGridViewPager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeGridViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 782
    if-lt v0, v4, :cond_0

    .line 786
    iget-object v3, p0, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;->mPager:Lcom/android/calendar/timely/FindTimeGridViewPager;

    invoke-virtual {v3}, Lcom/android/calendar/timely/FindTimeGridViewPager;->getCurrentItem()I

    move-result v3

    add-int/lit8 v0, v0, -0x1

    if-ne v3, v0, :cond_2

    move v0, v1

    .line 787
    :goto_1
    iget-object v3, p0, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    mul-int/2addr v0, v2

    .line 788
    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;->mContext:Landroid/content/Context;

    .line 789
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$dimen;->find_time_grid_slab_peek_offset:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 790
    new-array v3, v4, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    int-to-float v0, v0

    mul-float/2addr v0, v2

    aput v0, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 792
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 793
    new-instance v1, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 794
    new-instance v1, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper$1;-><init>(Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 806
    new-instance v1, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper$2;-><init>(Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 812
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 786
    goto :goto_1

    :cond_3
    move v2, v1

    .line 787
    goto :goto_2
.end method
