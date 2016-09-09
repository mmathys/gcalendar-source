.class public Lcom/android/calendar/newapi/segment/attachment/AttachmentCarouselAdapter;
.super Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;
.source "AttachmentCarouselAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter",
        "<",
        "Lcom/google/android/calendar/api/attachments/Attachment;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/attachments/Attachment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentCarouselAdapter;->mItems:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentCarouselAdapter;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentCarouselAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemForPosition(I)Lcom/google/android/calendar/api/attachments/Attachment;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentCarouselAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/attachments/Attachment;

    return-object v0
.end method

.method public bridge synthetic getItemForPosition(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/calendar/newapi/segment/attachment/AttachmentCarouselAdapter;->getItemForPosition(I)Lcom/google/android/calendar/api/attachments/Attachment;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/newapi/segment/attachment/AttachmentCarouselAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$ViewHolder;
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentCarouselAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->newapi_attachment_view:I

    const/4 v2, 0x0

    .line 55
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$ViewHolder;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method protected onInternalBindViewHolder(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$ViewHolder;I)V
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0, p2}, Lcom/android/calendar/newapi/segment/attachment/AttachmentCarouselAdapter;->getItemForPosition(I)Lcom/google/android/calendar/api/attachments/Attachment;

    move-result-object v1

    .line 62
    iget-object v0, p1, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p1, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;

    .line 64
    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/segment/attachment/AttachmentView;->setAttachment(Lcom/google/android/calendar/api/attachments/Attachment;)V

    .line 66
    :cond_0
    return-void
.end method

.method public setAttachments(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/attachments/Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    if-eqz p1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentCarouselAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 32
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentCarouselAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentCarouselAdapter;->resetHorizontalCarousel()V

    .line 35
    :cond_0
    return-void
.end method
