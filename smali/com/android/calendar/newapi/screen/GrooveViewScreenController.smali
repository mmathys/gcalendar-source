.class public Lcom/android/calendar/newapi/screen/GrooveViewScreenController;
.super Lcom/android/calendar/newapi/screen/ViewScreenController;
.source "GrooveViewScreenController.java"

# interfaces
.implements Lcom/android/calendar/newapi/commandbar/GrooveCommandBarController$Callback;
.implements Lcom/android/calendar/newapi/common/GrooveDeleteDialog$Callback;
.implements Lcom/android/calendar/newapi/overflow/GrooveOverflowMenuController$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/screen/ViewScreenController",
        "<",
        "Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;",
        "Lcom/android/calendar/groove/TimelineGroove;",
        "Lcom/android/calendar/newapi/model/GrooveViewScreenData;",
        "Lcom/android/calendar/newapi/commandbar/GrooveCommandBarController;",
        "Lcom/android/calendar/newapi/overflow/GrooveOverflowMenuController;",
        ">;",
        "Lcom/android/calendar/newapi/commandbar/GrooveCommandBarController$Callback;",
        "Lcom/android/calendar/newapi/common/GrooveDeleteDialog$Callback;",
        "Lcom/android/calendar/newapi/overflow/GrooveOverflowMenuController$Callback;"
    }
.end annotation


# instance fields
.field private mDeletePendingResult:Lcom/android/calendar/newapi/common/BatchingPendingResult;

.field protected mEventClient:Lcom/google/android/calendar/api/EventClient;

.field protected mHabitClient:Lcom/google/android/calendar/api/HabitClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;-><init>()V

    .line 52
    sget-object v0, Lcom/google/android/calendar/api/CalendarApi;->Habits:Lcom/google/android/calendar/api/HabitClient;

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->mHabitClient:Lcom/google/android/calendar/api/HabitClient;

    .line 53
    sget-object v0, Lcom/google/android/calendar/api/CalendarApi;->Events:Lcom/google/android/calendar/api/EventClient;

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->mEventClient:Lcom/google/android/calendar/api/EventClient;

    return-void
.end method

.method static synthetic access$002(Lcom/android/calendar/newapi/screen/GrooveViewScreenController;Lcom/android/calendar/newapi/common/BatchingPendingResult;)Lcom/android/calendar/newapi/common/BatchingPendingResult;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->mDeletePendingResult:Lcom/android/calendar/newapi/common/BatchingPendingResult;

    return-object p1
.end method

.method public static newInstance(Lcom/android/calendar/groove/TimelineGroove;Lcom/android/calendar/timely/animations/EventInfoAnimationData;)Lcom/android/calendar/newapi/screen/ViewScreenController;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;

    invoke-direct {v0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->prepare(Lcom/android/calendar/newapi/screen/ViewScreenController;Lcom/android/calendar/timely/TimelineEvent;Lcom/android/calendar/timely/animations/EventInfoAnimationData;)Lcom/android/calendar/newapi/screen/ViewScreenController;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic createCommandBarController()Lcom/android/calendar/newapi/commandbar/CommandBarController;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->createCommandBarController()Lcom/android/calendar/newapi/commandbar/GrooveCommandBarController;

    move-result-object v0

    return-object v0
.end method

.method protected createCommandBarController()Lcom/android/calendar/newapi/commandbar/GrooveCommandBarController;
    .locals 2

    .prologue
    .line 276
    new-instance v1, Lcom/android/calendar/newapi/commandbar/GrooveCommandBarController;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getTimelineItem()Lcom/android/calendar/timely/TimelineEvent;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    iget-boolean v0, v0, Lcom/android/calendar/groove/TimelineGroove;->completed:Z

    invoke-direct {v1, p0, v0}, Lcom/android/calendar/newapi/commandbar/GrooveCommandBarController;-><init>(Lcom/android/calendar/newapi/commandbar/GrooveCommandBarController$Callback;Z)V

    return-object v1
.end method

.method public createEditScreen()Lcom/android/calendar/newapi/screen/HostedFragment;
    .locals 6

    .prologue
    .line 286
    .line 287
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getData()Lcom/android/calendar/newapi/model/ScreenData;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->getHabit()Lcom/google/android/calendar/api/Habit;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getData()Lcom/android/calendar/newapi/model/ScreenData;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getTimelineItem()Lcom/android/calendar/timely/TimelineEvent;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    iget-wide v4, v0, Lcom/android/calendar/groove/TimelineGroove;->id:J

    .line 286
    invoke-static {v1, v2, v4, v5}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->newInstance(Lcom/google/android/calendar/api/Habit;Lcom/google/android/calendar/api/Event;J)Lcom/android/calendar/newapi/screen/GrooveEditScreenController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createLoader()Lcom/android/calendar/newapi/common/Loader;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->createLoader()Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;

    move-result-object v0

    return-object v0
.end method

.method public createLoader()Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getData()Lcom/android/calendar/newapi/model/ScreenData;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;

    .line 154
    new-instance v4, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;

    .line 155
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 156
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getTimelineItem()Lcom/android/calendar/timely/TimelineEvent;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/groove/TimelineGroove;

    if-nez v0, :cond_0

    move-object v3, v2

    .line 157
    :goto_0
    if-nez v0, :cond_1

    move-object v0, v2

    .line 158
    :goto_1
    invoke-direct {v4, v5, v1, v3, v0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;-><init>(Landroid/content/Context;Lcom/android/calendar/groove/TimelineGroove;Lcom/google/android/calendar/api/Habit;Lcom/google/android/calendar/api/Event;)V

    .line 154
    return-object v4

    .line 157
    :cond_0
    invoke-virtual {v0}, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->getHabit()Lcom/google/android/calendar/api/Habit;

    move-result-object v3

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {v0}, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    goto :goto_1
.end method

.method protected createOverflowMenuController()Lcom/android/calendar/newapi/overflow/GrooveOverflowMenuController;
    .locals 1

    .prologue
    .line 281
    new-instance v0, Lcom/android/calendar/newapi/overflow/GrooveOverflowMenuController;

    invoke-direct {v0, p0}, Lcom/android/calendar/newapi/overflow/GrooveOverflowMenuController;-><init>(Lcom/android/calendar/newapi/overflow/GrooveOverflowMenuController$Callback;)V

    return-object v0
.end method

.method protected bridge synthetic createOverflowMenuController()Lcom/android/calendar/newapi/overflow/OverflowMenuController;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->createOverflowMenuController()Lcom/android/calendar/newapi/overflow/GrooveOverflowMenuController;

    move-result-object v0

    return-object v0
.end method

.method protected createSegments(Lcom/android/calendar/newapi/screen/SegmentViews;)V
    .locals 5

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getData()Lcom/android/calendar/newapi/model/ScreenData;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;

    .line 103
    invoke-virtual {v0}, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->showSimplifiedScreen()Z

    move-result v1

    .line 105
    new-instance v2, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;-><init>(Landroid/content/Context;Lcom/android/calendar/newapi/model/ScreenData;)V

    iput-object v2, p1, Lcom/android/calendar/newapi/screen/SegmentViews;->headerView:Landroid/view/View;

    .line 106
    iget-object v2, p1, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/calendar/newapi/segment/time/TimeViewSegment;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/calendar/newapi/segment/time/TimeViewSegment;-><init>(Landroid/content/Context;Lcom/android/calendar/newapi/model/EventHolder;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    if-nez v1, :cond_0

    .line 108
    iget-object v1, p1, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/calendar/newapi/segment/contract/ContractViewSegment;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/calendar/newapi/segment/contract/ContractViewSegment;-><init>(Landroid/content/Context;Lcom/android/calendar/newapi/model/GrooveHolder;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v1, p1, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationViewSegment;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationViewSegment;-><init>(Landroid/content/Context;Lcom/android/calendar/newapi/model/GrooveHolder;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_0
    iget-object v1, p1, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/calendar/newapi/segment/visibility/VisibilityViewSegment;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/calendar/newapi/segment/visibility/VisibilityViewSegment;-><init>(Landroid/content/Context;Lcom/android/calendar/newapi/model/VisibilityHolder;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v1, p1, Lcom/android/calendar/newapi/screen/SegmentViews;->bodyViews:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/calendar/newapi/segment/calendar/CalendarViewSegment;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/calendar/newapi/segment/calendar/CalendarViewSegment;-><init>(Landroid/content/Context;Lcom/android/calendar/newapi/model/CalendarHolder;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method protected createViewScreen()Lcom/android/calendar/newapi/screen/ViewScreen;
    .locals 2

    .prologue
    .line 271
    new-instance v0, Lcom/android/calendar/newapi/screen/ViewScreen;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/newapi/screen/ViewScreen;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getAnalyticsCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    sget v0, Lcom/android/calendar/R$string;->analytics_category_groove:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAnalyticsViewType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    const-string v0, "groove"

    return-object v0
.end method

.method protected getPrimesLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    const-string v0, "GrooveView"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->groove_info_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/newapi/screen/ViewScreenController;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDeferClicked()V
    .locals 5

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getTimelineItem()Lcom/android/calendar/timely/TimelineEvent;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    .line 186
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, v0, Lcom/android/calendar/groove/TimelineGroove;->descriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    .line 189
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->analytics_label_info_bubble:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-static {v1, v2, v0, v3}, Lcom/android/calendar/alerts/HabitsIntentService;->createDeferIntent(Landroid/content/Context;Lcom/google/android/calendar/api/HabitDescriptor;Lcom/android/calendar/groove/TimelineGroove;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 191
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->dismiss()V

    .line 192
    return-void
.end method

.method public onDeleteClicked()V
    .locals 3

    .prologue
    .line 196
    .line 199
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getData()Lcom/android/calendar/newapi/model/ScreenData;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getSummary()Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getData()Lcom/android/calendar/newapi/model/ScreenData;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->showSimplifiedScreen()Z

    move-result v0

    .line 197
    invoke-static {p0, v1, v0}, Lcom/android/calendar/newapi/common/GrooveDeleteDialog;->newInstance(Landroid/app/Fragment;Ljava/lang/String;Z)Lcom/android/calendar/newapi/common/GrooveDeleteDialog;

    move-result-object v0

    .line 201
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "GrooveDeleteDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/newapi/common/GrooveDeleteDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public onDeleteConfirmed(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 208
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getTimelineItem()Lcom/android/calendar/timely/TimelineEvent;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/TimelineGroove;->dismissNotification(Landroid/content/Context;)V

    .line 209
    if-eqz p1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->mEventClient:Lcom/google/android/calendar/api/EventClient;

    .line 211
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getData()Lcom/android/calendar/newapi/model/ScreenData;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/calendar/api/EventClient;->delete(Lcom/google/android/calendar/api/EventDescriptor;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 212
    new-instance v1, Lcom/android/calendar/newapi/common/BatchingPendingResult;

    new-array v2, v5, [Lcom/google/android/gms/common/api/PendingResult;

    aput-object v0, v2, v4

    invoke-direct {v1, v2}, Lcom/android/calendar/newapi/common/BatchingPendingResult;-><init>([Lcom/google/android/gms/common/api/PendingResult;)V

    iput-object v1, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->mDeletePendingResult:Lcom/android/calendar/newapi/common/BatchingPendingResult;

    .line 214
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->analytics_action_deleted_instance:I

    invoke-static {v0, v1}, Lcom/android/calendar/groove/GrooveUtils;->logEvent(Landroid/content/Context;I)V

    .line 232
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->mDeletePendingResult:Lcom/android/calendar/newapi/common/BatchingPendingResult;

    new-instance v1, Lcom/android/calendar/newapi/screen/GrooveViewScreenController$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController$1;-><init>(Lcom/android/calendar/newapi/screen/GrooveViewScreenController;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/common/BatchingPendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 244
    return-void

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getData()Lcom/android/calendar/newapi/model/ScreenData;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getStartMillisSinceEpoch()J

    move-result-wide v2

    .line 217
    sget-object v1, Lcom/google/android/calendar/api/CalendarApi;->HabitFactory:Lcom/google/android/calendar/api/HabitFactory;

    .line 218
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getData()Lcom/android/calendar/newapi/model/ScreenData;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->getHabit()Lcom/google/android/calendar/api/Habit;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/calendar/api/HabitFactory;->modifyHabit(Lcom/google/android/calendar/api/Habit;)Lcom/google/android/calendar/api/HabitModifications;

    move-result-object v0

    .line 219
    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitModifications;->getContractModifications()Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v1

    invoke-interface {v1, v2, v3}, Lcom/google/android/calendar/api/HabitContractModifications;->setUntilMillisUtc(J)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 220
    iget-object v1, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->mHabitClient:Lcom/google/android/calendar/api/HabitClient;

    .line 221
    invoke-interface {v1, v0}, Lcom/google/android/calendar/api/HabitClient;->update(Lcom/google/android/calendar/api/HabitModifications;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 222
    new-instance v1, Lcom/android/calendar/newapi/common/BatchingPendingResult;

    new-array v2, v5, [Lcom/google/android/gms/common/api/PendingResult;

    aput-object v0, v2, v4

    invoke-direct {v1, v2}, Lcom/android/calendar/newapi/common/BatchingPendingResult;-><init>([Lcom/google/android/gms/common/api/PendingResult;)V

    iput-object v1, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->mDeletePendingResult:Lcom/android/calendar/newapi/common/BatchingPendingResult;

    .line 224
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->analytics_action_deleted_all_following:I

    invoke-static {v0, v1}, Lcom/android/calendar/groove/GrooveUtils;->logEvent(Landroid/content/Context;I)V

    .line 227
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 230
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getData()Lcom/android/calendar/newapi/model/ScreenData;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->getHabit()Lcom/google/android/calendar/api/Habit;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/Habit;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v0

    .line 229
    invoke-static {v2, v0}, Lcom/android/calendar/alerts/HabitsIntentService;->createRefreshNotificationsIntent(Landroid/content/Context;Lcom/google/android/calendar/api/HabitDescriptor;)Landroid/content/Intent;

    move-result-object v0

    .line 228
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->onDestroyView()V

    .line 81
    return-void
.end method

.method public onMarkAsDoneClicked()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getTimelineItem()Lcom/android/calendar/timely/TimelineEvent;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    .line 166
    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->setDelayedAction(Lcom/android/calendar/timely/TimelineItem;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->dismiss()V

    .line 180
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v0, Lcom/android/calendar/groove/TimelineGroove;->descriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    iget-object v3, v3, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 174
    invoke-virtual {v3}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-boolean v4, v0, Lcom/android/calendar/groove/TimelineGroove;->completed:Z

    if-nez v4, :cond_1

    const/4 v1, 0x1

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/calendar/R$string;->analytics_label_info_bubble:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-static {v2, v3, v0, v1, v4}, Lcom/android/calendar/alerts/HabitsIntentService;->createCompleteIntent(Landroid/content/Context;Landroid/accounts/Account;Lcom/android/calendar/groove/TimelineGroove;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 179
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->dismiss()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->onStart()V

    .line 86
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->mDeletePendingResult:Lcom/android/calendar/newapi/common/BatchingPendingResult;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->mDeletePendingResult:Lcom/android/calendar/newapi/common/BatchingPendingResult;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/common/BatchingPendingResult;->cancel()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->mDeletePendingResult:Lcom/android/calendar/newapi/common/BatchingPendingResult;

    .line 94
    :cond_0
    invoke-super {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->onStop()V

    .line 95
    return-void
.end method

.method protected showEditScreen()V
    .locals 3

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->createEditScreen()Lcom/android/calendar/newapi/screen/HostedFragment;

    move-result-object v0

    .line 293
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "EditScreenController"

    invoke-static {v1, v0, v2}, Lcom/android/calendar/newapi/screen/HostDialog;->showWithChildFragment(Landroid/app/FragmentManager;Lcom/android/calendar/newapi/screen/HostedFragment;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public updateSegmentsIfPossible(Lcom/google/android/calendar/api/HabitModifications;Lcom/google/android/calendar/api/EventModifications;Z)V
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getLoader()Lcom/android/calendar/newapi/common/Loader;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;->isFinishedSuccessfully()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->areSegmentsCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    if-eqz p3, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->disableAnimations()V

    .line 139
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->dismiss()V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getData()Lcom/android/calendar/newapi/model/ScreenData;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;

    .line 143
    invoke-virtual {v0, p1}, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->setHabit(Lcom/google/android/calendar/api/Habit;)V

    .line 144
    invoke-virtual {v0, p2}, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->setEvent(Lcom/google/android/calendar/api/Event;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->updateSegments()V

    goto :goto_0
.end method
