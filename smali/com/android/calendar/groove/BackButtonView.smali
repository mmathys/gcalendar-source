.class public Lcom/android/calendar/groove/BackButtonView;
.super Landroid/widget/ImageButton;
.source "BackButtonView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mColorTheme:I

.field private mIcon:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/android/calendar/groove/BackButtonView;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/groove/BackButtonView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/groove/BackButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0, p1}, Lcom/android/calendar/groove/BackButtonView;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/groove/BackButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0, p1}, Lcom/android/calendar/groove/BackButtonView;->init(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-direct {p0, p1}, Lcom/android/calendar/groove/BackButtonView;->init(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/groove/BackButtonView;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/android/calendar/groove/BackButtonView;->mIcon:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/groove/BackButtonView;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/android/calendar/groove/BackButtonView;->mColorTheme:I

    return v0
.end method

.method static synthetic access$200(II)I
    .locals 1

    .prologue
    .line 21
    invoke-static {p0, p1}, Lcom/android/calendar/groove/BackButtonView;->getDrawableResId(II)I

    move-result v0

    return v0
.end method

.method public static createAnimator(Landroid/view/View;Z)Landroid/animation/AnimatorSet;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 61
    sget v0, Lcom/android/calendar/R$id;->back_arrow:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 62
    if-nez v5, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    .line 67
    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    move v3, v2

    .line 71
    :goto_1
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 72
    const-string v6, "alpha"

    const/4 v7, 0x2

    new-array v7, v7, [F

    int-to-float v3, v3

    aput v3, v7, v1

    int-to-float v0, v0

    aput v0, v7, v2

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 73
    const-wide/16 v2, 0xd2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 74
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object v0, v4

    .line 75
    goto :goto_0

    :cond_1
    move v0, v2

    move v3, v1

    goto :goto_1
.end method

.method private static getContentDescResId(I)I
    .locals 3

    .prologue
    .line 155
    packed-switch p0, :pswitch_data_0

    .line 161
    sget-object v0, Lcom/android/calendar/groove/BackButtonView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x38

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unrecognized icon type for back button view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 162
    sget v0, Lcom/android/calendar/R$string;->accessibility_navigation_icon:I

    :goto_0
    return v0

    .line 157
    :pswitch_0
    sget v0, Lcom/android/calendar/R$string;->accessibility_navigation_icon:I

    goto :goto_0

    .line 159
    :pswitch_1
    sget v0, Lcom/android/calendar/R$string;->close_label:I

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getDrawableResId(II)I
    .locals 4

    .prologue
    const/16 v2, 0x34

    const/4 v3, 0x0

    .line 123
    packed-switch p0, :pswitch_data_0

    .line 149
    sget-object v0, Lcom/android/calendar/groove/BackButtonView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x38

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unrecognized icon type for back button view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 150
    sget v0, Lcom/android/calendar/R$drawable;->quantum_ic_arrow_back_black_24:I

    :goto_0
    return v0

    .line 125
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    .line 133
    sget-object v0, Lcom/android/calendar/groove/BackButtonView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unrecognized theme for back button view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 134
    sget v0, Lcom/android/calendar/R$drawable;->quantum_ic_close_black_24:I

    goto :goto_0

    .line 127
    :pswitch_1
    sget v0, Lcom/android/calendar/R$drawable;->quantum_ic_close_white_24:I

    goto :goto_0

    .line 129
    :pswitch_2
    sget v0, Lcom/android/calendar/R$drawable;->quantum_ic_close_black_24:I

    goto :goto_0

    .line 131
    :pswitch_3
    sget v0, Lcom/android/calendar/R$drawable;->quantum_ic_close_grey600_24:I

    goto :goto_0

    .line 137
    :pswitch_4
    packed-switch p1, :pswitch_data_2

    .line 145
    sget-object v0, Lcom/android/calendar/groove/BackButtonView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unrecognized theme for back button view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 146
    sget v0, Lcom/android/calendar/R$drawable;->quantum_ic_arrow_back_black_24:I

    goto :goto_0

    .line 139
    :pswitch_5
    sget v0, Lcom/android/calendar/R$drawable;->quantum_ic_arrow_back_white_24:I

    goto :goto_0

    .line 141
    :pswitch_6
    sget v0, Lcom/android/calendar/R$drawable;->quantum_ic_arrow_back_black_24:I

    goto :goto_0

    .line 143
    :pswitch_7
    sget v0, Lcom/android/calendar/R$drawable;->quantum_ic_arrow_back_grey600_24:I

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
    .end packed-switch

    .line 125
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 137
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/groove/BackButtonView;->mColorTheme:I

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/groove/BackButtonView;->mIcon:I

    .line 112
    new-instance v0, Lcom/android/calendar/groove/BackButtonView$2;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/groove/BackButtonView$2;-><init>(Lcom/android/calendar/groove/BackButtonView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/BackButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void
.end method


# virtual methods
.method public setIcon(I)V
    .locals 3

    .prologue
    .line 82
    iput p1, p0, Lcom/android/calendar/groove/BackButtonView;->mIcon:I

    .line 83
    invoke-virtual {p0}, Lcom/android/calendar/groove/BackButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/groove/BackButtonView;->mIcon:I

    iget v2, p0, Lcom/android/calendar/groove/BackButtonView;->mColorTheme:I

    invoke-static {v1, v2}, Lcom/android/calendar/groove/BackButtonView;->getDrawableResId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/BackButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/calendar/groove/BackButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/groove/BackButtonView;->mIcon:I

    invoke-static {v1}, Lcom/android/calendar/groove/BackButtonView;->getContentDescResId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/BackButtonView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method public setTheme(IZ)V
    .locals 3

    .prologue
    .line 88
    iget v0, p0, Lcom/android/calendar/groove/BackButtonView;->mColorTheme:I

    if-ne v0, p1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 92
    :cond_0
    iput p1, p0, Lcom/android/calendar/groove/BackButtonView;->mColorTheme:I

    .line 94
    if-nez p2, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/android/calendar/groove/BackButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/groove/BackButtonView;->mIcon:I

    iget v2, p0, Lcom/android/calendar/groove/BackButtonView;->mColorTheme:I

    invoke-static {v1, v2}, Lcom/android/calendar/groove/BackButtonView;->getDrawableResId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/groove/BackButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 99
    :cond_1
    new-instance v0, Lcom/android/calendar/groove/BackButtonView$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/groove/BackButtonView$1;-><init>(Lcom/android/calendar/groove/BackButtonView;)V

    invoke-static {p0, v0}, Lcom/android/calendar/groove/AnimatorHelper;->createFadeOutFadeInAnimator(Landroid/view/View;Lcom/android/calendar/groove/AnimatorHelper$FadeOutFadeInAnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method
