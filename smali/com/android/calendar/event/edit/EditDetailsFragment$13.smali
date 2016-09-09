.class Lcom/android/calendar/event/edit/EditDetailsFragment$13;
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
.field final mNewFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

.field final synthetic this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/EditDetailsFragment;)V
    .locals 1

    .prologue
    .line 1574
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$13;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1575
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$13;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$300(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/editor/EditSegment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$13;->mNewFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$13;->mNewFullscreenSegment:Lcom/android/calendar/editor/EditSegment;

    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$13;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenAuxiliaryView:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$1900(Lcom/android/calendar/event/edit/EditDetailsFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/editor/EditSegment;->onDidEnterFullScreen(Landroid/widget/FrameLayout;)V

    .line 1579
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$13;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mIsFullscreenSegmentTransitioning:Z
    invoke-static {v0, v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$2002(Lcom/android/calendar/event/edit/EditDetailsFragment;Z)Z

    .line 1580
    return-void
.end method
