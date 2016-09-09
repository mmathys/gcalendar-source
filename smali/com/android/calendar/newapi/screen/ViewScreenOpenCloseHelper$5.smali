.class Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewScreenOpenCloseHelper.java"


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


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$5;->this$0:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 193
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 194
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$5;->this$0:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    # getter for: Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;
    invoke-static {v0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->access$300(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;)Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$5;->this$0:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    # getter for: Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->mOverlayView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->access$500(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    return-void
.end method
