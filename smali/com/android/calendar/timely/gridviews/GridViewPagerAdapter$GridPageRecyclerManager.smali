.class Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridPageRecyclerManager;
.super Ljava/lang/Object;
.source "GridViewPagerAdapter.java"

# interfaces
.implements Lcom/android/calendar/timely/Recycler$RecyclerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GridPageRecyclerManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/calendar/timely/Recycler$RecyclerManager",
        "<",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNumDays:I

.field private final mResourceId:I

.field final synthetic this$0:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;


# direct methods
.method public constructor <init>(Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;Landroid/content/Context;II)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridPageRecyclerManager;->this$0:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p2, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridPageRecyclerManager;->mContext:Landroid/content/Context;

    .line 308
    iput p4, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridPageRecyclerManager;->mNumDays:I

    .line 309
    iput p3, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridPageRecyclerManager;->mResourceId:I

    .line 310
    return-void
.end method


# virtual methods
.method public clean(Landroid/view/ViewGroup;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 352
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;

    .line 353
    iget-object v5, v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->daysContent:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    .line 355
    iget v1, v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->firstJulianDay:I

    move v2, v1

    move v3, v4

    :goto_0
    iget v1, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridPageRecyclerManager;->mNumDays:I

    if-ge v3, v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridPageRecyclerManager;->this$0:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;

    # getter for: Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mDataFactory:Lcom/android/calendar/timely/DataFactory;
    invoke-static {v1}, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->access$200(Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;)Lcom/android/calendar/timely/DataFactory;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Lcom/android/calendar/timely/DataFactory;->getData(IZ)Lcom/android/calendar/timely/MonthData;

    move-result-object v1

    const/4 v6, 0x5

    invoke-virtual {v1, v2, v6}, Lcom/android/calendar/timely/MonthData;->unregisterListener(II)Z

    .line 358
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/gridviews/GridDayView;

    invoke-virtual {v1}, Lcom/android/calendar/timely/gridviews/GridDayView;->clearChips()V

    .line 355
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 361
    :cond_0
    iget-object v1, v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->allDayContent:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    invoke-virtual {v1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->clearChips()V

    .line 363
    iget-object v1, v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->allDayScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setScrollY(I)V

    .line 364
    iget-object v0, v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->daysScrollView:Lcom/android/calendar/timely/PagedScrollView;

    invoke-virtual {v0, v4, v4}, Lcom/android/calendar/timely/PagedScrollView;->setVerticalScrollPositionFromBottom(IZ)V

    .line 365
    return-void
.end method

.method public bridge synthetic clean(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 301
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridPageRecyclerManager;->clean(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public createObject()Landroid/view/ViewGroup;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 318
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridPageRecyclerManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridPageRecyclerManager;->mResourceId:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 320
    new-instance v3, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;

    invoke-direct {v3}, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;-><init>()V

    .line 321
    sget v1, Lcom/android/calendar/R$id;->week_days_scroll:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/PagedScrollView;

    iput-object v1, v3, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->daysScrollView:Lcom/android/calendar/timely/PagedScrollView;

    .line 322
    sget v1, Lcom/android/calendar/R$id;->week_days_content:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/gridviews/GridViewFrame;

    iput-object v1, v3, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->daysContent:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    .line 323
    sget v1, Lcom/android/calendar/R$id;->week_all_day_content:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    iput-object v1, v3, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->allDayContent:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    .line 325
    sget v1, Lcom/android/calendar/R$id;->week_all_day_scroll:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, v3, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->allDayScrollView:Landroid/widget/ScrollView;

    .line 326
    sget v1, Lcom/android/calendar/R$id;->week_header_labels:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;

    iput-object v1, v3, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->daysHeaders:Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;

    .line 328
    sget v1, Lcom/android/calendar/R$id;->week_month_header_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    iput-object v1, v3, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->allDayHeaderArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    move v1, v2

    .line 331
    :goto_0
    iget v4, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridPageRecyclerManager;->mNumDays:I

    if-ge v1, v4, :cond_0

    .line 332
    iget-object v4, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridPageRecyclerManager;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/calendar/R$layout;->week_day_content:I

    iget-object v6, v3, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->daysContent:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridPageRecyclerManager;->this$0:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;

    # getter for: Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mStickyColumnContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->access$100(Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;)Landroid/view/ViewGroup;

    move-result-object v1

    if-nez v1, :cond_1

    .line 338
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 340
    iget-object v4, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridPageRecyclerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/calendar/R$dimen;->min_hours_width:I

    .line 341
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 342
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 343
    iget-object v4, v3, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->daysContent:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    invoke-virtual {v4, v2}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 347
    return-object v0
.end method

.method public bridge synthetic createObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridPageRecyclerManager;->createObject()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public prepareToReuse(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method public bridge synthetic prepareToReuse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 301
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridPageRecyclerManager;->prepareToReuse(Landroid/view/ViewGroup;)V

    return-void
.end method
