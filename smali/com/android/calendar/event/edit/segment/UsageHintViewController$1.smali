.class Lcom/android/calendar/event/edit/segment/UsageHintViewController$1;
.super Ljava/lang/Object;
.source "UsageHintViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/segment/UsageHintViewController;->doSetUsageHints(Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

.field final synthetic val$hintShowAnimationTranslation:F

.field final synthetic val$hintView:Landroid/widget/TextView;

.field final synthetic val$newMessage:Ljava/lang/CharSequence;

.field final synthetic val$startDelay:I


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/UsageHintViewController;Landroid/widget/TextView;FLjava/lang/CharSequence;I)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$1;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    iput-object p2, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$1;->val$hintView:Landroid/widget/TextView;

    iput p3, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$1;->val$hintShowAnimationTranslation:F

    iput-object p4, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$1;->val$newMessage:Ljava/lang/CharSequence;

    iput p5, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$1;->val$startDelay:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 387
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$1;->val$hintView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 388
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$1;->val$hintView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$1;->val$hintShowAnimationTranslation:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 389
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$1;->val$hintView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$1;->val$newMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$1;->val$hintView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 391
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 392
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$1;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    .line 393
    # getter for: Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mUsageHintItemChangeDuration:I
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->access$200(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$1;->val$startDelay:I

    int-to-long v2, v1

    .line 394
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 395
    # getter for: Lcom/android/calendar/event/edit/segment/UsageHintViewController;->SLIDE_IN_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;
    invoke-static {}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->access$100()Landroid/view/animation/DecelerateInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 397
    return-void
.end method
