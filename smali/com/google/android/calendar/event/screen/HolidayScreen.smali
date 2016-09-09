.class public Lcom/google/android/calendar/event/screen/HolidayScreen;
.super Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;
.source "HolidayScreen.java"

# interfaces
.implements Lcom/google/android/calendar/event/segment/MultiCalendarSegment$MultiCalendarProvider;


# direct methods
.method public constructor <init>(Lcom/android/calendar/timely/TimelineHoliday;)V
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/android/calendar/R$layout;->screen_holiday:I

    invoke-direct {p0, v0, p1}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;-><init>(ILcom/android/calendar/timely/TimelineItem;)V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/event/screen/HolidayScreen;)Lcom/android/calendar/timely/TimelineHoliday;
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/calendar/event/screen/HolidayScreen;->getTimelineHoliday()Lcom/android/calendar/timely/TimelineHoliday;

    move-result-object v0

    return-object v0
.end method

.method private getTimelineHoliday()Lcom/android/calendar/timely/TimelineHoliday;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/android/calendar/event/screen/HolidayScreen;->getItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineHoliday;

    return-object v0
.end method

.method public static shouldHaveImage(Landroid/content/res/Resources;Lcom/android/calendar/timely/TimelineItem;)Z
    .locals 1

    .prologue
    .line 93
    invoke-static {p0}, Lcom/android/calendar/event/ImageHelper;->shouldHaveImage(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/calendar/timely/TimelineHoliday;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->hasHeadlineImage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getMultiCalendar()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/data/CalendarItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/calendar/event/screen/HolidayScreen;->getTimelineHoliday()Lcom/android/calendar/timely/TimelineHoliday;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineHoliday;->getHolidayInfoList()Ljava/util/List;

    move-result-object v2

    .line 73
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 75
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 76
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineHoliday$Info;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineHoliday$Info;->getCalendarItem()Lcom/android/calendar/timely/data/CalendarItem;

    move-result-object v0

    goto :goto_1

    .line 78
    :cond_1
    return-object v3
.end method

.method public onInflateCommandBar(Lcom/android/calendar/event/EventInfoFragment$CommandBar;)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 2

    .prologue
    .line 38
    sget v0, Lcom/android/calendar/R$layout;->screen_holiday:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 40
    sget v0, Lcom/android/calendar/R$id;->when:I

    invoke-static {p1, v0, p0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;ILcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 42
    sget v0, Lcom/android/calendar/R$id;->notes:I

    new-instance v1, Lcom/google/android/calendar/event/screen/HolidayScreen$1;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/event/screen/HolidayScreen$1;-><init>(Lcom/google/android/calendar/event/screen/HolidayScreen;)V

    invoke-static {p1, v0, v1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;ILcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 51
    sget v0, Lcom/android/calendar/R$id;->holiday:I

    invoke-static {p1, v0, p0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->setupOnModelUpdatedListener(Landroid/view/View;ILcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;)V

    .line 52
    return-void
.end method

.method public onRefreshModel(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/android/calendar/event/EventInfoFragment$TimelyScreen;->onRefreshModel(Lcom/android/calendar/event/CalendarEventModel;)V

    .line 61
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/calendar/timely/TimelineHoliday;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mInfoExtra:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/timely/TimelineHoliday;

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/screen/HolidayScreen;->setItem(Lcom/android/calendar/timely/TimelineItem;)V

    .line 64
    :cond_0
    return-void
.end method
