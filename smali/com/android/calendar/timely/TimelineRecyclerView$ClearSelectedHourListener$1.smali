.class Lcom/android/calendar/timely/TimelineRecyclerView$ClearSelectedHourListener$1;
.super Ljava/lang/Object;
.source "TimelineRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/TimelineRecyclerView$ClearSelectedHourListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/timely/TimelineRecyclerView$ClearSelectedHourListener;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/TimelineRecyclerView$ClearSelectedHourListener;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/calendar/timely/TimelineRecyclerView$ClearSelectedHourListener$1;->this$1:Lcom/android/calendar/timely/TimelineRecyclerView$ClearSelectedHourListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 167
    invoke-static {}, Lcom/android/calendar/timely/CreateNewEventView;->removeSelectedTime()V

    .line 168
    return-void
.end method
