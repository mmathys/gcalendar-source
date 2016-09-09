.class public final Lcom/android/calendar/event/segment/VisibilitySegment;
.super Lcom/android/calendar/event/segment/InfoSegmentLayout;
.source "VisibilitySegment.java"

# interfaces
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 37
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/event/segment/VisibilitySegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/event/segment/VisibilitySegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/InfoSegmentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method


# virtual methods
.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/android/calendar/R$layout;->segment_visibility:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 52
    sget v0, Lcom/android/calendar/R$id;->visibility:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/VisibilitySegment;->setOnMeasureView(I)V

    .line 53
    return-void
.end method

.method public onRefreshModel()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 62
    iget-object v0, p0, Lcom/android/calendar/event/segment/VisibilitySegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;

    invoke-interface {v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;->getModelData()Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v3

    .line 63
    invoke-static {v3}, Lcom/android/calendar/event/EditHelper;->canModifyCalendar(Lcom/android/calendar/event/CalendarEventModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, v3, Lcom/android/calendar/event/CalendarEventModel;->mIsSharedCalendar:Z

    if-nez v0, :cond_1

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/VisibilitySegment;->hide()V

    .line 106
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-boolean v0, v3, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    if-eqz v0, :cond_2

    iget v0, v3, Lcom/android/calendar/event/CalendarEventModel;->mAvailability:I

    if-nez v0, :cond_2

    move v0, v1

    .line 70
    :goto_1
    iget-boolean v4, v3, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    if-nez v4, :cond_3

    iget v4, v3, Lcom/android/calendar/event/CalendarEventModel;->mAvailability:I

    if-ne v4, v1, :cond_3

    .line 72
    :goto_2
    iget v2, v3, Lcom/android/calendar/event/CalendarEventModel;->mAccessLevel:I

    sparse-switch v2, :sswitch_data_0

    .line 97
    if-eqz v0, :cond_8

    .line 98
    sget v0, Lcom/android/calendar/R$id;->visibility:I

    sget v1, Lcom/android/calendar/R$string;->visibility_default_busy:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/segment/VisibilitySegment;->showSegment(II)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 68
    goto :goto_1

    :cond_3
    move v1, v2

    .line 70
    goto :goto_2

    .line 74
    :sswitch_0
    sget v0, Lcom/android/calendar/R$id;->visibility:I

    sget v1, Lcom/android/calendar/R$string;->visibility_secret:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/segment/VisibilitySegment;->showSegment(II)V

    goto :goto_0

    .line 78
    :sswitch_1
    if-eqz v0, :cond_4

    .line 79
    sget v0, Lcom/android/calendar/R$id;->visibility:I

    sget v1, Lcom/android/calendar/R$string;->visibility_private_busy:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/segment/VisibilitySegment;->showSegment(II)V

    goto :goto_0

    .line 80
    :cond_4
    if-eqz v1, :cond_5

    .line 81
    sget v0, Lcom/android/calendar/R$id;->visibility:I

    sget v1, Lcom/android/calendar/R$string;->visibility_private_available:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/segment/VisibilitySegment;->showSegment(II)V

    goto :goto_0

    .line 83
    :cond_5
    sget v0, Lcom/android/calendar/R$id;->visibility:I

    sget v1, Lcom/android/calendar/R$string;->visibility_private:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/segment/VisibilitySegment;->showSegment(II)V

    goto :goto_0

    .line 87
    :sswitch_2
    if-eqz v0, :cond_6

    .line 88
    sget v0, Lcom/android/calendar/R$id;->visibility:I

    sget v1, Lcom/android/calendar/R$string;->visibility_public_busy:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/segment/VisibilitySegment;->showSegment(II)V

    goto :goto_0

    .line 89
    :cond_6
    if-eqz v1, :cond_7

    .line 90
    sget v0, Lcom/android/calendar/R$id;->visibility:I

    sget v1, Lcom/android/calendar/R$string;->visibility_public_available:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/segment/VisibilitySegment;->showSegment(II)V

    goto :goto_0

    .line 92
    :cond_7
    sget v0, Lcom/android/calendar/R$id;->visibility:I

    sget v1, Lcom/android/calendar/R$string;->visibility_public:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/segment/VisibilitySegment;->showSegment(II)V

    goto :goto_0

    .line 99
    :cond_8
    if-eqz v1, :cond_9

    .line 100
    sget v0, Lcom/android/calendar/R$id;->visibility:I

    sget v1, Lcom/android/calendar/R$string;->visibility_default_available:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/segment/VisibilitySegment;->showSegment(II)V

    goto :goto_0

    .line 102
    :cond_9
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/VisibilitySegment;->hide()V

    goto :goto_0

    .line 72
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
