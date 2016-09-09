.class Lcom/android/calendar/timely/TimelyChipSwipeData;
.super Ljava/lang/Object;
.source "TimelyChipSwipeData.java"


# static fields
.field public static final QUANTUM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final SPRING_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static sChipFootprintColor:I

.field public static sChipFootprintRippleColor:I

.field public static sSwipeIconIndent:I

.field public static sSwipeThreshold:I


# instance fields
.field public aboveThreshold:Z

.field public footprintMaskAlpha:I

.field public final iconAnimator:Landroid/animation/ObjectAnimator;

.field public iconScaleAddend:F

.field public final rippleAnimator:Landroid/animation/ObjectAnimator;

.field public rippleRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 24
    sput v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->sSwipeThreshold:I

    .line 25
    sput v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->sSwipeIconIndent:I

    .line 28
    sput v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->sChipFootprintColor:I

    .line 30
    sput v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->sChipFootprintRippleColor:I

    .line 32
    new-instance v0, Lcom/android/calendar/timely/animations/QuantumInterpolator;

    invoke-direct {v0}, Lcom/android/calendar/timely/animations/QuantumInterpolator;-><init>()V

    sput-object v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->QUANTUM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 33
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->SPRING_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeData;->aboveThreshold:Z

    .line 36
    iput v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeData;->rippleRadius:F

    .line 37
    iput v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeData;->iconScaleAddend:F

    .line 38
    iput v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeData;->footprintMaskAlpha:I

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyChipSwipeData;->setRippleRadius(F)V

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyChipSwipeData;->setIconScaleAddend(F)V

    .line 70
    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/TimelyChipSwipeData;->setFootprintMaskAlpha(I)V

    .line 71
    const-string v0, "rippleRadius"

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeData;->rippleAnimator:Landroid/animation/ObjectAnimator;

    .line 72
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeData;->rippleAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/calendar/timely/TimelyChipSwipeData;->QUANTUM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 73
    const-string v0, "iconScaleAddend"

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeData;->iconAnimator:Landroid/animation/ObjectAnimator;

    .line 75
    return-void

    .line 71
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 73
    :array_1
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 56
    sget v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->sSwipeThreshold:I

    if-eqz v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->chip_swipe_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->sSwipeThreshold:I

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->chip_swipe_icon_indent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->sSwipeIconIndent:I

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$color;->quantum_grey100:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->sChipFootprintColor:I

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$color;->quantum_grey200:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/timely/TimelyChipSwipeData;->sChipFootprintRippleColor:I

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeData;->iconAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllUpdateListeners()V

    .line 79
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeData;->iconAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 80
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeData;->iconAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 81
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeData;->rippleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllUpdateListeners()V

    .line 82
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeData;->rippleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 83
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeData;->rippleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 84
    return-void
.end method

.method public setFootprintMaskAlpha(I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/android/calendar/timely/TimelyChipSwipeData;->footprintMaskAlpha:I

    .line 53
    return-void
.end method

.method public setIconScaleAddend(F)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/android/calendar/timely/TimelyChipSwipeData;->iconScaleAddend:F

    .line 49
    return-void
.end method

.method public setRippleRadius(F)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/android/calendar/timely/TimelyChipSwipeData;->rippleRadius:F

    .line 45
    return-void
.end method
