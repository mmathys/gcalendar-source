.class public Lcom/android/calendar/newapi/view/TileView;
.super Landroid/widget/FrameLayout;
.source "TileView.java"


# instance fields
.field private mCenterIconThreshold:I

.field public mContentView:Landroid/view/View;

.field private mIcon:Landroid/widget/ImageView;

.field private mTreatedAsButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/newapi/view/TileView;->mTreatedAsButton:Z

    .line 52
    invoke-direct {p0}, Lcom/android/calendar/newapi/view/TileView;->inflate()V

    .line 53
    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/TileView;->setupView()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput-boolean v2, p0, Lcom/android/calendar/newapi/view/TileView;->mTreatedAsButton:Z

    .line 58
    invoke-direct {p0}, Lcom/android/calendar/newapi/view/TileView;->inflate()V

    .line 59
    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/TileView;->setupView()V

    .line 61
    if-eqz p2, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/TileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/R$styleable;->TileView:[I

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/view/TileView;->applyAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    :cond_0
    return-void

    .line 67
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private inflate()V
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/TileView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->newapi_tile_view:I

    invoke-static {v0, v1, p0}, Lcom/android/calendar/newapi/view/TileView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 74
    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/TileView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->tile_two_line_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/calendar/newapi/view/TileView;->mCenterIconThreshold:I

    .line 75
    return-void
.end method

.method private inflateContent(I)V
    .locals 1

    .prologue
    .line 197
    if-eqz p1, :cond_0

    .line 198
    sget v0, Lcom/android/calendar/R$id;->content_layout_stub:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/view/TileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 199
    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 200
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/view/TileView;->mContentView:Landroid/view/View;

    .line 201
    iget-object v0, p0, Lcom/android/calendar/newapi/view/TileView;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/view/TileView;->onContentViewSet(Landroid/view/View;)V

    .line 203
    :cond_0
    return-void
.end method

.method private isTreatedAsButton()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/android/calendar/newapi/view/TileView;->mTreatedAsButton:Z

    return v0
.end method


# virtual methods
.method protected applyAttributes(Landroid/content/res/TypedArray;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 290
    sget v0, Lcom/android/calendar/R$styleable;->TileView_tile_content_layout:I

    .line 291
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 290
    invoke-direct {p0, v0}, Lcom/android/calendar/newapi/view/TileView;->inflateContent(I)V

    .line 292
    sget v0, Lcom/android/calendar/R$styleable;->TileView_tile_icon:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/view/TileView;->setIconDrawable(I)Lcom/android/calendar/newapi/view/TileView;

    .line 293
    sget v0, Lcom/android/calendar/R$styleable;->TileView_tile_treat_as_button:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/TileView;->treatAsButton()Lcom/android/calendar/newapi/view/TileView;

    .line 296
    :cond_0
    sget v0, Lcom/android/calendar/R$styleable;->TileView_tile_indent_layout:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/TileView;->indentContent()Lcom/android/calendar/newapi/view/TileView;

    .line 299
    :cond_1
    return-void
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 324
    .line 325
    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/TileView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/newapi/view/TileView;->mContentView:Landroid/view/View;

    .line 327
    invoke-super {p0}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    .line 328
    invoke-direct {p0}, Lcom/android/calendar/newapi/view/TileView;->isTreatedAsButton()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 324
    :goto_0
    invoke-static {v1, v2, v3, v0}, Lcom/android/calendar/AccessibilityUtils;->getContentDescription(Landroid/content/Context;Landroid/view/View;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 328
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIcon()Landroid/widget/ImageView;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Lcom/android/calendar/newapi/view/TileView;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/calendar/newapi/view/TileView;->mIcon:Landroid/widget/ImageView;

    .line 161
    :goto_0
    return-object v0

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/TileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->newapi_tile_icon:I

    .line 159
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/calendar/newapi/view/TileView;->mIcon:Landroid/widget/ImageView;

    .line 160
    iget-object v0, p0, Lcom/android/calendar/newapi/view/TileView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/android/calendar/newapi/view/TileView;->addView(Landroid/view/View;I)V

    .line 161
    iget-object v0, p0, Lcom/android/calendar/newapi/view/TileView;->mIcon:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method protected getStringFromAttribute(Landroid/content/res/TypedArray;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    if-nez v0, :cond_0

    .line 306
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 308
    :cond_0
    return-object v0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/calendar/newapi/view/TileView;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/newapi/view/TileView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public indentContent()Lcom/android/calendar/newapi/view/TileView;
    .locals 5

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/calendar/newapi/view/TileView;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-object p0

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/TileView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->second_keyline:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 226
    iget-object v1, p0, Lcom/android/calendar/newapi/view/TileView;->mContentView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/calendar/newapi/view/TileView;->mContentView:Landroid/view/View;

    .line 227
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/calendar/newapi/view/TileView;->mContentView:Landroid/view/View;

    .line 228
    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    iget-object v4, p0, Lcom/android/calendar/newapi/view/TileView;->mContentView:Landroid/view/View;

    .line 229
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 226
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0
.end method

.method protected onContentViewSet(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/calendar/newapi/view/TileView;->mContentView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/TileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$dimen;->tile_min_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 215
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 89
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 91
    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/TileView;->hasIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/calendar/newapi/view/TileView;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 93
    sub-int v1, p5, p3

    .line 94
    iget-object v2, p0, Lcom/android/calendar/newapi/view/TileView;->mIcon:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/calendar/newapi/view/TileView;->mCenterIconThreshold:I

    if-le v0, v3, :cond_1

    .line 99
    iget v0, p0, Lcom/android/calendar/newapi/view/TileView;->mCenterIconThreshold:I

    int-to-double v0, v0

    div-double/2addr v0, v6

    iget-object v3, p0, Lcom/android/calendar/newapi/view/TileView;->mIcon:Landroid/widget/ImageView;

    .line 98
    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    int-to-double v4, v3

    div-double/2addr v4, v6

    sub-double/2addr v0, v4

    double-to-int v0, v0

    iget-object v1, p0, Lcom/android/calendar/newapi/view/TileView;->mContentView:Landroid/view/View;

    .line 99
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTop(I)V

    .line 102
    iget-object v0, p0, Lcom/android/calendar/newapi/view/TileView;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/calendar/newapi/view/TileView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/newapi/view/TileView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBottom(I)V

    .line 104
    :cond_0
    return-void

    .line 101
    :cond_1
    int-to-double v0, v1

    div-double/2addr v0, v6

    iget-object v3, p0, Lcom/android/calendar/newapi/view/TileView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    int-to-double v4, v3

    div-double/2addr v4, v6

    sub-double/2addr v0, v4

    double-to-int v0, v0

    goto :goto_0
.end method

.method public setContentView(I)Lcom/android/calendar/newapi/view/TileView;
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/view/TileView;->inflateContent(I)V

    .line 186
    return-object p0
.end method

.method public setIconDrawable(I)Lcom/android/calendar/newapi/view/TileView;
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/TileView;->hasIcon()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/TileView;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/TileView;->getIcon()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/TileView;->hasIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/TileView;->indentContent()Lcom/android/calendar/newapi/view/TileView;

    .line 125
    :cond_2
    return-object p0

    .line 119
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/calendar/newapi/view/TileView;
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/TileView;->hasIcon()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/TileView;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/TileView;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/TileView;->hasIcon()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/TileView;->hasIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/TileView;->indentContent()Lcom/android/calendar/newapi/view/TileView;

    .line 146
    :cond_2
    return-object p0
.end method

.method protected setupView()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public treatAsButton()Lcom/android/calendar/newapi/view/TileView;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 255
    iput-boolean v1, p0, Lcom/android/calendar/newapi/view/TileView;->mTreatedAsButton:Z

    .line 257
    invoke-virtual {p0}, Lcom/android/calendar/newapi/view/TileView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v1, v1, [I

    sget v2, Lcom/android/calendar/R$attr;->selectableItemBackground:I

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 260
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 261
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/calendar/newapi/view/TileView;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 262
    iget-object v2, p0, Lcom/android/calendar/newapi/view/TileView;->mContentView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 267
    return-object p0

    .line 265
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method
