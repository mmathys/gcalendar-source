.class Lcom/android/calendar/event/CustomDurationDialog$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "CustomDurationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/CustomDurationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/CustomDurationDialog;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/CustomDurationDialog;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/calendar/event/CustomDurationDialog$2;->this$0:Lcom/android/calendar/event/CustomDurationDialog;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 101
    iget-object v0, p0, Lcom/android/calendar/event/CustomDurationDialog$2;->this$0:Lcom/android/calendar/event/CustomDurationDialog;

    invoke-virtual {v0}, Lcom/android/calendar/event/CustomDurationDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$plurals;->accessibility_find_time_custom_duration_minute_input:I

    iget-object v2, p0, Lcom/android/calendar/event/CustomDurationDialog$2;->this$0:Lcom/android/calendar/event/CustomDurationDialog;

    .line 103
    # getter for: Lcom/android/calendar/event/CustomDurationDialog;->mMinutes:I
    invoke-static {v2}, Lcom/android/calendar/event/CustomDurationDialog;->access$100(Lcom/android/calendar/event/CustomDurationDialog;)I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/calendar/event/CustomDurationDialog$2;->this$0:Lcom/android/calendar/event/CustomDurationDialog;

    # getter for: Lcom/android/calendar/event/CustomDurationDialog;->mMinutes:I
    invoke-static {v5}, Lcom/android/calendar/event/CustomDurationDialog;->access$100(Lcom/android/calendar/event/CustomDurationDialog;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 101
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 105
    return-void
.end method
