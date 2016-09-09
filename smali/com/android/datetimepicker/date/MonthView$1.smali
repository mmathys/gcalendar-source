.class Lcom/android/datetimepicker/date/MonthView$1;
.super Ljava/lang/Object;
.source "MonthView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/datetimepicker/date/MonthView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/datetimepicker/date/MonthView;

.field final synthetic val$day:I


# direct methods
.method constructor <init>(Lcom/android/datetimepicker/date/MonthView;I)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/datetimepicker/date/MonthView$1;->this$0:Lcom/android/datetimepicker/date/MonthView;

    iput p2, p0, Lcom/android/datetimepicker/date/MonthView$1;->val$day:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView$1;->this$0:Lcom/android/datetimepicker/date/MonthView;

    iget v1, p0, Lcom/android/datetimepicker/date/MonthView$1;->val$day:I

    # invokes: Lcom/android/datetimepicker/date/MonthView;->onDayClick(I)V
    invoke-static {v0, v1}, Lcom/android/datetimepicker/date/MonthView;->access$000(Lcom/android/datetimepicker/date/MonthView;I)V

    .line 423
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView$1;->this$0:Lcom/android/datetimepicker/date/MonthView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/datetimepicker/date/MonthView;->mActiveLaunchDayRunnable:Ljava/lang/Runnable;

    .line 424
    return-void
.end method
