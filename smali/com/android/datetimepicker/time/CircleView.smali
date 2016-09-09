.class public Lcom/android/datetimepicker/time/CircleView;
.super Landroid/view/View;
.source "CircleView.java"


# instance fields
.field private mAmPmCircleRadiusMultiplier:F

.field private mCircleColor:I

.field private mCircleRadius:I

.field private mCircleRadiusMultiplier:F

.field private mDotColor:I

.field private mDrawValuesReady:Z

.field private mIs24HourMode:Z

.field private mIsInitialized:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mXCenter:I

.field private mYCenter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/time/CircleView;->mCircleColor:I

    .line 52
    sget v1, Lcom/android/datetimepicker/R$color;->numbers_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/CircleView;->mDotColor:I

    .line 53
    iget-object v0, p0, Lcom/android/datetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/CircleView;->mIsInitialized:Z

    .line 56
    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/CircleView;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "CircleView"

    const-string v1, "CircleView may only be initialized once."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 65
    iput-boolean p2, p0, Lcom/android/datetimepicker/time/CircleView;->mIs24HourMode:Z

    .line 66
    if-eqz p2, :cond_1

    .line 67
    sget v1, Lcom/android/datetimepicker/R$string;->circle_radius_multiplier_24HourMode:I

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/CircleView;->mCircleRadiusMultiplier:F

    .line 76
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/CircleView;->mIsInitialized:Z

    goto :goto_0

    .line 70
    :cond_1
    sget v1, Lcom/android/datetimepicker/R$string;->circle_radius_multiplier:I

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/time/CircleView;->mCircleRadiusMultiplier:F

    .line 72
    sget v1, Lcom/android/datetimepicker/R$string;->ampm_circle_radius_multiplier:I

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/CircleView;->mAmPmCircleRadiusMultiplier:F

    goto :goto_1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/CircleView;->getWidth()I

    move-result v0

    .line 94
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/CircleView;->mIsInitialized:Z

    if-nez v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/CircleView;->mDrawValuesReady:Z

    if-nez v0, :cond_3

    .line 99
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/CircleView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/datetimepicker/time/CircleView;->mXCenter:I

    .line 100
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/CircleView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/datetimepicker/time/CircleView;->mYCenter:I

    .line 101
    iget v0, p0, Lcom/android/datetimepicker/time/CircleView;->mXCenter:I

    iget v1, p0, Lcom/android/datetimepicker/time/CircleView;->mYCenter:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/datetimepicker/time/CircleView;->mCircleRadiusMultiplier:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/datetimepicker/time/CircleView;->mCircleRadius:I

    .line 103
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/CircleView;->mIs24HourMode:Z

    if-nez v0, :cond_2

    .line 107
    iget v0, p0, Lcom/android/datetimepicker/time/CircleView;->mCircleRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/datetimepicker/time/CircleView;->mAmPmCircleRadiusMultiplier:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 108
    iget v1, p0, Lcom/android/datetimepicker/time/CircleView;->mYCenter:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    iput v0, p0, Lcom/android/datetimepicker/time/CircleView;->mYCenter:I

    .line 111
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/CircleView;->mDrawValuesReady:Z

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/android/datetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/datetimepicker/time/CircleView;->mCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget v0, p0, Lcom/android/datetimepicker/time/CircleView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/datetimepicker/time/CircleView;->mYCenter:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/datetimepicker/time/CircleView;->mCircleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/datetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 119
    iget-object v0, p0, Lcom/android/datetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/datetimepicker/time/CircleView;->mDotColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget v0, p0, Lcom/android/datetimepicker/time/CircleView;->mXCenter:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/datetimepicker/time/CircleView;->mYCenter:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    iget-object v3, p0, Lcom/android/datetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method setTheme(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    if-eqz p2, :cond_0

    .line 82
    sget v1, Lcom/android/datetimepicker/R$color;->dark_gray:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/time/CircleView;->mCircleColor:I

    .line 83
    sget v1, Lcom/android/datetimepicker/R$color;->light_gray:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/CircleView;->mDotColor:I

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_0
    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/time/CircleView;->mCircleColor:I

    .line 86
    sget v1, Lcom/android/datetimepicker/R$color;->numbers_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/CircleView;->mDotColor:I

    goto :goto_0
.end method
