.class Lcom/android/calendar/timely/FindTimeGridFragment$PeekHandler;
.super Landroid/os/Handler;
.source "FindTimeGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/FindTimeGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PeekHandler"
.end annotation


# instance fields
.field private final mWeakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeakPager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/calendar/timely/FindTimeGridViewPager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/timely/FindTimeGridViewPager;)V
    .locals 1

    .prologue
    .line 734
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 735
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$PeekHandler;->mWeakContext:Ljava/lang/ref/WeakReference;

    .line 736
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$PeekHandler;->mWeakPager:Ljava/lang/ref/WeakReference;

    .line 737
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment$PeekHandler;->mWeakPager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeGridViewPager;

    .line 742
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment$PeekHandler;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 743
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 746
    :cond_1
    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeGridViewPager;->isDispatchingOnPager()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 748
    const/4 v0, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/calendar/timely/FindTimeGridFragment$PeekHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 750
    :cond_2
    new-instance v2, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;

    invoke-direct {v2, v1, v0}, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/FindTimeGridViewPager;)V

    # invokes: Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;->tryPeek()V
    invoke-static {v2}, Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;->access$1800(Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;)V

    goto :goto_0
.end method
