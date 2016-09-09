.class Lcom/android/calendar/event/edit/EditDetailsFragment$21;
.super Ljava/lang/Object;
.source "EditDetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/EditDetailsFragment;->ensureFullScreenSegmentLayoutAndPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/EditDetailsFragment;)V
    .locals 0

    .prologue
    .line 1804
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$21;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1807
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$21;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$300(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/editor/EditSegment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1818
    :goto_0
    return-void

    .line 1816
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$21;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mScrollView:Lcom/android/calendar/editor/EditorScrollView;
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$100(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/editor/EditorScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$21;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;
    invoke-static {v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$300(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/editor/EditSegment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/editor/EditSegment;->getTop()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/android/calendar/editor/EditorScrollView;->smoothScrollTo(II)V

    .line 1817
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$21;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mScrollView:Lcom/android/calendar/editor/EditorScrollView;
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$100(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/editor/EditorScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$21;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;
    invoke-static {v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$300(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/editor/EditSegment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/editor/EditSegment;->getTop()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/android/calendar/editor/EditorScrollView;->smoothScrollTo(II)V

    goto :goto_0
.end method
