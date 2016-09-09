.class Lcom/android/calendar/timely/TimelyColorMonthView$2;
.super Ljava/lang/Object;
.source "TimelyColorMonthView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/TimelyColorMonthView;->requestInitialAccessibilityFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/TimelyColorMonthView;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/TimelyColorMonthView;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyColorMonthView$2;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 623
    invoke-static {}, Lcom/android/calendar/A11yHelper;->getInstance()Lcom/android/calendar/A11yHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView$2;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/A11yHelper;->notifyAccessibilitySubtreeChanged(Landroid/view/View;)V

    .line 625
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView$2;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyColorMonthView;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView$2;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    # getter for: Lcom/android/calendar/timely/TimelyColorMonthView;->mSelectedDay:I
    invoke-static {v1}, Lcom/android/calendar/timely/TimelyColorMonthView;->access$200(Lcom/android/calendar/timely/TimelyColorMonthView;)I

    move-result v1

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 627
    return-void
.end method
