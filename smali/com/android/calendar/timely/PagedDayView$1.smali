.class Lcom/android/calendar/timely/PagedDayView$1;
.super Ljava/lang/Object;
.source "PagedDayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/PagedDayView;->initialize(Landroid/content/Context;Lcom/android/calendar/timely/ChipRecycler;Lcom/android/calendar/timely/TimelineInfo;Lcom/android/calendar/timely/OnTimelineModeChangedListener;Lcom/android/calendar/timely/gridviews/StickyAllDayManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/PagedDayView;

.field final synthetic val$stickyAllDayManager:Lcom/android/calendar/timely/gridviews/StickyAllDayManager;

.field final synthetic val$timelineModeChangedListener:Lcom/android/calendar/timely/OnTimelineModeChangedListener;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/PagedDayView;Lcom/android/calendar/timely/OnTimelineModeChangedListener;Lcom/android/calendar/timely/gridviews/StickyAllDayManager;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/calendar/timely/PagedDayView$1;->this$0:Lcom/android/calendar/timely/PagedDayView;

    iput-object p2, p0, Lcom/android/calendar/timely/PagedDayView$1;->val$timelineModeChangedListener:Lcom/android/calendar/timely/OnTimelineModeChangedListener;

    iput-object p3, p0, Lcom/android/calendar/timely/PagedDayView$1;->val$stickyAllDayManager:Lcom/android/calendar/timely/gridviews/StickyAllDayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 91
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView$1;->this$0:Lcom/android/calendar/timely/PagedDayView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/PagedDayView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView$1;->this$0:Lcom/android/calendar/timely/PagedDayView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/PagedDayView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 93
    sget v1, Lcom/android/calendar/R$string;->showing_view:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/android/calendar/R$string;->agenda_view_label:I

    .line 94
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 95
    iget-object v2, p0, Lcom/android/calendar/timely/PagedDayView$1;->this$0:Lcom/android/calendar/timely/PagedDayView;

    invoke-virtual {v2, v1}, Lcom/android/calendar/timely/PagedDayView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 97
    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v1

    .line 98
    sget v2, Lcom/android/calendar/R$string;->analytics_category_menu_item:I

    .line 99
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "agenda_toggle"

    .line 98
    invoke-interface {v1, v0, v2, v3}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView$1;->val$timelineModeChangedListener:Lcom/android/calendar/timely/OnTimelineModeChangedListener;

    iget-object v1, p0, Lcom/android/calendar/timely/PagedDayView$1;->this$0:Lcom/android/calendar/timely/PagedDayView;

    # getter for: Lcom/android/calendar/timely/PagedDayView;->mStickyHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;
    invoke-static {v1}, Lcom/android/calendar/timely/PagedDayView;->access$000(Lcom/android/calendar/timely/PagedDayView;)Lcom/android/calendar/timely/TimelyDayHeaderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyDayHeaderView;->getPosition()I

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/timely/PagedDayView$1;->this$0:Lcom/android/calendar/timely/PagedDayView;

    .line 102
    invoke-virtual {v2}, Lcom/android/calendar/timely/PagedDayView;->getScrollOffset()I

    move-result v2

    iget-object v3, p0, Lcom/android/calendar/timely/PagedDayView$1;->this$0:Lcom/android/calendar/timely/PagedDayView;

    .line 103
    invoke-virtual {v3}, Lcom/android/calendar/timely/PagedDayView;->getGridHourStartOffset()I

    move-result v3

    iget-object v4, p0, Lcom/android/calendar/timely/PagedDayView$1;->this$0:Lcom/android/calendar/timely/PagedDayView;

    .line 104
    invoke-virtual {v4}, Lcom/android/calendar/timely/PagedDayView;->getAllDayEventsHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/calendar/timely/PagedDayView$1;->this$0:Lcom/android/calendar/timely/PagedDayView;

    .line 105
    invoke-virtual {v5}, Lcom/android/calendar/timely/PagedDayView;->getAllDayEventsScrollPosition()I

    move-result v5

    .line 101
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/timely/OnTimelineModeChangedListener;->onModeChanged(IIIII)V

    .line 106
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView$1;->val$stickyAllDayManager:Lcom/android/calendar/timely/gridviews/StickyAllDayManager;

    iget-object v1, p0, Lcom/android/calendar/timely/PagedDayView$1;->this$0:Lcom/android/calendar/timely/PagedDayView;

    # getter for: Lcom/android/calendar/timely/PagedDayView;->mAllDayHeaderView:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;
    invoke-static {v1}, Lcom/android/calendar/timely/PagedDayView;->access$100(Lcom/android/calendar/timely/PagedDayView;)Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->setState(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;Z)V

    .line 108
    :cond_0
    return-void
.end method
