.class public Lcom/android/calendar/timely/FindTimeGridViewPager$OnPageChangeListenerAdapter;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "FindTimeGridViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/FindTimeGridViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnPageChangeListenerAdapter"
.end annotation


# instance fields
.field mSwipeAwareOnPageChangeListener:Lcom/android/calendar/timely/FindTimeGridViewPager$SwipeAwareOnPageChangeListener;

.field final synthetic this$0:Lcom/android/calendar/timely/FindTimeGridViewPager;


# direct methods
.method public constructor <init>(Lcom/android/calendar/timely/FindTimeGridViewPager;Lcom/android/calendar/timely/FindTimeGridViewPager$SwipeAwareOnPageChangeListener;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeGridViewPager$OnPageChangeListenerAdapter;->this$0:Lcom/android/calendar/timely/FindTimeGridViewPager;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    .line 121
    iput-object p2, p0, Lcom/android/calendar/timely/FindTimeGridViewPager$OnPageChangeListenerAdapter;->mSwipeAwareOnPageChangeListener:Lcom/android/calendar/timely/FindTimeGridViewPager$SwipeAwareOnPageChangeListener;

    .line 122
    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridViewPager$OnPageChangeListenerAdapter;->mSwipeAwareOnPageChangeListener:Lcom/android/calendar/timely/FindTimeGridViewPager$SwipeAwareOnPageChangeListener;

    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridViewPager$OnPageChangeListenerAdapter;->this$0:Lcom/android/calendar/timely/FindTimeGridViewPager;

    # getter for: Lcom/android/calendar/timely/FindTimeGridViewPager;->mIsCurrentItemChangeFromSwipe:Z
    invoke-static {v1}, Lcom/android/calendar/timely/FindTimeGridViewPager;->access$000(Lcom/android/calendar/timely/FindTimeGridViewPager;)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/calendar/timely/FindTimeGridViewPager$SwipeAwareOnPageChangeListener;->onPageSelected(IZ)V

    .line 127
    return-void
.end method
