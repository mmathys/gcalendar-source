.class Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$4;
.super Ljava/lang/Object;
.source "ViewScreenOpenCloseHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->startOpenAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

.field final synthetic val$layoutParams:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$4;->this$0:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    iput-object p2, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$4;->val$layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$4;->this$0:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    # getter for: Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mController:Lcom/android/calendar/newapi/screen/ViewScreenController;
    invoke-static {v0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->access$400(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;)Lcom/android/calendar/newapi/screen/ViewScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$4;->this$0:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    # getter for: Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;
    invoke-static {v0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->access$300(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;)Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$4;->this$0:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    # getter for: Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mOverlayView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->access$500(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$4;->val$layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$4;->this$0:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    # getter for: Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mOverlayView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->access$500(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 181
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$4;->this$0:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    # getter for: Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mOverlayView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->access$500(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 182
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$4;->this$0:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    # getter for: Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mController:Lcom/android/calendar/newapi/screen/ViewScreenController;
    invoke-static {v0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->access$400(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;)Lcom/android/calendar/newapi/screen/ViewScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getOverlayBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$4;->this$0:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    # getter for: Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mController:Lcom/android/calendar/newapi/screen/ViewScreenController;
    invoke-static {v1}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->access$400(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;)Lcom/android/calendar/newapi/screen/ViewScreenController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/OverlayFragment$OverlayBackground;->setToCard(Lcom/android/calendar/OverlayFragment;)Lcom/android/calendar/OverlayFragment$OverlayBackground;

    .line 184
    :cond_0
    return-void
.end method
