.class public Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$LayoutManagerWithMaxItemWidth;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "HorizontalCarousel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LayoutManagerWithMaxItemWidth"
.end annotation


# instance fields
.field private final insets:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 229
    iput-object p1, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$LayoutManagerWithMaxItemWidth;->this$0:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

    .line 230
    invoke-direct {p0, p2, v0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 227
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$LayoutManagerWithMaxItemWidth;->insets:Landroid/graphics/Rect;

    .line 231
    return-void
.end method


# virtual methods
.method public measureChildWithMargins(Landroid/view/View;II)V
    .locals 6

    .prologue
    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 236
    iget v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 239
    iget-object v1, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$LayoutManagerWithMaxItemWidth;->insets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$LayoutManagerWithMaxItemWidth;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 240
    iget-object v1, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$LayoutManagerWithMaxItemWidth;->insets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$LayoutManagerWithMaxItemWidth;->insets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    .line 241
    iget-object v2, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$LayoutManagerWithMaxItemWidth;->insets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$LayoutManagerWithMaxItemWidth;->insets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    add-int/2addr v2, p3

    .line 245
    invoke-virtual {p0}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$LayoutManagerWithMaxItemWidth;->getWidth()I

    move-result v3

    .line 246
    invoke-virtual {p0}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$LayoutManagerWithMaxItemWidth;->getPaddingLeft()I

    move-result v4

    .line 247
    invoke-virtual {p0}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$LayoutManagerWithMaxItemWidth;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$LayoutManagerWithMaxItemWidth;->this$0:Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;

    .line 251
    # getter for: Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->maxItemWidth:I
    invoke-static {v4}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->access$300(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;)I

    move-result v4

    .line 252
    invoke-virtual {p0}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$LayoutManagerWithMaxItemWidth;->canScrollHorizontally()Z

    move-result v5

    .line 244
    invoke-static {v3, v1, v4, v5}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$LayoutManagerWithMaxItemWidth;->getChildMeasureSpec(IIIZ)I

    move-result v1

    .line 255
    invoke-virtual {p0}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$LayoutManagerWithMaxItemWidth;->getHeight()I

    move-result v3

    .line 256
    invoke-virtual {p0}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$LayoutManagerWithMaxItemWidth;->getPaddingTop()I

    move-result v4

    .line 257
    invoke-virtual {p0}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$LayoutManagerWithMaxItemWidth;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    .line 262
    invoke-virtual {p0}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$LayoutManagerWithMaxItemWidth;->canScrollVertically()Z

    move-result v4

    .line 254
    invoke-static {v3, v2, v0, v4}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$LayoutManagerWithMaxItemWidth;->getChildMeasureSpec(IIIZ)I

    move-result v0

    .line 264
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    goto :goto_0
.end method
