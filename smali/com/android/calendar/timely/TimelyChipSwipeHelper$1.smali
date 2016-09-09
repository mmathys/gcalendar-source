.class Lcom/android/calendar/timely/TimelyChipSwipeHelper$1;
.super Ljava/lang/Object;
.source "TimelyChipSwipeHelper.java"

# interfaces
.implements Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/TimelyChipSwipeHelper;->onSwipeAnimationEnd(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field eventDeleted:Z

.field final synthetic this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

.field final synthetic val$isUserSwipe:Z


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/TimelyChipSwipeHelper;Z)V
    .locals 1

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$1;->this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    iput-boolean p2, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$1;->val$isUserSwipe:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$1;->eventDeleted:Z

    return-void
.end method


# virtual methods
.method public beforeDeleteInitiated()V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method public onDeleteInitiated(I)V
    .locals 5

    .prologue
    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$1;->eventDeleted:Z

    .line 297
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$1;->val$isUserSwipe:Z

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$1;->this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    # getter for: Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->access$000(Lcom/android/calendar/timely/TimelyChipSwipeHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$1;->this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    .line 299
    # getter for: Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->access$000(Lcom/android/calendar/timely/TimelyChipSwipeHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$1;->this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    .line 300
    # getter for: Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->access$000(Lcom/android/calendar/timely/TimelyChipSwipeHelper;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->analytics_category_event:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$1;->this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    .line 302
    # getter for: Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->access$000(Lcom/android/calendar/timely/TimelyChipSwipeHelper;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->analytics_action_swipe_delete:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 299
    invoke-interface {v0, v1, v2, v3}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$1;->this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    # invokes: Lcom/android/calendar/timely/TimelyChipSwipeHelper;->animateCollapse()V
    invoke-static {v0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->access$100(Lcom/android/calendar/timely/TimelyChipSwipeHelper;)V

    .line 306
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$1;->eventDeleted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$1;->this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    # getter for: Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mCleared:Z
    invoke-static {v0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->access$200(Lcom/android/calendar/timely/TimelyChipSwipeHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$1;->this$0:Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$1;->val$isUserSwipe:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->animateRestore(FZ)V

    .line 313
    :cond_0
    return-void
.end method
