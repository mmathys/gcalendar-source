.class Lcom/android/calendar/timely/TimelyChip$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TimelyChip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/TimelyChip;->updateInteractionListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/TimelyChip;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/TimelyChip;)V
    .locals 0

    .prologue
    .line 723
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyChip$1;->this$0:Lcom/android/calendar/timely/TimelyChip;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 732
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChip$1;->this$0:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/TimelyChip;->singleTapUp(FF)V

    .line 727
    const/4 v0, 0x1

    return v0
.end method
