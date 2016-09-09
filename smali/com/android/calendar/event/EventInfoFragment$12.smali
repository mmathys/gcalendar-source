.class Lcom/android/calendar/event/EventInfoFragment$12;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Lcom/android/calendar/timely/LoadingStateManager$OnLoadingStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EventInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoFragment;)V
    .locals 0

    .prologue
    .line 1769
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$12;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHidingDataView()V
    .locals 2

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$12;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mOverlayView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$3100(Lcom/android/calendar/event/EventInfoFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1781
    return-void
.end method

.method public onHidingLoadingView()V
    .locals 0

    .prologue
    .line 1771
    return-void
.end method

.method public onShowingDataView()V
    .locals 2

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$12;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mOverlayView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$3100(Lcom/android/calendar/event/EventInfoFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1786
    return-void
.end method

.method public onShowingLoadingView()V
    .locals 2

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$12;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mOverlayView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$3100(Lcom/android/calendar/event/EventInfoFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1776
    return-void
.end method
