.class Lcom/android/calendar/groove/GrooveCategorySelectionFragment$1;
.super Ljava/lang/Object;
.source "GrooveCategorySelectionFragment.java"

# interfaces
.implements Lcom/android/calendar/groove/ObservableScrollView$OnScrollChangeListener;


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
    .line 126
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$1;->this$0:Lcom/android/calendar/groove/GrooveCategorySelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(IIII)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveCategorySelectionFragment$1;->this$0:Lcom/android/calendar/groove/GrooveCategorySelectionFragment;

    # invokes: Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->maybeShowActionBar()V
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveCategorySelectionFragment;->access$000(Lcom/android/calendar/groove/GrooveCategorySelectionFragment;)V

    .line 131
    return-void
.end method
