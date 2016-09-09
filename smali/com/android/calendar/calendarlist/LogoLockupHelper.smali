.class public Lcom/android/calendar/calendarlist/LogoLockupHelper;
.super Ljava/lang/Object;
.source "LogoLockupHelper.java"


# static fields
.field private static mMarginStart:I

.field private static sProductSans:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/calendarlist/LogoLockupHelper;->mMarginStart:I

    return-void
.end method

.method private static getContentDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    sget v0, Lcom/android/calendar/R$string;->drawer_logo_lockup_first:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    sget v0, Lcom/android/calendar/R$string;->drawer_logo_lockup_separator:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, " "

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    sget v0, Lcom/android/calendar/R$string;->drawer_logo_lockup_second:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLockupView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->drawer_logo_lockup_margin_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/calendarlist/LogoLockupHelper;->mMarginStart:I

    .line 26
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->drawer_logo_lockup:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 28
    invoke-static {p0}, Lcom/android/calendar/calendarlist/LogoLockupHelper;->getContentDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 31
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    invoke-static {p0}, Lcom/android/calendar/calendarlist/LogoLockupHelper;->logoGoesBeforeProductName(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-static {v1}, Lcom/android/calendar/calendarlist/LogoLockupHelper;->invertLogoAndProductNameOrder(Landroid/view/View;)V

    .line 38
    :cond_0
    sget v0, Lcom/android/calendar/R$id;->product_name:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 40
    invoke-static {p0}, Lcom/android/calendar/calendarlist/LogoLockupHelper;->getOrCreateProductSans(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 42
    invoke-static {p0}, Lcom/android/calendar/calendarlist/LogoLockupHelper;->logoGoesBeforeProductName(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 43
    sget v2, Lcom/android/calendar/R$string;->drawer_logo_lockup_first:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 47
    :cond_1
    sget v0, Lcom/android/calendar/R$string;->drawer_logo_lockup_separator:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 48
    sget v0, Lcom/android/calendar/R$id;->product_name_separator:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 49
    invoke-static {p0}, Lcom/android/calendar/calendarlist/LogoLockupHelper;->getOrCreateProductSans(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 52
    :cond_2
    return-object v1
.end method

.method private static getOrCreateProductSans(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/calendar/calendarlist/LogoLockupHelper;->sProductSans:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 69
    invoke-static {p0}, Lcom/android/calendar/Utils;->createProductSans(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/calendarlist/LogoLockupHelper;->sProductSans:Landroid/graphics/Typeface;

    .line 71
    :cond_0
    sget-object v0, Lcom/android/calendar/calendarlist/LogoLockupHelper;->sProductSans:Landroid/graphics/Typeface;

    return-object v0
.end method

.method private static invertLogoAndProductNameOrder(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 81
    sget v0, Lcom/android/calendar/R$id;->logo_lockup_container:I

    .line 82
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 84
    sget v1, Lcom/android/calendar/R$id;->google_logo:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 85
    sget v1, Lcom/android/calendar/R$id;->product_name:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 87
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 88
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 91
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 92
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 93
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 97
    sget v4, Lcom/android/calendar/calendarlist/LogoLockupHelper;->mMarginStart:I

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 98
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 103
    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 104
    return-void
.end method

.method private static logoGoesBeforeProductName(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 76
    const-string v0, "Google"

    sget v1, Lcom/android/calendar/R$string;->drawer_logo_lockup_second:I

    .line 77
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
