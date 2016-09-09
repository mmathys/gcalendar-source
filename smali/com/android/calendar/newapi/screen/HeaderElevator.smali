.class Lcom/android/calendar/newapi/screen/HeaderElevator;
.super Ljava/lang/Object;
.source "HeaderElevator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field private final mHeaderView:Landroid/view/View;

.field private final mRaisedElevation:F

.field private final mScrollView:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/View;Landroid/widget/ScrollView;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/android/calendar/newapi/screen/HeaderElevator;->mHeaderView:Landroid/view/View;

    .line 30
    iput-object p3, p0, Lcom/android/calendar/newapi/screen/HeaderElevator;->mScrollView:Landroid/widget/ScrollView;

    .line 31
    sget v0, Lcom/android/calendar/R$dimen;->edit_title_elevation:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/calendar/newapi/screen/HeaderElevator;->mRaisedElevation:F

    .line 32
    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 37
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/HeaderElevator;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    .line 42
    iget-object v1, p0, Lcom/android/calendar/newapi/screen/HeaderElevator;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getElevation()F

    move-result v1

    .line 43
    cmpl-float v2, v1, v3

    if-nez v2, :cond_2

    if-lez v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/HeaderElevator;->mHeaderView:Landroid/view/View;

    iget v1, p0, Lcom/android/calendar/newapi/screen/HeaderElevator;->mRaisedElevation:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    goto :goto_0

    .line 46
    :cond_2
    if-gtz v0, :cond_0

    cmpl-float v0, v1, v3

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/HeaderElevator;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setElevation(F)V

    goto :goto_0
.end method
