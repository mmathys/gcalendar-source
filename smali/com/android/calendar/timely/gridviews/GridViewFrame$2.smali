.class Lcom/android/calendar/timely/gridviews/GridViewFrame$2;
.super Ljava/lang/Object;
.source "GridViewFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/gridviews/GridViewFrame;->scrollTo(Lcom/android/calendar/time/Time;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/gridviews/GridViewFrame;

.field final synthetic val$scrollToTime:Lcom/android/calendar/time/Time;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/gridviews/GridViewFrame;Lcom/android/calendar/time/Time;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame$2;->this$0:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    iput-object p2, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame$2;->val$scrollToTime:Lcom/android/calendar/time/Time;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame$2;->this$0:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame$2;->val$scrollToTime:Lcom/android/calendar/time/Time;

    # invokes: Lcom/android/calendar/timely/gridviews/GridViewFrame;->getTimeLinePosition(Lcom/android/calendar/time/Time;)F
    invoke-static {v0, v1}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->access$200(Lcom/android/calendar/timely/gridviews/GridViewFrame;Lcom/android/calendar/time/Time;)F

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame$2;->this$0:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    invoke-virtual {v1}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getHourCellHeight()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v1, v0

    .line 296
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame$2;->this$0:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/PagedScrollView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/calendar/timely/PagedScrollView;->scrollTo(II)V

    .line 297
    return-void
.end method
