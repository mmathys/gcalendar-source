.class Lcom/android/calendar/groove/GrooveCategorySelectionFragment$7;
.super Ljava/lang/Object;
.source "GrooveCategorySelectionFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->animateActionBarTitleOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/GrooveCategorySelectionFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/GrooveCategorySelectionFragment;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$7;->this$0:Lcom/android/calendar/groove/GrooveCategorySelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$7;->this$0:Lcom/android/calendar/groove/GrooveCategorySelectionFragment;

    # getter for: Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->mActionBarTitleView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->access$200(Lcom/android/calendar/groove/GrooveCategorySelectionFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 389
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 381
    return-void
.end method
