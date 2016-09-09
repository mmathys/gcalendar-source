.class public abstract Lcom/android/calendar/timely/BottomSheet;
.super Landroid/widget/RelativeLayout;
.source "BottomSheet.java"


# static fields
.field protected static sCurrentTag:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mFadeLayer:Landroid/view/View;

.field protected mHandler:Landroid/os/Handler;

.field private mMainLayer:Landroid/view/View;

.field protected mResources:Landroid/content/res/Resources;

.field protected mRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/android/calendar/timely/BottomSheet;->sCurrentTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    iput-object p1, p0, Lcom/android/calendar/timely/BottomSheet;->mContext:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lcom/android/calendar/timely/BottomSheet;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/BottomSheet;->mResources:Landroid/content/res/Resources;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/BottomSheet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/calendar/timely/BottomSheet;->mMainLayer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/BottomSheet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/calendar/timely/BottomSheet;->mFadeLayer:Landroid/view/View;

    return-object v0
.end method

.method private findLayers()V
    .locals 1

    .prologue
    .line 89
    sget v0, Lcom/android/calendar/R$id;->bottom_sheet_main_layer:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/BottomSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/BottomSheet;->mMainLayer:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/android/calendar/timely/BottomSheet;->mMainLayer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 91
    iput-object p0, p0, Lcom/android/calendar/timely/BottomSheet;->mMainLayer:Landroid/view/View;

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    sget v0, Lcom/android/calendar/R$id;->bottom_sheet_fade_layer:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/BottomSheet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/BottomSheet;->mFadeLayer:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method protected abstract getUniqueTag()Ljava/lang/String;
.end method

.method protected hide(ZZ)V
    .locals 8

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/calendar/timely/BottomSheet;->findLayers()V

    .line 145
    iget-object v0, p0, Lcom/android/calendar/timely/BottomSheet;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/calendar/R$anim;->bottom_sheet_slide_down:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 147
    new-instance v0, Lcom/android/calendar/timely/animations/QuantumInterpolator;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/android/calendar/timely/animations/QuantumInterpolator;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 148
    iget-object v0, p0, Lcom/android/calendar/timely/BottomSheet;->mFadeLayer:Landroid/view/View;

    if-nez v0, :cond_1

    .line 149
    const/4 v0, 0x0

    .line 151
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/timely/BottomSheet;->mContext:Landroid/content/Context;

    .line 152
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$integer;->bottom_sheet_fade_out_duration:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    .line 153
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/calendar/timely/BottomSheet$2;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/calendar/timely/BottomSheet$2;-><init>(Lcom/android/calendar/timely/BottomSheet;ZZ)V

    int-to-long v6, v2

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    invoke-virtual {p0}, Lcom/android/calendar/timely/BottomSheet;->onHide()V

    .line 173
    iget-object v2, p0, Lcom/android/calendar/timely/BottomSheet;->mMainLayer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 174
    if-eqz v0, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/calendar/timely/BottomSheet;->mFadeLayer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 177
    :cond_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/BottomSheet;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/calendar/R$anim;->bottom_sheet_fade_out:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract onAccepted()V
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 82
    iget-object v0, p0, Lcom/android/calendar/timely/BottomSheet;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/BottomSheet;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/calendar/timely/BottomSheet;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/timely/BottomSheet;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 85
    :cond_0
    return-void
.end method

.method protected abstract onDismissed()V
.end method

.method protected onHide()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method protected onShow()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method protected showDelayed(I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 105
    invoke-direct {p0}, Lcom/android/calendar/timely/BottomSheet;->findLayers()V

    .line 106
    invoke-virtual {p0}, Lcom/android/calendar/timely/BottomSheet;->getUniqueTag()Ljava/lang/String;

    move-result-object v0

    .line 107
    sget-object v1, Lcom/android/calendar/timely/BottomSheet;->sCurrentTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/calendar/timely/BottomSheet;->sCurrentTag:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    const-string v1, "BottomSheet"

    sget-object v2, Lcom/android/calendar/timely/BottomSheet;->sCurrentTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x20

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Not showing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " because "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is visible"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 136
    :goto_0
    return-void

    .line 112
    :cond_0
    sput-object v0, Lcom/android/calendar/timely/BottomSheet;->sCurrentTag:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/android/calendar/timely/BottomSheet;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/calendar/R$anim;->bottom_sheet_slide_up:I

    .line 115
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 116
    new-instance v0, Lcom/android/calendar/timely/animations/QuantumInterpolator;

    invoke-direct {v0, v6}, Lcom/android/calendar/timely/animations/QuantumInterpolator;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 117
    iget-object v0, p0, Lcom/android/calendar/timely/BottomSheet;->mFadeLayer:Landroid/view/View;

    if-nez v0, :cond_1

    .line 118
    const/4 v0, 0x0

    .line 121
    :goto_1
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/timely/BottomSheet;->mHandler:Landroid/os/Handler;

    .line 122
    new-instance v2, Lcom/android/calendar/timely/BottomSheet$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/calendar/timely/BottomSheet$1;-><init>(Lcom/android/calendar/timely/BottomSheet;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    iput-object v2, p0, Lcom/android/calendar/timely/BottomSheet;->mRunnable:Ljava/lang/Runnable;

    .line 134
    iget-object v0, p0, Lcom/android/calendar/timely/BottomSheet;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/timely/BottomSheet;->mRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/calendar/timely/BottomSheet;->mResources:Landroid/content/res/Resources;

    .line 135
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    .line 134
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/BottomSheet;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/calendar/R$anim;->bottom_sheet_fade_in:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_1
.end method

.method protected tweakLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    iget-object v0, p0, Lcom/android/calendar/timely/BottomSheet;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$dimen;->bottom_sheet_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 58
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 59
    :goto_0
    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 60
    const v0, 0x800055

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 61
    iget-object v0, p0, Lcom/android/calendar/timely/BottomSheet;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/calendar/R$dimen;->bottom_sheet_margin_bottom:I

    .line 62
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 63
    iget-object v0, p0, Lcom/android/calendar/timely/BottomSheet;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/calendar/R$dimen;->bottom_sheet_margin_right:I

    .line 64
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 65
    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/BottomSheet;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/BottomSheet;->setClickable(Z)V

    .line 69
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/BottomSheet;->setVisibility(I)V

    .line 70
    sget v0, Lcom/android/calendar/R$drawable;->bottom_sheet_background:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/BottomSheet;->setBackgroundResource(I)V

    .line 71
    iget-object v0, p0, Lcom/android/calendar/timely/BottomSheet;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$dimen;->bottom_sheet_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/timely/BottomSheet;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/calendar/R$dimen;->bottom_sheet_padding_bottom:I

    .line 72
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 71
    invoke-virtual {p0, v3, v0, v3, v1}, Lcom/android/calendar/timely/BottomSheet;->setPadding(IIII)V

    .line 73
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/calendar/timely/BottomSheet;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$dimen;->bottom_sheet_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/BottomSheet;->setElevation(F)V

    .line 76
    :cond_0
    return-void

    .line 59
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method
