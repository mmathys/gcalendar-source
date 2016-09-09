.class Lcom/android/calendar/event/edit/segment/UsageHintViewController$3;
.super Ljava/lang/Object;
.source "UsageHintViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/segment/UsageHintViewController;->doSetUsageHints(Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

.field final synthetic val$hintsList:Landroid/widget/LinearLayout;

.field final synthetic val$viewsToRemove:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/UsageHintViewController;Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$3;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    iput-object p2, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$3;->val$viewsToRemove:Ljava/util/List;

    iput-object p3, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$3;->val$hintsList:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 475
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$3;->val$viewsToRemove:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 476
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$3;->val$hintsList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$3;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    # setter for: Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mAnimationInProgress:Z
    invoke-static {v0, v3}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->access$402(Lcom/android/calendar/event/edit/segment/UsageHintViewController;Z)Z

    .line 481
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$3;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    # getter for: Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mApplyQueuedHint:Z
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->access$500(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$3;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    # getter for: Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mQueuedHint:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->access$600(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

    move-result-object v0

    .line 483
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$3;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    const/4 v2, 0x0

    # setter for: Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mQueuedHint:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;
    invoke-static {v1, v2}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->access$602(Lcom/android/calendar/event/edit/segment/UsageHintViewController;Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;)Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

    .line 484
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$3;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    # setter for: Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mApplyQueuedHint:Z
    invoke-static {v1, v3}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->access$502(Lcom/android/calendar/event/edit/segment/UsageHintViewController;Z)Z

    .line 485
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$3;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$3;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    # getter for: Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mCurrentHint:Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;
    invoke-static {v2}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->access$700(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;

    move-result-object v2

    # invokes: Lcom/android/calendar/event/edit/segment/UsageHintViewController;->doSetUsageHints(Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;)V
    invoke-static {v1, v2, v0}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->access$800(Lcom/android/calendar/event/edit/segment/UsageHintViewController;Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;)V

    .line 487
    :cond_1
    return-void
.end method
