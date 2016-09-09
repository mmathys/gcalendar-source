.class Lcom/android/calendar/timely/TimelyDayView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TimelyDayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/TimelyDayView;->addChipFootprintFadeOutAnimator(Ljava/util/ArrayList;Lcom/android/calendar/timely/TimelyChip;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/TimelyDayView;

.field final synthetic val$chip:Lcom/android/calendar/timely/TimelyChip;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/TimelyDayView;Lcom/android/calendar/timely/TimelyChip;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyDayView$2;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    iput-object p2, p0, Lcom/android/calendar/timely/TimelyDayView$2;->val$chip:Lcom/android/calendar/timely/TimelyChip;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 373
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 374
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView$2;->val$chip:Lcom/android/calendar/timely/TimelyChip;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyChip;->setVisibility(I)V

    .line 375
    return-void
.end method
