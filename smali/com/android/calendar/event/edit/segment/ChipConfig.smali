.class public Lcom/android/calendar/event/edit/segment/ChipConfig;
.super Ljava/lang/Object;
.source "ChipConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;
    }
.end annotation


# instance fields
.field private final mBackgroundDefault:Landroid/graphics/drawable/Drawable;

.field private final mBackgroundSelected:Landroid/graphics/drawable/Drawable;

.field private final mChipVerticalSpacing:I

.field private final mHeight:I

.field private final mIconInset:I

.field private final mIconTextSpacing:I

.field private final mMarginLeft:I

.field private final mMarginRight:I

.field private final mMinWidth:I

.field private final mShowIcon:Z

.field private final mTextInset:I

.field private final mTextPaintDefault:Landroid/text/TextPaint;

.field private final mTextPaintSelected:Landroid/text/TextPaint;


# direct methods
.method private constructor <init>(Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    # getter for: Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mTextPaintDefault:Landroid/text/TextPaint;
    invoke-static {p1}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->access$000(Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mTextPaintDefault:Landroid/text/TextPaint;

    .line 45
    # getter for: Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mTextPaintSelected:Landroid/text/TextPaint;
    invoke-static {p1}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->access$100(Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mTextPaintSelected:Landroid/text/TextPaint;

    .line 46
    # getter for: Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mBackgroundDefault:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->access$200(Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mBackgroundDefault:Landroid/graphics/drawable/Drawable;

    .line 47
    # getter for: Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mBackgroundSelected:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->access$300(Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mBackgroundSelected:Landroid/graphics/drawable/Drawable;

    .line 48
    # getter for: Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mMinWidth:I
    invoke-static {p1}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->access$400(Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mMinWidth:I

    .line 49
    # getter for: Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mHeight:I
    invoke-static {p1}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->access$500(Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mHeight:I

    .line 50
    # getter for: Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mShowIcon:Z
    invoke-static {p1}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->access$600(Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mShowIcon:Z

    .line 51
    # getter for: Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mIconInset:I
    invoke-static {p1}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->access$700(Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mIconInset:I

    .line 52
    # getter for: Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mTextInset:I
    invoke-static {p1}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->access$800(Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mTextInset:I

    .line 53
    # getter for: Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mIconTextSpacing:I
    invoke-static {p1}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->access$900(Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mIconTextSpacing:I

    .line 54
    # getter for: Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mChipVerticalSpacing:I
    invoke-static {p1}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->access$1000(Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mChipVerticalSpacing:I

    .line 55
    # getter for: Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mMarginLeft:I
    invoke-static {p1}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->access$1100(Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mMarginLeft:I

    .line 56
    # getter for: Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->mMarginRight:I
    invoke-static {p1}, Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;->access$1200(Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mMarginRight:I

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;Lcom/android/calendar/event/edit/segment/ChipConfig$1;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/ChipConfig;-><init>(Lcom/android/calendar/event/edit/segment/ChipConfig$Builder;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/calendar/event/edit/segment/ChipConfig;)Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mTextPaintDefault:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/calendar/event/edit/segment/ChipConfig;)Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mTextPaintSelected:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/calendar/event/edit/segment/ChipConfig;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mBackgroundDefault:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/calendar/event/edit/segment/ChipConfig;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mBackgroundSelected:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/calendar/event/edit/segment/ChipConfig;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mMinWidth:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/calendar/event/edit/segment/ChipConfig;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mHeight:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/calendar/event/edit/segment/ChipConfig;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mShowIcon:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/calendar/event/edit/segment/ChipConfig;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mIconInset:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/calendar/event/edit/segment/ChipConfig;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mTextInset:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/calendar/event/edit/segment/ChipConfig;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mIconTextSpacing:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/calendar/event/edit/segment/ChipConfig;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mChipVerticalSpacing:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/calendar/event/edit/segment/ChipConfig;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mMarginLeft:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/calendar/event/edit/segment/ChipConfig;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mMarginRight:I

    return v0
.end method


# virtual methods
.method public getBackground(Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 66
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mBackgroundSelected:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mBackgroundDefault:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getBaselinePosition()I
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mTextPaintDefault:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 112
    iget v1, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mHeight:I

    iget v2, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mHeight:I

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v2, v3

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mHeight:I

    return v0
.end method

.method public getIconInset()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mIconInset:I

    return v0
.end method

.method public getIconTextSpacing()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mIconTextSpacing:I

    return v0
.end method

.method public getMarginLeft()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mMarginLeft:I

    return v0
.end method

.method public getMarginRight()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mMarginRight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mMinWidth:I

    return v0
.end method

.method public getTextInset()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mTextInset:I

    return v0
.end method

.method public getTextPaint(Z)Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 62
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mTextPaintSelected:Landroid/text/TextPaint;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mTextPaintDefault:Landroid/text/TextPaint;

    goto :goto_0
.end method

.method public isShowIcon()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mShowIcon:Z

    return v0
.end method

.method public updateFontMetrics(Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/ChipConfig;->getBaselinePosition()I

    move-result v0

    .line 120
    neg-int v1, v0

    iput v1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 121
    iget v1, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mHeight:I

    sub-int v0, v1, v0

    iget v1, p0, Lcom/android/calendar/event/edit/segment/ChipConfig;->mChipVerticalSpacing:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 122
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 123
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 124
    return-void
.end method
