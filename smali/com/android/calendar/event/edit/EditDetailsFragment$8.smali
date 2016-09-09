.class Lcom/android/calendar/event/edit/EditDetailsFragment$8;
.super Ljava/lang/Object;
.source "EditDetailsFragment.java"

# interfaces
.implements Lcom/android/calendar/timely/LoadingStateManager$OnLoadingStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/EditDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/EditDetailsFragment;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$8;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHidingDataView()V
    .locals 0

    .prologue
    .line 468
    return-void
.end method

.method public onHidingLoadingView()V
    .locals 0

    .prologue
    .line 464
    return-void
.end method

.method public onShowingDataView()V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$8;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # invokes: Lcom/android/calendar/event/edit/EditDetailsFragment;->onShowingDataView()V
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$1500(Lcom/android/calendar/event/edit/EditDetailsFragment;)V

    .line 473
    return-void
.end method

.method public onShowingLoadingView()V
    .locals 0

    .prologue
    .line 466
    return-void
.end method
