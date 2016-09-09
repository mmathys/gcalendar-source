.class Lcom/android/calendar/event/edit/EditDetailsFragment$12;
.super Ljava/lang/Object;
.source "EditDetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/EditDetailsFragment;->setFullScreen(Lcom/android/calendar/editor/EditSegment;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mOldFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

.field final synthetic this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/EditDetailsFragment;)V
    .locals 1

    .prologue
    .line 1538
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$12;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1539
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$12;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$300(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/editor/EditSegment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$12;->mOldFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$12;->mOldFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    invoke-virtual {v0}, Lcom/android/calendar/editor/EditSegment;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1544
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$12;->mOldFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$12;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenAuxiliaryView:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$1900(Lcom/android/calendar/event/edit/EditDetailsFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/editor/EditSegment;->onDidExitFullScreen(Landroid/widget/FrameLayout;)V

    .line 1546
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$12;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenAuxiliaryView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$1900(Lcom/android/calendar/event/edit/EditDetailsFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1547
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$12;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mIsFullscreenSegmentTransitioning:Z
    invoke-static {v0, v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$2002(Lcom/android/calendar/event/edit/EditDetailsFragment;Z)Z

    .line 1548
    return-void
.end method
