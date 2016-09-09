.class public Lcom/google/android/calendar/event/view/AttachmentsCarouselAdapter;
.super Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;
.source "AttachmentsCarouselAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter",
        "<",
        "Lcom/google/api/services/calendar/model/EventAttachment;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private mViewOnly:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Lcom/google/android/calendar/event/view/AttachmentsCarouselAdapter;->context:Landroid/content/Context;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/event/view/AttachmentsCarouselAdapter;->items:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method public clearAttachments()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/event/view/AttachmentsCarouselAdapter;->items:Ljava/util/List;

    .line 42
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/calendar/event/view/AttachmentsCarouselAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemForPosition(I)Lcom/google/api/services/calendar/model/EventAttachment;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/calendar/event/view/AttachmentsCarouselAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/EventAttachment;

    return-object v0
.end method

.method public bridge synthetic getItemForPosition(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/view/AttachmentsCarouselAdapter;->getItemForPosition(I)Lcom/google/api/services/calendar/model/EventAttachment;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/event/view/AttachmentsCarouselAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$ViewHolder;
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/calendar/event/view/AttachmentsCarouselAdapter;->context:Landroid/content/Context;

    .line 62
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->attachment_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 63
    new-instance v1, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$ViewHolder;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method protected onInternalBindViewHolder(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$ViewHolder;I)V
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0, p2}, Lcom/google/android/calendar/event/view/AttachmentsCarouselAdapter;->getItemForPosition(I)Lcom/google/api/services/calendar/model/EventAttachment;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lcom/google/android/calendar/event/view/AttachmentView;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p1, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/google/android/calendar/event/view/AttachmentView;

    .line 72
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/event/view/AttachmentView;->setAttachment(Lcom/google/api/services/calendar/model/EventAttachment;)V

    .line 75
    iget-boolean v1, p0, Lcom/google/android/calendar/event/view/AttachmentsCarouselAdapter;->mViewOnly:Z

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/event/view/AttachmentView;->setViewOnly(Z)V

    .line 77
    :cond_0
    return-void
.end method

.method public setAttachments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/EventAttachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    if-eqz p1, :cond_0

    .line 35
    iput-object p1, p0, Lcom/google/android/calendar/event/view/AttachmentsCarouselAdapter;->items:Ljava/util/List;

    .line 36
    invoke-virtual {p0}, Lcom/google/android/calendar/event/view/AttachmentsCarouselAdapter;->resetHorizontalCarousel()V

    .line 38
    :cond_0
    return-void
.end method

.method public setViewOnly(Z)V
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/google/android/calendar/event/view/AttachmentsCarouselAdapter;->mViewOnly:Z

    .line 84
    return-void
.end method
