.class Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$1;
.super Ljava/lang/Object;
.source "FindTimeGridDayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->autoScroll(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

.field final synthetic val$animate:Z


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;Z)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$1;->this$0:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    iput-boolean p2, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$1;->val$animate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 245
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$1;->this$0:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    # invokes: Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->getChipCenteredY()I
    invoke-static {v0}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->access$600(Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;)I

    move-result v1

    .line 247
    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$1;->val$animate:Z

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$1;->this$0:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    .line 249
    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v2, "scrollY"

    const/4 v3, 0x1

    new-array v3, v3, [I

    aput v1, v3, v4

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    .line 250
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 251
    # getter for: Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->AUTO_SCROLL_INTERPOLATOR:Landroid/view/animation/Interpolator;
    invoke-static {}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->access$700()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 252
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView$1;->this$0:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/PagedScrollView;

    invoke-virtual {v0, v4, v1}, Lcom/android/calendar/timely/PagedScrollView;->scrollTo(II)V

    goto :goto_0
.end method
