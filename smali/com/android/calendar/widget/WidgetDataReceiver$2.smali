.class Lcom/android/calendar/widget/WidgetDataReceiver$2;
.super Ljava/lang/Object;
.source "WidgetDataReceiver.java"

# interfaces
.implements Lcom/android/calendar/widget/WidgetDataMachine$OnProcessCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/widget/WidgetDataReceiver;->startRefreshData(Landroid/content/BroadcastReceiver$PendingResult;)V
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
    .line 108
    iput-object p1, p0, Lcom/android/calendar/widget/WidgetDataReceiver$2;->this$0:Lcom/android/calendar/widget/WidgetDataReceiver;

    iput-object p2, p0, Lcom/android/calendar/widget/WidgetDataReceiver$2;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProcessComplete(Lcom/android/calendar/widget/CalendarAppWidgetModel;)V
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p1}, Lcom/android/calendar/widget/CalendarAppWidgetModel;->getStorage()Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/calendar/widget/CalendarAppWidgetModel$RangedEventResults;->size()I

    move-result v0

    .line 114
    :goto_0
    add-int/lit8 v0, v0, 0xf

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetDataReceiver$2;->this$0:Lcom/android/calendar/widget/WidgetDataReceiver;

    # invokes: Lcom/android/calendar/widget/WidgetDataReceiver;->fillRows(Lcom/android/calendar/widget/CalendarAppWidgetModel;Ljava/util/List;)V
    invoke-static {v0, p1, v1}, Lcom/android/calendar/widget/WidgetDataReceiver;->access$300(Lcom/android/calendar/widget/WidgetDataReceiver;Lcom/android/calendar/widget/CalendarAppWidgetModel;Ljava/util/List;)V

    .line 119
    sput-object v1, Lcom/android/calendar/widget/CalendarAppWidgetService;->sRowList:Ljava/util/List;

    .line 120
    sget-object v1, Lcom/android/calendar/widget/CalendarAppWidgetService;->sRowListLock:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_0
    sget-object v0, Lcom/android/calendar/widget/CalendarAppWidgetService;->sRowListLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 122
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetDataReceiver$2;->this$0:Lcom/android/calendar/widget/WidgetDataReceiver;

    # invokes: Lcom/android/calendar/widget/WidgetDataReceiver;->notifyWidgetsChanged()V
    invoke-static {v0}, Lcom/android/calendar/widget/WidgetDataReceiver;->access$400(Lcom/android/calendar/widget/WidgetDataReceiver;)V

    .line 126
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetDataReceiver$2;->this$0:Lcom/android/calendar/widget/WidgetDataReceiver;

    # invokes: Lcom/android/calendar/widget/WidgetDataReceiver;->broadcastNextEventUpdate(Lcom/android/calendar/widget/CalendarAppWidgetModel;)V
    invoke-static {v0, p1}, Lcom/android/calendar/widget/WidgetDataReceiver;->access$500(Lcom/android/calendar/widget/WidgetDataReceiver;Lcom/android/calendar/widget/CalendarAppWidgetModel;)V

    .line 127
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetDataReceiver$2;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetDataReceiver$2;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 130
    :cond_0
    return-void

    .line 113
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
