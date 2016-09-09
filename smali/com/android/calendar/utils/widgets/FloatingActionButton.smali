.class public Lcom/android/calendar/utils/widgets/FloatingActionButton;
.super Landroid/widget/ImageButton;
.source "FloatingActionButton.java"


# instance fields
.field private mColor:I

.field private mIconsResId:I

.field private mIsHidden:Z

.field private mResources:Landroid/content/res/Resources;

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/utils/widgets/FloatingActionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/utils/widgets/FloatingActionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/utils/widgets/FloatingActionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method private createDrawable()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 142
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 143
    iget v0, p0, Lcom/android/calendar/utils/widgets/FloatingActionButton;->mSize:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 144
    iget v0, p0, Lcom/android/calendar/utils/widgets/FloatingActionButton;->mSize:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 145
    new-instance v0, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/calendar/utils/widgets/FloatingActionButton;->mSize:I

    iget v4, p0, Lcom/android/calendar/utils/widgets/FloatingActionButton;->mSize:I

    invoke-direct {v0, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 146
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v3, p0, Lcom/android/calendar/utils/widgets/FloatingActionButton;->mColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0}, Lcom/android/calendar/utils/widgets/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$color;->default_ripple:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v1, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 158
    :goto_0
    iget v1, p0, Lcom/android/calendar/utils/widgets/FloatingActionButton;->mIconsResId:I

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 159
    aput-object v0, v1, v5

    .line 160
    iget v0, p0, Lcom/android/calendar/utils/widgets/FloatingActionButton;->mIconsResId:I

    if-eqz v0, :cond_0

    .line 161
    iget v0, p0, Lcom/android/calendar/utils/widgets/FloatingActionButton;->mIconsResId:I

    invoke-direct {p0, v0}, Lcom/android/calendar/utils/widgets/FloatingActionButton;->getBitmapDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    aput-object v0, v1, v2

    .line 163
    :cond_0
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/android/calendar/utils/widgets/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/calendar/utils/widgets/FloatingActionButton;->invalidate()V

    .line 165
    return-void

    .line 152
    :cond_1
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 153
    new-array v3, v5, [I

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 158
    :cond_2
    const/4 v1, 0x2

    goto :goto_1
.end method

.method private getBitmapDrawable(I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/calendar/utils/widgets/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 170
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/calendar/utils/widgets/FloatingActionButton;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 171
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 172
    return-object v1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/utils/widgets/FloatingActionButton;->mResources:Landroid/content/res/Resources;

    .line 126
    iput v3, p0, Lcom/android/calendar/utils/widgets/FloatingActionButton;->mIconsResId:I

    .line 127
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 128
    if-eqz p2, :cond_0

    .line 129
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/utils/widgets/FloatingActionButton;->mIconsResId:I

    .line 132
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/utils/widgets/FloatingActionButton;->mColor:I

    .line 133
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 136
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/calendar/utils/widgets/FloatingActionButton;->setSize(I)V

    .line 137
    iput-boolean v3, p0, Lcom/android/calendar/utils/widgets/FloatingActionButton;->mIsHidden:Z

    .line 138
    invoke-direct {p0}, Lcom/android/calendar/utils/widgets/FloatingActionButton;->createDrawable()V

    .line 139
    return-void

    .line 127
    nop

    :array_0
    .array-data 4
        0x1010119
        0x10101a5
    .end array-data
.end method


# virtual methods
.method public hide(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x2

    .line 88
    iget-boolean v0, p0, Lcom/android/calendar/utils/widgets/FloatingActionButton;->mIsHidden:Z

    if-nez v0, :cond_0

    .line 89
    if-eqz p1, :cond_1

    .line 90
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 91
    new-array v1, v5, [Landroid/animation/Animator;

    const/4 v2, 0x0

    const-string v3, "scaleX"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    .line 92
    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "scaleY"

    new-array v3, v5, [F

    fill-array-data v3, :array_1

    .line 93
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    .line 91
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 94
    new-instance v1, Lcom/android/calendar/timely/animations/QuantumInterpolator;

    invoke-direct {v1}, Lcom/android/calendar/timely/animations/QuantumInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 95
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 96
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 101
    :goto_0
    iput-boolean v6, p0, Lcom/android/calendar/utils/widgets/FloatingActionButton;->mIsHidden:Z

    .line 103
    :cond_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/calendar/utils/widgets/FloatingActionButton;->setScaleX(F)V

    .line 99
    invoke-virtual {p0, v1}, Lcom/android/calendar/utils/widgets/FloatingActionButton;->setScaleY(F)V

    goto :goto_0

    .line 91
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 92
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public setColor(I)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/android/calendar/utils/widgets/FloatingActionButton;->mColor:I

    .line 70
    invoke-direct {p0}, Lcom/android/calendar/utils/widgets/FloatingActionButton;->createDrawable()V

    .line 71
    return-void
.end method

.method public setIcon(I)V
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lcom/android/calendar/utils/widgets/FloatingActionButton;->mIconsResId:I

    .line 75
    invoke-direct {p0}, Lcom/android/calendar/utils/widgets/FloatingActionButton;->createDrawable()V

    .line 76
    return-void
.end method

.method public setSize(I)V
    .locals 2

    .prologue
    .line 79
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/calendar/utils/widgets/FloatingActionButton;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$dimen;->fab_small_circle_diameter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/utils/widgets/FloatingActionButton;->mSize:I

    .line 84
    :goto_0
    invoke-direct {p0}, Lcom/android/calendar/utils/widgets/FloatingActionButton;->createDrawable()V

    .line 85
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/utils/widgets/FloatingActionButton;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$dimen;->fab_big_circle_diameter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/utils/widgets/FloatingActionButton;->mSize:I

    goto :goto_0
.end method

.method public show(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    .line 106
    iget-boolean v0, p0, Lcom/android/calendar/utils/widgets/FloatingActionButton;->mIsHidden:Z

    if-eqz v0, :cond_0

    .line 107
    if-eqz p1, :cond_1

    .line 108
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 109
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    const-string v2, "rotation"

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    .line 110
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x1

    const-string v3, "scaleX"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    .line 111
    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "scaleY"

    new-array v3, v5, [F

    fill-array-data v3, :array_2

    .line 112
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    .line 109
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 113
    new-instance v1, Lcom/android/calendar/timely/animations/QuantumInterpolator;

    invoke-direct {v1}, Lcom/android/calendar/timely/animations/QuantumInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 114
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 115
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 120
    :goto_0
    iput-boolean v6, p0, Lcom/android/calendar/utils/widgets/FloatingActionButton;->mIsHidden:Z

    .line 122
    :cond_0
    return-void

    .line 117
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/calendar/utils/widgets/FloatingActionButton;->setScaleX(F)V

    .line 118
    invoke-virtual {p0, v1}, Lcom/android/calendar/utils/widgets/FloatingActionButton;->setScaleY(F)V

    goto :goto_0

    .line 109
    nop

    :array_0
    .array-data 4
        -0x3ccc0000    # -180.0f
        0x0
    .end array-data

    .line 110
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 111
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
