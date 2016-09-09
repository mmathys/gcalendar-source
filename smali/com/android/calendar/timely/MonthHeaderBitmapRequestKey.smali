.class public Lcom/android/calendar/timely/MonthHeaderBitmapRequestKey;
.super Ljava/lang/Object;
.source "MonthHeaderBitmapRequestKey.java"


# direct methods
.method public static forMonth(Landroid/content/res/Resources;I)Lcom/android/bitmap/ResourceRequestKey;
    .locals 1

    .prologue
    .line 32
    invoke-static {p1}, Lcom/android/calendar/timely/MonthBackgrounds;->getMonthBannerDrawableResId(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/bitmap/ResourceRequestKey;->from(Landroid/content/res/Resources;I)Lcom/android/bitmap/ResourceRequestKey;

    move-result-object v0

    return-object v0
.end method
