.class Lcom/android/calendar/timely/TimelyDayView$5;
.super Ljava/lang/Object;
.source "TimelyDayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/TimelyDayView;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/ChipRecycler;Lcom/android/calendar/timely/TimelineInfo;Lcom/android/calendar/timely/OnTimelineModeChangedListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/TimelyDayView;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/TimelyDayView;)V
    .locals 0

    .prologue
    .line 661
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyDayView$5;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 667
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 668
    :goto_0
    instance-of v1, v0, Lcom/android/calendar/OnLaunchEdit;

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    .line 670
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 672
    :cond_0
    instance-of v1, v0, Lcom/android/calendar/OnLaunchEdit;

    if-eqz v1, :cond_1

    .line 673
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView$5;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyDayView;->getTime()Lcom/android/calendar/time/Time;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/calendar/event/EditHelper;->constructDefaultStartTime(Lcom/android/calendar/time/Time;Landroid/content/Context;)J

    move-result-wide v2

    .line 674
    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Lcom/android/calendar/Utils;->getExtraEventBundle(JLjava/lang/Long;Z)Landroid/os/Bundle;

    move-result-object v1

    .line 675
    const-string v2, "createEditSource"

    const-string v3, "grid"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    check-cast v0, Lcom/android/calendar/OnLaunchEdit;

    invoke-interface {v0, v1}, Lcom/android/calendar/OnLaunchEdit;->onLaunchInsertOrEdit(Landroid/os/Bundle;)V

    .line 678
    :cond_1
    return-void
.end method
