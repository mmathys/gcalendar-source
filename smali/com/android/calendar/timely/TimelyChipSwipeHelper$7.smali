.class Lcom/android/calendar/timely/TimelyChipSwipeHelper$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TimelyChipSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/TimelyChipSwipeHelper;->animateRestore(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/TimelyChipSwipeHelper;)V
    .locals 0

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$7;->this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$7;->this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mAnimator:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->access$302(Lcom/android/calendar/timely/TimelyChipSwipeHelper;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 484
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$7;->this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    # getter for: Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;
    invoke-static {v0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->access$500(Lcom/android/calendar/timely/TimelyChipSwipeHelper;)Lcom/android/calendar/timely/TimelyChip;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyChip;->setEnabled(Z)V

    .line 486
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$7;->this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    # getter for: Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;
    invoke-static {v0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->access$400(Lcom/android/calendar/timely/TimelyChipSwipeHelper;)Lcom/android/calendar/timely/OnTimelineGestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$7;->this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    # getter for: Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;
    invoke-static {v0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->access$400(Lcom/android/calendar/timely/TimelyChipSwipeHelper;)Lcom/android/calendar/timely/OnTimelineGestureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$7;->this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    # getter for: Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;
    invoke-static {v1}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->access$500(Lcom/android/calendar/timely/TimelyChipSwipeHelper;)Lcom/android/calendar/timely/TimelyChip;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/calendar/timely/OnTimelineGestureListener;->onSwipeGestureEnd(Lcom/android/calendar/timely/TimelyChip;)V

    .line 489
    :cond_0
    return-void
.end method
