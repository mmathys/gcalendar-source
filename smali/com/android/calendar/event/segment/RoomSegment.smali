.class public final Lcom/android/calendar/event/segment/RoomSegment;
.super Lcom/android/calendar/event/segment/MultilineSegment;
.source "RoomSegment.java"

# interfaces
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 45
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/event/segment/RoomSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/event/segment/RoomSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/MultilineSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method


# virtual methods
.method protected getValueId()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/android/calendar/R$id;->room_layout:I

    return v0
.end method

.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/android/calendar/R$layout;->segment_room:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    return-void
.end method

.method public onRefreshModel()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 70
    iget-object v0, p0, Lcom/android/calendar/event/segment/RoomSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;

    invoke-interface {v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;->getModelData()Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeeCollection:Lcom/android/calendar/event/AttendeeCollection;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeeCollection:Lcom/android/calendar/event/AttendeeCollection;

    iget-boolean v1, v1, Lcom/android/calendar/event/AttendeeCollection;->mHasResourceRooms:Z

    if-nez v1, :cond_1

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/RoomSegment;->hide()V

    .line 95
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeeCollection:Lcom/android/calendar/event/AttendeeCollection;

    iget-object v2, v0, Lcom/android/calendar/event/AttendeeCollection;->mResourceRooms:Ljava/util/ArrayList;

    .line 76
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 79
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 80
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 82
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->hasDeclinedStatus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    new-instance v0, Landroid/util/Pair;

    new-instance v5, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v5}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-direct {v0, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 88
    :cond_3
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 93
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/calendar/event/segment/RoomSegment;->onRefreshStyledValue(Ljava/util/List;)V

    goto :goto_0
.end method
