.class Lcom/android/calendar/timely/MonthViewFrame$1;
.super Ljava/lang/Object;
.source "MonthViewFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/MonthViewFrame;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/MonthViewFrame;

.field final synthetic val$day:I


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/MonthViewFrame;I)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/calendar/timely/MonthViewFrame$1;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    iput p2, p0, Lcom/android/calendar/timely/MonthViewFrame$1;->val$day:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame$1;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    iget v1, p0, Lcom/android/calendar/timely/MonthViewFrame$1;->val$day:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/calendar/timely/MonthViewFrame$1;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    # getter for: Lcom/android/calendar/timely/MonthViewFrame;->mFirstJulianDay:I
    invoke-static {v2}, Lcom/android/calendar/timely/MonthViewFrame;->access$000(Lcom/android/calendar/timely/MonthViewFrame;)I

    move-result v2

    add-int/2addr v1, v2

    # invokes: Lcom/android/calendar/timely/MonthViewFrame;->onNeighborDayClick(I)V
    invoke-static {v0, v1}, Lcom/android/calendar/timely/MonthViewFrame;->access$100(Lcom/android/calendar/timely/MonthViewFrame;I)V

    .line 332
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame$1;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/timely/MonthViewFrame;->mActiveLaunchDayRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/calendar/timely/MonthViewFrame;->access$202(Lcom/android/calendar/timely/MonthViewFrame;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 333
    return-void
.end method
