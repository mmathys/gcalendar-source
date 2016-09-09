.class Lcom/android/calendar/event/edit/segment/UsageHintViewController$7;
.super Ljava/lang/Object;
.source "UsageHintViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/segment/UsageHintViewController;->updateUsageHintPointerPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)V
    .locals 0

    .prologue
    .line 646
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$7;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$7;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mIsPointerUpdateScheduled:Z
    invoke-static {v0, v1}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->access$902(Lcom/android/calendar/event/edit/segment/UsageHintViewController;Z)Z

    .line 650
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$7;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    # getter for: Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->access$1000(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    move-result-object v0

    if-nez v0, :cond_0

    .line 667
    :goto_0
    return-void

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$7;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    # invokes: Lcom/android/calendar/event/edit/segment/UsageHintViewController;->computeUsageHintPointerPosition()F
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->access$1100(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)F

    move-result v0

    .line 655
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$7;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    .line 656
    # getter for: Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsPointer:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->access$1200(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$7;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    .line 657
    # getter for: Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mUsageHintPointerMoveDistancePerSecond:F
    invoke-static {v2}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->access$1300(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)F

    move-result v2

    div-float/2addr v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    .line 659
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$7;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    # getter for: Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mUsageHintPointerMinAnimationDuration:I
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->access$1400(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 660
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$7;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    # getter for: Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsPointer:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->access$1200(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_0

    .line 662
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$7;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    # getter for: Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsPointer:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->access$1200(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 663
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 664
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 665
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method
