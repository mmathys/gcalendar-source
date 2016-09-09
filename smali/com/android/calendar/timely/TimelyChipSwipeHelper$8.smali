.class Lcom/android/calendar/timely/TimelyChipSwipeHelper$8;
.super Ljava/lang/Object;
.source "TimelyChipSwipeHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/TimelyChipSwipeHelper;->getTranslationXSwipeAnimator(FJ)Landroid/animation/ObjectAnimator;
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
    .line 501
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$8;->this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$8;->this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    # getter for: Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;
    invoke-static {v0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->access$500(Lcom/android/calendar/timely/TimelyChipSwipeHelper;)Lcom/android/calendar/timely/TimelyChip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->invalidateIncludingFootprint()V

    .line 505
    return-void
.end method
