.class public Lcom/android/calendar/newapi/segment/color/ColorEditSegment;
.super Lcom/android/calendar/newapi/segment/common/EditSegment;
.source "ColorEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/newapi/segment/color/ColorEditSegment$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/segment/common/EditSegment",
        "<",
        "Lcom/android/calendar/newapi/segment/color/ColorEditSegment$Listener;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mColorCircle:Lcom/android/calendar/newapi/segment/color/ColorCircle;

.field private mTile:Lcom/android/calendar/newapi/view/TextTileView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/newapi/segment/common/EditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/color/ColorEditSegment;->mListener:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/newapi/segment/color/ColorEditSegment$Listener;

    invoke-interface {v0}, Lcom/android/calendar/newapi/segment/color/ColorEditSegment$Listener;->onColorClicked()V

    .line 59
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Lcom/android/calendar/newapi/segment/common/EditSegment;->onFinishInflate()V

    .line 43
    sget v0, Lcom/android/calendar/R$id;->color_tile:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/color/ColorEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/view/TextTileView;

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/color/ColorEditSegment;->mTile:Lcom/android/calendar/newapi/view/TextTileView;

    .line 44
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/color/ColorEditSegment;->mTile:Lcom/android/calendar/newapi/view/TextTileView;

    invoke-virtual {v0, p0}, Lcom/android/calendar/newapi/view/TextTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    new-instance v0, Lcom/android/calendar/newapi/segment/color/ColorCircle;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/color/ColorEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/newapi/segment/color/ColorCircle;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/color/ColorEditSegment;->mColorCircle:Lcom/android/calendar/newapi/segment/color/ColorCircle;

    .line 47
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/color/ColorEditSegment;->mTile:Lcom/android/calendar/newapi/view/TextTileView;

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/color/ColorEditSegment;->mColorCircle:Lcom/android/calendar/newapi/segment/color/ColorCircle;

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/view/TextTileView;->setIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/calendar/newapi/view/TileView;

    .line 48
    return-void
.end method

.method public setDisplayedColor(Lcom/android/calendar/newapi/segment/common/ColorEntry;)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/color/ColorEditSegment;->mTile:Lcom/android/calendar/newapi/view/TextTileView;

    iget-object v1, p1, Lcom/android/calendar/newapi/segment/common/ColorEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/view/TextTileView;->setFirstLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 52
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/color/ColorEditSegment;->mColorCircle:Lcom/android/calendar/newapi/segment/color/ColorCircle;

    iget v1, p1, Lcom/android/calendar/newapi/segment/common/ColorEntry;->color:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/segment/color/ColorCircle;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/color/ColorEditSegment;->mTile:Lcom/android/calendar/newapi/view/TextTileView;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/view/TextTileView;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 54
    return-void
.end method
