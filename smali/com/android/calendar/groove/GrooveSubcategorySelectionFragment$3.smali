.class Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$3;
.super Ljava/lang/Object;
.source "GrooveSubcategorySelectionFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->runEnterAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$3;->this$0:Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$3;->this$0:Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;

    # getter for: Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->mTitleView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->access$300(Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 223
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 218
    return-void
.end method
