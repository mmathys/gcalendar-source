.class public final Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;
.super Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;
.source "TimelyEventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/TimelyEventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TimelyCalendarScreen"
.end annotation


# instance fields
.field private mImageHelper:Lcom/google/android/calendar/event/AttributedImageHelper;

.field final synthetic this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)V
    .locals 1

    .prologue
    .line 286
    iput-object p1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    invoke-direct {p0, p1}, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;-><init>(Lcom/android/calendar/event/EventInfoFragment;)V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->mImageHelper:Lcom/google/android/calendar/event/AttributedImageHelper;

    .line 287
    return-void
.end method


# virtual methods
.method public onInflateCommandBar(Lcom/android/calendar/event/EventInfoFragment$CommandBar;)V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    # getter for: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mModel:Lcom/android/calendar/event/CalendarEventModel;
    invoke-static {v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$300(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mCustomEvent:Lcom/android/calendar/event/CustomEvent;

    if-nez v0, :cond_0

    .line 330
    invoke-super {p0, p1}, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->onInflateCommandBar(Lcom/android/calendar/event/EventInfoFragment$CommandBar;)V

    .line 332
    :cond_0
    return-void
.end method

.method public onInflateHeader(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 339
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    # invokes: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;
    invoke-static {v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$400(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    .line 340
    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    invoke-virtual {v1}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/calendar/event/AttributedImageHelper;->shouldHaveImage(Landroid/content/res/Resources;Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    const/4 v0, 0x1

    new-array v2, v0, [Landroid/view/ViewGroup;

    .line 342
    new-instance v0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2;

    sget v4, Lcom/android/calendar/R$layout;->headline_timely_attribution:I

    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    .line 343
    # invokes: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;
    invoke-static {v1}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$500(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/timely/TimelineItem;

    move-result-object v5

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$2;-><init>(Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;[Landroid/view/ViewGroup;Landroid/view/ViewGroup;ILcom/android/calendar/timely/TimelineItem;Landroid/view/LayoutInflater;[Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->mImageHelper:Lcom/google/android/calendar/event/AttributedImageHelper;

    .line 428
    aget-object v0, v2, v8

    if-eqz v0, :cond_0

    .line 429
    aget-object v0, v2, v8

    iput-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->mEventHeader:Landroid/view/ViewGroup;

    .line 431
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->mImageHelper:Lcom/google/android/calendar/event/AttributedImageHelper;

    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    invoke-virtual {v1}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/event/AttributedImageHelper;->relocateEditButton(Landroid/view/View;)V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->mEventHeader:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 435
    invoke-super {p0, p1, p2}, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->onInflateHeader(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 437
    :cond_1
    return-void
.end method

.method public onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 2

    .prologue
    .line 299
    sget v0, Lcom/android/calendar/R$layout;->event_info_timely_body:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 301
    sget v0, Lcom/android/calendar/R$id;->where:I

    new-instance v1, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$1;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen$1;-><init>(Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;)V

    invoke-static {p1, v0, v1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;ILcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 320
    return-void
.end method

.method protected refreshHeader(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 445
    invoke-super {p0, p1}, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->refreshHeader(Lcom/android/calendar/event/CalendarEventModel;)V

    .line 447
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    # invokes: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getItem()Lcom/android/calendar/timely/TimelineItem;
    invoke-static {v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$600(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Lcom/android/calendar/timely/TimelineItem;

    move-result-object v1

    .line 448
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->mImageHelper:Lcom/google/android/calendar/event/AttributedImageHelper;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 449
    :goto_0
    iget-object v2, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    invoke-virtual {v2}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/calendar/event/ImageHelper;->shouldHaveImage(Landroid/content/res/Resources;Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v2

    if-eq v0, v2, :cond_3

    .line 450
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    .line 451
    # getter for: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mEventInfoView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$700(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$id;->event_info_screen:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 454
    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->mEventHeader:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 455
    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->mImageHelper:Lcom/google/android/calendar/event/AttributedImageHelper;

    if-eqz v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->mImageHelper:Lcom/google/android/calendar/event/AttributedImageHelper;

    iget-object v2, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    # getter for: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mEventInfoView:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$800(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/calendar/event/AttributedImageHelper;->resetEditButton(Landroid/view/View;)V

    .line 460
    :cond_0
    iput-object v3, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->mEventHeader:Landroid/view/ViewGroup;

    .line 461
    iput-object v3, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->mImageHelper:Lcom/google/android/calendar/event/AttributedImageHelper;

    .line 462
    iput-object v3, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->mTitleView:Landroid/widget/TextView;

    .line 465
    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    # getter for: Lcom/google/android/calendar/event/TimelyEventInfoFragment;->mLayoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->access$900(Lcom/google/android/calendar/event/TimelyEventInfoFragment;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->onInflateHeader(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 474
    :cond_1
    :goto_1
    return-void

    .line 448
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 466
    :cond_3
    if-eqz v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->this$0:Lcom/google/android/calendar/event/TimelyEventInfoFragment;

    .line 469
    invoke-virtual {v0}, Lcom/google/android/calendar/event/TimelyEventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/calendar/event/ImageHelper;->getBitmapRequestKey(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;)Lcom/android/calendar/timely/EventImageRequestKey;

    move-result-object v0

    .line 470
    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->mImageHelper:Lcom/google/android/calendar/event/AttributedImageHelper;

    invoke-virtual {v1}, Lcom/google/android/calendar/event/AttributedImageHelper;->getRequestKey()Lcom/android/calendar/timely/EventImageRequestKey;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/EventImageRequestKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 471
    iget-object v1, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->mImageHelper:Lcom/google/android/calendar/event/AttributedImageHelper;

    invoke-virtual {v1, v0}, Lcom/google/android/calendar/event/AttributedImageHelper;->updateImage(Lcom/android/calendar/timely/EventImageRequestKey;)V

    goto :goto_1
.end method

.method public updateEventColor(I)V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->mImageHelper:Lcom/google/android/calendar/event/AttributedImageHelper;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/google/android/calendar/event/TimelyEventInfoFragment$TimelyCalendarScreen;->mImageHelper:Lcom/google/android/calendar/event/AttributedImageHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/calendar/event/AttributedImageHelper;->updateEventColor(I)V

    .line 483
    :goto_0
    return-void

    .line 481
    :cond_0
    invoke-super {p0, p1}, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->updateEventColor(I)V

    goto :goto_0
.end method
