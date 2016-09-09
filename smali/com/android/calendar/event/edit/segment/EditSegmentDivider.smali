.class public Lcom/android/calendar/event/edit/segment/EditSegmentDivider;
.super Landroid/view/View;
.source "EditSegmentDivider.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 19
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    sget v3, Lcom/android/calendar/R$dimen;->edit_segment_divider_height:I

    .line 20
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 21
    invoke-virtual {p0, v1}, Lcom/android/calendar/event/edit/segment/EditSegmentDivider;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    sget v1, Lcom/android/calendar/R$color;->edit_segment_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/EditSegmentDivider;->setBackgroundColor(I)V

    .line 23
    return-void
.end method
