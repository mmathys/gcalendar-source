.class public Lcom/android/calendar/newapi/view/MultiLineTextTileView;
.super Lcom/android/calendar/newapi/view/TileView;
.source "MultiLineTextTileView.java"


# instance fields
.field private mContainer:Landroid/widget/LinearLayout;

.field private mLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/view/TileView;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/view/MultiLineTextTileView;->mLines:Ljava/util/List;

    .line 25
    invoke-direct {p0}, Lcom/android/calendar/newapi/view/MultiLineTextTileView;->updateUi()V

    .line 26
    return-void
.end method

.method private createViewForLine(Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 4

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/MultiLineTextTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->newapi_tile_single_line:I

    iget-object v2, p0, Lcom/android/calendar/newapi/view/MultiLineTextTileView;->mContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    .line 54
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 55
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-object v0
.end method

.method private updateUi()V
    .locals 4

    .prologue
    .line 44
    iget-object v1, p0, Lcom/android/calendar/newapi/view/MultiLineTextTileView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/MultiLineTextTileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Lcom/android/calendar/newapi/view/MultiLineTextTileView;->mLines:Ljava/util/List;

    .line 45
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    sget v0, Lcom/android/calendar/R$dimen;->tile_two_line_min_height:I

    .line 44
    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 46
    iget-object v0, p0, Lcom/android/calendar/newapi/view/MultiLineTextTileView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 47
    iget-object v0, p0, Lcom/android/calendar/newapi/view/MultiLineTextTileView;->mLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 48
    iget-object v2, p0, Lcom/android/calendar/newapi/view/MultiLineTextTileView;->mContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/calendar/newapi/view/MultiLineTextTileView;->createViewForLine(Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 45
    :cond_0
    sget v0, Lcom/android/calendar/R$dimen;->tile_min_height:I

    goto :goto_0

    .line 50
    :cond_1
    return-void
.end method


# virtual methods
.method protected onContentViewSet(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/android/calendar/newapi/view/TileView;->onContentViewSet(Landroid/view/View;)V

    .line 62
    sget v0, Lcom/android/calendar/R$id;->container:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/view/MultiLineTextTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/calendar/newapi/view/MultiLineTextTileView;->mContainer:Landroid/widget/LinearLayout;

    .line 63
    return-void
.end method

.method public setLines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/calendar/newapi/view/MultiLineTextTileView;->mLines:Ljava/util/List;

    .line 35
    invoke-direct {p0}, Lcom/android/calendar/newapi/view/MultiLineTextTileView;->updateUi()V

    .line 36
    return-void
.end method

.method protected setupView()V
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/android/calendar/R$layout;->newapi_tile_content_multiline_text:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/view/MultiLineTextTileView;->setContentView(I)Lcom/android/calendar/newapi/view/TileView;

    .line 31
    return-void
.end method
