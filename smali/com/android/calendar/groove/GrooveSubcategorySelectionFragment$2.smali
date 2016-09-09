.class Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$2;
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


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$2;->this$0:Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$2;->this$0:Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment$2;->this$0:Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;

    # getter for: Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->mCategoryId:I
    invoke-static {v1}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->access$200(Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;)I

    move-result v1

    const/4 v2, 0x0

    # invokes: Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->showCustomGrooveFragment(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;->access$000(Lcom/android/calendar/groove/GrooveSubcategorySelectionFragment;ILjava/lang/String;)V

    .line 148
    return-void
.end method
