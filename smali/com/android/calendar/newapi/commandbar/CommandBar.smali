.class public Lcom/android/calendar/newapi/commandbar/CommandBar;
.super Landroid/widget/LinearLayout;
.source "CommandBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/newapi/commandbar/CommandBar$AnimationListener;,
        Lcom/android/calendar/newapi/commandbar/CommandBar$OnCommandBarActionClickListener;
    }
.end annotation


# instance fields
.field private mCheckedResponseColor:I

.field private mListener:Lcom/android/calendar/newapi/commandbar/CommandBar$OnCommandBarActionClickListener;

.field private mResponseColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/newapi/commandbar/CommandBar;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/commandbar/CommandBar;->setAnimationProgress(I)V

    return-void
.end method

.method private setAnimationProgress(I)V
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/calendar/newapi/commandbar/CommandBar;->getHeight()I

    move-result v0

    sub-int/2addr v0, p1

    .line 81
    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/commandbar/CommandBar;->setTranslationY(F)V

    .line 82
    return-void
.end method


# virtual methods
.method public createEnterAnimation()Landroid/animation/ValueAnimator;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, v1}, Lcom/android/calendar/newapi/commandbar/CommandBar;->setAnimationProgress(I)V

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v1, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/calendar/newapi/commandbar/CommandBar;->getHeight()I

    move-result v2

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 75
    new-instance v1, Lcom/android/calendar/newapi/commandbar/CommandBar$AnimationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/newapi/commandbar/CommandBar$AnimationListener;-><init>(Lcom/android/calendar/newapi/commandbar/CommandBar;Lcom/android/calendar/newapi/commandbar/CommandBar$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 76
    return-object v0
.end method

.method public getAction(I)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/android/calendar/newapi/commandbar/CommandBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method initialize(I)V
    .locals 5

    .prologue
    .line 38
    if-nez p1, :cond_1

    .line 56
    :cond_0
    return-void

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/newapi/commandbar/CommandBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$color;->event_info_response:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/newapi/commandbar/CommandBar;->mResponseColor:I

    .line 42
    invoke-virtual {p0}, Lcom/android/calendar/newapi/commandbar/CommandBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$color;->event_info_checked_response:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/newapi/commandbar/CommandBar;->mCheckedResponseColor:I

    .line 44
    invoke-virtual {p0}, Lcom/android/calendar/newapi/commandbar/CommandBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 45
    sget v0, Lcom/android/calendar/R$id;->action_container:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/commandbar/CommandBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 46
    invoke-virtual {p0}, Lcom/android/calendar/newapi/commandbar/CommandBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/android/calendar/newapi/commandbar/CommandBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    const/4 v1, 0x2

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 48
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 49
    instance-of v4, v1, Landroid/widget/Button;

    if-nez v4, :cond_2

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported View in CommandBar. Please use Buttons only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_2
    check-cast v1, Landroid/widget/Button;

    .line 53
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 54
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/calendar/newapi/commandbar/CommandBar;->mListener:Lcom/android/calendar/newapi/commandbar/CommandBar$OnCommandBarActionClickListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/calendar/newapi/commandbar/CommandBar;->mListener:Lcom/android/calendar/newapi/commandbar/CommandBar$OnCommandBarActionClickListener;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/calendar/newapi/commandbar/CommandBar$OnCommandBarActionClickListener;->onCommandBarActionClick(I)V

    .line 89
    :cond_0
    return-void
.end method

.method public setActionSelectionState(IZ)V
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/calendar/newapi/commandbar/CommandBar;->getAction(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/calendar/newapi/commandbar/CommandBar;->mCheckedResponseColor:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 64
    return-void

    .line 63
    :cond_0
    iget v0, p0, Lcom/android/calendar/newapi/commandbar/CommandBar;->mResponseColor:I

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 67
    sget v0, Lcom/android/calendar/R$id;->description:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/commandbar/CommandBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 70
    return-void

    .line 69
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setListener(Lcom/android/calendar/newapi/commandbar/CommandBar$OnCommandBarActionClickListener;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/calendar/newapi/commandbar/CommandBar;->mListener:Lcom/android/calendar/newapi/commandbar/CommandBar$OnCommandBarActionClickListener;

    .line 93
    return-void
.end method
