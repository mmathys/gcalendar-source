.class Lcom/android/calendar/timely/CreateNewEventView$CreateNewEventViewGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CreateNewEventView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/CreateNewEventView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateNewEventViewGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/CreateNewEventView;


# direct methods
.method private constructor <init>(Lcom/android/calendar/timely/CreateNewEventView;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/calendar/timely/CreateNewEventView$CreateNewEventViewGestureListener;->this$0:Lcom/android/calendar/timely/CreateNewEventView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/timely/CreateNewEventView;Lcom/android/calendar/timely/CreateNewEventView$1;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/CreateNewEventView$CreateNewEventViewGestureListener;-><init>(Lcom/android/calendar/timely/CreateNewEventView;)V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/calendar/timely/CreateNewEventView$CreateNewEventViewGestureListener;->this$0:Lcom/android/calendar/timely/CreateNewEventView;

    # getter for: Lcom/android/calendar/timely/CreateNewEventView;->mStartTime:J
    invoke-static {v0}, Lcom/android/calendar/timely/CreateNewEventView;->access$100(Lcom/android/calendar/timely/CreateNewEventView;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/calendar/timely/CreateNewEventView$CreateNewEventViewGestureListener;->this$0:Lcom/android/calendar/timely/CreateNewEventView;

    .line 131
    # getter for: Lcom/android/calendar/timely/CreateNewEventView;->mDefaultDuration:J
    invoke-static {v0}, Lcom/android/calendar/timely/CreateNewEventView;->access$200(Lcom/android/calendar/timely/CreateNewEventView;)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 132
    :goto_0
    const/4 v1, 0x0

    .line 130
    invoke-static {v2, v3, v0, v1}, Lcom/android/calendar/Utils;->getExtraEventBundle(JLjava/lang/Long;Z)Landroid/os/Bundle;

    move-result-object v1

    .line 133
    const-string v0, "createEditSource"

    const-string v2, "grid"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/android/calendar/timely/CreateNewEventView$CreateNewEventViewGestureListener;->this$0:Lcom/android/calendar/timely/CreateNewEventView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/CreateNewEventView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 135
    instance-of v2, v0, Lcom/android/calendar/OnLaunchEdit;

    if-eqz v2, :cond_0

    .line 136
    check-cast v0, Lcom/android/calendar/OnLaunchEdit;

    invoke-interface {v0, v1}, Lcom/android/calendar/OnLaunchEdit;->onLaunchInsertOrEdit(Landroid/os/Bundle;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/CreateNewEventView$CreateNewEventViewGestureListener;->this$0:Lcom/android/calendar/timely/CreateNewEventView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/CreateNewEventView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_1

    .line 140
    new-instance v1, Lcom/android/calendar/timely/CreateNewEventView$CreateNewEventViewGestureListener$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/CreateNewEventView$CreateNewEventViewGestureListener$1;-><init>(Lcom/android/calendar/timely/CreateNewEventView$CreateNewEventViewGestureListener;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/CreateNewEventView$CreateNewEventViewGestureListener;->this$0:Lcom/android/calendar/timely/CreateNewEventView;

    # getter for: Lcom/android/calendar/timely/CreateNewEventView;->mStartTime:J
    invoke-static {v0}, Lcom/android/calendar/timely/CreateNewEventView;->access$100(Lcom/android/calendar/timely/CreateNewEventView;)J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/calendar/timely/CreateNewEventView$CreateNewEventViewGestureListener;->this$0:Lcom/android/calendar/timely/CreateNewEventView;

    # getter for: Lcom/android/calendar/timely/CreateNewEventView;->mDefaultDuration:J
    invoke-static {v4}, Lcom/android/calendar/timely/CreateNewEventView;->access$200(Lcom/android/calendar/timely/CreateNewEventView;)J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method
