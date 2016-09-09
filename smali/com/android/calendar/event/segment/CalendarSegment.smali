.class public final Lcom/android/calendar/event/segment/CalendarSegment;
.super Lcom/android/calendar/event/segment/InfoSegmentLayout;
.source "CalendarSegment.java"

# interfaces
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/event/segment/CalendarSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/event/segment/CalendarSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/InfoSegmentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method


# virtual methods
.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/android/calendar/R$layout;->segment_calendar:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    sget v0, Lcom/android/calendar/R$id;->calendar_name:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/CalendarSegment;->setOnMeasureView(I)V

    .line 54
    return-void
.end method

.method public onRefreshModel()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/calendar/event/segment/CalendarSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;

    invoke-interface {v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;->getModelData()Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    .line 62
    iget-boolean v1, v0, Lcom/android/calendar/event/CalendarEventModel;->mShowCalendarName:Z

    if-nez v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/CalendarSegment;->hide()V

    .line 76
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v1, v0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarDisplayName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 65
    sget-object v0, Lcom/android/calendar/event/EventInfoFragment;->TAG:Ljava/lang/String;

    const-string v1, "Unable to get the calendar name."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 66
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/CalendarSegment;->hide()V

    goto :goto_0

    .line 73
    :cond_1
    sget v1, Lcom/android/calendar/R$id;->calendar_name:I

    iget-object v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarDisplayName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-static {p0, v1, v2, v0}, Lcom/android/calendar/event/EditHelper;->fillCalendarDisplay(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
