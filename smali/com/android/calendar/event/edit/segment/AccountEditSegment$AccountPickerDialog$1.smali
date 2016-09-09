.class Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$1;
.super Landroid/app/Dialog;
.source "AccountEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$1;->this$0:Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog$1;->this$0:Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;

    sget v1, Lcom/android/calendar/R$string;->account_picker_accessibility_title:I

    .line 199
    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/AccountEditSegment$AccountPickerDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 200
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method
