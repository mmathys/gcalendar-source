.class public Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;
.super Landroid/widget/LinearLayout;
.source "FindTimeAttendeeInfoLayout.java"


# instance fields
.field private mAttendeeInfoViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/FindTimeAttendeeInfoView;",
            ">;"
        }
    .end annotation
.end field

.field private mColumnWidth:I

.field private final mGridLineColor:I

.field private final mGridLinePaint:Landroid/graphics/Paint;

.field private final mGridLineStrokeWidth:I

.field private final mHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput v3, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->mColumnWidth:I

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->mAttendeeInfoViews:Ljava/util/List;

    .line 27
    invoke-virtual {p0, v3}, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->setWillNotDraw(Z)V

    .line 28
    invoke-virtual {p0, v3}, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->setOrientation(I)V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 31
    sget v1, Lcom/android/calendar/R$color;->grids_line:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->mGridLineColor:I

    .line 32
    sget v1, Lcom/android/calendar/R$dimen;->gridline_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->mGridLineStrokeWidth:I

    .line 33
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->mGridLinePaint:Landroid/graphics/Paint;

    .line 34
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->mGridLinePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->mGridLineStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 35
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->mGridLinePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->mGridLineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->mGridLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    sget v1, Lcom/android/calendar/R$dimen;->find_time_grid_attendee_info_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->mHeight:I

    .line 38
    return-void
.end method

.method private getAttendeeInfoView(I)Lcom/android/calendar/timely/FindTimeAttendeeInfoView;
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->mAttendeeInfoViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->mAttendeeInfoViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;

    .line 80
    :goto_0
    return-object v0

    .line 78
    :cond_0
    new-instance v0, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;

    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;-><init>(Landroid/content/Context;)V

    .line 79
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->mAttendeeInfoViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getRequestHeight()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->mHeight:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->getHeight()I

    move-result v7

    .line 57
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->mColumnWidth:I

    mul-int v8, v0, v1

    .line 58
    iget v0, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->mColumnWidth:I

    move v6, v0

    :goto_0
    if-gt v6, v8, :cond_0

    .line 60
    int-to-float v1, v6

    const/4 v2, 0x0

    int-to-float v3, v6

    int-to-float v4, v7

    iget-object v5, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->mGridLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 59
    iget v0, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->mColumnWidth:I

    add-int/2addr v0, v6

    move v6, v0

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.method public onUpdate(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->removeAllViews()V

    .line 92
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->mColumnWidth:I

    iget v1, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->mHeight:I

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 94
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 95
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeAttendee;

    .line 96
    invoke-direct {p0, v1}, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->getAttendeeInfoView(I)Lcom/android/calendar/timely/FindTimeAttendeeInfoView;

    move-result-object v3

    .line 97
    invoke-virtual {v3, v2}, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    invoke-virtual {p0, v3}, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->addView(Landroid/view/View;)V

    .line 99
    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeAttendee;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeAttendee;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->onUpdate(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 101
    :cond_0
    if-lez p2, :cond_1

    .line 102
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->getAttendeeInfoView(I)Lcom/android/calendar/timely/FindTimeAttendeeInfoView;

    move-result-object v0

    .line 103
    invoke-virtual {v0, p2}, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->onUpdate(I)V

    .line 104
    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/FindTimeAttendeeInfoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->addView(Landroid/view/View;)V

    .line 107
    :cond_1
    return-void
.end method

.method public setColumnWidth(I)V
    .locals 3

    .prologue
    .line 41
    iget v0, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->mColumnWidth:I

    if-eq v0, p1, :cond_0

    .line 42
    iput p1, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->mColumnWidth:I

    .line 44
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->mColumnWidth:I

    iget v2, p0, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->mHeight:I

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method
