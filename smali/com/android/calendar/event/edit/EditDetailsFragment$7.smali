.class Lcom/android/calendar/event/edit/EditDetailsFragment$7;
.super Ljava/lang/Object;
.source "EditDetailsFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/EditDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 426
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$7;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 429
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$7;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$300(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/editor/EditSegment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$7;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mScrollView:Lcom/android/calendar/editor/EditorScrollView;
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$100(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/editor/EditorScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/editor/EditorScrollView;->getScrollY()I

    move-result v0

    .line 439
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$7;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;
    invoke-static {v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$1000(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/event/edit/EditHeaderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/EditHeaderLayout;->getElevation()F

    move-result v1

    .line 440
    cmpl-float v2, v1, v4

    if-nez v2, :cond_2

    if-lez v0, :cond_2

    .line 442
    iget-object v2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$7;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;
    invoke-static {v2}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$1000(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/event/edit/EditHeaderLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$7;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineElevation:I
    invoke-static {v3}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$1200(Lcom/android/calendar/event/edit/EditDetailsFragment;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/calendar/event/edit/EditHeaderLayout;->setElevation(F)V

    .line 444
    :cond_2
    if-gtz v0, :cond_0

    cmpl-float v0, v1, v4

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$7;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$1000(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/event/edit/EditHeaderLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/calendar/event/edit/EditHeaderLayout;->setElevation(F)V

    goto :goto_0
.end method
