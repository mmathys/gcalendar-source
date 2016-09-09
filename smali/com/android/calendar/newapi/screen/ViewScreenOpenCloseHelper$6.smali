.class Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$6;
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

.field final synthetic val$onAnimationEnd:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$6;->this$0:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    iput-object p2, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$6;->val$onAnimationEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$6;->this$0:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    # getter for: Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mController:Lcom/android/calendar/newapi/screen/ViewScreenController;
    invoke-static {v0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->access$400(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;)Lcom/android/calendar/newapi/screen/ViewScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$6;->this$0:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    # getter for: Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mContentView:Lcom/android/calendar/newapi/screen/ViewScreen;
    invoke-static {v0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->access$600(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;)Lcom/android/calendar/newapi/screen/ViewScreen;

    move-result-object v0

    if-nez v0, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$6;->this$0:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    # getter for: Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;
    invoke-static {v0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->access$300(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;)Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$6;->this$0:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    # getter for: Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mFullscreen:Z
    invoke-static {v0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->access$700(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$6;->this$0:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    # getter for: Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mRootView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->access$200(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$color;->timely_background_color:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$6;->this$0:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    # getter for: Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mContentView:Lcom/android/calendar/newapi/screen/ViewScreen;
    invoke-static {v0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->access$600(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;)Lcom/android/calendar/newapi/screen/ViewScreen;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$6$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$6$1;-><init>(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$6;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/screen/ViewScreen;->showContentAnimated(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
