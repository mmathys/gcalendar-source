.class public Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;
.super Lcom/android/calendar/newapi/segment/common/EditSegment;
.source "AttachmentEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$OnCarouselTileClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/segment/common/EditSegment",
        "<",
        "Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment$Listener;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$OnCarouselTileClickListener",
        "<",
        "Lcom/google/android/calendar/api/attachments/Attachment;",
        ">;"
    }
.end annotation


# instance fields
.field private mAttachmentTile:Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;

.field private mNewAttachmentTextTile:Lcom/android/calendar/newapi/view/TextTileView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/newapi/segment/common/EditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;->mListener:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;->mListener:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public onCarouselTileClick(Landroid/view/View;Lcom/google/android/calendar/api/attachments/Attachment;)V
    .locals 4

    .prologue
    .line 90
    if-nez p2, :cond_0

    .line 111
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 94
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 95
    sget v2, Lcom/android/calendar/R$string;->view_attachment:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 96
    sget v3, Lcom/android/calendar/R$string;->remove_attachment:I

    invoke-interface {v1, v3}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 97
    new-instance v3, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment$1;

    invoke-direct {v3, p0, v2, p2, v1}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment$1;-><init>(Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;Landroid/view/MenuItem;Lcom/google/android/calendar/api/attachments/Attachment;Landroid/view/MenuItem;)V

    invoke-virtual {v0, v3}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 110
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0
.end method

.method public bridge synthetic onCarouselTileClick(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p2, Lcom/google/android/calendar/api/attachments/Attachment;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;->onCarouselTileClick(Landroid/view/View;Lcom/google/android/calendar/api/attachments/Attachment;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;->mListener:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment$Listener;

    invoke-interface {v0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment$Listener;->onNewAttachmentClicked()V

    .line 86
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 60
    invoke-super {p0}, Lcom/android/calendar/newapi/segment/common/EditSegment;->onFinishInflate()V

    .line 62
    sget v0, Lcom/android/calendar/R$id;->attachment_tile:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;->mAttachmentTile:Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;

    .line 63
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;->mAttachmentTile:Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->setOnCarouselTileClickListener(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarouselAdapter$OnCarouselTileClickListener;)V

    .line 65
    sget v0, Lcom/android/calendar/R$id;->new_attachment_tile:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/view/TextTileView;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;->mNewAttachmentTextTile:Lcom/android/calendar/newapi/view/TextTileView;

    .line 66
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;->mNewAttachmentTextTile:Lcom/android/calendar/newapi/view/TextTileView;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/view/TextTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;->mNewAttachmentTextTile:Lcom/android/calendar/newapi/view/TextTileView;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/view/TextTileView;->getFirstLine()Landroid/widget/TextView;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$color;->edit_text_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    return-void
.end method

.method public setAttachments(Ljava/util/List;)V
    .locals 4
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
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;->mAttachmentTile:Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;->setAttachments(Ljava/util/List;)V

    .line 74
    iget-object v2, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;->mNewAttachmentTextTile:Lcom/android/calendar/newapi/view/TextTileView;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    sget v0, Lcom/android/calendar/R$string;->edit_add_attachment_hint:I

    .line 76
    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    .line 74
    invoke-virtual {v2, v0, v3}, Lcom/android/calendar/newapi/view/TextTileView;->setFirstLineText(I[Ljava/lang/Object;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 78
    iget-object v2, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;->mAttachmentTile:Lcom/android/calendar/newapi/segment/attachment/AttachmentTileView;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v2, v0}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 80
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/attachment/AttachmentEditSegment;->mNewAttachmentTextTile:Lcom/android/calendar/newapi/view/TextTileView;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/view/TextTileView;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 81
    return-void

    .line 76
    :cond_0
    sget v0, Lcom/android/calendar/R$string;->edit_add_more_attachments_hint:I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 78
    goto :goto_1
.end method
