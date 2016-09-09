.class Lcom/android/calendar/widget/WidgetDataReceiver$1;
.super Ljava/lang/Object;
.source "WidgetDataReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/widget/WidgetDataReceiver;->createRefreshDataRunnable(Landroid/content/BroadcastReceiver$PendingResult;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/widget/WidgetDataReceiver;

.field final synthetic val$result:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lcom/android/calendar/widget/WidgetDataReceiver;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/calendar/widget/WidgetDataReceiver$1;->this$0:Lcom/android/calendar/widget/WidgetDataReceiver;

    iput-object p2, p0, Lcom/android/calendar/widget/WidgetDataReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 84
    const-string v0, "CalendarWidget"

    const-string v1, "running refresh runnable when:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/calendar/widget/CalendarAppWidgetService;->sCurrentVersion:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 85
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 84
    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 86
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetDataReceiver$1;->this$0:Lcom/android/calendar/widget/WidgetDataReceiver;

    iget-object v1, p0, Lcom/android/calendar/widget/WidgetDataReceiver$1;->this$0:Lcom/android/calendar/widget/WidgetDataReceiver;

    # getter for: Lcom/android/calendar/widget/WidgetDataReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/calendar/widget/WidgetDataReceiver;->access$100(Lcom/android/calendar/widget/WidgetDataReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/calendar/widget/WidgetDataReceiver;->mTimezone:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/calendar/widget/WidgetDataReceiver;->access$002(Lcom/android/calendar/widget/WidgetDataReceiver;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetDataReceiver$1;->this$0:Lcom/android/calendar/widget/WidgetDataReceiver;

    iget-object v1, p0, Lcom/android/calendar/widget/WidgetDataReceiver$1;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    # invokes: Lcom/android/calendar/widget/WidgetDataReceiver;->startRefreshData(Landroid/content/BroadcastReceiver$PendingResult;)V
    invoke-static {v0, v1}, Lcom/android/calendar/widget/WidgetDataReceiver;->access$200(Lcom/android/calendar/widget/WidgetDataReceiver;Landroid/content/BroadcastReceiver$PendingResult;)V

    .line 88
    return-void
.end method
