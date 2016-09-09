.class public Lcom/android/calendar/timely/MonthBackgrounds;
.super Ljava/lang/Object;
.source "MonthBackgrounds.java"


# static fields
.field private static final MONTH_BACKGROUND_DRAWABLE_IDS:[I

.field private static final MONTH_BANNER_DRAWABLE_IDS:[I

.field private static sHemisphereOffset:Ljava/lang/Integer;

.field private static sInstance:Lcom/android/calendar/timely/MonthBackgrounds;


# instance fields
.field private final mMonthBottomColorBackgrounds:[I

.field private final mMonthTopColorBackgrounds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    const/16 v0, 0xc

    new-array v0, v0, [I

    sput-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->MONTH_BACKGROUND_DRAWABLE_IDS:[I

    .line 40
    sget-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->MONTH_BACKGROUND_DRAWABLE_IDS:[I

    sget v1, Lcom/android/calendar/R$drawable;->bkg_01_january:I

    aput v1, v0, v3

    .line 41
    sget-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->MONTH_BACKGROUND_DRAWABLE_IDS:[I

    sget v1, Lcom/android/calendar/R$drawable;->bkg_02_february:I

    aput v1, v0, v4

    .line 42
    sget-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->MONTH_BACKGROUND_DRAWABLE_IDS:[I

    sget v1, Lcom/android/calendar/R$drawable;->bkg_03_march:I

    aput v1, v0, v5

    .line 43
    sget-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->MONTH_BACKGROUND_DRAWABLE_IDS:[I

    sget v1, Lcom/android/calendar/R$drawable;->bkg_04_april:I

    aput v1, v0, v6

    .line 44
    sget-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->MONTH_BACKGROUND_DRAWABLE_IDS:[I

    sget v1, Lcom/android/calendar/R$drawable;->bkg_05_may:I

    aput v1, v0, v7

    .line 45
    sget-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->MONTH_BACKGROUND_DRAWABLE_IDS:[I

    const/4 v1, 0x5

    sget v2, Lcom/android/calendar/R$drawable;->bkg_06_june:I

    aput v2, v0, v1

    .line 46
    sget-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->MONTH_BACKGROUND_DRAWABLE_IDS:[I

    const/4 v1, 0x6

    sget v2, Lcom/android/calendar/R$drawable;->bkg_07_july:I

    aput v2, v0, v1

    .line 47
    sget-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->MONTH_BACKGROUND_DRAWABLE_IDS:[I

    const/4 v1, 0x7

    sget v2, Lcom/android/calendar/R$drawable;->bkg_08_august:I

    aput v2, v0, v1

    .line 48
    sget-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->MONTH_BACKGROUND_DRAWABLE_IDS:[I

    const/16 v1, 0x8

    sget v2, Lcom/android/calendar/R$drawable;->bkg_09_september:I

    aput v2, v0, v1

    .line 49
    sget-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->MONTH_BACKGROUND_DRAWABLE_IDS:[I

    const/16 v1, 0x9

    sget v2, Lcom/android/calendar/R$drawable;->bkg_10_october:I

    aput v2, v0, v1

    .line 50
    sget-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->MONTH_BACKGROUND_DRAWABLE_IDS:[I

    const/16 v1, 0xa

    sget v2, Lcom/android/calendar/R$drawable;->bkg_11_november:I

    aput v2, v0, v1

    .line 51
    sget-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->MONTH_BACKGROUND_DRAWABLE_IDS:[I

    const/16 v1, 0xb

    sget v2, Lcom/android/calendar/R$drawable;->bkg_12_december:I

    aput v2, v0, v1

    .line 53
    const/16 v0, 0xc

    new-array v0, v0, [I

    sput-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->MONTH_BANNER_DRAWABLE_IDS:[I

    .line 54
    sget-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->MONTH_BANNER_DRAWABLE_IDS:[I

    sget v1, Lcom/android/calendar/R$drawable;->bkg_01_jan:I

    aput v1, v0, v3

    .line 55
    sget-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->MONTH_BANNER_DRAWABLE_IDS:[I

    sget v1, Lcom/android/calendar/R$drawable;->bkg_02_feb:I

    aput v1, v0, v4

    .line 56
    sget-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->MONTH_BANNER_DRAWABLE_IDS:[I

    sget v1, Lcom/android/calendar/R$drawable;->bkg_03_mar:I

    aput v1, v0, v5

    .line 57
    sget-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->MONTH_BANNER_DRAWABLE_IDS:[I

    sget v1, Lcom/android/calendar/R$drawable;->bkg_04_apr:I

    aput v1, v0, v6

    .line 58
    sget-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->MONTH_BANNER_DRAWABLE_IDS:[I

    sget v1, Lcom/android/calendar/R$drawable;->bkg_05_may:I

    aput v1, v0, v7

    .line 59
    sget-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->MONTH_BANNER_DRAWABLE_IDS:[I

    const/4 v1, 0x5

    sget v2, Lcom/android/calendar/R$drawable;->bkg_06_jun:I

    aput v2, v0, v1

    .line 60
    sget-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->MONTH_BANNER_DRAWABLE_IDS:[I

    const/4 v1, 0x6

    sget v2, Lcom/android/calendar/R$drawable;->bkg_07_jul:I

    aput v2, v0, v1

    .line 61
    sget-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->MONTH_BANNER_DRAWABLE_IDS:[I

    const/4 v1, 0x7

    sget v2, Lcom/android/calendar/R$drawable;->bkg_08_aug:I

    aput v2, v0, v1

    .line 62
    sget-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->MONTH_BANNER_DRAWABLE_IDS:[I

    const/16 v1, 0x8

    sget v2, Lcom/android/calendar/R$drawable;->bkg_09_sep:I

    aput v2, v0, v1

    .line 63
    sget-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->MONTH_BANNER_DRAWABLE_IDS:[I

    const/16 v1, 0x9

    sget v2, Lcom/android/calendar/R$drawable;->bkg_10_oct:I

    aput v2, v0, v1

    .line 64
    sget-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->MONTH_BANNER_DRAWABLE_IDS:[I

    const/16 v1, 0xa

    sget v2, Lcom/android/calendar/R$drawable;->bkg_11_nov:I

    aput v2, v0, v1

    .line 65
    sget-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->MONTH_BANNER_DRAWABLE_IDS:[I

    const/16 v1, 0xb

    sget v2, Lcom/android/calendar/R$drawable;->bkg_12_dec:I

    aput v2, v0, v1

    .line 66
    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/16 v0, 0xc

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/calendar/timely/MonthBackgrounds;->mMonthTopColorBackgrounds:[I

    .line 71
    iget-object v0, p0, Lcom/android/calendar/timely/MonthBackgrounds;->mMonthTopColorBackgrounds:[I

    sget v1, Lcom/android/calendar/R$color;->bkg_top_color_01_january:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    aput v1, v0, v3

    .line 72
    iget-object v0, p0, Lcom/android/calendar/timely/MonthBackgrounds;->mMonthTopColorBackgrounds:[I

    sget v1, Lcom/android/calendar/R$color;->bkg_top_color_02_february:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    aput v1, v0, v4

    .line 73
    iget-object v0, p0, Lcom/android/calendar/timely/MonthBackgrounds;->mMonthTopColorBackgrounds:[I

    sget v1, Lcom/android/calendar/R$color;->bkg_top_color_03_march:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    aput v1, v0, v5

    .line 74
    iget-object v0, p0, Lcom/android/calendar/timely/MonthBackgrounds;->mMonthTopColorBackgrounds:[I

    sget v1, Lcom/android/calendar/R$color;->bkg_top_color_04_april:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    aput v1, v0, v6

    .line 75
    iget-object v0, p0, Lcom/android/calendar/timely/MonthBackgrounds;->mMonthTopColorBackgrounds:[I

    sget v1, Lcom/android/calendar/R$color;->bkg_top_color_05_may:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    aput v1, v0, v7

    .line 76
    iget-object v0, p0, Lcom/android/calendar/timely/MonthBackgrounds;->mMonthTopColorBackgrounds:[I

    const/4 v1, 0x5

    sget v2, Lcom/android/calendar/R$color;->bkg_top_color_06_june:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 77
    iget-object v0, p0, Lcom/android/calendar/timely/MonthBackgrounds;->mMonthTopColorBackgrounds:[I

    const/4 v1, 0x6

    sget v2, Lcom/android/calendar/R$color;->bkg_top_color_07_july:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 78
    iget-object v0, p0, Lcom/android/calendar/timely/MonthBackgrounds;->mMonthTopColorBackgrounds:[I

    const/4 v1, 0x7

    sget v2, Lcom/android/calendar/R$color;->bkg_top_color_08_august:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 79
    iget-object v0, p0, Lcom/android/calendar/timely/MonthBackgrounds;->mMonthTopColorBackgrounds:[I

    const/16 v1, 0x8

    sget v2, Lcom/android/calendar/R$color;->bkg_top_color_09_september:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 80
    iget-object v0, p0, Lcom/android/calendar/timely/MonthBackgrounds;->mMonthTopColorBackgrounds:[I

    const/16 v1, 0x9

    sget v2, Lcom/android/calendar/R$color;->bkg_top_color_10_october:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 81
    iget-object v0, p0, Lcom/android/calendar/timely/MonthBackgrounds;->mMonthTopColorBackgrounds:[I

    const/16 v1, 0xa

    sget v2, Lcom/android/calendar/R$color;->bkg_top_color_11_november:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 82
    iget-object v0, p0, Lcom/android/calendar/timely/MonthBackgrounds;->mMonthTopColorBackgrounds:[I

    const/16 v1, 0xb

    sget v2, Lcom/android/calendar/R$color;->bkg_top_color_12_december:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 84
    const/16 v0, 0xc

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/calendar/timely/MonthBackgrounds;->mMonthBottomColorBackgrounds:[I

    .line 85
    iget-object v0, p0, Lcom/android/calendar/timely/MonthBackgrounds;->mMonthBottomColorBackgrounds:[I

    sget v1, Lcom/android/calendar/R$color;->bkg_bottom_color_01_january:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    aput v1, v0, v3

    .line 86
    iget-object v0, p0, Lcom/android/calendar/timely/MonthBackgrounds;->mMonthBottomColorBackgrounds:[I

    sget v1, Lcom/android/calendar/R$color;->bkg_bottom_color_02_february:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    aput v1, v0, v4

    .line 87
    iget-object v0, p0, Lcom/android/calendar/timely/MonthBackgrounds;->mMonthBottomColorBackgrounds:[I

    sget v1, Lcom/android/calendar/R$color;->bkg_bottom_color_03_march:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    aput v1, v0, v5

    .line 88
    iget-object v0, p0, Lcom/android/calendar/timely/MonthBackgrounds;->mMonthBottomColorBackgrounds:[I

    sget v1, Lcom/android/calendar/R$color;->bkg_bottom_color_04_april:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    aput v1, v0, v6

    .line 89
    iget-object v0, p0, Lcom/android/calendar/timely/MonthBackgrounds;->mMonthBottomColorBackgrounds:[I

    sget v1, Lcom/android/calendar/R$color;->bkg_bottom_color_05_may:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    aput v1, v0, v7

    .line 90
    iget-object v0, p0, Lcom/android/calendar/timely/MonthBackgrounds;->mMonthBottomColorBackgrounds:[I

    const/4 v1, 0x5

    sget v2, Lcom/android/calendar/R$color;->bkg_bottom_color_06_june:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 91
    iget-object v0, p0, Lcom/android/calendar/timely/MonthBackgrounds;->mMonthBottomColorBackgrounds:[I

    const/4 v1, 0x6

    sget v2, Lcom/android/calendar/R$color;->bkg_bottom_color_07_july:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 92
    iget-object v0, p0, Lcom/android/calendar/timely/MonthBackgrounds;->mMonthBottomColorBackgrounds:[I

    const/4 v1, 0x7

    sget v2, Lcom/android/calendar/R$color;->bkg_bottom_color_08_august:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 93
    iget-object v0, p0, Lcom/android/calendar/timely/MonthBackgrounds;->mMonthBottomColorBackgrounds:[I

    const/16 v1, 0x8

    sget v2, Lcom/android/calendar/R$color;->bkg_bottom_color_09_september:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 94
    iget-object v0, p0, Lcom/android/calendar/timely/MonthBackgrounds;->mMonthBottomColorBackgrounds:[I

    const/16 v1, 0x9

    sget v2, Lcom/android/calendar/R$color;->bkg_bottom_color_10_october:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 95
    iget-object v0, p0, Lcom/android/calendar/timely/MonthBackgrounds;->mMonthBottomColorBackgrounds:[I

    const/16 v1, 0xa

    sget v2, Lcom/android/calendar/R$color;->bkg_bottom_color_11_november:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 96
    iget-object v0, p0, Lcom/android/calendar/timely/MonthBackgrounds;->mMonthBottomColorBackgrounds:[I

    const/16 v1, 0xb

    sget v2, Lcom/android/calendar/R$color;->bkg_bottom_color_12_december:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v0, v1

    .line 99
    return-void
.end method

.method public static getInstance(Landroid/content/res/Resources;)Lcom/android/calendar/timely/MonthBackgrounds;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->sInstance:Lcom/android/calendar/timely/MonthBackgrounds;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/android/calendar/timely/MonthBackgrounds;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/MonthBackgrounds;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->sInstance:Lcom/android/calendar/timely/MonthBackgrounds;

    .line 132
    :cond_0
    sget-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->sInstance:Lcom/android/calendar/timely/MonthBackgrounds;

    return-object v0
.end method

.method public static getMonthBackgroundDrawableResId(I)I
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->MONTH_BACKGROUND_DRAWABLE_IDS:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getMonthBannerDrawableResId(I)I
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->MONTH_BANNER_DRAWABLE_IDS:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getMonthToShow(Landroid/content/Context;I)I
    .locals 2

    .prologue
    .line 118
    sget-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->sHemisphereOffset:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 120
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getInstance()Lcom/android/calendar/timely/settings/data/CalendarProperties;

    move-result-object v0

    .line 121
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getPropertyValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->sHemisphereOffset:Ljava/lang/Integer;

    .line 125
    :cond_0
    sget-object v0, Lcom/android/calendar/timely/MonthBackgrounds;->sHemisphereOffset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p1

    rem-int/lit8 v0, v0, 0xc

    return v0
.end method


# virtual methods
.method public getMonthBottomColor(I)I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/calendar/timely/MonthBackgrounds;->mMonthBottomColorBackgrounds:[I

    aget v0, v0, p1

    return v0
.end method

.method public getMonthTopColor(I)I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/calendar/timely/MonthBackgrounds;->mMonthTopColorBackgrounds:[I

    aget v0, v0, p1

    return v0
.end method
