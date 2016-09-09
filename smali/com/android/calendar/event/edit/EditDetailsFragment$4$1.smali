.class Lcom/android/calendar/event/edit/EditDetailsFragment$4$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EditDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/EditDetailsFragment$4;->onChange(Lcom/google/calendar/v2/client/service/api/common/Color;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/event/edit/EditDetailsFragment$4;

.field final synthetic val$color:I


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/EditDetailsFragment$4;I)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$4$1;->this$1:Lcom/android/calendar/event/edit/EditDetailsFragment$4;

    iput p2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$4$1;->val$color:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$4$1;->this$1:Lcom/android/calendar/event/edit/EditDetailsFragment$4;

    iget-object v0, v0, Lcom/android/calendar/event/edit/EditDetailsFragment$4;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineView:Lcom/android/calendar/event/edit/EditHeaderLayout;
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$1000(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/event/edit/EditHeaderLayout;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$4$1;->val$color:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/EditHeaderLayout;->setBackgroundColor(I)V

    .line 306
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$4$1;->this$1:Lcom/android/calendar/event/edit/EditDetailsFragment$4;

    iget-object v0, v0, Lcom/android/calendar/event/edit/EditDetailsFragment$4;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mRippleView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$1100(Lcom/android/calendar/event/edit/EditDetailsFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 307
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 308
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 298
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 299
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$4$1;->this$1:Lcom/android/calendar/event/edit/EditDetailsFragment$4;

    iget-object v0, v0, Lcom/android/calendar/event/edit/EditDetailsFragment$4;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mRippleView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$1100(Lcom/android/calendar/event/edit/EditDetailsFragment;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$4$1;->val$color:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 300
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$4$1;->this$1:Lcom/android/calendar/event/edit/EditDetailsFragment$4;

    iget-object v0, v0, Lcom/android/calendar/event/edit/EditDetailsFragment$4;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mRippleView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$1100(Lcom/android/calendar/event/edit/EditDetailsFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    return-void
.end method
