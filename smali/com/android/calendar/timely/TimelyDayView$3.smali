.class Lcom/android/calendar/timely/TimelyDayView$3;
.super Ljava/lang/Object;
.source "TimelyDayView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/TimelyDayView;->addCollapseToEmptyStateAnimators(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mLastValue:I

.field final synthetic this$0:Lcom/android/calendar/timely/TimelyDayView;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/TimelyDayView;)V
    .locals 1

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyDayView$3;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView$3;->mLastValue:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 420
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 421
    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView$3;->mLastValue:I

    sub-int v1, v0, v1

    .line 422
    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView$3;->mLastValue:I

    .line 424
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView$3;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyDayView$3;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    # getter for: Lcom/android/calendar/timely/TimelyDayView;->mNowLineYAgenda:I
    invoke-static {v2}, Lcom/android/calendar/timely/TimelyDayView;->access$000(Lcom/android/calendar/timely/TimelyDayView;)I

    move-result v2

    add-int/2addr v1, v2

    # setter for: Lcom/android/calendar/timely/TimelyDayView;->mNowLineYAgenda:I
    invoke-static {v0, v1}, Lcom/android/calendar/timely/TimelyDayView;->access$002(Lcom/android/calendar/timely/TimelyDayView;I)I

    .line 425
    return-void
.end method
