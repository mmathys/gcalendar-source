.class Lcom/android/calendar/newapi/screen/ViewScreenController$2;
.super Lcom/android/calendar/OverlayFragment$OverlayDialog;
.source "ViewScreenController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/screen/ViewScreenController;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/newapi/screen/ViewScreenController;


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/screen/ViewScreenController;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/ViewScreenController$2;->this$0:Lcom/android/calendar/newapi/screen/ViewScreenController;

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/OverlayFragment$OverlayDialog;-><init>(Lcom/android/calendar/OverlayFragment;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController$2;->this$0:Lcom/android/calendar/newapi/screen/ViewScreenController;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 268
    const/4 v0, 0x1

    .line 270
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/calendar/OverlayFragment$OverlayDialog;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method
