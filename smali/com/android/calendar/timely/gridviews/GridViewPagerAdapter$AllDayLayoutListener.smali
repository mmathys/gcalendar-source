.class Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$AllDayLayoutListener;
.super Ljava/lang/Object;
.source "GridViewPagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllDayLayoutListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;


# direct methods
.method private constructor <init>(Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$AllDayLayoutListener;->this$0:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$1;)V
    .locals 0

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$AllDayLayoutListener;-><init>(Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;)V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3

    .prologue
    .line 447
    sub-int v0, p5, p3

    .line 448
    sub-int v1, p9, p7

    .line 451
    if-eq v0, v1, :cond_0

    .line 452
    iget-object v2, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$AllDayLayoutListener;->this$0:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;

    # getter for: Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;
    invoke-static {v2}, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->access$300(Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;)Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    move-result-object v2

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->updateViewScrollPosition(I)V

    .line 454
    :cond_0
    return-void
.end method
