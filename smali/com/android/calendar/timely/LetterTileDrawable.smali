.class public Lcom/android/calendar/timely/LetterTileDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LetterTileDrawable.java"


# static fields
.field private static sColors:Landroid/content/res/TypedArray;

.field private static sDefaultColor:I

.field private static final sFirstChar:[C

.field private static sLetterToTileRatio:F

.field private static sPaint:Landroid/graphics/Paint;

.field private static final sRect:Landroid/graphics/Rect;

.field private static sTileFontColor:I


# instance fields
.field private mColor:I

.field private mLetter:Ljava/lang/Character;

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/android/calendar/timely/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/calendar/timely/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [C

    sput-object v0, Lcom/android/calendar/timely/LetterTileDrawable;->sFirstChar:[C

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 39
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/timely/LetterTileDrawable;->mLetter:Ljava/lang/Character;

    .line 40
    sget-object v0, Lcom/android/calendar/timely/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 42
    sget v1, Lcom/android/calendar/R$array;->letter_tile_colors:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    sput-object v1, Lcom/android/calendar/timely/LetterTileDrawable;->sColors:Landroid/content/res/TypedArray;

    .line 43
    sget v1, Lcom/android/calendar/R$color;->letter_tile_default_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/calendar/timely/LetterTileDrawable;->sDefaultColor:I

    .line 44
    sget v1, Lcom/android/calendar/R$color;->letter_tile_font_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/calendar/timely/LetterTileDrawable;->sTileFontColor:I

    .line 45
    sget v1, Lcom/android/calendar/R$fraction;->letter_to_tile_ratio:I

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    sput v0, Lcom/android/calendar/timely/LetterTileDrawable;->sLetterToTileRatio:F

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/calendar/timely/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    .line 47
    sget-object v0, Lcom/android/calendar/timely/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 48
    sget-object v0, Lcom/android/calendar/timely/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 49
    sget-object v0, Lcom/android/calendar/timely/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lcom/android/calendar/timely/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 54
    iget-object v0, p0, Lcom/android/calendar/timely/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 55
    sget v0, Lcom/android/calendar/timely/LetterTileDrawable;->sDefaultColor:I

    iput v0, p0, Lcom/android/calendar/timely/LetterTileDrawable;->mColor:I

    .line 56
    return-void
.end method

.method private drawLetterTile(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/android/calendar/timely/LetterTileDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 82
    sget-object v4, Lcom/android/calendar/timely/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/android/calendar/timely/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 84
    iget-object v4, p0, Lcom/android/calendar/timely/LetterTileDrawable;->mLetter:Ljava/lang/Character;

    if-eqz v4, :cond_0

    .line 85
    sget-object v4, Lcom/android/calendar/timely/LetterTileDrawable;->sFirstChar:[C

    iget-object v5, p0, Lcom/android/calendar/timely/LetterTileDrawable;->mLetter:Ljava/lang/Character;

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v5

    aput-char v5, v4, v2

    .line 87
    sget-object v4, Lcom/android/calendar/timely/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/calendar/timely/LetterTileDrawable;->mColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    sget-object v7, Lcom/android/calendar/timely/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 90
    sget-object v4, Lcom/android/calendar/timely/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    sget v5, Lcom/android/calendar/timely/LetterTileDrawable;->sLetterToTileRatio:F

    int-to-float v1, v1

    mul-float/2addr v1, v5

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 91
    sget-object v1, Lcom/android/calendar/timely/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    sget-object v4, Lcom/android/calendar/timely/LetterTileDrawable;->sFirstChar:[C

    sget-object v5, Lcom/android/calendar/timely/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 92
    sget-object v1, Lcom/android/calendar/timely/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    sget v4, Lcom/android/calendar/timely/LetterTileDrawable;->sTileFontColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    sget-object v1, Lcom/android/calendar/timely/LetterTileDrawable;->sFirstChar:[C

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    .line 96
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    sget-object v5, Lcom/android/calendar/timely/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    sub-float v5, v0, v5

    sget-object v6, Lcom/android/calendar/timely/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 95
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 98
    :cond_0
    return-void
.end method

.method public static isValidLetter(C)Z
    .locals 1

    .prologue
    .line 122
    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static pickColor(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 108
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    sget v0, Lcom/android/calendar/timely/LetterTileDrawable;->sDefaultColor:I

    .line 115
    :goto_0
    return v0

    .line 114
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget-object v1, Lcom/android/calendar/timely/LetterTileDrawable;->sColors:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    rem-int/2addr v0, v1

    .line 115
    sget-object v1, Lcom/android/calendar/timely/LetterTileDrawable;->sColors:Landroid/content/res/TypedArray;

    sget v2, Lcom/android/calendar/timely/LetterTileDrawable;->sDefaultColor:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/calendar/timely/LetterTileDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/android/calendar/timely/LetterTileDrawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/LetterTileDrawable;->drawLetterTile(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/calendar/timely/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 128
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/calendar/timely/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 133
    return-void
.end method

.method public setLetterAndColor(Ljava/lang/String;Ljava/lang/String;)Lcom/android/calendar/timely/LetterTileDrawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 60
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/calendar/timely/LetterTileDrawable;->isValidLetter(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/LetterTileDrawable;->mLetter:Ljava/lang/Character;

    .line 65
    :goto_0
    invoke-static {p2}, Lcom/android/calendar/timely/LetterTileDrawable;->pickColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/LetterTileDrawable;->mColor:I

    .line 66
    return-object p0

    .line 63
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/timely/LetterTileDrawable;->mLetter:Ljava/lang/Character;

    goto :goto_0
.end method
