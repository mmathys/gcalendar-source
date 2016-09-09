.class public Lcom/google/android/calendar/utils/ResourceConfigOverrider;
.super Ljava/lang/Object;
.source "ResourceConfigOverrider.java"


# direct methods
.method public static getOverrideConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 44
    invoke-static {p0}, Lcom/google/android/calendar/utils/ResourceConfigOverrider;->isInMultiWIndowMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    .line 49
    :cond_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 50
    invoke-static {p0}, Lcom/google/android/calendar/utils/NycUtils;->isDeviceTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    const/16 v1, 0x258

    iput v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 53
    iput v2, v0, Landroid/content/res/Configuration;->orientation:I

    goto :goto_0

    .line 56
    :cond_1
    iput v2, v0, Landroid/content/res/Configuration;->orientation:I

    goto :goto_0
.end method

.method private static isInMultiWIndowMode(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 67
    const-string v0, "window"

    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 69
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 70
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 74
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 78
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 80
    int-to-float v1, v2

    int-to-float v0, v0

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v2

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
