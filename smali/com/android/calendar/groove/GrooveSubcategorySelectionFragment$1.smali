.class Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$1;
.super Ljava/lang/Object;
.source "GrooveSubcategorySelectionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;

.field final synthetic val$subcategory:Lcom/android/calendar/groove/GrooveCategories$Subcategory;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;Lcom/android/calendar/groove/GrooveCategories$Subcategory;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$1;->this$0:Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;

    iput-object p2, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$1;->val$subcategory:Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$1;->val$subcategory:Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    iget-boolean v0, v0, Lcom/android/calendar/groove/GrooveCategories$Subcategory;->requiresInput:Z

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$1;->this$0:Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$1;->val$subcategory:Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    iget v1, v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;->type:I

    iget-object v2, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$1;->val$subcategory:Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    iget-object v2, v2, Lcom/android/calendar/groove/GrooveCategories$Subcategory;->question:Ljava/lang/String;

    # invokes: Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->showCustomGrooveFragment(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->access$000(Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;ILjava/lang/String;)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$1;->this$0:Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;

    invoke-virtual {v0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$Listener;

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lcom/android/calendar/Utils;->isLollipopMr1OrLater()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$1;->this$0:Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$1;->this$0:Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;

    invoke-virtual {v1}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->createReenterTransition()Landroid/transition/TransitionSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->setReenterTransition(Landroid/transition/Transition;)V

    .line 131
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$1;->this$0:Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$1;->this$0:Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;

    # invokes: Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->createExitTransition()Landroid/transition/TransitionSet;
    invoke-static {v1}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->access$100(Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;)Landroid/transition/TransitionSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->setExitTransition(Landroid/transition/Transition;)V

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$1;->this$0:Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;

    invoke-virtual {v0}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$Listener;

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$1;->val$subcategory:Lcom/android/calendar/groove/GrooveCategories$Subcategory;

    iget v1, v1, Lcom/android/calendar/groove/GrooveCategories$Subcategory;->type:I

    invoke-interface {v0, v1}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$Listener;->onSubcategorySelectionComplete(I)V

    goto :goto_0
.end method
