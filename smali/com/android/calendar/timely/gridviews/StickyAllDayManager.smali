.class public Lcom/android/calendar/timely/gridviews/StickyAllDayManager;
.super Ljava/lang/Object;
.source "StickyAllDayManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;
    }
.end annotation


# instance fields
.field private final mAllDayInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/calendar/timely/gridviews/AllDayHeaderView;",
            "Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllDaySectionMinHeightPhoneDayView:I

.field private final mEventsSpacing:I

.field private final mIsPhoneDayView:Z

.field private mMainAllDayInfo:Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;

.field private final mOverHeight:I

.field private mSharedArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

.field private mSharedState:I

.field private final mTopMargin:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Z)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mAllDayInfo:Ljava/util/HashMap;

    .line 62
    iput-boolean p2, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mIsPhoneDayView:Z

    .line 63
    if-eqz p2, :cond_0

    sget v0, Lcom/android/calendar/R$dimen;->phone_day_view_all_day_top_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 64
    :goto_0
    iput v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mTopMargin:I

    .line 65
    if-eqz p2, :cond_1

    .line 66
    sget v0, Lcom/android/calendar/R$dimen;->phone_day_view_all_day_chip_spacing:I

    .line 65
    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mEventsSpacing:I

    .line 67
    if-eqz p2, :cond_2

    .line 68
    sget v0, Lcom/android/calendar/R$dimen;->collapse_button_height:I

    .line 67
    :goto_2
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mOverHeight:I

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mSharedState:I

    .line 71
    sget v0, Lcom/android/calendar/R$dimen;->all_day_section_min_height_phone_day_view:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mAllDaySectionMinHeightPhoneDayView:I

    .line 73
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 66
    :cond_1
    sget v0, Lcom/android/calendar/R$dimen;->grid_all_day_chip_spacing:I

    goto :goto_1

    .line 68
    :cond_2
    sget v0, Lcom/android/calendar/R$dimen;->week_day_header_height:I

    goto :goto_2
.end method

.method private changeSharedState()V
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mSharedState:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->setSharedState(I)V

    .line 232
    return-void
.end method

.method private changeState(Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;)V
    .locals 2

    .prologue
    .line 245
    if-nez p1, :cond_0

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayContent:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 249
    :goto_1
    iget v1, p1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->countOfChips:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->setState(Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;II)I

    goto :goto_0

    .line 248
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private clean(Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 289
    iget-object v0, p1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayContent:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->setStateManager(Lcom/android/calendar/timely/gridviews/StickyAllDayManager;)V

    .line 290
    iget-object v0, p1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayHeaderArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayHeaderArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    :cond_0
    iget-object v0, p1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setScrollY(I)V

    .line 294
    iget-object v0, p1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 295
    iget-object v0, p1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayContent:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->clearChips()V

    .line 296
    return-void
.end method

.method private computeSharedCountChips()I
    .locals 4

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mMainAllDayInfo:Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mMainAllDayInfo:Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;

    iget v1, v0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->countOfChips:I

    .line 314
    :cond_0
    return v1

    .line 308
    :cond_1
    const/4 v0, 0x0

    .line 309
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mAllDayInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;

    .line 310
    iget v3, v0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->countOfChips:I

    if-le v3, v1, :cond_2

    .line 311
    iget v0, v0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->countOfChips:I

    :goto_1
    move v1, v0

    .line 313
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private getExtraMargin(I)I
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mIsPhoneDayView:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 205
    :cond_0
    const/4 v0, 0x0

    .line 210
    :goto_0
    return v0

    .line 207
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 208
    iget v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mTopMargin:I

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 210
    :cond_2
    iget v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mTopMargin:I

    goto :goto_0
.end method

.method private getInfo(Landroid/view/View;)Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;
    .locals 3

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mAllDayInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;

    .line 378
    invoke-direct {p0, p1, v0}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->getViewType(Landroid/view/View;Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 383
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getViewType(Landroid/view/View;Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;)I
    .locals 1

    .prologue
    .line 387
    iget-object v0, p2, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayScrollView:Landroid/widget/ScrollView;

    if-ne v0, p1, :cond_0

    .line 388
    const/4 v0, 0x1

    .line 407
    :goto_0
    return v0

    .line 391
    :cond_0
    iget-object v0, p2, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->daysScrollView:Lcom/android/calendar/timely/PagedScrollView;

    if-ne v0, p1, :cond_1

    .line 392
    const/4 v0, 0x3

    goto :goto_0

    .line 395
    :cond_1
    iget-object v0, p2, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayHeaderArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    if-ne v0, p1, :cond_2

    .line 396
    const/4 v0, 0x4

    goto :goto_0

    .line 399
    :cond_2
    iget-object v0, p2, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayContent:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    if-ne v0, p1, :cond_3

    .line 400
    const/4 v0, 0x2

    goto :goto_0

    .line 403
    :cond_3
    iget-object v0, p2, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->collapseButton:Landroid/view/View;

    if-ne v0, p1, :cond_4

    .line 404
    const/4 v0, 0x5

    goto :goto_0

    .line 407
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSharedState(I)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 256
    iput p1, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mSharedState:I

    .line 257
    invoke-direct {p0}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->computeSharedCountChips()I

    move-result v3

    .line 260
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mAllDayInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v0, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;

    .line 261
    iget v5, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mSharedState:I

    invoke-direct {p0, v0, v5, v3}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->setState(Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;II)I

    move-result v0

    goto :goto_0

    .line 265
    :cond_0
    iget-object v4, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mSharedArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    iget v5, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mOverHeight:I

    add-int/2addr v0, v5

    invoke-direct {p0, v4, v0}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->setViewHeight(Landroid/view/View;I)V

    .line 266
    const/4 v0, 0x3

    if-gt v3, v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mSharedArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->setState(I)V

    .line 273
    :goto_1
    return-void

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mSharedArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    iget v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mSharedState:I

    if-ne v0, v2, :cond_2

    .line 270
    const/4 v0, 0x2

    .line 269
    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->setState(I)V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 271
    goto :goto_2
.end method

.method private setState(Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;II)I
    .locals 7

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 132
    iget-object v0, p1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayContent:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->getEventHeight()I

    move-result v5

    .line 133
    iget v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mEventsSpacing:I

    add-int/2addr v0, v5

    mul-int/2addr v0, p3

    .line 134
    invoke-direct {p0, p3}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->getExtraMargin(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    iget-boolean v1, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mIsPhoneDayView:Z

    if-eqz v1, :cond_0

    if-lez p3, :cond_0

    .line 139
    iget v1, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mAllDaySectionMinHeightPhoneDayView:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 142
    :cond_0
    iget-object v6, p1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayContent:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    if-nez p2, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v6, v1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->setExpandedState(Z)V

    .line 145
    iget-object v1, p1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayContent:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    invoke-virtual {v1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->getCountChipsCollapsed()I

    move-result v1

    if-gt p3, v1, :cond_4

    .line 146
    iget-object v1, p1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayHeaderArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, p1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayHeaderArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    invoke-virtual {v1, v3}, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->setState(I)V

    .line 150
    :cond_1
    iget-object v1, p1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->collapseButton:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 151
    iget-object v1, p1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->collapseButton:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :cond_2
    iget-object v1, p1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setScrollY(I)V

    .line 155
    iget-object v1, p1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, p0}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 156
    iget-object v1, p1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayScrollView:Landroid/widget/ScrollView;

    invoke-direct {p0, v1, v0}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->setViewHeight(Landroid/view/View;I)V

    .line 200
    :goto_1
    return v0

    :cond_3
    move v1, v3

    .line 142
    goto :goto_0

    .line 159
    :cond_4
    iget-object v1, p1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayHeaderArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    if-eqz v1, :cond_5

    .line 160
    iget-object v6, p1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayHeaderArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    if-ne p2, v2, :cond_7

    .line 161
    const/4 v1, 0x2

    .line 160
    :goto_2
    invoke-virtual {v6, v1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->setState(I)V

    .line 165
    :cond_5
    if-ne p2, v2, :cond_8

    move v1, v4

    .line 169
    :goto_3
    iget-object v2, p1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->collapseButton:Landroid/view/View;

    if-eqz v2, :cond_6

    .line 170
    iget-object v2, p1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->collapseButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    :cond_6
    packed-switch p2, :pswitch_data_0

    move v0, v3

    .line 200
    goto :goto_1

    :cond_7
    move v1, v2

    .line 162
    goto :goto_2

    :cond_8
    move v1, v3

    .line 166
    goto :goto_3

    .line 175
    :pswitch_0
    iget-object v0, p1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayContent:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->getCountChipsCollapsed()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mEventsSpacing:I

    add-int/2addr v1, v5

    mul-int/2addr v0, v1

    iget-object v1, p1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayContent:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    .line 177
    invoke-virtual {v1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->getCountChipsCollapsed()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->getExtraMargin(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 178
    iget-object v1, p1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayScrollView:Landroid/widget/ScrollView;

    invoke-direct {p0, v1, v0}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->setViewHeight(Landroid/view/View;I)V

    .line 179
    iget-object v1, p1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setScrollY(I)V

    .line 180
    iget-object v1, p1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, p0}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    .line 183
    :pswitch_1
    iget-object v1, p1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->parentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mOverHeight:I

    sub-int v3, v1, v2

    .line 184
    iget v1, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mTopMargin:I

    sub-int v1, v3, v1

    iget v2, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mEventsSpacing:I

    add-int/2addr v2, v5

    div-int v2, v1, v2

    .line 187
    iget-object v4, p1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayScrollView:Landroid/widget/ScrollView;

    if-le p3, v2, :cond_9

    .line 188
    const/4 v1, 0x0

    .line 187
    :goto_4
    invoke-virtual {v4, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 189
    if-gt p3, v2, :cond_a

    .line 190
    iget-object v1, p1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayScrollView:Landroid/widget/ScrollView;

    invoke-direct {p0, v1, v0}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->setViewHeight(Landroid/view/View;I)V

    goto :goto_1

    :cond_9
    move-object v1, p0

    .line 188
    goto :goto_4

    .line 193
    :cond_a
    iget-object v0, p1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayScrollView:Landroid/widget/ScrollView;

    invoke-direct {p0, v0, v3}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->setViewHeight(Landroid/view/View;I)V

    move v0, v3

    .line 194
    goto :goto_1

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setViewHeight(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 217
    new-instance v0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$1;-><init>(Lcom/android/calendar/timely/gridviews/StickyAllDayManager;Landroid/view/View;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 225
    return-void
.end method


# virtual methods
.method public addPage(Landroid/view/View;Lcom/android/calendar/timely/gridviews/AllDayHeaderView;Landroid/widget/ScrollView;Lcom/android/calendar/timely/PagedScrollView;Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 96
    new-instance v0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;

    invoke-direct {v0}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;-><init>()V

    .line 97
    iput-object p2, v0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayContent:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    .line 98
    iput-object p3, v0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayScrollView:Landroid/widget/ScrollView;

    .line 99
    iput-object p4, v0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->daysScrollView:Lcom/android/calendar/timely/PagedScrollView;

    .line 100
    iput-object p5, v0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayHeaderArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    .line 101
    iput-object p6, v0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->collapseButton:Landroid/view/View;

    .line 102
    iput-object p1, v0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->parentView:Landroid/view/View;

    .line 103
    invoke-virtual {p2}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->getCountChips()I

    move-result v1

    iput v1, v0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->countOfChips:I

    .line 105
    iget-object v1, v0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayContent:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    invoke-virtual {v1, p0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->setStateManager(Lcom/android/calendar/timely/gridviews/StickyAllDayManager;)V

    .line 106
    iget-object v1, v0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayHeaderArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, v0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayHeaderArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    invoke-virtual {v1, p0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    :cond_0
    iget-object v1, v0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->collapseButton:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, v0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->collapseButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mAllDayInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget v1, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mSharedState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 115
    const/4 v1, 0x1

    iget v2, v0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->countOfChips:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->setState(Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;II)I

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_2
    iget v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mSharedState:I

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->setSharedState(I)V

    goto :goto_0
.end method

.method public changeState(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;)V
    .locals 2

    .prologue
    .line 238
    iget v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mSharedState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mAllDayInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->changeState(Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;)V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->changeSharedState()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mSharedArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    if-ne p1, v0, :cond_1

    .line 353
    invoke-direct {p0}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->changeSharedState()V

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->getInfo(Landroid/view/View;)Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_0

    .line 362
    invoke-direct {p0, p1, v0}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->getViewType(Landroid/view/View;Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;)I

    move-result v1

    .line 363
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 365
    :pswitch_0
    check-cast p1, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    .line 366
    invoke-virtual {p1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->changeState(Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;)V

    goto :goto_0

    .line 371
    :pswitch_1
    const/4 v1, 0x1

    iget v2, v0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->countOfChips:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->setState(Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;II)I

    goto :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCountChipsChanges(ILandroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 319
    invoke-direct {p0, p2}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->getInfo(Landroid/view/View;)Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;

    move-result-object v2

    .line 320
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->countOfChips:I

    if-eq v3, p1, :cond_0

    .line 321
    iput p1, v2, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->countOfChips:I

    .line 322
    iget v3, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mSharedState:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 323
    iget-object v3, v2, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayContent:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    invoke-virtual {v3}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    iget v1, v2, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->countOfChips:I

    invoke-direct {p0, v2, v0, v1}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->setState(Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;II)I

    .line 329
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 323
    goto :goto_0

    .line 326
    :cond_2
    iget-object v2, v2, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->allDayContent:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    invoke-virtual {v2}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->setSharedState(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 333
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->getInfo(Landroid/view/View;)Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;

    move-result-object v1

    .line 334
    if-nez v1, :cond_0

    .line 345
    :goto_0
    return v0

    .line 338
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->getViewType(Landroid/view/View;Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;)I

    move-result v1

    .line 339
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 342
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 339
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public removePage(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mAllDayInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->clean(Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;)V

    .line 123
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mAllDayInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mSharedState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 127
    iget v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mSharedState:I

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->setSharedState(I)V

    .line 129
    :cond_0
    return-void
.end method

.method public setMainAllDayHeader(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mAllDayInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mMainAllDayInfo:Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;

    .line 90
    iget v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mSharedState:I

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->setSharedState(I)V

    .line 91
    return-void
.end method

.method public setState(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;Z)V
    .locals 3

    .prologue
    .line 279
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 280
    :goto_0
    iget v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mSharedState:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 281
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mAllDayInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;

    .line 282
    iget v2, v0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;->countOfChips:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->setState(Lcom/android/calendar/timely/gridviews/StickyAllDayManager$AllDayInfo;II)I

    .line 286
    :goto_1
    return-void

    .line 279
    :cond_0
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    .line 284
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->setSharedState(I)V

    goto :goto_1
.end method

.method public shareArrow(Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;)V
    .locals 1

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mSharedArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    .line 80
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mSharedArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    invoke-virtual {v0, p0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->mSharedState:I

    .line 82
    return-void
.end method
