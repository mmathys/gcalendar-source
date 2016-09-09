.class Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$1;
.super Ljava/lang/Object;
.source "GridViewPagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$1;->this$0:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$1$1;-><init>(Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    const/4 v0, 0x0

    return v0
.end method
