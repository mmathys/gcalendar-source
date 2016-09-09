.class public Lcom/android/calendar/DayOfMonthDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DayOfMonthDrawable.java"


# static fields
.field private static sTextSize:F


# instance fields
.field private mDayOfMonth:Ljava/lang/String;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mTextBounds:Landroid/graphics/Rect;

.field private final mTopPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/high16 v0, 0x41400000    # 12.0f

    sput v0, Lcom/android/calendar/DayOfMonthDrawable;->sTextSize:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 43
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 37
    const-string v0, "1"

    iput-object v0, p0, Lcom/android/calendar/DayOfMonthDrawable;->mDayOfMonth:Ljava/lang/String;

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/DayOfMonthDrawable;->mTextBounds:Landroid/graphics/Rect;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    sget v1, Lcom/android/calendar/R$dimen;->today_icon_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/android/calendar/DayOfMonthDrawable;->sTextSize:F

    .line 47
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/DayOfMonthDrawable;->mPaint:Landroid/graphics/Paint;

    .line 48
    iget-object v1, p0, Lcom/android/calendar/DayOfMonthDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 49
    iget-object v1, p0, Lcom/android/calendar/DayOfMonthDrawable;->mPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/R$color;->actionbar_today_text_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object v1, p0, Lcom/android/calendar/DayOfMonthDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    iget-object v1, p0, Lcom/android/calendar/DayOfMonthDrawable;->mPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/DayOfMonthDrawable;->sTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 52
    iget-object v1, p0, Lcom/android/calendar/DayOfMonthDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 53
    iget-object v1, p0, Lcom/android/calendar/DayOfMonthDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 54
    iget-object v1, p0, Lcom/android/calendar/DayOfMonthDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    sget v1, Lcom/android/calendar/R$dimen;->today_icon_text_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayOfMonthDrawable;->mTopPadding:I

    .line 57
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/calendar/DayOfMonthDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/calendar/DayOfMonthDrawable;->mDayOfMonth:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/calendar/DayOfMonthDrawable;->mDayOfMonth:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/calendar/DayOfMonthDrawable;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 62
    iget-object v0, p0, Lcom/android/calendar/DayOfMonthDrawable;->mTextBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/calendar/DayOfMonthDrawable;->mTextBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    .line 63
    invoke-virtual {p0}, Lcom/android/calendar/DayOfMonthDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/android/calendar/DayOfMonthDrawable;->mDayOfMonth:Ljava/lang/String;

    iget v3, v1, Landroid/graphics/Rect;->right:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    int-to-float v0, v0

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/DayOfMonthDrawable;->mTopPadding:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/calendar/DayOfMonthDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 68
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/calendar/DayOfMonthDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 73
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public setDayOfMonth(I)V
    .locals 4

    .prologue
    .line 86
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayOfMonthDrawable;->mDayOfMonth:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lcom/android/calendar/DayOfMonthDrawable;->invalidateSelf()V

    .line 88
    return-void
.end method
