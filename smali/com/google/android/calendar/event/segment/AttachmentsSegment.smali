.class public Lcom/google/android/calendar/event/segment/AttachmentsSegment;
.super Lcom/android/calendar/event/segment/InfoSegmentLayout;
.source "AttachmentsSegment.java"

# interfaces
.implements Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelListener;
.implements Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$OnCarouselTileClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/event/segment/InfoSegmentLayout;",
        "Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelListener;",
        "Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$OnCarouselTileClickListener",
        "<",
        "Lcom/google/api/services/calendar/model/EventAttachment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 29
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/calendar/event/segment/AttachmentsSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/event/segment/AttachmentsSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/InfoSegmentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-static {}, Lcom/android/calendar/Utils;->isKitKatOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0, v1}, Lcom/google/android/calendar/event/segment/AttachmentsSegment;->setClipChildren(Z)V

    .line 42
    invoke-virtual {p0, v1}, Lcom/google/android/calendar/event/segment/AttachmentsSegment;->setClipToPadding(Z)V

    .line 44
    :cond_0
    return-void
.end method

.method private getModel()Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/AttachmentsSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    instance-of v0, v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/android/calendar/event/segment/AttachmentsSegment;->mModelProvider:Lcom/android/calendar/event/segment/InfoSegmentLayout$ModelProvider;

    check-cast v0, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;

    invoke-interface {v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout$CalendarEventModelProvider;->getModelData()Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCarouselTileClick(Landroid/view/View;Lcom/google/api/services/calendar/model/EventAttachment;)V
    .locals 2

    .prologue
    .line 96
    instance-of v0, p1, Lcom/google/android/calendar/event/view/AttachmentView;

    if-eqz v0, :cond_1

    .line 97
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Lcom/google/android/calendar/event/segment/AttachmentsSegment;->getModel()Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_0

    .line 100
    iget-object v0, v1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    .line 102
    :cond_0
    check-cast p1, Lcom/google/android/calendar/event/view/AttachmentView;

    invoke-virtual {p1, v0}, Lcom/google/android/calendar/event/view/AttachmentView;->openAttachment(Ljava/lang/String;)V

    .line 104
    :cond_1
    return-void
.end method

.method public bridge synthetic onCarouselTileClick(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p2, Lcom/google/api/services/calendar/model/EventAttachment;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/event/segment/AttachmentsSegment;->onCarouselTileClick(Landroid/view/View;Lcom/google/api/services/calendar/model/EventAttachment;)V

    return-void
.end method

.method public onMergeLayout(Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/calendar/R$layout;->segment_attachments:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    return-void
.end method

.method public onRefreshModel()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 53
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/AttachmentsSegment;->hide()V

    .line 54
    sget v0, Lcom/android/calendar/R$id;->attachment_holder:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/AttachmentsSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 55
    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/google/android/calendar/event/view/AttachmentsCarouselAdapter;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/AttachmentsSegment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/calendar/event/view/AttachmentsCarouselAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 60
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/event/view/AttachmentsCarouselAdapter;

    .line 61
    invoke-virtual {v0, p0}, Lcom/google/android/calendar/event/view/AttachmentsCarouselAdapter;->setOnCarouselTileClickListener(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$OnCarouselTileClickListener;)V

    .line 62
    invoke-virtual {v0}, Lcom/google/android/calendar/event/view/AttachmentsCarouselAdapter;->clearAttachments()V

    .line 63
    invoke-virtual {v0, v3}, Lcom/google/android/calendar/event/view/AttachmentsCarouselAdapter;->setViewOnly(Z)V

    .line 64
    invoke-direct {p0}, Lcom/google/android/calendar/event/segment/AttachmentsSegment;->getModel()Lcom/android/calendar/event/CalendarEventModel;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_1

    .line 66
    iget-object v1, v1, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    check-cast v1, Lcom/google/android/calendar/event/EventExtrasImpl;

    .line 67
    if-eqz v1, :cond_1

    .line 68
    invoke-virtual {v1}, Lcom/google/android/calendar/event/EventExtrasImpl;->getAttachments()Ljava/util/List;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 70
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/event/view/AttachmentsCarouselAdapter;->setAttachments(Ljava/util/List;)V

    .line 72
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 73
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/AttachmentsSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$plurals;->describe_attachments:I

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/segment/AttachmentsSegment;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {p0}, Lcom/google/android/calendar/event/segment/AttachmentsSegment;->show()V

    .line 80
    :cond_1
    return-void
.end method
