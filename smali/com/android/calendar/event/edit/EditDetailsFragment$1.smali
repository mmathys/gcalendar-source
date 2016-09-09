.class Lcom/android/calendar/event/edit/EditDetailsFragment$1;
.super Lcom/android/calendar/OverlayFragment$OverlayDialog;
.source "EditDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/EditDetailsFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/EditDetailsFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$1;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/OverlayFragment$OverlayDialog;-><init>(Lcom/android/calendar/OverlayFragment;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$1;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # invokes: Lcom/android/calendar/event/edit/EditDetailsFragment;->isNewItem()Z
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$000(Lcom/android/calendar/event/edit/EditDetailsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$1;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    sget v1, Lcom/android/calendar/R$string;->create_screen_title:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 148
    :goto_0
    const/4 v0, 0x1

    .line 150
    :goto_1
    return v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$1;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    sget v1, Lcom/android/calendar/R$string;->edit_screen_title:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-super {p0, p1}, Lcom/android/calendar/OverlayFragment$OverlayDialog;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/android/calendar/OverlayFragment$OverlayDialog;->onWindowFocusChanged(Z)V

    .line 156
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment$1;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 157
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditDetailsFragment$1;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 160
    new-instance v1, Lcom/android/calendar/event/edit/EditDetailsFragment$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/calendar/event/edit/EditDetailsFragment$1$1;-><init>(Lcom/android/calendar/event/edit/EditDetailsFragment$1;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 173
    :cond_0
    return-void
.end method
