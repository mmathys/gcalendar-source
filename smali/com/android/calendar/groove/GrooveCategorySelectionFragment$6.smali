.class Lcom/android/calendar/groove/GrooveCategorySelectionFragment$6;
.super Ljava/lang/Object;
.source "GrooveCategorySelectionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->createCategoryView(I)Lcom/android/calendar/groove/GrooveCategoryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/GrooveCategorySelectionFragment;

.field final synthetic val$categoryType:I

.field final synthetic val$categoryView:Lcom/android/calendar/groove/GrooveCategoryView;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/GrooveCategorySelectionFragment;ILcom/android/calendar/groove/GrooveCategoryView;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$6;->this$0:Lcom/android/calendar/groove/GrooveCategorySelectionFragment;

    iput p2, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$6;->val$categoryType:I

    iput-object p3, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$6;->val$categoryView:Lcom/android/calendar/groove/GrooveCategoryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$6;->this$0:Lcom/android/calendar/groove/GrooveCategorySelectionFragment;

    invoke-virtual {v0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$Listener;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$6;->this$0:Lcom/android/calendar/groove/GrooveCategorySelectionFragment;

    invoke-virtual {v0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$Listener;

    iget v1, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$6;->val$categoryType:I

    iget-object v2, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$6;->val$categoryView:Lcom/android/calendar/groove/GrooveCategoryView;

    invoke-interface {v0, v1, v2}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$Listener;->onCategorySelectionComplete(ILandroid/view/View;)V

    .line 331
    :cond_0
    return-void
.end method
