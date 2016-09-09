.class public Lcom/android/calendar/event/EventInfoActivity;
.super Lcom/android/calendar/AbstractCalendarActivity;
.source "EventInfoActivity.java"

# interfaces
.implements Lcom/android/calendar/OverlayFragment$OverlayListener;
.implements Lcom/android/calendar/OverlayFragment$OverlaySetting;
.implements Lcom/android/calendar/Troubleshootable;
.implements Lcom/android/calendar/ViewScreenFactory$OnViewScreenCreatedCallback;
.implements Lcom/android/calendar/event/EventInfoFragment$OnInfoChangedListener;
.implements Lcom/android/calendar/event/edit/EditDetailsFragment$OnEditChangedListener;
.implements Lcom/android/calendar/timely/ChipRecycler$ChipRecyclerProvider;
.implements Lcom/android/calendar/timely/TimelyChip$OnLaunchDetailsHandler;


# instance fields
.field private final mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mViewScreenBuilderTask:Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/calendar/AbstractCalendarActivity;-><init>()V

    .line 77
    new-instance v0, Lcom/android/calendar/timely/ChipRecycler;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/ChipRecycler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    .line 83
    new-instance v0, Lcom/android/calendar/event/EventInfoActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/event/EventInfoActivity$1;-><init>(Lcom/android/calendar/event/EventInfoActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/EventInfoActivity;Lcom/android/calendar/OverlayFragment;)V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/EventInfoActivity;->finishDismissOverlay(Lcom/android/calendar/OverlayFragment;)V

    return-void
.end method

.method private clearScreenBuilderTask()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->mViewScreenBuilderTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->mViewScreenBuilderTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->mViewScreenBuilderTask:Landroid/os/AsyncTask;

    .line 265
    :cond_0
    return-void
.end method

.method private launchFragmentFromIntent()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 158
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->readTimelineItemFromIntent(Landroid/content/Intent;)Lcom/android/calendar/timely/TimelineItem;

    move-result-object v1

    .line 159
    if-nez v1, :cond_0

    .line 160
    sget v0, Lcom/android/calendar/R$string;->event_not_found:I

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 161
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoActivity;->finish()V

    .line 196
    :goto_0
    return-void

    .line 165
    :cond_0
    const-string v2, "EventInfoActivity"

    const-string v3, "Launching intent %s with action %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 167
    instance-of v0, v1, Lcom/android/calendar/task/TimelineTaskBundle;

    if-eqz v0, :cond_3

    .line 170
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "data_factory"

    .line 171
    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/DataFactory;

    .line 172
    if-nez v0, :cond_2

    .line 173
    new-instance v0, Lcom/android/calendar/timely/DataFactory;

    invoke-direct {v0}, Lcom/android/calendar/timely/DataFactory;-><init>()V

    .line 174
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/DataFactory;->initialize(Landroid/content/Context;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "data_factory"

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 182
    :cond_1
    :goto_1
    new-instance v2, Lcom/android/calendar/timely/TaskBundleFragment;

    invoke-direct {v2}, Lcom/android/calendar/timely/TaskBundleFragment;-><init>()V

    move-object v0, v1

    .line 183
    check-cast v0, Lcom/android/calendar/task/TimelineTaskBundle;

    .line 184
    invoke-static {v0, v6}, Lcom/android/calendar/timely/TaskBundleFragment;->createArguments(Lcom/android/calendar/task/TimelineTaskBundle;Lcom/android/calendar/timely/animations/EventInfoAnimationData;)Landroid/os/Bundle;

    move-result-object v0

    .line 183
    invoke-virtual {v2, v0}, Lcom/android/calendar/timely/TaskBundleFragment;->setArguments(Landroid/os/Bundle;)V

    .line 186
    invoke-virtual {v2}, Lcom/android/calendar/timely/TaskBundleFragment;->manageAllTasksReady()V

    .line 187
    sget-object v0, Lcom/android/calendar/timely/TaskBundleFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/android/calendar/event/EventInfoActivity;->showOverlayFragment(Ljava/lang/String;Lcom/android/calendar/OverlayFragment;)V

    .line 194
    :goto_2
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->analytics_event_view:I

    .line 195
    invoke-virtual {p0, v1}, Lcom/android/calendar/event/EventInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-interface {v0, p0, v1}, Lcom/android/calendar/AnalyticsLogger;->trackView(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_2
    invoke-virtual {v0}, Lcom/android/calendar/timely/DataFactory;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/DataFactory;->initialize(Landroid/content/Context;)V

    goto :goto_1

    .line 189
    :cond_3
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoActivity;->clearScreenBuilderTask()V

    .line 191
    invoke-static {p0, v1, v6, p0}, Lcom/android/calendar/ViewScreenFactory;->createViewScreen(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/timely/animations/EventInfoAnimationData;Lcom/android/calendar/ViewScreenFactory$OnViewScreenCreatedCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->mViewScreenBuilderTask:Landroid/os/AsyncTask;

    goto :goto_2
.end method

.method private setTitle(Z)V
    .locals 2

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 511
    sget-object v0, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    .line 512
    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/OverlayFragment;

    .line 513
    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 514
    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 515
    :cond_0
    invoke-virtual {v0}, Lcom/android/calendar/OverlayFragment;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EventInfoActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 517
    :cond_1
    return-void
.end method


# virtual methods
.method public beforeDeleteInitiated(Landroid/app/DialogFragment;)V
    .locals 0

    .prologue
    .line 476
    return-void
.end method

.method public dismissOverlay(Lcom/android/calendar/OverlayFragment;Z)V
    .locals 4

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 377
    invoke-virtual {p0, v0, p1}, Lcom/android/calendar/event/EventInfoActivity;->getFirstBackStackEntry(Landroid/app/FragmentManager;Landroid/app/Fragment;)I

    move-result v0

    .line 380
    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 381
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoActivity;->finish()V

    .line 382
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    const/high16 v0, 0x10a0000

    sget v1, Lcom/android/calendar/R$anim;->event_info_anim_shrink:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/EventInfoActivity;->overridePendingTransition(II)V

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    if-eqz p2, :cond_2

    .line 388
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/calendar/event/EventInfoActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/android/calendar/event/EventInfoActivity$2;-><init>(Lcom/android/calendar/event/EventInfoActivity;Lcom/android/calendar/OverlayFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 395
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/EventInfoActivity;->finishDismissOverlay(Lcom/android/calendar/OverlayFragment;)V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 278
    invoke-super {p0, p1}, Lcom/android/calendar/AbstractCalendarActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 279
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 278
    :goto_0
    return v0

    .line 279
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChipRecycler()Lcom/android/calendar/timely/ChipRecycler;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    return-object v0
.end method

.method public getOverlaySettingWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public getTroubleshootInfoBundle()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoActivity;->getOverlayFragment()Lcom/android/calendar/OverlayFragment;

    move-result-object v0

    .line 114
    instance-of v1, v0, Lcom/android/calendar/Troubleshootable;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    check-cast v0, Lcom/android/calendar/Troubleshootable;

    invoke-interface {v0}, Lcom/android/calendar/Troubleshootable;->getTroubleshootInfoBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initOverlaySetting(Landroid/view/GestureDetector$OnGestureListener;Z)V
    .locals 1

    .prologue
    .line 299
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0, p1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 300
    invoke-virtual {p0, p2}, Lcom/android/calendar/event/EventInfoActivity;->setFinishOnTouchOutside(Z)V

    .line 301
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoActivity;->getOverlayFragment()Lcom/android/calendar/OverlayFragment;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EventInfoActivity;->finishDismissOverlay(Lcom/android/calendar/OverlayFragment;)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-super {p0}, Lcom/android/calendar/AbstractCalendarActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/android/calendar/AbstractCalendarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    invoke-static {p0}, Lcom/google/android/calendar/PerformanceMetricCollector;->start(Landroid/content/Context;)V

    .line 142
    sget v0, Lcom/android/calendar/R$style;->EventInfoActivityTheme:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EventInfoActivity;->setTheme(I)V

    .line 143
    sget v0, Lcom/android/calendar/R$layout;->simple_frame_layout:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EventInfoActivity;->setContentView(I)V

    .line 144
    if-eqz p1, :cond_0

    .line 147
    :goto_0
    if-eqz p1, :cond_1

    .line 148
    const-string v0, "EventInfoActivity.Recreated"

    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    .line 152
    :goto_1
    return-void

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoActivity;->launchFragmentFromIntent()V

    goto :goto_0

    .line 150
    :cond_1
    const-string v0, "EventInfoActivity.Created"

    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onDeleteComplete(Landroid/app/DialogFragment;I)V
    .locals 2

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoActivity;->getEventInfoFragment()Lcom/android/calendar/event/EventInfoFragment;

    move-result-object v0

    .line 482
    if-eqz v0, :cond_1

    .line 486
    :goto_0
    check-cast v0, Lcom/android/calendar/OverlayFragment;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/EventInfoActivity;->dismissOverlay(Lcom/android/calendar/OverlayFragment;Z)V

    .line 489
    sget v0, Lcom/android/calendar/R$id;->main_pane:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 490
    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 493
    :cond_0
    return-void

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 256
    const-string v0, "EventInfoActivity.Destroyed"

    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    .line 257
    invoke-super {p0}, Lcom/android/calendar/AbstractCalendarActivity;->onDestroy()V

    .line 258
    return-void
.end method

.method public onEditCancel(Landroid/app/DialogFragment;)V
    .locals 1

    .prologue
    .line 428
    check-cast p1, Lcom/android/calendar/OverlayFragment;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/event/EventInfoActivity;->dismissOverlay(Lcom/android/calendar/OverlayFragment;Z)V

    .line 429
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EventInfoActivity;->setTitle(Z)V

    .line 430
    return-void
.end method

.method public onEditComplete(Landroid/app/DialogFragment;Lcom/android/calendar/event/CalendarEventModel;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 435
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 438
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoActivity;->getEventInfoFragment()Lcom/android/calendar/event/EventInfoFragment;

    move-result-object v2

    .line 439
    if-eqz v2, :cond_3

    .line 440
    if-eqz p3, :cond_2

    .line 441
    invoke-virtual {v2}, Lcom/android/calendar/event/EventInfoFragment;->prepareForDismiss()V

    .line 442
    if-eqz p2, :cond_1

    iget-boolean v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mIsGroove:Z

    if-eqz v0, :cond_1

    .line 446
    if-eq p1, v2, :cond_0

    .line 447
    check-cast p1, Lcom/android/calendar/OverlayFragment;

    invoke-virtual {p0, p1, v4}, Lcom/android/calendar/event/EventInfoActivity;->dismissOverlay(Lcom/android/calendar/OverlayFragment;Z)V

    .line 452
    :cond_0
    invoke-virtual {v2, v3}, Lcom/android/calendar/event/EventInfoFragment;->doDismissScreen(Z)V

    .line 472
    :goto_0
    return-void

    .line 457
    :cond_1
    invoke-virtual {v2, p2}, Lcom/android/calendar/event/EventInfoFragment;->updateWithModel(Lcom/android/calendar/event/CalendarEventModel;)V

    move-object v1, v2

    :goto_1
    move-object v0, v1

    .line 470
    check-cast v0, Lcom/android/calendar/OverlayFragment;

    if-eq v1, v2, :cond_4

    move v1, v3

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/EventInfoActivity;->dismissOverlay(Lcom/android/calendar/OverlayFragment;Z)V

    .line 471
    invoke-direct {p0, v3}, Lcom/android/calendar/event/EventInfoActivity;->setTitle(Z)V

    goto :goto_0

    .line 461
    :cond_2
    invoke-virtual {v2, p2}, Lcom/android/calendar/event/EventInfoFragment;->updateWithModel(Lcom/android/calendar/event/CalendarEventModel;)V

    :cond_3
    move-object v1, p1

    goto :goto_1

    :cond_4
    move v1, v4

    .line 470
    goto :goto_2
.end method

.method public onInfoBack(Landroid/app/DialogFragment;Z)V
    .locals 0

    .prologue
    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/EventInfoActivity;->onInfoCancel(Landroid/app/DialogFragment;Z)V

    .line 409
    return-void
.end method

.method public onInfoCancel(Landroid/app/DialogFragment;Z)V
    .locals 0

    .prologue
    .line 413
    check-cast p1, Lcom/android/calendar/OverlayFragment;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/EventInfoActivity;->dismissOverlay(Lcom/android/calendar/OverlayFragment;Z)V

    .line 414
    return-void
.end method

.method public onInfoDoEdit(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 418
    invoke-static {p1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->newInstance(Ljava/lang/Object;)Lcom/android/calendar/event/edit/EditDetailsFragment;

    move-result-object v0

    .line 419
    sget-object v1, Lcom/android/calendar/event/edit/EditDetailsFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/event/EventInfoActivity;->showOverlayFragment(Ljava/lang/String;Lcom/android/calendar/OverlayFragment;)V

    .line 420
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 313
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    sparse-switch p1, :sswitch_data_0

    .line 335
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/calendar/AbstractCalendarActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 316
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoActivity;->getOverlayFragment()Lcom/android/calendar/OverlayFragment;

    move-result-object v0

    .line 317
    instance-of v2, v0, Lcom/android/calendar/event/EventInfoFragment;

    if-eqz v2, :cond_0

    .line 318
    check-cast v0, Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment;->clickEditButton()Z

    move-result v0

    .line 319
    if-eqz v0, :cond_0

    move v0, v1

    .line 320
    goto :goto_0

    .line 325
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoActivity;->getOverlayFragment()Lcom/android/calendar/OverlayFragment;

    move-result-object v0

    .line 326
    instance-of v2, v0, Lcom/android/calendar/event/edit/EditDetailsFragment;

    if-eqz v2, :cond_0

    .line 327
    check-cast v0, Lcom/android/calendar/event/edit/EditDetailsFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->clickSaveButton()Z

    move-result v0

    .line 328
    if-eqz v0, :cond_0

    move v0, v1

    .line 329
    goto :goto_0

    .line 314
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x2f -> :sswitch_1
    .end sparse-switch
.end method

.method public onLaunchDetails(Lcom/android/calendar/timely/TimelyChip;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 344
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->isReminderBundle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    const-string v0, "EventInfoActivity"

    const-string v1, "Unable to launch bundle"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 346
    sget v0, Lcom/android/calendar/R$string;->task_not_found:I

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 358
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 350
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    .line 351
    invoke-static {p1}, Lcom/android/calendar/Utils;->getLocationInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 352
    new-instance v0, Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    .line 353
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->getCurrentJulianDay()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->getViewType()I

    move-result v4

    .line 354
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->shouldShowImages()Z

    move-result v5

    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->getTimelineInfo()Lcom/android/calendar/timely/TimelineInfo;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/timely/animations/EventInfoAnimationData;-><init>(ILandroid/graphics/Rect;IIZLcom/android/calendar/timely/TimelineInfo;)V

    .line 355
    sget-object v1, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    .line 356
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getEventInfoFragmentFactory()Lcom/android/calendar/event/EventInfoFragmentFactory;

    move-result-object v2

    .line 357
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v3

    invoke-interface {v2, p0, v3, v0}, Lcom/android/calendar/event/EventInfoFragmentFactory;->newFragment(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/timely/animations/EventInfoAnimationData;)Lcom/android/calendar/event/EventInfoFragment;

    move-result-object v0

    .line 355
    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/event/EventInfoActivity;->showOverlayFragment(Ljava/lang/String;Lcom/android/calendar/OverlayFragment;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/EventInfoActivity;->setIntent(Landroid/content/Intent;)V

    .line 226
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 243
    invoke-super {p0}, Lcom/android/calendar/AbstractCalendarActivity;->onPause()V

    .line 244
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 245
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 236
    invoke-super {p0}, Lcom/android/calendar/AbstractCalendarActivity;->onResume()V

    .line 237
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/calendar/event/EventInfoActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 239
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 230
    invoke-super {p0}, Lcom/android/calendar/AbstractCalendarActivity;->onStart()V

    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EventInfoActivity;->setTitle(Z)V

    .line 232
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 249
    invoke-super {p0}, Lcom/android/calendar/AbstractCalendarActivity;->onStop()V

    .line 251
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoActivity;->clearScreenBuilderTask()V

    .line 252
    return-void
.end method

.method public onViewScreenCreationFailure()V
    .locals 2

    .prologue
    .line 207
    sget v0, Lcom/android/calendar/R$string;->event_not_found:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 208
    return-void
.end method

.method public onViewScreenCreationSuccess(Ljava/lang/String;Lcom/android/calendar/OverlayFragment;Lcom/android/calendar/timely/TimelineItem;)V
    .locals 0

    .prologue
    .line 202
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/EventInfoActivity;->showOverlayFragment(Ljava/lang/String;Lcom/android/calendar/OverlayFragment;)V

    .line 203
    return-void
.end method

.method public resetOverlaySetting()V
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 309
    return-void
.end method
