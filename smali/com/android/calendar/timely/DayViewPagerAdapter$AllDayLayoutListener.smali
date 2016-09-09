.class Lcom/android/calendar/timely/DayViewPagerAdapter$AllDayLayoutListener;
.super Ljava/lang/Object;
.source "DayViewPagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/DayViewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllDayLayoutListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/DayViewPagerAdapter;


# direct methods
.method private constructor <init>(Lcom/android/calendar/timely/DayViewPagerAdapter;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/calendar/timely/DayViewPagerAdapter$AllDayLayoutListener;->this$0:Lcom/android/calendar/timely/DayViewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/timely/DayViewPagerAdapter;Lcom/android/calendar/timely/DayViewPagerAdapter$1;)V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/DayViewPagerAdapter$AllDayLayoutListener;-><init>(Lcom/android/calendar/timely/DayViewPagerAdapter;)V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3

    .prologue
    .line 416
    sub-int v0, p5, p3

    .line 417
    sub-int v1, p9, p7

    .line 420
    if-eq v0, v1, :cond_0

    .line 421
    iget-object v2, p0, Lcom/android/calendar/timely/DayViewPagerAdapter$AllDayLayoutListener;->this$0:Lcom/android/calendar/timely/DayViewPagerAdapter;

    # getter for: Lcom/android/calendar/timely/DayViewPagerAdapter;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;
    invoke-static {v2}, Lcom/android/calendar/timely/DayViewPagerAdapter;->access$100(Lcom/android/calendar/timely/DayViewPagerAdapter;)Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    move-result-object v2

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->updateViewScrollPosition(I)V

    .line 423
    :cond_0
    return-void
.end method
