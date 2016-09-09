.class public Lcom/android/calendar/timely/TaskBundleFragment;
.super Lcom/android/calendar/OverlayFragment;
.source "TaskBundleFragment.java"

# interfaces
.implements Lcom/android/calendar/event/EventInfoFragment$DelayedActionPerformer;
.implements Lcom/android/calendar/timely/DataFactory$OnUpdateListener;
.implements Lcom/android/calendar/timely/TimelineInfo;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimateAfterLayout:Z

.field private mAnimationView:Lcom/android/calendar/timely/animations/TaskBundleAnimation;

.field private mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

.field private mDayView:Lcom/android/calendar/timely/DayPopUpFragment$DayView;

.field private mDelayedUpdateHelper:Lcom/android/calendar/timely/DelayedUpdateHelper;

.field private mJulianDay:I

.field private mOverlayView:Landroid/view/ViewGroup;

.field private mRobotoMedium:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/calendar/timely/TaskBundleFragment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/TaskBundleFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/android/calendar/OverlayFragment;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mRobotoMedium:Landroid/graphics/Typeface;

    .line 354
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/TaskBundleFragment;)Lcom/android/calendar/timely/DayPopUpFragment$DayView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mDayView:Lcom/android/calendar/timely/DayPopUpFragment$DayView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/TaskBundleFragment;)Lcom/android/calendar/timely/animations/TaskBundleAnimation;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mAnimationView:Lcom/android/calendar/timely/animations/TaskBundleAnimation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/timely/TaskBundleFragment;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->doDismissScreen()V

    return-void
.end method

.method public static createArguments(Lcom/android/calendar/task/TimelineTaskBundle;Lcom/android/calendar/timely/animations/EventInfoAnimationData;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 411
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 412
    const-string v1, "task_bundle"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 413
    if-eqz p1, :cond_0

    .line 414
    const-string v1, "animation_data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 416
    :cond_0
    return-object v0
.end method

.method private createPhoneView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/android/calendar/task/TimelineTaskBundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 366
    sget v0, Lcom/android/calendar/R$layout;->bundle_pop_up:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 367
    if-nez v2, :cond_0

    .line 368
    const/4 v0, 0x0

    .line 386
    :goto_0
    return-object v0

    .line 372
    :cond_0
    sget v0, Lcom/android/calendar/R$id;->day_header:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 373
    sget v1, Lcom/android/calendar/R$id;->num_reminders:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 374
    sget v3, Lcom/android/calendar/R$id;->action_close:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 375
    invoke-virtual {p3}, Lcom/android/calendar/task/TimelineTaskBundle;->getSingleLineTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v3, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mRobotoMedium:Landroid/graphics/Typeface;

    if-eqz v3, :cond_1

    .line 377
    iget-object v3, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mRobotoMedium:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 379
    :cond_1
    new-instance v1, Lcom/android/calendar/timely/TaskBundleFragment$4;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/TaskBundleFragment$4;-><init>(Lcom/android/calendar/timely/TaskBundleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v2

    .line 386
    goto :goto_0
.end method

.method private createTabletView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 3

    .prologue
    .line 392
    sget v0, Lcom/android/calendar/R$layout;->bundle_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 393
    if-nez v1, :cond_0

    .line 394
    const/4 v0, 0x0

    .line 403
    :goto_0
    return-object v0

    .line 398
    :cond_0
    sget v0, Lcom/android/calendar/R$id;->day_header:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 399
    instance-of v2, v0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;

    if-eqz v2, :cond_1

    .line 400
    check-cast v0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;

    invoke-virtual {v0, p3}, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->setFirstJulianDay(I)V

    :cond_1
    move-object v0, v1

    .line 403
    goto :goto_0
.end method

.method private doDismissScreen()V
    .locals 3

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 614
    instance-of v1, v0, Lcom/android/calendar/OverlayFragment$OverlayListener;

    if-eqz v1, :cond_1

    .line 615
    check-cast v0, Lcom/android/calendar/OverlayFragment$OverlayListener;

    .line 616
    iget-object v1, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mAnimationView:Lcom/android/calendar/timely/animations/TaskBundleAnimation;

    invoke-virtual {v1}, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->canAnimate()Z

    move-result v1

    .line 617
    if-eqz v1, :cond_0

    .line 618
    iget-object v2, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mAnimationView:Lcom/android/calendar/timely/animations/TaskBundleAnimation;

    invoke-virtual {v2}, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->startCloseAnimation()V

    .line 620
    :cond_0
    invoke-interface {v0, p0, v1}, Lcom/android/calendar/OverlayFragment$OverlayListener;->dismissOverlay(Lcom/android/calendar/OverlayFragment;Z)V

    .line 625
    :goto_0
    return-void

    .line 623
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->dismissAllowingStateLoss()V

    goto :goto_0
.end method

.method private getAnimationData()Lcom/android/calendar/timely/animations/EventInfoAnimationData;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 455
    invoke-direct {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->hasAnimationData()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 470
    :cond_0
    :goto_0
    return-object v0

    .line 460
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "animation_data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    .line 461
    if-nez v0, :cond_2

    move-object v0, v1

    .line 462
    goto :goto_0

    .line 466
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0}, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->getOrientation()I

    move-result v3

    if-eq v2, v3, :cond_0

    move-object v0, v1

    .line 467
    goto :goto_0
.end method

.method private getManageAllTasksReady()Z
    .locals 3

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "all_tasks_ready"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private hasAnimationData()Z
    .locals 2

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "animation_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setTaskBundle(Lcom/android/calendar/task/TimelineTaskBundle;)V
    .locals 2

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "task_bundle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 424
    return-void
.end method


# virtual methods
.method public canDrawBackgroundImage()Z
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x1

    return v0
.end method

.method protected createDayView()Lcom/android/calendar/timely/DayPopUpFragment$DayView;
    .locals 3

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->isTabletConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    new-instance v0, Lcom/android/calendar/timely/DayPopUpFragment$NoDayHeaderDayView;

    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    invoke-direct {v0, v1, v2, p0, p0}, Lcom/android/calendar/timely/DayPopUpFragment$NoDayHeaderDayView;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/ChipRecycler;Lcom/android/calendar/timely/TimelineInfo;Lcom/android/calendar/OverlayFragment;)V

    .line 360
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/calendar/timely/DayPopUpFragment$DayView;

    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    invoke-direct {v0, v1, v2, p0, p0}, Lcom/android/calendar/timely/DayPopUpFragment$DayView;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/ChipRecycler;Lcom/android/calendar/timely/TimelineInfo;Lcom/android/calendar/OverlayFragment;)V

    goto :goto_0
.end method

.method protected getArgumentJulianDay()I
    .locals 1

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->getTaskBundle()Lcom/android/calendar/task/TimelineTaskBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/task/TimelineTaskBundle;->getStartDay()I

    move-result v0

    return v0
.end method

.method protected getDialogTheme()I
    .locals 1

    .prologue
    .line 183
    sget v0, Lcom/android/calendar/R$style;->DayPopUpTheme:I

    return v0
.end method

.method public getGridModeRatio()F
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public getListenerTag()I
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mDayView:Lcom/android/calendar/timely/DayPopUpFragment$DayView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/DayPopUpFragment$DayView;->getListenerTag()I

    move-result v0

    return v0
.end method

.method public getListenerTagType()I
    .locals 1

    .prologue
    .line 609
    const/16 v0, 0x8

    return v0
.end method

.method protected getOverlayView()Landroid/view/View;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mOverlayView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getTaskBundle()Lcom/android/calendar/task/TimelineTaskBundle;
    .locals 2

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "task_bundle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/task/TimelineTaskBundle;

    return-object v0
.end method

.method public inGridMode()Z
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public inListView()Z
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x1

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public isChipClickable()Z
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x1

    return v0
.end method

.method public isFullScreen(Landroid/content/res/Resources;)Z
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->isTabletConfig()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSingleDayOnly()Z
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method public manageAllTasksReady()V
    .locals 3

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "all_tasks_ready"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 432
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/calendar/OverlayFragment;->onAttach(Landroid/app/Activity;)V

    move-object v0, p1

    .line 65
    check-cast v0, Lcom/android/calendar/timely/ChipRecycler$ChipRecyclerProvider;

    invoke-interface {v0}, Lcom/android/calendar/timely/ChipRecycler$ChipRecyclerProvider;->getChipRecycler()Lcom/android/calendar/timely/ChipRecycler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    .line 66
    iget-object v0, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mRobotoMedium:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 67
    invoke-static {p1}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mRobotoMedium:Landroid/graphics/Typeface;

    .line 69
    :cond_0
    return-void
.end method

.method protected onBackgroundChanged(Lcom/android/calendar/OverlayFragment$OverlayBackground;)V
    .locals 2

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->isTabletConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    .line 205
    sget v1, Lcom/android/calendar/R$id;->line_separator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->getShortBackground()Lcom/android/calendar/OverlayFragment$OverlayBackground;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 208
    sget v1, Lcom/android/calendar/R$color;->timely_background_color:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    sget v1, Lcom/android/calendar/R$color;->separator_above_scroll:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 171
    new-instance v0, Lcom/android/calendar/timely/TaskBundleFragment$3;

    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/timely/TaskBundleFragment$3;-><init>(Lcom/android/calendar/timely/TaskBundleFragment;Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->getArgumentJulianDay()I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mJulianDay:I

    .line 75
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->createDayView()Lcom/android/calendar/timely/DayPopUpFragment$DayView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mDayView:Lcom/android/calendar/timely/DayPopUpFragment$DayView;

    .line 76
    new-instance v1, Lcom/android/calendar/timely/DelayedUpdateHelper;

    iget-object v2, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mDayView:Lcom/android/calendar/timely/DayPopUpFragment$DayView;

    invoke-direct {v1, v2, p0, v0}, Lcom/android/calendar/timely/DelayedUpdateHelper;-><init>(Landroid/view/View;Lcom/android/calendar/timely/DataFactory$OnUpdateListener;Lcom/android/calendar/timely/OnTimelineGestureListener;)V

    iput-object v1, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mDelayedUpdateHelper:Lcom/android/calendar/timely/DelayedUpdateHelper;

    .line 77
    iget-object v1, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mDayView:Lcom/android/calendar/timely/DayPopUpFragment$DayView;

    iget-object v2, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mDelayedUpdateHelper:Lcom/android/calendar/timely/DelayedUpdateHelper;

    invoke-virtual {v1, v2}, Lcom/android/calendar/timely/DayPopUpFragment$DayView;->setOnTimelineGestureListener(Lcom/android/calendar/timely/OnTimelineGestureListener;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->getTaskBundle()Lcom/android/calendar/task/TimelineTaskBundle;

    move-result-object v2

    .line 79
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->isTabletConfig()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget v1, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mJulianDay:I

    invoke-direct {p0, p1, p2, v1}, Lcom/android/calendar/timely/TaskBundleFragment;->createTabletView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    .line 82
    :goto_0
    if-nez v1, :cond_1

    .line 107
    :goto_1
    return-object v0

    .line 81
    :cond_0
    invoke-direct {p0, p1, p2, v2}, Lcom/android/calendar/timely/TaskBundleFragment;->createPhoneView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/android/calendar/task/TimelineTaskBundle;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 87
    :cond_1
    sget v0, Lcom/android/calendar/R$id;->day_scroll:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 88
    if-eqz v0, :cond_2

    .line 89
    iget-object v3, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mDayView:Lcom/android/calendar/timely/DayPopUpFragment$DayView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 90
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v3, Lcom/android/calendar/timely/TaskBundleFragment$1;

    invoke-direct {v3, p0}, Lcom/android/calendar/timely/TaskBundleFragment$1;-><init>(Lcom/android/calendar/timely/TaskBundleFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mDayView:Lcom/android/calendar/timely/DayPopUpFragment$DayView;

    iget v3, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mJulianDay:I

    invoke-virtual {v0, v3}, Lcom/android/calendar/timely/DayPopUpFragment$DayView;->setJulianDay(I)V

    .line 101
    iget-object v0, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mDayView:Lcom/android/calendar/timely/DayPopUpFragment$DayView;

    invoke-virtual {v2}, Lcom/android/calendar/task/TimelineTaskBundle;->getReminders()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mJulianDay:I

    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->isTabletConfig()Z

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/calendar/timely/DayPopUpFragment$DayView;->onUpdate(Ljava/util/List;IZ)V

    .line 104
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "data_factory"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/DataFactory;

    .line 105
    iget v2, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mJulianDay:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/timely/DataFactory;->getData(IZ)Lcom/android/calendar/timely/MonthData;

    move-result-object v0

    iget v2, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mJulianDay:I

    invoke-virtual {v0, v2, p0}, Lcom/android/calendar/timely/MonthData;->registerListener(ILcom/android/calendar/timely/DataFactory$OnUpdateListener;)V

    move-object v0, v1

    .line 107
    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 112
    invoke-super {p0}, Lcom/android/calendar/OverlayFragment;->onDestroyView()V

    .line 115
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "data_factory"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/DataFactory;

    .line 116
    if-eqz v0, :cond_0

    .line 117
    iget v1, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mJulianDay:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/DataFactory;->getData(IZ)Lcom/android/calendar/timely/MonthData;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mJulianDay:I

    .line 118
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->getListenerTagType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/MonthData;->unregisterListener(II)Z

    .line 120
    :cond_0
    return-void
.end method

.method public onDialogBackPressed()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->doDismissScreen()V

    .line 223
    return-void
.end method

.method protected onFinalLayoutFinished()V
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mAnimateAfterLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mAnimateAfterLayout:Z

    .line 238
    iget-object v0, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mAnimationView:Lcom/android/calendar/timely/animations/TaskBundleAnimation;

    invoke-virtual {v0}, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->startOpenAnimation()V

    .line 240
    :cond_0
    return-void
.end method

.method public onTouchOutside()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->doDismissScreen()V

    .line 228
    return-void
.end method

.method public onUpdate(Lcom/android/calendar/timely/MonthData;IZ)V
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 487
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/calendar/timely/MonthData;->getItems(I)Ljava/util/List;

    move-result-object v0

    .line 491
    if-nez v0, :cond_2

    .line 494
    invoke-virtual {p1}, Lcom/android/calendar/timely/MonthData;->getAllTasksReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    invoke-direct {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->doDismissScreen()V

    .line 497
    invoke-direct {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->getManageAllTasksReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->getTaskBundle()Lcom/android/calendar/task/TimelineTaskBundle;

    move-result-object v0

    .line 500
    invoke-virtual {v0}, Lcom/android/calendar/task/TimelineTaskBundle;->reset()V

    .line 501
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TaskBundleFragment;->setTaskBundle(Lcom/android/calendar/task/TimelineTaskBundle;)V

    goto :goto_0

    .line 508
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->getTaskBundle()Lcom/android/calendar/task/TimelineTaskBundle;

    move-result-object v2

    .line 509
    invoke-virtual {v2}, Lcom/android/calendar/task/TimelineTaskBundle;->getId()Ljava/lang/Object;

    move-result-object v6

    .line 510
    const/4 v3, 0x0

    .line 511
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    .line 512
    instance-of v1, v0, Lcom/android/calendar/task/TimelineTaskBundle;

    if-eqz v1, :cond_6

    .line 513
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getId()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 516
    invoke-direct {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->getManageAllTasksReady()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 517
    invoke-virtual {p1}, Lcom/android/calendar/timely/MonthData;->setAllTasksReady()V

    .line 519
    :cond_4
    check-cast v0, Lcom/android/calendar/task/TimelineTaskBundle;

    .line 520
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    .line 567
    :goto_1
    if-eqz v1, :cond_9

    .line 569
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/calendar/task/TimelineTaskBundle;->updateTitles(Landroid/content/res/Resources;)V

    .line 570
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "task_bundle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 571
    iget-object v0, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mDayView:Lcom/android/calendar/timely/DayPopUpFragment$DayView;

    iget v2, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mJulianDay:I

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/DayPopUpFragment$DayView;->setJulianDay(I)V

    .line 572
    iget-object v0, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mDayView:Lcom/android/calendar/timely/DayPopUpFragment$DayView;

    invoke-virtual {v1}, Lcom/android/calendar/task/TimelineTaskBundle;->getReminders()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mJulianDay:I

    invoke-virtual {v0, v2, v3, v5}, Lcom/android/calendar/timely/DayPopUpFragment$DayView;->onUpdate(Ljava/util/List;IZ)V

    .line 573
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->isTabletConfig()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 574
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$id;->day_header:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 575
    sget v2, Lcom/android/calendar/R$id;->num_reminders:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 576
    invoke-virtual {v1}, Lcom/android/calendar/task/TimelineTaskBundle;->getSingleLineTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    :cond_5
    invoke-direct {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->getManageAllTasksReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    invoke-direct {p0, v1}, Lcom/android/calendar/timely/TaskBundleFragment;->setTaskBundle(Lcom/android/calendar/task/TimelineTaskBundle;)V

    goto/16 :goto_0

    .line 526
    :cond_6
    instance-of v1, v0, Lcom/android/calendar/task/TimelineTask;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/android/calendar/task/TimelineTask;

    invoke-virtual {v2, v1}, Lcom/android/calendar/task/TimelineTaskBundle;->contains(Lcom/android/calendar/task/TimelineTask;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v0

    .line 539
    check-cast v1, Lcom/android/calendar/task/TimelineTask;

    .line 542
    invoke-virtual {v2}, Lcom/android/calendar/task/TimelineTaskBundle;->isDone()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 543
    invoke-virtual {v1}, Lcom/android/calendar/task/TimelineTask;->isDone()Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v4

    .line 559
    :goto_2
    if-eqz v1, :cond_3

    .line 561
    check-cast v0, Lcom/android/calendar/task/TimelineTask;

    invoke-virtual {v2, v0}, Lcom/android/calendar/task/TimelineTaskBundle;->reset(Lcom/android/calendar/task/TimelineTask;)V

    move-object v1, v2

    .line 562
    goto :goto_1

    .line 547
    :cond_7
    invoke-virtual {v2}, Lcom/android/calendar/task/TimelineTaskBundle;->isAllDay()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 548
    invoke-virtual {v1}, Lcom/android/calendar/task/TimelineTask;->isAllDay()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v1}, Lcom/android/calendar/task/TimelineTask;->isDone()Z

    move-result v1

    if-nez v1, :cond_a

    move v1, v4

    .line 550
    goto :goto_2

    .line 553
    :cond_8
    invoke-virtual {v1}, Lcom/android/calendar/task/TimelineTask;->isAllDay()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v1}, Lcom/android/calendar/task/TimelineTask;->getStartMillis()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/android/calendar/task/TimelineTaskBundle;->getStartMillis()J

    move-result-wide v10

    cmp-long v1, v8, v10

    if-nez v1, :cond_a

    move v1, v4

    .line 555
    goto :goto_2

    .line 581
    :cond_9
    invoke-virtual {p1}, Lcom/android/calendar/timely/MonthData;->getAllTasksReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    invoke-direct {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->doDismissScreen()V

    .line 584
    invoke-direct {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->getManageAllTasksReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {v2}, Lcom/android/calendar/task/TimelineTaskBundle;->reset()V

    .line 587
    invoke-direct {p0, v2}, Lcom/android/calendar/timely/TaskBundleFragment;->setTaskBundle(Lcom/android/calendar/task/TimelineTaskBundle;)V

    goto/16 :goto_0

    :cond_a
    move v1, v5

    goto :goto_2

    :cond_b
    move-object v1, v3

    goto/16 :goto_1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    invoke-super {p0, p1, p2}, Lcom/android/calendar/OverlayFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 130
    sget v0, Lcom/android/calendar/R$id;->bundle_overlay_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mOverlayView:Landroid/view/ViewGroup;

    .line 131
    sget v0, Lcom/android/calendar/R$id;->bundle_animation_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/animations/TaskBundleAnimation;

    iput-object v0, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mAnimationView:Lcom/android/calendar/timely/animations/TaskBundleAnimation;

    .line 133
    if-eqz p2, :cond_1

    move v0, v1

    .line 134
    :goto_0
    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 137
    :goto_1
    iput-boolean v2, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mAnimateAfterLayout:Z

    .line 138
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->isTabletConfig()Z

    move-result v0

    if-nez v0, :cond_4

    .line 142
    iget-object v0, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mAnimationView:Lcom/android/calendar/timely/animations/TaskBundleAnimation;

    iget-object v3, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mOverlayView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v1}, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->init(Landroid/view/View;Z)V

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 145
    if-nez v0, :cond_3

    .line 146
    sget-object v0, Lcom/android/calendar/timely/TaskBundleFragment;->TAG:Ljava/lang/String;

    const-string v1, "Unable to start animation after layout"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 163
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 133
    goto :goto_0

    .line 134
    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->getAnimationData()Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    move-result-object v0

    goto :goto_1

    .line 148
    :cond_3
    new-instance v1, Lcom/android/calendar/timely/TaskBundleFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/android/calendar/timely/TaskBundleFragment$2;-><init>(Lcom/android/calendar/timely/TaskBundleFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_2

    .line 158
    :cond_4
    iput-boolean v1, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mAnimateAfterLayout:Z

    .line 160
    iget-object v0, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mAnimationView:Lcom/android/calendar/timely/animations/TaskBundleAnimation;

    iget-object v1, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mOverlayView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->init(Landroid/view/View;Z)V

    goto :goto_2
.end method

.method public performDelayedAction(Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;)V
    .locals 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mDayView:Lcom/android/calendar/timely/DayPopUpFragment$DayView;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mDayView:Lcom/android/calendar/timely/DayPopUpFragment$DayView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/DayPopUpFragment$DayView;->performDelayedAction(Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;)V

    .line 343
    :goto_0
    return-void

    .line 341
    :cond_0
    sget-object v0, Lcom/android/calendar/timely/TaskBundleFragment;->TAG:Ljava/lang/String;

    const-string v1, "Failing to perform delayed action due to view not initialized"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public postUpdate(Lcom/android/calendar/timely/MonthData;IZ)V
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mDelayedUpdateHelper:Lcom/android/calendar/timely/DelayedUpdateHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/calendar/timely/DelayedUpdateHelper;->postUpdate(Lcom/android/calendar/timely/MonthData;IZ)V

    .line 595
    return-void
.end method

.method public setAgendaScrollOffsetToNow(I)V
    .locals 0

    .prologue
    .line 298
    return-void
.end method

.method public setListenerTag(I)V
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mDayView:Lcom/android/calendar/timely/DayPopUpFragment$DayView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/DayPopUpFragment$DayView;->setListenerTag(I)V

    .line 600
    return-void
.end method

.method public shouldDelayAction(Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;)Z
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mDayView:Lcom/android/calendar/timely/DayPopUpFragment$DayView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/TaskBundleFragment;->mDayView:Lcom/android/calendar/timely/DayPopUpFragment$DayView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/DayPopUpFragment$DayView;->shouldDelayAction(Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldDrawDayHeader()Z
    .locals 1

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/android/calendar/timely/TaskBundleFragment;->isTabletConfig()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldDrawExtraHeaders()Z
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public shouldDrawMonthHeader(Landroid/content/res/Resources;)Z
    .locals 1

    .prologue
    .line 302
    sget v0, Lcom/android/calendar/R$bool;->show_timeline_month_header_images:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public shouldDrawMonthInDayHeader()Z
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public shouldDrawNoEventsView()Z
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public shouldDrawNowLine()Z
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public shouldDrawYearHeader()Z
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public supportsSwipe()Z
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x1

    return v0
.end method
