.class Lcom/android/calendar/event/edit/EditDetailsFragment$6;
.super Ljava/lang/Object;
.source "EditDetailsFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/EditDetailsFragment;
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
    .line 333
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$6;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$6;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$6;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$6;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getView()Landroid/view/View;

    move-result-object v1

    # invokes: Lcom/android/calendar/event/edit/EditDetailsFragment;->detectSoftKeyboardVisible(Landroid/view/View;)Z
    invoke-static {v0, v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$1300(Lcom/android/calendar/event/edit/EditDetailsFragment;Landroid/view/View;)Z

    move-result v0

    .line 340
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$6;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mSoftKeyboardVisible:Z
    invoke-static {v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$1400(Lcom/android/calendar/event/edit/EditDetailsFragment;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$6;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # setter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mSoftKeyboardVisible:Z
    invoke-static {v1, v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$1402(Lcom/android/calendar/event/edit/EditDetailsFragment;Z)Z

    goto :goto_0
.end method
