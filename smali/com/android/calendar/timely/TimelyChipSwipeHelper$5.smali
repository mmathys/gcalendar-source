.class Lcom/android/calendar/timely/TimelyChipSwipeHelper$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TimelyChipSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/TimelyChipSwipeHelper;->animateDismiss(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

.field final synthetic val$isUserSwipe:Z


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/TimelyChipSwipeHelper;Z)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$5;->this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    iput-boolean p2, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$5;->val$isUserSwipe:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$5;->this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mAnimator:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->access$302(Lcom/android/calendar/timely/TimelyChipSwipeHelper;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 433
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$5;->this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    iget-boolean v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$5;->val$isUserSwipe:Z

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->onSwipeAnimationEnd(Z)V

    .line 434
    return-void
.end method
