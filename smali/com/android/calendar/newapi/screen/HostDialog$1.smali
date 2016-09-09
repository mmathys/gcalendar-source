.class Lcom/android/calendar/newapi/screen/HostDialog$1;
.super Lcom/android/calendar/OverlayFragment$OverlayDialog;
.source "HostDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/screen/HostDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/newapi/screen/HostDialog;


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/screen/HostDialog;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/HostDialog$1;->this$0:Lcom/android/calendar/newapi/screen/HostDialog;

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/OverlayFragment$OverlayDialog;-><init>(Lcom/android/calendar/OverlayFragment;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/HostDialog$1;->this$0:Lcom/android/calendar/newapi/screen/HostDialog;

    sget v1, Lcom/android/calendar/R$string;->edit_screen_title:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/screen/HostDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 56
    const/4 v0, 0x1

    .line 58
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/calendar/OverlayFragment$OverlayDialog;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method
