.class Lcom/android/calendar/timely/TaskBundleFragment$3;
.super Lcom/android/calendar/OverlayFragment$OverlayDialog;
.source "TaskBundleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/TaskBundleFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/TaskBundleFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/TaskBundleFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/calendar/timely/TaskBundleFragment$3;->this$0:Lcom/android/calendar/timely/TaskBundleFragment;

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/OverlayFragment$OverlayDialog;-><init>(Lcom/android/calendar/OverlayFragment;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment$3;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/TaskBundleFragment$3;->this$0:Lcom/android/calendar/timely/TaskBundleFragment;

    .line 175
    invoke-virtual {v1}, Lcom/android/calendar/timely/TaskBundleFragment;->getTaskBundle()Lcom/android/calendar/task/TimelineTaskBundle;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/calendar/timely/TaskBundleFragment$3;->this$0:Lcom/android/calendar/timely/TaskBundleFragment;

    invoke-virtual {v3}, Lcom/android/calendar/timely/TaskBundleFragment;->getTaskBundle()Lcom/android/calendar/task/TimelineTaskBundle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/calendar/task/TimelineTaskBundle;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/timely/TimelineItemUtil;->createContentDescription(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 176
    invoke-super {p0, p1}, Lcom/android/calendar/OverlayFragment$OverlayDialog;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method
