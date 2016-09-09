.class Lcom/android/calendar/groove/GrooveSummaryView$1;
.super Ljava/lang/Object;
.source "GrooveSummaryView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/GrooveSummaryView;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/GrooveSummaryView;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/GrooveSummaryView;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/calendar/groove/GrooveSummaryView$1;->this$0:Lcom/android/calendar/groove/GrooveSummaryView;

    iput-object p2, p0, Lcom/android/calendar/groove/GrooveSummaryView$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView$1;->this$0:Lcom/android/calendar/groove/GrooveSummaryView;

    invoke-virtual {v0}, Lcom/android/calendar/groove/GrooveSummaryView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveSummaryView$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->analytics_category_groove:I

    .line 84
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->analytics_action_more_options_clicked:I

    .line 85
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-interface {v1, v0, v2, v3}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveSummaryView$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveSummaryView$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/calendar/ExperimentalOptionsEnabler;->areGrooveViewEditScreensEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveSummaryView$1;->this$0:Lcom/android/calendar/groove/GrooveSummaryView;

    .line 92
    # getter for: Lcom/android/calendar/groove/GrooveSummaryView;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;
    invoke-static {v1}, Lcom/android/calendar/groove/GrooveSummaryView;->access$000(Lcom/android/calendar/groove/GrooveSummaryView;)Lcom/google/android/calendar/api/HabitModifications;

    move-result-object v1

    const/4 v2, 0x1

    .line 91
    invoke-static {v1, v2}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->newInstance(Lcom/google/android/calendar/api/HabitModifications;Z)Lcom/android/calendar/newapi/screen/GrooveEditScreenController;

    move-result-object v1

    .line 89
    invoke-static {v0, v1}, Lcom/android/calendar/newapi/screen/HostDialog;->showWithChildFragment(Landroid/app/FragmentManager;Lcom/android/calendar/newapi/screen/HostedFragment;)V

    .line 101
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveSummaryView$1;->this$0:Lcom/android/calendar/groove/GrooveSummaryView;

    # getter for: Lcom/android/calendar/groove/GrooveSummaryView;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;
    invoke-static {v1}, Lcom/android/calendar/groove/GrooveSummaryView;->access$000(Lcom/android/calendar/groove/GrooveSummaryView;)Lcom/google/android/calendar/api/HabitModifications;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->newInstance(Ljava/lang/Object;)Lcom/android/calendar/event/edit/EditDetailsFragment;

    move-result-object v1

    .line 96
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 97
    sget-object v2, Lcom/android/calendar/event/edit/EditDetailsFragment;->TAG:Ljava/lang/String;

    .line 98
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/event/edit/EditDetailsFragment;->TAG:Ljava/lang/String;

    .line 99
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method
