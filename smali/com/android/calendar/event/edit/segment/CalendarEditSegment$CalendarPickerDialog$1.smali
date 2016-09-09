.class Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$1;
.super Landroid/app/Dialog;
.source "CalendarEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$1;->this$0:Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$1;->this$0:Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;

    sget v1, Lcom/android/calendar/R$string;->calendar_picker_accessibility_title:I

    .line 214
    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 215
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method
