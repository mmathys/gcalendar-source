.class public Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Lcom/android/calendar/event/EventInfoFragment$Screen;
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$ItemProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimelyScreen"
.end annotation


# instance fields
.field protected mEventHeader:Landroid/view/ViewGroup;

.field protected mImageHelper:Lcom/android/calendar/event/ImageHelper;

.field private mResources:Landroid/content/res/Resources;

.field private final mScreenLayoutId:I

.field protected mTimelineItem:Lcom/android/calendar/timely/TimelineItem;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    .prologue
    .line 4347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mImageHelper:Lcom/android/calendar/event/ImageHelper;

    .line 4348
    iput p1, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mScreenLayoutId:I

    .line 4349
    return-void
.end method

.method public constructor <init>(ILcom/android/calendar/timely/TimelineItem;)V
    .locals 1

    .prologue
    .line 4342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mImageHelper:Lcom/android/calendar/event/ImageHelper;

    .line 4343
    iput p1, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mScreenLayoutId:I

    .line 4344
    iput-object p2, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mTimelineItem:Lcom/android/calendar/timely/TimelineItem;

    .line 4345
    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 4517
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mEventHeader:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mEventHeader:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeader()Landroid/view/View;
    .locals 1

    .prologue
    .line 4387
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mEventHeader:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getItem()Lcom/android/calendar/timely/TimelineItem;
    .locals 1

    .prologue
    .line 4505
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mTimelineItem:Lcom/android/calendar/timely/TimelineItem;

    return-object v0
.end method

.method protected final getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4529
    sget-object v0, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 4513
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getTitleViewId()I
    .locals 1

    .prologue
    .line 4422
    sget v0, Lcom/android/calendar/R$id;->title:I

    return v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 4525
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onInflateCommandBar(Lcom/android/calendar/event/EventInfoFragment$CommandBar;)V
    .locals 0

    .prologue
    .line 4392
    return-void
.end method

.method public onInflateHeader(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4366
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mTimelineItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-static {v0, v1}, Lcom/android/calendar/event/ImageHelper;->shouldHaveImage(Landroid/content/res/Resources;Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4368
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/ViewGroup;

    .line 4369
    new-instance v0, Lcom/android/calendar/event/ImageHelper;

    sget v3, Lcom/android/calendar/R$layout;->headline_timely_attribution:I

    .line 4370
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v4

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/event/ImageHelper;-><init>([Landroid/view/ViewGroup;Landroid/view/ViewGroup;ILcom/android/calendar/timely/TimelineItem;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mImageHelper:Lcom/android/calendar/event/ImageHelper;

    .line 4371
    aget-object v0, v1, v6

    if-eqz v0, :cond_0

    .line 4372
    aget-object v0, v1, v6

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mEventHeader:Landroid/view/ViewGroup;

    .line 4373
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mImageHelper:Lcom/android/calendar/event/ImageHelper;

    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/ImageHelper;->relocateEditButton(Landroid/view/View;)V

    .line 4376
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mEventHeader:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 4377
    sget v0, Lcom/android/calendar/R$layout;->event_info_headline:I

    .line 4378
    invoke-virtual {p2, v0, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mEventHeader:Landroid/view/ViewGroup;

    .line 4379
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mEventHeader:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 4380
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mEventHeader:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 4383
    :cond_1
    return-void
.end method

.method public onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 2

    .prologue
    .line 4359
    iget v0, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mScreenLayoutId:I

    if-lez v0, :cond_0

    .line 4360
    iget v0, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mScreenLayoutId:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 4362
    :cond_0
    return-void
.end method

.method public onRefreshModel(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 3

    .prologue
    .line 4400
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->refreshHeader()V

    .line 4401
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->updateHeadline()V

    .line 4402
    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel;->getEventColor()I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mTimelineItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getColor()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 4403
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Model and item have different colors"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4405
    :cond_0
    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel;->getEventColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->updateEventColor(I)V

    .line 4406
    return-void
.end method

.method protected refreshHeader()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 4452
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4453
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 4455
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v3

    .line 4456
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mImageHelper:Lcom/android/calendar/event/ImageHelper;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 4457
    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->getView()Landroid/view/View;

    move-result-object v0

    sget v4, Lcom/android/calendar/R$id;->event_info_view:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4458
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/calendar/event/ImageHelper;->shouldHaveImage(Landroid/content/res/Resources;Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v4

    if-eq v1, v4, :cond_3

    .line 4459
    sget v1, Lcom/android/calendar/R$id;->event_info_screen:I

    .line 4460
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 4463
    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mEventHeader:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4464
    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mImageHelper:Lcom/android/calendar/event/ImageHelper;

    if-eqz v3, :cond_0

    .line 4465
    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mImageHelper:Lcom/android/calendar/event/ImageHelper;

    invoke-virtual {v3, v0}, Lcom/android/calendar/event/ImageHelper;->resetEditButton(Landroid/view/View;)V

    .line 4469
    :cond_0
    iput-object v5, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mEventHeader:Landroid/view/ViewGroup;

    .line 4470
    iput-object v5, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mImageHelper:Lcom/android/calendar/event/ImageHelper;

    .line 4471
    iput-object v5, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mTitleView:Landroid/widget/TextView;

    .line 4474
    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->onInflateHeader(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 4483
    :cond_1
    :goto_1
    return-void

    .line 4456
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 4475
    :cond_3
    if-eqz v1, :cond_1

    .line 4478
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/calendar/event/ImageHelper;->getBitmapRequestKey(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;)Lcom/android/calendar/timely/EventImageRequestKey;

    move-result-object v0

    .line 4479
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mImageHelper:Lcom/android/calendar/event/ImageHelper;

    invoke-virtual {v1}, Lcom/android/calendar/event/ImageHelper;->getRequestKey()Lcom/android/calendar/timely/EventImageRequestKey;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/EventImageRequestKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4480
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mImageHelper:Lcom/android/calendar/event/ImageHelper;

    invoke-virtual {v1, v0}, Lcom/android/calendar/event/ImageHelper;->updateImage(Lcom/android/calendar/timely/EventImageRequestKey;)V

    goto :goto_1
.end method

.method protected final setHeadlineTitle(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 4431
    .line 4432
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 4433
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->no_title_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 4435
    :cond_1
    if-eqz p1, :cond_3

    .line 4436
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mEventHeader:Landroid/view/ViewGroup;

    sget v1, Lcom/android/calendar/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4437
    if-eqz v0, :cond_3

    .line 4438
    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 4439
    if-eqz v1, :cond_2

    .line 4440
    new-instance v2, Lcom/android/calendar/event/EventInfoFragment$TitleOnGlobalLayoutListener;

    invoke-direct {v2, v0}, Lcom/android/calendar/event/EventInfoFragment$TitleOnGlobalLayoutListener;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4442
    :cond_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4445
    :cond_3
    return-void
.end method

.method public final setItem(Lcom/android/calendar/timely/TimelineItem;)V
    .locals 0

    .prologue
    .line 4497
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mTimelineItem:Lcom/android/calendar/timely/TimelineItem;

    .line 4498
    return-void
.end method

.method public final setResources(Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 4509
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mResources:Landroid/content/res/Resources;

    .line 4510
    return-void
.end method

.method public final setView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 4521
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mView:Landroid/view/View;

    .line 4522
    return-void
.end method

.method public updateEventColor(I)V
    .locals 1

    .prologue
    .line 4489
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mImageHelper:Lcom/android/calendar/event/ImageHelper;

    if-eqz v0, :cond_1

    .line 4490
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mImageHelper:Lcom/android/calendar/event/ImageHelper;

    invoke-virtual {v0, p1}, Lcom/android/calendar/event/ImageHelper;->updateEventColor(I)V

    .line 4494
    :cond_0
    :goto_0
    return-void

    .line 4491
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mEventHeader:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 4492
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mEventHeader:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method protected updateHeadline()V
    .locals 1

    .prologue
    .line 4395
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->mTimelineItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->setHeadlineTitle(Ljava/lang/String;)V

    .line 4396
    return-void
.end method
