.class Lcom/android/calendar/timely/TimelyDayViewPager$1;
.super Ljava/lang/Object;
.source "TimelyDayViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/TimelyDayViewPager;->focusNewPositionForA11y(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/TimelyDayViewPager;

.field final synthetic val$headerView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/TimelyDayViewPager;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyDayViewPager$1;->this$0:Lcom/android/calendar/timely/TimelyDayViewPager;

    iput-object p2, p0, Lcom/android/calendar/timely/TimelyDayViewPager$1;->val$headerView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayViewPager$1;->val$headerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 178
    return-void
.end method
