.class public Lcom/android/calendar/newapi/view/TextTileView;
.super Lcom/android/calendar/newapi/view/TileView;
.source "TextTileView.java"


# instance fields
.field private mContainer:Landroid/view/ViewGroup;

.field private mFirstLine:Landroid/widget/TextView;

.field private mSecondLine:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/view/TileView;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/view/TextTileView;->setFirstLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/newapi/view/TileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method private hasSecondline()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/calendar/newapi/view/TextTileView;->mSecondLine:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected adjustContentMinHeight(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/calendar/newapi/view/TextTileView;->hasSecondline()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/TextTileView;->getSecondLine()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 158
    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/TextTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 159
    sget v0, Lcom/android/calendar/R$dimen;->tile_two_line_min_height:I

    .line 158
    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 161
    return-void

    .line 157
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 160
    :cond_1
    sget v0, Lcom/android/calendar/R$dimen;->tile_min_height:I

    goto :goto_1
.end method

.method protected applyAttributes(Landroid/content/res/TypedArray;)V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/calendar/newapi/view/TileView;->applyAttributes(Landroid/content/res/TypedArray;)V

    .line 54
    sget v0, Lcom/android/calendar/R$styleable;->TileView_tile_first_line_text:I

    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/newapi/view/TextTileView;->getStringFromAttribute(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/view/TextTileView;->setFirstLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 55
    sget v0, Lcom/android/calendar/R$styleable;->TileView_tile_second_line_text:I

    .line 56
    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/newapi/view/TextTileView;->getStringFromAttribute(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/view/TextTileView;->setSecondLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 60
    :cond_0
    return-void
.end method

.method public getFirstLine()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/calendar/newapi/view/TextTileView;->mFirstLine:Landroid/widget/TextView;

    return-object v0
.end method

.method public getFirstLineText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/calendar/newapi/view/TextTileView;->mFirstLine:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSecondLine()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/calendar/newapi/view/TextTileView;->mSecondLine:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/TextTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->newapi_tile_content_two_line_text_second_line:I

    iget-object v2, p0, Lcom/android/calendar/newapi/view/TextTileView;->mContainer:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Lcom/android/calendar/newapi/view/TextTileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 178
    sget v0, Lcom/android/calendar/R$id;->second_line_text:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/view/TextTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/newapi/view/TextTileView;->mSecondLine:Landroid/widget/TextView;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/view/TextTileView;->mSecondLine:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onContentViewSet(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/android/calendar/newapi/view/TileView;->onContentViewSet(Landroid/view/View;)V

    .line 187
    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/calendar/newapi/view/TextTileView;->mContainer:Landroid/view/ViewGroup;

    .line 188
    sget v0, Lcom/android/calendar/R$id;->first_line_text:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/view/TextTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/newapi/view/TextTileView;->mFirstLine:Landroid/widget/TextView;

    .line 189
    return-void
.end method

.method public varargs setFirstLineText(I[Ljava/lang/Object;)Lcom/android/calendar/newapi/view/TextTileView;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/TextTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/view/TextTileView;->setFirstLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 85
    return-object p0
.end method

.method public setFirstLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/calendar/newapi/view/TextTileView;->mFirstLine:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-object p0
.end method

.method public varargs setSecondLineText(I[Ljava/lang/Object;)Lcom/android/calendar/newapi/view/TextTileView;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/TextTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/view/TextTileView;->setSecondLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;

    .line 138
    return-object p0
.end method

.method public setSecondLineText(Ljava/lang/CharSequence;)Lcom/android/calendar/newapi/view/TextTileView;
    .locals 1

    .prologue
    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/calendar/newapi/view/TextTileView;->hasSecondline()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/view/TextTileView;->setSecondLineVisibility(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/TextTileView;->getSecondLine()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_1
    return-object p0

    .line 107
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSecondLineVisibility(Z)V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/calendar/newapi/view/TextTileView;->hasSecondline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/TextTileView;->getSecondLine()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 145
    iget-object v0, p0, Lcom/android/calendar/newapi/view/TextTileView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/view/TextTileView;->adjustContentMinHeight(Landroid/view/View;)V

    .line 147
    :cond_0
    return-void
.end method

.method protected setupView()V
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/android/calendar/R$layout;->newapi_tile_content_two_line_text:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/view/TextTileView;->setContentView(I)Lcom/android/calendar/newapi/view/TileView;

    .line 46
    return-void
.end method
