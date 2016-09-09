.class public Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;
.super Landroid/widget/TextView;
.source "AutoResizeTextView.java"


# instance fields
.field private final availableSpaceRect:Landroid/graphics/RectF;

.field private final displayMetrics:Landroid/util/DisplayMetrics;

.field private lineSpacingExtra:F

.field private lineSpacingMultiplier:F

.field private maxLines:I

.field private maxTextSize:F

.field private maxWidth:I

.field private minTextSize:F

.field private resizeStepUnit:I

.field private final textPaint:Landroid/text/TextPaint;

.field private final textSizesCache:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-virtual {p0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 33
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->availableSpaceRect:Landroid/graphics/RectF;

    .line 34
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textSizesCache:Landroid/util/SparseIntArray;

    .line 35
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textPaint:Landroid/text/TextPaint;

    .line 36
    iput v1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->resizeStepUnit:I

    .line 37
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->minTextSize:F

    .line 41
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->lineSpacingMultiplier:F

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->lineSpacingExtra:F

    .line 46
    invoke-direct {p0, p1, v2, v1, v1}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-virtual {p0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 33
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->availableSpaceRect:Landroid/graphics/RectF;

    .line 34
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textSizesCache:Landroid/util/SparseIntArray;

    .line 35
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textPaint:Landroid/text/TextPaint;

    .line 36
    iput v1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->resizeStepUnit:I

    .line 37
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->minTextSize:F

    .line 41
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->lineSpacingMultiplier:F

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->lineSpacingExtra:F

    .line 51
    invoke-direct {p0, p1, p2, v1, v1}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-virtual {p0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 33
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->availableSpaceRect:Landroid/graphics/RectF;

    .line 34
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textSizesCache:Landroid/util/SparseIntArray;

    .line 35
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textPaint:Landroid/text/TextPaint;

    .line 36
    iput v1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->resizeStepUnit:I

    .line 37
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->minTextSize:F

    .line 41
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->lineSpacingMultiplier:F

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->lineSpacingExtra:F

    .line 56
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    invoke-virtual {p0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 33
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->availableSpaceRect:Landroid/graphics/RectF;

    .line 34
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textSizesCache:Landroid/util/SparseIntArray;

    .line 35
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textPaint:Landroid/text/TextPaint;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->resizeStepUnit:I

    .line 37
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->minTextSize:F

    .line 41
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->lineSpacingMultiplier:F

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->lineSpacingExtra:F

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    return-void
.end method

.method private adjustTextSize()V
    .locals 4

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 187
    invoke-virtual {p0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 189
    if-lez v0, :cond_0

    if-gtz v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iput v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->maxWidth:I

    .line 194
    iget-object v2, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->availableSpaceRect:Landroid/graphics/RectF;

    int-to-float v0, v0

    iput v0, v2, Landroid/graphics/RectF;->right:F

    .line 195
    iget-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->availableSpaceRect:Landroid/graphics/RectF;

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 196
    iget v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->minTextSize:F

    invoke-direct {p0, v0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->convertToResizeStepUnits(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 197
    iget v1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->maxTextSize:F

    invoke-direct {p0, v1}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->convertToResizeStepUnits(F)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 198
    iget-object v2, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->availableSpaceRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->computeTextSize(IILandroid/graphics/RectF;)F

    move-result v0

    .line 200
    iget v1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->resizeStepUnit:I

    invoke-super {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method private binarySearchSizes(IILandroid/graphics/RectF;)I
    .locals 6

    .prologue
    .line 258
    .line 259
    add-int/lit8 v2, p1, 0x1

    move v0, p2

    .line 262
    :goto_0
    if-gt v2, v0, :cond_1

    .line 263
    add-int v1, v2, v0

    div-int/lit8 v1, v1, 0x2

    .line 264
    iget v3, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->resizeStepUnit:I

    int-to-float v4, v1

    iget-object v5, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 265
    invoke-direct {p0, v3, p3}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->suggestedSizeFitsInSpace(FLandroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    add-int/lit8 v1, v1, 0x1

    :goto_1
    move p1, v2

    move v2, v1

    .line 272
    goto :goto_0

    .line 269
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v2

    move v2, v0

    .line 270
    goto :goto_1

    .line 273
    :cond_1
    return p1
.end method

.method private computeTextSize(IILandroid/graphics/RectF;)F
    .locals 3

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textSizesCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textSizesCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    int-to-float v0, v0

    .line 248
    :goto_0
    return v0

    .line 246
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->binarySearchSizes(IILandroid/graphics/RectF;)I

    move-result v1

    .line 247
    iget-object v2, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textSizesCache:Landroid/util/SparseIntArray;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 248
    int-to-float v0, v1

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1
.end method

.method private convertToResizeStepUnits(F)F
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 279
    iget v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->resizeStepUnit:I

    iget-object v1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    div-float v0, v2, v0

    .line 280
    mul-float/2addr v0, p1

    return v0
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/material/autoresizetext/R$styleable;->AutoResizeTextView:[I

    invoke-virtual {v0, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    invoke-direct {p0, v0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->readAttrs(Landroid/content/res/TypedArray;)V

    .line 70
    iget-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 71
    return-void
.end method

.method private readAttrs(Landroid/content/res/TypedArray;)V
    .locals 2

    .prologue
    .line 178
    sget v0, Lcom/google/android/libraries/material/autoresizetext/R$styleable;->AutoResizeTextView_autoResizeText_resizeStepUnit:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->resizeStepUnit:I

    .line 180
    sget v0, Lcom/google/android/libraries/material/autoresizetext/R$styleable;->AutoResizeTextView_autoResizeText_minTextSize:I

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->minTextSize:F

    .line 182
    invoke-virtual {p0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->maxTextSize:F

    .line 183
    return-void
.end method

.method private suggestedSizeFitsInSpace(FLandroid/graphics/RectF;)Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 204
    iget-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 205
    invoke-virtual {p0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-virtual {p0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->getMaxLines()I

    move-result v9

    .line 207
    if-ne v9, v7, :cond_2

    .line 209
    iget-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v0

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textPaint:Landroid/text/TextPaint;

    .line 210
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget v1, p2, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v7

    :cond_1
    move v7, v8

    .line 210
    goto :goto_0

    .line 214
    :cond_2
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->maxWidth:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 218
    invoke-virtual {p0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->getLineSpacingMultiplier()F

    move-result v5

    .line 219
    invoke-virtual {p0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->getLineSpacingExtra()F

    move-result v6

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 223
    const/4 v1, -0x1

    if-eq v9, v1, :cond_3

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-le v1, v9, :cond_3

    move v7, v8

    .line 224
    goto :goto_0

    .line 227
    :cond_3
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    move v7, v8

    .line 228
    goto :goto_0
.end method


# virtual methods
.method public final getLineSpacingExtra()F
    .locals 2

    .prologue
    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 104
    invoke-super {p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v0

    .line 106
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->lineSpacingExtra:F

    goto :goto_0
.end method

.method public final getLineSpacingMultiplier()F
    .locals 2

    .prologue
    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 94
    invoke-super {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v0

    .line 96
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->lineSpacingMultiplier:F

    goto :goto_0
.end method

.method public final getMaxLines()I
    .locals 2

    .prologue
    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 77
    invoke-super {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    .line 79
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->maxLines:I

    goto :goto_0
.end method

.method protected final onMeasure(II)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->adjustTextSize()V

    .line 302
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 303
    return-void
.end method

.method protected final onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 292
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 293
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textSizesCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 295
    invoke-direct {p0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->adjustTextSize()V

    .line 297
    :cond_1
    return-void
.end method

.method protected final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 286
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 287
    invoke-direct {p0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->adjustTextSize()V

    .line 288
    return-void
.end method

.method public final setLineSpacing(FF)V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 116
    iput p2, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->lineSpacingMultiplier:F

    .line 117
    iput p1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->lineSpacingExtra:F

    .line 118
    return-void
.end method

.method public final setMaxLines(I)V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 87
    iput p1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->maxLines:I

    .line 88
    return-void
.end method

.method public final setTextSize(IF)V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 132
    iget v1, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->maxTextSize:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 133
    iput v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->maxTextSize:F

    .line 138
    iget-object v0, p0, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->textSizesCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 139
    invoke-virtual {p0}, Lcom/google/android/libraries/material/autoresizetext/AutoResizeTextView;->requestLayout()V

    .line 141
    :cond_0
    return-void
.end method
