.class Lcom/android/calendar/timely/TimelineAdapter$1;
.super Ljava/lang/Object;
.source "TimelineAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/TimelineAdapter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/TimelineAdapter;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/TimelineAdapter;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/calendar/timely/TimelineAdapter$1;->this$0:Lcom/android/calendar/timely/TimelineAdapter;

    iput-object p2, p0, Lcom/android/calendar/timely/TimelineAdapter$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineAdapter$1;->val$context:Landroid/content/Context;

    sget v1, Lcom/android/calendar/R$string;->showing_view:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/calendar/timely/TimelineAdapter$1;->val$context:Landroid/content/Context;

    sget v5, Lcom/android/calendar/R$string;->hourly_view_label:I

    .line 73
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/android/calendar/timely/TimelineAdapter$1;->this$0:Lcom/android/calendar/timely/TimelineAdapter;

    # getter for: Lcom/android/calendar/timely/TimelineAdapter;->mHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;
    invoke-static {v1}, Lcom/android/calendar/timely/TimelineAdapter;->access$000(Lcom/android/calendar/timely/TimelineAdapter;)Lcom/android/calendar/timely/TimelyDayHeaderView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineAdapter$1;->val$context:Landroid/content/Context;

    .line 76
    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/android/calendar/timely/TimelineAdapter$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/timely/TimelineAdapter$1;->val$context:Landroid/content/Context;

    sget v3, Lcom/android/calendar/R$string;->analytics_category_menu_item:I

    .line 78
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "day_toggle"

    .line 77
    invoke-interface {v0, v1, v2, v3}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineAdapter$1;->this$0:Lcom/android/calendar/timely/TimelineAdapter;

    # getter for: Lcom/android/calendar/timely/TimelineAdapter;->mTimelineModeChangedListener:Lcom/android/calendar/timely/OnTimelineModeChangedListener;
    invoke-static {v0}, Lcom/android/calendar/timely/TimelineAdapter;->access$100(Lcom/android/calendar/timely/TimelineAdapter;)Lcom/android/calendar/timely/OnTimelineModeChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/TimelineAdapter$1;->this$0:Lcom/android/calendar/timely/TimelineAdapter;

    # getter for: Lcom/android/calendar/timely/TimelineAdapter;->mHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;
    invoke-static {v1}, Lcom/android/calendar/timely/TimelineAdapter;->access$000(Lcom/android/calendar/timely/TimelineAdapter;)Lcom/android/calendar/timely/TimelyDayHeaderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyDayHeaderView;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/calendar/timely/OnTimelineModeChangedListener;->onModeChanged(I)V

    .line 81
    return-void
.end method
