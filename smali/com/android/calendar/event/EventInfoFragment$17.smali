.class Lcom/android/calendar/event/EventInfoFragment$17;
.super Lcom/android/calendar/OverlayFragment$OverlayDialog;
.source "EventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EventInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1904
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$17;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/OverlayFragment$OverlayDialog;-><init>(Lcom/android/calendar/OverlayFragment;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 1907
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$17;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-boolean v0, v0, Lcom/android/calendar/event/EventInfoFragment;->mDismissInProgress:Z

    if-eqz v0, :cond_0

    .line 1908
    const/4 v0, 0x1

    .line 1911
    :goto_0
    return v0

    .line 1910
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$17;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1911
    invoke-super {p0, p1}, Lcom/android/calendar/OverlayFragment$OverlayDialog;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method
