.class Lcom/android/calendar/timely/TaskBundleFragment$2;
.super Ljava/lang/Object;
.source "TaskBundleFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/TaskBundleFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/TaskBundleFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/TaskBundleFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/calendar/timely/TaskBundleFragment$2;->this$0:Lcom/android/calendar/timely/TaskBundleFragment;

    iput-object p2, p0, Lcom/android/calendar/timely/TaskBundleFragment$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/calendar/timely/TaskBundleFragment$2;->val$view:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/calendar/Utils;->removeOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 153
    iget-object v0, p0, Lcom/android/calendar/timely/TaskBundleFragment$2;->this$0:Lcom/android/calendar/timely/TaskBundleFragment;

    # getter for: Lcom/android/calendar/timely/TaskBundleFragment;->mAnimationView:Lcom/android/calendar/timely/animations/TaskBundleAnimation;
    invoke-static {v0}, Lcom/android/calendar/timely/TaskBundleFragment;->access$100(Lcom/android/calendar/timely/TaskBundleFragment;)Lcom/android/calendar/timely/animations/TaskBundleAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->startOpenAnimation()V

    .line 154
    return-void
.end method
