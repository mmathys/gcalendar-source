.class public Lcom/android/calendar/newapi/screen/ViewScreenUtils;
.super Ljava/lang/Object;
.source "ViewScreenUtils.java"


# direct methods
.method public static final getHeaderHeight(Landroid/content/res/Resources;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/newapi/model/ScreenData;)I
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p2}, Lcom/android/calendar/newapi/model/ScreenData;->showSimplifiedScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    invoke-static {p0, p1}, Lcom/android/calendar/event/ImageHelper;->shouldHaveImage(Landroid/content/res/Resources;Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    sget v0, Lcom/android/calendar/R$dimen;->info_rich_headline_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 18
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/calendar/R$dimen;->info_non_rich_headline_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0
.end method
