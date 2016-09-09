.class public Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;
.super Lcom/android/calendar/newapi/view/TileView;
.source "AttachmentTileView.java"


# instance fields
.field private mAdapter:Lcom/android/calendar/newapi/segment/attachment/AttachmentCarouselAdapter;

.field private mCarousel:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

.field private mIconVisibilityThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/view/TileView;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/newapi/view/TileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->updateIconVisibility()V

    return-void
.end method

.method private updateIconVisibility()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->getIcon()Landroid/widget/ImageView;

    move-result-object v2

    if-nez v2, :cond_0

    .line 92
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->mCarousel:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

    .line 86
    invoke-virtual {v2}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->computeHorizontalScrollRange()I

    move-result v2

    iget-object v3, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->mCarousel:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

    invoke-virtual {v3}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->computeHorizontalScrollExtent()I

    move-result v3

    sub-int/2addr v2, v3

    .line 87
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v3

    .line 88
    if-eqz v3, :cond_3

    .line 89
    iget-object v3, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->mCarousel:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

    invoke-virtual {v3}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->computeHorizontalScrollOffset()I

    move-result v3

    iget v4, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->mIconVisibilityThreshold:I

    sub-int/2addr v2, v4

    if-le v3, v2, :cond_2

    .line 91
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->getIcon()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 89
    goto :goto_1

    .line 90
    :cond_3
    iget-object v2, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->mCarousel:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

    invoke-virtual {v2}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->computeHorizontalScrollOffset()I

    move-result v2

    iget v3, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->mIconVisibilityThreshold:I

    if-le v2, v3, :cond_1

    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public indentContent()Lcom/android/calendar/newapi/view/TileView;
    .locals 0

    .prologue
    .line 73
    return-object p0
.end method

.method protected onContentViewSet(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/android/calendar/newapi/view/TileView;->onContentViewSet(Landroid/view/View;)V

    .line 49
    sget v0, Lcom/android/calendar/R$id;->carousel:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->mCarousel:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

    .line 50
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->mCarousel:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

    new-instance v1, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView$1;-><init>(Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 57
    new-instance v0, Lcom/android/calendar/newapi/segment/attachment/AttachmentCarouselAdapter;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/newapi/segment/attachment/AttachmentCarouselAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->mAdapter:Lcom/android/calendar/newapi/segment/attachment/AttachmentCarouselAdapter;

    .line 58
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->mCarousel:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->mAdapter:Lcom/android/calendar/newapi/segment/attachment/AttachmentCarouselAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 59
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
    .line 62
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->mAdapter:Lcom/android/calendar/newapi/segment/attachment/AttachmentCarouselAdapter;

    invoke-virtual {v0, p1}, Lcom/android/calendar/newapi/segment/attachment/AttachmentCarouselAdapter;->setAttachments(Ljava/util/List;)V

    .line 63
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->mAdapter:Lcom/android/calendar/newapi/segment/attachment/AttachmentCarouselAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentCarouselAdapter;->notifyDataSetChanged()V

    .line 64
    return-void
.end method

.method public setOnCarouselTileClickListener(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$OnCarouselTileClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$OnCarouselTileClickListener",
            "<",
            "Lcom/google/android/calendar/api/attachments/Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->mAdapter:Lcom/android/calendar/newapi/segment/attachment/AttachmentCarouselAdapter;

    invoke-virtual {v0, p1}, Lcom/android/calendar/newapi/segment/attachment/AttachmentCarouselAdapter;->setOnCarouselTileClickListener(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$OnCarouselTileClickListener;)V

    .line 68
    return-void
.end method

.method protected setupView()V
    .locals 3

    .prologue
    .line 36
    sget v0, Lcom/android/calendar/R$layout;->newapi_tile_content_attachment:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->setContentView(I)Lcom/android/calendar/newapi/view/TileView;

    .line 37
    sget v0, Lcom/android/calendar/R$drawable;->ic_attach:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->setIconDrawable(I)Lcom/android/calendar/newapi/view/TileView;

    .line 38
    invoke-static {p0}, Lcom/android/calendar/newapi/view/MaterialViewUtils;->addMaterialListStyling(Landroid/view/ViewGroup;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->describe_attachments_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->second_keyline:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 42
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$dimen;->attachment_chip_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 43
    int-to-float v0, v0

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->mIconVisibilityThreshold:I

    .line 44
    return-void
.end method
