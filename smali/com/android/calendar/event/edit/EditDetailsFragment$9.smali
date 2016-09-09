.class Lcom/android/calendar/event/edit/EditDetailsFragment$9;
.super Ljava/lang/Object;
.source "EditDetailsFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/EditDetailsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

.field final synthetic val$fullscreenSegment:Lcom/android/calendar/editor/EditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/EditDetailsFragment;Lcom/android/calendar/editor/EditSegment;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$9;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    iput-object p2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$9;->val$fullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 555
    iget-object v2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$9;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;
    invoke-static {v2}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$1000(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/event/edit/EditHeaderLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/calendar/event/edit/EditHeaderLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 556
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 569
    :goto_0
    return v0

    .line 560
    :cond_0
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 566
    iget-object v2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$9;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;
    invoke-static {v2}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$300(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/editor/EditSegment;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$9;->val$fullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    iget-object v3, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$9;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;
    invoke-static {v3}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$300(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/editor/EditSegment;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 567
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$9;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    iget-object v3, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$9;->val$fullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    # invokes: Lcom/android/calendar/event/edit/EditDetailsFragment;->setFullScreen(Lcom/android/calendar/editor/EditSegment;ZZ)V
    invoke-static {v2, v3, v0, v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$1600(Lcom/android/calendar/event/edit/EditDetailsFragment;Lcom/android/calendar/editor/EditSegment;ZZ)V

    :cond_2
    move v0, v1

    .line 569
    goto :goto_0
.end method
