.class Lcom/android/calendar/event/EventInfoFragment$1;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Lcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoFragment;->deleteTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EventInfoFragment;

.field final synthetic val$editManager:Lcom/android/calendar/event/data/AbstractEditManager;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoFragment;Lcom/android/calendar/event/data/AbstractEditManager;)V
    .locals 0

    .prologue
    .line 699
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$1;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iput-object p2, p0, Lcom/android/calendar/event/EventInfoFragment$1;->val$editManager:Lcom/android/calendar/event/data/AbstractEditManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeDeleteInitiated()V
    .locals 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$1;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 703
    instance-of v1, v0, Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;

    if-eqz v1, :cond_0

    .line 704
    check-cast v0, Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;

    .line 705
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$1;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-interface {v0, v1}, Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;->beforeDeleteInitiated(Landroid/app/DialogFragment;)V

    .line 707
    :cond_0
    return-void
.end method

.method public onDeleteInitiated(I)V
    .locals 3

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$1;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 712
    if-nez v0, :cond_1

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$1;->val$editManager:Lcom/android/calendar/event/data/AbstractEditManager;

    invoke-virtual {v1, p1}, Lcom/android/calendar/event/data/AbstractEditManager;->onEventDeleted(I)V

    .line 716
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$1;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v1}, Lcom/android/calendar/event/EventInfoFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->hideFocusAndSoftKeyboard(Landroid/app/Activity;Landroid/view/View;)V

    .line 717
    instance-of v1, v0, Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;

    if-eqz v1, :cond_0

    .line 718
    check-cast v0, Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;

    .line 719
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$1;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    sget v2, Lcom/android/calendar/R$string;->task_deleted_accessibility:I

    invoke-interface {v0, v1, v2}, Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;->onDeleteComplete(Landroid/app/DialogFragment;I)V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 727
    return-void
.end method
