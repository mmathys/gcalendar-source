.class Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FindTimeGridFragment.java"


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
    .line 806
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper$2;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper$2;->this$0:Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;

    # getter for: Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;->mPager:Lcom/android/calendar/timely/FindTimeGridViewPager;
    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;->access$2000(Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;)Lcom/android/calendar/timely/FindTimeGridViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeGridViewPager;->endFakeDrag()V

    .line 810
    return-void
.end method
