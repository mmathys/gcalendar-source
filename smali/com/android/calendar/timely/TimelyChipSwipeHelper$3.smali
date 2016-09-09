.class Lcom/android/calendar/timely/TimelyChipSwipeHelper$3;
.super Ljava/lang/Object;
.source "TimelyChipSwipeHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/TimelyChipSwipeHelper;->showConfirmationDialog(Lcom/android/calendar/task/TimelineTaskBundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

.field final synthetic val$isUserSwipe:Z

.field final synthetic val$item:Lcom/android/calendar/task/TimelineTaskBundle;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/TimelyChipSwipeHelper;Lcom/android/calendar/task/TimelineTaskBundle;Z)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$3;->this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    iput-object p2, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$3;->val$item:Lcom/android/calendar/task/TimelineTaskBundle;

    iput-boolean p3, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$3;->val$isUserSwipe:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 340
    new-instance v0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$UpdateAsyncTaskDone;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$3;->this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    # getter for: Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->access$000(Lcom/android/calendar/timely/TimelyChipSwipeHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$3;->val$item:Lcom/android/calendar/task/TimelineTaskBundle;

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/timely/TimelyChipSwipeHelper$UpdateAsyncTaskDone;-><init>(Landroid/content/Context;Lcom/android/calendar/task/TimelineTaskType;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyChipSwipeHelper$UpdateAsyncTaskDone;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 341
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$3;->val$isUserSwipe:Z

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$3;->this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    # getter for: Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->access$000(Lcom/android/calendar/timely/TimelyChipSwipeHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$3;->this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    .line 343
    # getter for: Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->access$000(Lcom/android/calendar/timely/TimelyChipSwipeHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$3;->this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    .line 344
    # getter for: Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->access$000(Lcom/android/calendar/timely/TimelyChipSwipeHelper;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->analytics_category_event:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$3;->this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    .line 345
    # getter for: Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->access$000(Lcom/android/calendar/timely/TimelyChipSwipeHelper;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->analytics_action_swipe_all_done:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 343
    invoke-interface {v0, v1, v2, v3}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$3;->this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    # invokes: Lcom/android/calendar/timely/TimelyChipSwipeHelper;->animateCollapse()V
    invoke-static {v0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->access$100(Lcom/android/calendar/timely/TimelyChipSwipeHelper;)V

    .line 349
    return-void
.end method
