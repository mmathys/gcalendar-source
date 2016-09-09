.class public Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;
.super Landroid/support/v7/widget/RecyclerView;
.source "HorizontalCarousel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$LayoutManagerWithMaxItemWidth;,
        Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$ViewHolder;
    }
.end annotation


# static fields
.field private static final RECT:Landroid/graphics/Rect;

.field private static final RECT_F:Landroid/graphics/RectF;


# instance fields
.field private forceOnSizeChanged:Z

.field private maxItemWidth:I

.field private maxItemWidthHint:I

.field private spaceBetween:I

.field private final spaceDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

.field private spaceEnd:I

.field private spaceStart:I

.field private final touchSlop:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->RECT:Landroid/graphics/Rect;

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->RECT_F:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$1;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$1;-><init>(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;)V

    iput-object v0, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->spaceDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->setHasFixedSize(Z)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->createHorizontalLayoutManager(Landroid/content/Context;)Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$LayoutManagerWithMaxItemWidth;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 86
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->touchSlop:F

    .line 87
    iget-object v0, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->spaceDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 89
    if-eqz p2, :cond_0

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/view/horizontalcarousel/R$styleable;->HorizontalCarousel:[I

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 94
    :try_start_0
    sget v0, Lcom/google/android/libraries/view/horizontalcarousel/R$styleable;->HorizontalCarousel_layout_spaceStart:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->spaceStart:I

    .line 95
    sget v0, Lcom/google/android/libraries/view/horizontalcarousel/R$styleable;->HorizontalCarousel_layout_spaceEnd:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->spaceEnd:I

    .line 96
    sget v0, Lcom/google/android/libraries/view/horizontalcarousel/R$styleable;->HorizontalCarousel_layout_spaceBetween:I

    const/4 v2, 0x0

    .line 97
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->spaceBetween:I

    .line 98
    sget v0, Lcom/google/android/libraries/view/horizontalcarousel/R$styleable;->HorizontalCarousel_layout_maxItemWidthHint:I

    const/4 v2, 0x0

    .line 99
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->maxItemWidthHint:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    :cond_0
    return-void

    .line 101
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method static synthetic access$000(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->spaceStart:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->spaceEnd:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->spaceBetween:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->maxItemWidth:I

    return v0
.end method

.method private getChildAt(FFZF)Landroid/view/View;
    .locals 6

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->getChildCount()I

    move-result v2

    .line 156
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 157
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 158
    if-nez p3, :cond_1

    instance-of v3, v0, Landroid/widget/Space;

    if-eqz v3, :cond_1

    .line 156
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 161
    :cond_1
    sget-object v3, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->RECT:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 162
    sget-object v3, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->RECT_F:Landroid/graphics/RectF;

    sget-object v4, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->RECT:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 163
    sget-object v3, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->RECT_F:Landroid/graphics/RectF;

    neg-float v4, p4

    neg-float v5, p4

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 164
    sget-object v3, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->RECT_F:Landroid/graphics/RectF;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected createHorizontalLayoutManager(Landroid/content/Context;)Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$LayoutManagerWithMaxItemWidth;
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$LayoutManagerWithMaxItemWidth;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel$LayoutManagerWithMaxItemWidth;-><init>(Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;Landroid/content/Context;)V

    return-object v0
.end method

.method public isTouchOnChild(II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 150
    int-to-float v1, p1

    int-to-float v2, p2

    iget v3, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->touchSlop:F

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->getChildAt(FFZF)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .prologue
    .line 184
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView;->onSizeChanged(IIII)V

    .line 186
    if-ne p1, p3, :cond_0

    iget-boolean v0, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->forceOnSizeChanged:Z

    if-eqz v0, :cond_1

    .line 187
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->maxItemWidthHint:I

    iget v1, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->spaceStart:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->spaceEnd:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->maxItemWidth:I

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->forceOnSizeChanged:Z

    .line 190
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/libraries/view/horizontalcarousel/HorizontalCarousel;->isTouchOnChild(II)Z

    move-result v1

    .line 201
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
