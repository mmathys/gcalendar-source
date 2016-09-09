.class public abstract Lcom/android/calendar/newapi/screen/ViewScreenController;
.super Lcom/android/calendar/event/DetailsDialogFragment;
.source "ViewScreenController.java"

# interfaces
.implements Lcom/android/calendar/newapi/common/Loader$Callback;
.implements Lcom/android/calendar/newapi/screen/ViewScreen$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "LoaderT::Lcom/android/calendar/newapi/common/Loader",
        "<TDataT;>;TimelineItemT:",
        "Lcom/android/calendar/timely/TimelineEvent;",
        "DataT:",
        "Lcom/android/calendar/newapi/model/ScreenData;",
        "CommandBarControllerT:",
        "Lcom/android/calendar/newapi/commandbar/CommandBarController",
        "<*TDataT;>;OverflowMenuControllerT:",
        "Lcom/android/calendar/newapi/overflow/OverflowMenuController",
        "<*TDataT;>;>",
        "Lcom/android/calendar/event/DetailsDialogFragment;",
        "Lcom/android/calendar/newapi/common/Loader$Callback;",
        "Lcom/android/calendar/newapi/screen/ViewScreen$Callback;"
    }
.end annotation


# instance fields
.field private mAnalyticsViewLogged:Z

.field private mAnimationHelper:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

.field private mCommandBarController:Lcom/android/calendar/newapi/commandbar/CommandBarController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCommandBarControllerT;"
        }
    .end annotation
.end field

.field public mData:Lcom/android/calendar/newapi/model/ScreenData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataT;"
        }
    .end annotation
.end field

.field private mDelayedAction:Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;

.field private mEventColor:I

.field private mInstanceRestored:Z

.field private mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

.field private mLoader:Lcom/android/calendar/newapi/common/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "LoaderT;"
        }
    .end annotation
.end field

.field private mOverflowMenuController:Lcom/android/calendar/newapi/overflow/OverflowMenuController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TOverflowMenuControllerT;"
        }
    .end annotation
.end field

.field private mSegmentsCreated:Z

.field private mStarted:Z

.field private mTimelineItem:Lcom/android/calendar/timely/TimelineEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTimelineItemT;"
        }
    .end annotation
.end field

.field private mViewScreen:Lcom/android/calendar/newapi/screen/ViewScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/calendar/event/DetailsDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/newapi/screen/ViewScreenController;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mStarted:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/newapi/screen/ViewScreenController;)Lcom/android/calendar/newapi/screen/ViewScreen;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mViewScreen:Lcom/android/calendar/newapi/screen/ViewScreen;

    return-object v0
.end method

.method public static notifyContentProviderUpdateIfAvailable(Landroid/app/FragmentManager;Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 113
    const-string v0, "ViewScreenController"

    .line 114
    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/screen/ViewScreenController;

    .line 115
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mStarted:Z

    if-nez v1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/calendar/newapi/screen/ViewScreenController$1;

    invoke-direct {v2, v0, p1}, Lcom/android/calendar/newapi/screen/ViewScreenController$1;-><init>(Lcom/android/calendar/newapi/screen/ViewScreenController;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static prepare(Lcom/android/calendar/newapi/screen/ViewScreenController;Lcom/android/calendar/timely/TimelineEvent;Lcom/android/calendar/timely/animations/EventInfoAnimationData;)Lcom/android/calendar/newapi/screen/ViewScreenController;
    .locals 2

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mTimelineItem:Lcom/android/calendar/timely/TimelineEvent;

    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    const-string v1, "animation_data"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->setArguments(Landroid/os/Bundle;)V

    .line 98
    return-object p0
.end method


# virtual methods
.method protected areSegmentsCreated()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mSegmentsCreated:Z

    return v0
.end method

.method protected abstract createCommandBarController()Lcom/android/calendar/newapi/commandbar/CommandBarController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCommandBarControllerT;"
        }
    .end annotation
.end method

.method public abstract createLoader()Lcom/android/calendar/newapi/common/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "LoaderT;"
        }
    .end annotation
.end method

.method protected abstract createOverflowMenuController()Lcom/android/calendar/newapi/overflow/OverflowMenuController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOverflowMenuControllerT;"
        }
    .end annotation
.end method

.method protected abstract createSegments(Lcom/android/calendar/newapi/screen/SegmentViews;)V
.end method

.method protected abstract createViewScreen()Lcom/android/calendar/newapi/screen/ViewScreen;
.end method

.method protected disableAnimations()V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mAnimationHelper:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->disableAnimations()V

    .line 461
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 490
    instance-of v1, v0, Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;

    if-eqz v1, :cond_2

    .line 491
    check-cast v0, Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;

    .line 492
    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mAnimationHelper:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    invoke-virtual {v1, v0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->close(Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;)V

    goto :goto_0

    .line 493
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 495
    invoke-super {p0}, Lcom/android/calendar/event/DetailsDialogFragment;->dismiss()V

    goto :goto_0
.end method

.method protected abstract getAnalyticsCategory()Ljava/lang/String;
.end method

.method protected abstract getAnalyticsViewType()Ljava/lang/String;
.end method

.method protected getAnimationData()Lcom/android/calendar/timely/animations/EventInfoAnimationData;
    .locals 2

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "animation_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "animation_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    .line 238
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentViewId()I
    .locals 1

    .prologue
    .line 347
    sget v0, Lcom/android/calendar/R$id;->event_info:I

    return v0
.end method

.method protected getData()Lcom/android/calendar/newapi/model/ScreenData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDataT;"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mData:Lcom/android/calendar/newapi/model/ScreenData;

    return-object v0
.end method

.method public getEventColor()I
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mData:Lcom/android/calendar/newapi/model/ScreenData;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/model/ScreenData;->getColor(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method protected getLatencyLogger()Lcom/android/calendar/latency/LatencyLogger;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

    return-object v0
.end method

.method public getLoader()Lcom/android/calendar/newapi/common/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "LoaderT;"
        }
    .end annotation

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mLoader:Lcom/android/calendar/newapi/common/Loader;

    return-object v0
.end method

.method public getLoadingBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;
    .locals 1

    .prologue
    .line 385
    sget-object v0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->Floating:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    return-object v0
.end method

.method public getOverlayBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mOverlayBackground:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    return-object v0
.end method

.method protected getOverlayView()Landroid/view/View;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mAnimationHelper:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->getOverlayView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getPrimesLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string v0, ""

    return-object v0
.end method

.method public getShortBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;
    .locals 1

    .prologue
    .line 390
    sget-object v0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->Floating:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    return-object v0
.end method

.method public getTallBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;
    .locals 1

    .prologue
    .line 395
    sget-object v0, Lcom/android/calendar/OverlayFragment$OverlayBackground;->BottomDocked:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    return-object v0
.end method

.method public getTimelineItem()Lcom/android/calendar/timely/TimelineEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTimelineItemT;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mTimelineItem:Lcom/android/calendar/timely/TimelineEvent;

    return-object v0
.end method

.method public getTroubleshootInfoBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getViewScreen()Lcom/android/calendar/newapi/screen/ViewScreen;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mViewScreen:Lcom/android/calendar/newapi/screen/ViewScreen;

    return-object v0
.end method

.method protected getWindowHeight([I)Z
    .locals 2

    .prologue
    .line 356
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getLoadingBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/OverlayFragment$OverlayBackground;->getHeight()I

    move-result v1

    aput v1, p1, v0

    .line 357
    const/4 v0, 0x1

    return v0
.end method

.method protected isEditable()Z
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mData:Lcom/android/calendar/newapi/model/ScreenData;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/model/ScreenData;->isEditable()Z

    move-result v0

    return v0
.end method

.method public isInstanceRestored()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mInstanceRestored:Z

    return v0
.end method

.method public onCancelClicked()V
    .locals 0

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->dismiss()V

    .line 480
    return-void
.end method

.method public onContentProviderUpdated(Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 573
    if-nez v0, :cond_1

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mTimelineItem:Lcom/android/calendar/timely/TimelineEvent;

    iget-wide v2, v1, Lcom/android/calendar/timely/TimelineEvent;->id:J

    .line 578
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 579
    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->createLoader()Lcom/android/calendar/newapi/common/Loader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mLoader:Lcom/android/calendar/newapi/common/Loader;

    .line 582
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mLoader:Lcom/android/calendar/newapi/common/Loader;

    invoke-interface {v0, p0}, Lcom/android/calendar/newapi/common/Loader;->setCallback(Lcom/android/calendar/newapi/common/Loader$Callback;)V

    .line 583
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mLoader:Lcom/android/calendar/newapi/common/Loader;

    invoke-interface {v0}, Lcom/android/calendar/newapi/common/Loader;->load()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    invoke-super {p0, p1}, Lcom/android/calendar/event/DetailsDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mInstanceRestored:Z

    .line 140
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->isInstanceRestored()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const-string v0, "INSTANCE_ANALYTICS_VIEW_LOGGED"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mAnalyticsViewLogged:Z

    .line 142
    const-string v0, "TIMELINE_ITEM_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineEvent;

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mTimelineItem:Lcom/android/calendar/timely/TimelineEvent;

    .line 143
    const-string v0, "EVENT_COLOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mEventColor:I

    .line 144
    const-string v0, "INSTANCE_DATA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/model/ScreenData;

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mData:Lcom/android/calendar/newapi/model/ScreenData;

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getPrimesLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    const-string v0, "%s.Created"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getPrimesLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    .line 149
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 139
    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 263
    new-instance v0, Lcom/android/calendar/newapi/screen/ViewScreenController$2;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/newapi/screen/ViewScreenController$2;-><init>(Lcom/android/calendar/newapi/screen/ViewScreenController;Landroid/content/Context;)V

    .line 273
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 154
    sget v0, Lcom/android/calendar/R$layout;->newapi_view_screen:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getPrimesLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    const-string v0, "%s.Destroyed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getPrimesLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    .line 231
    :cond_0
    invoke-super {p0}, Lcom/android/calendar/event/DetailsDialogFragment;->onDestroy()V

    .line 232
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mSegmentsCreated:Z

    .line 195
    iput-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mCommandBarController:Lcom/android/calendar/newapi/commandbar/CommandBarController;

    .line 196
    iput-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mOverflowMenuController:Lcom/android/calendar/newapi/overflow/OverflowMenuController;

    .line 197
    iput-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mViewScreen:Lcom/android/calendar/newapi/screen/ViewScreen;

    .line 198
    invoke-super {p0}, Lcom/android/calendar/event/DetailsDialogFragment;->onDestroyView()V

    .line 199
    return-void
.end method

.method protected onDialogBackPressed()V
    .locals 0

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->dismiss()V

    .line 523
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 407
    invoke-super {p0, p1}, Lcom/android/calendar/event/DetailsDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 408
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 409
    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mDelayedAction:Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/android/calendar/event/EventInfoFragment$DelayedActionPerformer;

    if-eqz v1, :cond_1

    .line 410
    check-cast v0, Lcom/android/calendar/event/EventInfoFragment$DelayedActionPerformer;

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mDelayedAction:Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;

    invoke-interface {v0, v1}, Lcom/android/calendar/event/EventInfoFragment$DelayedActionPerformer;->performDelayedAction(Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;)V

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mDelayedAction:Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;

    if-eqz v0, :cond_0

    .line 412
    const-string v0, "ViewScreenController"

    const-string v1, "Wanted to perform a delayed action without a DelayedActionPerformer."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public onEditClicked()V
    .locals 4

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 504
    if-eqz v0, :cond_0

    .line 505
    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v1

    .line 507
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getAnalyticsCategory()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->analytics_action_edit_button_pressed:I

    .line 508
    invoke-virtual {p0, v3}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 505
    invoke-interface {v1, v0, v2, v3}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->showEditScreen()V

    .line 513
    return-void
.end method

.method protected onFinalLayoutFinished()V
    .locals 1

    .prologue
    .line 439
    invoke-super {p0}, Lcom/android/calendar/event/DetailsDialogFragment;->onFinalLayoutFinished()V

    .line 442
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->isFullScreen(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mAnimationHelper:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->open()V

    .line 445
    :cond_0
    return-void
.end method

.method public final onLoadingFailure(Lcom/android/calendar/newapi/common/Loader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/newapi/common/Loader",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 659
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->edit_error_event_not_found:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 660
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->dismiss()V

    .line 661
    return-void
.end method

.method public final onLoadingSuccess(Lcom/android/calendar/newapi/common/Loader;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/newapi/common/Loader",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 597
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 601
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getLoader()Lcom/android/calendar/newapi/common/Loader;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/newapi/common/Loader;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/model/ScreenData;

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mData:Lcom/android/calendar/newapi/model/ScreenData;

    .line 604
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mCommandBarController:Lcom/android/calendar/newapi/commandbar/CommandBarController;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mCommandBarController:Lcom/android/calendar/newapi/commandbar/CommandBarController;

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mData:Lcom/android/calendar/newapi/model/ScreenData;

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/commandbar/CommandBarController;->updateModel(Ljava/lang/Object;)V

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mOverflowMenuController:Lcom/android/calendar/newapi/overflow/OverflowMenuController;

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mOverflowMenuController:Lcom/android/calendar/newapi/overflow/OverflowMenuController;

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mData:Lcom/android/calendar/newapi/model/ScreenData;

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/overflow/OverflowMenuController;->updateModel(Ljava/lang/Object;)V

    .line 614
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getEventColor()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mEventColor:I

    .line 615
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mViewScreen:Lcom/android/calendar/newapi/screen/ViewScreen;

    iget v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mEventColor:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/screen/ViewScreen;->setEventColor(I)V

    .line 616
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mViewScreen:Lcom/android/calendar/newapi/screen/ViewScreen;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->isEditable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/screen/ViewScreen;->setEditableStatus(Z)V

    .line 620
    iget-boolean v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mSegmentsCreated:Z

    if-eqz v0, :cond_3

    .line 624
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->updateSegments()V

    .line 653
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getLatencyLogger()Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 654
    return-void

    .line 628
    :cond_3
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 629
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->isInstanceRestored()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mAnalyticsViewLogged:Z

    if-nez v1, :cond_4

    .line 630
    iput-boolean v5, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mAnalyticsViewLogged:Z

    .line 631
    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v1

    .line 632
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->analytics_event_view:I

    invoke-virtual {p0, v3}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getAnalyticsViewType()Ljava/lang/String;

    move-result-object v4

    .line 631
    invoke-interface {v1, v2, v3, v4}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v1

    .line 634
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getAnalyticsCategory()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->analytics_action_info_bubble_shown:I

    .line 635
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 633
    invoke-interface {v1, v0, v2, v3}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    :cond_4
    new-instance v0, Lcom/android/calendar/newapi/screen/SegmentViews;

    invoke-direct {v0}, Lcom/android/calendar/newapi/screen/SegmentViews;-><init>()V

    .line 639
    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->createSegments(Lcom/android/calendar/newapi/screen/SegmentViews;)V

    .line 640
    iput-boolean v5, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mSegmentsCreated:Z

    .line 641
    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mViewScreen:Lcom/android/calendar/newapi/screen/ViewScreen;

    invoke-virtual {v1, v0}, Lcom/android/calendar/newapi/screen/ViewScreen;->arrangeSegmentViews(Lcom/android/calendar/newapi/screen/SegmentViews;)V

    .line 642
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mViewScreen:Lcom/android/calendar/newapi/screen/ViewScreen;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/ViewScreen;->updateSegmentViews()V

    .line 643
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->onViewUpdated()V

    .line 647
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->isFullScreen(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 648
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mAnimationHelper:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->open()V

    goto :goto_0
.end method

.method public onPreDraw(Landroid/view/View;Lcom/android/calendar/OverlayFragment$PreDrawListener;)Z
    .locals 2

    .prologue
    .line 368
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    .line 369
    const/4 v0, 0x0

    .line 380
    :goto_0
    return v0

    .line 372
    :cond_0
    invoke-virtual {p2}, Lcom/android/calendar/OverlayFragment$PreDrawListener;->remove()V

    .line 373
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getContentViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 374
    if-eqz v0, :cond_1

    .line 377
    invoke-static {p0, v0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->addLayoutChangeListener(Lcom/android/calendar/OverlayFragment;Landroid/view/View;)Lcom/android/calendar/OverlayFragment$LayoutChangeListener;

    move-result-object v1

    .line 378
    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/newapi/screen/ViewScreenController;->onGlobalLayout(Landroid/view/View;Lcom/android/calendar/OverlayFragment$LayoutChangeListener;)V

    .line 380
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/calendar/event/DetailsDialogFragment;->onPreDraw(Landroid/view/View;Lcom/android/calendar/OverlayFragment$PreDrawListener;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 159
    const-string v0, "TIMELINE_ITEM_KEY"

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mTimelineItem:Lcom/android/calendar/timely/TimelineEvent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 160
    const-string v0, "INSTANCE_ANALYTICS_VIEW_LOGGED"

    iget-boolean v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mAnalyticsViewLogged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 161
    const-string v0, "EVENT_COLOR_KEY"

    iget v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mEventColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    const-string v0, "INSTANCE_DATA"

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mData:Lcom/android/calendar/newapi/model/ScreenData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 163
    invoke-super {p0, p1}, Lcom/android/calendar/event/DetailsDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 164
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 203
    invoke-super {p0}, Lcom/android/calendar/event/DetailsDialogFragment;->onStart()V

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mStarted:Z

    .line 206
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mLoader:Lcom/android/calendar/newapi/common/Loader;

    invoke-interface {v0, p0}, Lcom/android/calendar/newapi/common/Loader;->setCallback(Lcom/android/calendar/newapi/common/Loader$Callback;)V

    .line 207
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mLoader:Lcom/android/calendar/newapi/common/Loader;

    invoke-interface {v0}, Lcom/android/calendar/newapi/common/Loader;->load()V

    .line 209
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 211
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mViewScreen:Lcom/android/calendar/newapi/screen/ViewScreen;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/screen/ViewScreen;->setCallback(Lcom/android/calendar/newapi/screen/ViewScreen$Callback;)V

    .line 212
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mViewScreen:Lcom/android/calendar/newapi/screen/ViewScreen;

    iget v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mEventColor:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/screen/ViewScreen;->setEventColor(I)V

    .line 213
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 217
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mLoader:Lcom/android/calendar/newapi/common/Loader;

    invoke-interface {v0, v1}, Lcom/android/calendar/newapi/common/Loader;->setCallback(Lcom/android/calendar/newapi/common/Loader$Callback;)V

    .line 218
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mLoader:Lcom/android/calendar/newapi/common/Loader;

    invoke-interface {v0}, Lcom/android/calendar/newapi/common/Loader;->cancel()V

    .line 220
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mViewScreen:Lcom/android/calendar/newapi/screen/ViewScreen;

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/screen/ViewScreen;->setCallback(Lcom/android/calendar/newapi/screen/ViewScreen$Callback;)V

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mStarted:Z

    .line 223
    invoke-super {p0}, Lcom/android/calendar/event/DetailsDialogFragment;->onStop()V

    .line 224
    return-void
.end method

.method protected onTouchOutside()V
    .locals 0

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->dismiss()V

    .line 528
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0, p1, p2}, Lcom/android/calendar/event/DetailsDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->createCommandBarController()Lcom/android/calendar/newapi/commandbar/CommandBarController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mCommandBarController:Lcom/android/calendar/newapi/commandbar/CommandBarController;

    .line 170
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->createOverflowMenuController()Lcom/android/calendar/newapi/overflow/OverflowMenuController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mOverflowMenuController:Lcom/android/calendar/newapi/overflow/OverflowMenuController;

    .line 171
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->createViewScreen()Lcom/android/calendar/newapi/screen/ViewScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mViewScreen:Lcom/android/calendar/newapi/screen/ViewScreen;

    .line 172
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mViewScreen:Lcom/android/calendar/newapi/screen/ViewScreen;

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mCommandBarController:Lcom/android/calendar/newapi/commandbar/CommandBarController;

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/screen/ViewScreen;->setCommandBarController(Lcom/android/calendar/newapi/commandbar/CommandBarController;)V

    .line 173
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mViewScreen:Lcom/android/calendar/newapi/screen/ViewScreen;

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mOverflowMenuController:Lcom/android/calendar/newapi/overflow/OverflowMenuController;

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/screen/ViewScreen;->setOverflowMenuController(Lcom/android/calendar/newapi/overflow/OverflowMenuController;)V

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

    .line 177
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->createLoader()Lcom/android/calendar/newapi/common/Loader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mLoader:Lcom/android/calendar/newapi/common/Loader;

    .line 178
    sget v0, Lcom/android/calendar/R$id;->event_info_overlay_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mViewScreen:Lcom/android/calendar/newapi/screen/ViewScreen;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 180
    new-instance v0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getAnimationData()Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;-><init>(Lcom/android/calendar/newapi/screen/ViewScreenController;Lcom/android/calendar/timely/animations/EventInfoAnimationData;)V

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mAnimationHelper:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    .line 183
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->isInstanceRestored()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mAnimationHelper:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->disableAnimations()V

    .line 185
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mAnimationHelper:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->initialize()V

    .line 186
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mAnimationHelper:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->open()V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mAnimationHelper:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->initialize()V

    goto :goto_0
.end method

.method protected onViewUpdated()V
    .locals 3

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->isFullScreen(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mViewScreen:Lcom/android/calendar/newapi/screen/ViewScreen;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/ViewScreen;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mViewScreen:Lcom/android/calendar/newapi/screen/ViewScreen;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/screen/ViewScreen;->setVisibility(I)V

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mViewScreen:Lcom/android/calendar/newapi/screen/ViewScreen;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/ViewScreen;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 546
    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mOverlayBackground:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    sget-object v2, Lcom/android/calendar/OverlayFragment$OverlayBackground;->Unknown:Lcom/android/calendar/OverlayFragment$OverlayBackground;

    if-ne v1, v2, :cond_2

    .line 549
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getLoadingBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/calendar/OverlayFragment$OverlayBackground;->setToCard(Lcom/android/calendar/OverlayFragment;)Lcom/android/calendar/OverlayFragment$OverlayBackground;

    .line 550
    iget-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mViewScreen:Lcom/android/calendar/newapi/screen/ViewScreen;

    invoke-virtual {v1}, Lcom/android/calendar/newapi/screen/ViewScreen;->requestLayout()V

    .line 552
    if-eqz v0, :cond_1

    .line 553
    new-instance v1, Lcom/android/calendar/newapi/screen/ViewScreenController$3;

    invoke-direct {v1, p0}, Lcom/android/calendar/newapi/screen/ViewScreenController$3;-><init>(Lcom/android/calendar/newapi/screen/ViewScreenController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 566
    :cond_1
    :goto_0
    return-void

    .line 562
    :cond_2
    if-eqz v0, :cond_1

    .line 563
    new-instance v1, Lcom/android/calendar/OverlayFragment$PreDrawListener;

    iget-object v2, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mViewScreen:Lcom/android/calendar/newapi/screen/ViewScreen;

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/OverlayFragment$PreDrawListener;-><init>(Lcom/android/calendar/OverlayFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method public setDelayedAction(Lcom/android/calendar/timely/TimelineItem;I)Z
    .locals 3

    .prologue
    .line 424
    new-instance v1, Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;

    invoke-direct {v1, p1, p2}, Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;-><init>(Lcom/android/calendar/timely/TimelineItem;I)V

    .line 425
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 426
    instance-of v2, v0, Lcom/android/calendar/event/EventInfoFragment$DelayedActionPerformer;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/calendar/event/EventInfoFragment$DelayedActionPerformer;

    .line 427
    invoke-interface {v0, v1}, Lcom/android/calendar/event/EventInfoFragment$DelayedActionPerformer;->shouldDelayAction(Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 428
    :cond_0
    const/4 v0, 0x0

    .line 431
    :goto_0
    return v0

    .line 430
    :cond_1
    iput-object v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mDelayedAction:Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;

    .line 431
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract showEditScreen()V
.end method

.method protected updateCommandBar()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mCommandBarController:Lcom/android/calendar/newapi/commandbar/CommandBarController;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mCommandBarController:Lcom/android/calendar/newapi/commandbar/CommandBarController;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getData()Lcom/android/calendar/newapi/model/ScreenData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/commandbar/CommandBarController;->updateModel(Ljava/lang/Object;)V

    .line 310
    :cond_0
    return-void
.end method

.method public updateSegments()V
    .locals 2

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/ViewScreenController;->getEventColor()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mEventColor:I

    .line 469
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mViewScreen:Lcom/android/calendar/newapi/screen/ViewScreen;

    iget v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mEventColor:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/screen/ViewScreen;->setEventColor(I)V

    .line 470
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mTimelineItem:Lcom/android/calendar/timely/TimelineEvent;

    iget v1, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mEventColor:I

    iput v1, v0, Lcom/android/calendar/timely/TimelineEvent;->color:I

    .line 471
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mAnimationHelper:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper;->reinitialize()V

    .line 472
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenController;->mViewScreen:Lcom/android/calendar/newapi/screen/ViewScreen;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/ViewScreen;->updateSegmentViews()V

    .line 473
    return-void
.end method
