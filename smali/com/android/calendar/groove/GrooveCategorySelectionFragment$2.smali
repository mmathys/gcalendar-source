.class Lcom/android/calendar/groove/GrooveCategorySelectionFragment$2;
.super Ljava/lang/Object;
.source "GrooveCategorySelectionFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 134
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$2;->this$0:Lcom/android/calendar/groove/GrooveCategorySelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$2;->this$0:Lcom/android/calendar/groove/GrooveCategorySelectionFragment;

    invoke-virtual {v0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$2;->this$0:Lcom/android/calendar/groove/GrooveCategorySelectionFragment;

    # invokes: Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->maybeShowActionBar()V
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->access$000(Lcom/android/calendar/groove/GrooveCategorySelectionFragment;)V

    goto :goto_0
.end method
