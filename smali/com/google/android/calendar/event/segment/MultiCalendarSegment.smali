.class public final Lcom/google/android/calendar/event/segment/MultiCalendarSegment;
.super Lcom/android/calendar/event/segment/MultilineSegment;
.source "MultiCalendarSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/event/segment/MultiCalendarSegment$MultiCalendarProvider;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 32
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/calendar/event/segment/MultiCalendarSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/event/segment/MultiCalendarSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/MultilineSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method


# virtual methods
.method protected getValueId()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/android/calendar/R$id;->calendar_name:I

    return v0
.end method

.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/android/calendar/R$layout;->segment_holiday:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    return-void
.end method

.method public onRefreshModel()V
    .locals 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/MultiCalendarSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    instance-of v0, v0, Lcom/google/android/calendar/event/segment/MultiCalendarSegment$MultiCalendarProvider;

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/MultiCalendarSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/google/android/calendar/event/segment/MultiCalendarSegment$MultiCalendarProvider;

    .line 57
    invoke-interface {v0}, Lcom/google/android/calendar/event/segment/MultiCalendarSegment$MultiCalendarProvider;->getMultiCalendar()Ljava/util/List;

    move-result-object v2

    .line 58
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 60
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 61
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/CalendarItem;

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {p0, v3}, Lcom/google/android/calendar/event/segment/MultiCalendarSegment;->onRefreshValue(Ljava/util/List;)V

    .line 67
    :goto_2
    return-void

    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/MultiCalendarSegment;->hide()V

    goto :goto_2
.end method
