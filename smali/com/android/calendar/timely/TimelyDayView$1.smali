.class Lcom/android/calendar/timely/TimelyDayView$1;
.super Ljava/lang/Object;
.source "TimelyDayView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 363
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyDayView$1;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    iput-object p2, p0, Lcom/android/calendar/timely/TimelyDayView$1;->val$chip:Lcom/android/calendar/timely/TimelyChip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView$1;->val$chip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->invalidateIncludingFootprint()V

    .line 368
    return-void
.end method
