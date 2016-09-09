.class public Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;
.super Ljava/lang/Object;
.source "ExtendedBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtendedOptions"
.end annotation


# instance fields
.field public backgroundColor:I

.field public decodeAggregator:Lcom/android/bitmap/DecodeAggregator;

.field public decodeHorizontalCenter:F

.field public decodeVerticalCenter:F

.field public final features:I

.field public parallaxDirection:I

.field public parallaxSpeedMultiplier:F

.field public placeholder:Landroid/graphics/drawable/Drawable;

.field public placeholderAnimationDuration:I

.field public progressBar:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 836
    invoke-direct {p0, p1, v0, v0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;-><init>(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 837
    return-void
.end method

.method public constructor <init>(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    iput v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->decodeHorizontalCenter:F

    .line 759
    iput v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->decodeVerticalCenter:F

    .line 764
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->decodeAggregator:Lcom/android/bitmap/DecodeAggregator;

    .line 775
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->parallaxSpeedMultiplier:F

    .line 796
    iput v1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->parallaxDirection:I

    .line 803
    iput v1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->backgroundColor:I

    .line 821
    iput v1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->placeholderAnimationDuration:I

    .line 844
    iput p1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->features:I

    .line 845
    iput-object p2, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->placeholder:Landroid/graphics/drawable/Drawable;

    .line 846
    iput-object p3, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->progressBar:Landroid/graphics/drawable/Drawable;

    .line 847
    return-void
.end method

.method static synthetic access$000(Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->validate()V

    return-void
.end method

.method private validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 857
    iget v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->decodeHorizontalCenter:F

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->decodeHorizontalCenter:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 858
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ExtendedOptions: decodeHorizontalCenter must be within 0 and 1, inclusive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 862
    :cond_1
    iget v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->decodeVerticalCenter:F

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->decodeVerticalCenter:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 863
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ExtendedOptions: decodeVerticalCenter must be within 0 and 1, inclusive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 866
    :cond_3
    iget v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->features:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->decodeAggregator:Lcom/android/bitmap/DecodeAggregator;

    if-nez v0, :cond_4

    .line 867
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ExtendedOptions: To support FEATURE_ORDERED_DISPLAY, decodeAggregator must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 871
    :cond_4
    iget v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->features:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->parallaxSpeedMultiplier:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_5

    .line 872
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ExtendedOptions: To support FEATURE_PARALLAX, parallaxSpeedMultiplier must be greater than 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 876
    :cond_5
    iget v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->features:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    .line 877
    iget v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->backgroundColor:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->placeholder:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    .line 879
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ExtendedOptions: To support FEATURE_STATE_CHANGES, either backgroundColor or placeholder must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 883
    :cond_6
    iget v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->placeholderAnimationDuration:I

    const/4 v1, -0x1

    if-ge v0, v1, :cond_7

    .line 884
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ExtendedOptions: To support FEATURE_STATE_CHANGES, placeholderAnimationDuration must be set correctly."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 888
    :cond_7
    iget v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->backgroundColor:I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->backgroundColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_8

    .line 889
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ExtendedOptions: To support FEATURE_STATE_CHANGES, backgroundColor must be set to an opaque color."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 894
    :cond_8
    return-void
.end method
