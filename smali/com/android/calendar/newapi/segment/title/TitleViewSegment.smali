.class public Lcom/android/calendar/newapi/segment/title/TitleViewSegment;
.super Landroid/widget/FrameLayout;
.source "TitleViewSegment.java"

# interfaces
.implements Lcom/android/calendar/newapi/segment/common/ViewSegment;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelT:",
        "Lcom/android/calendar/newapi/model/ScreenData;",
        ":",
        "Lcom/android/calendar/newapi/model/TitleHolder;",
        ":",
        "Lcom/android/calendar/newapi/model/TimelineItemHolder",
        "<+",
        "Lcom/android/calendar/timely/TimelineEvent;",
        ">;>",
        "Landroid/widget/FrameLayout;",
        "Lcom/android/calendar/newapi/segment/common/ViewSegment;"
    }
.end annotation


# instance fields
.field private mHeaderView:Landroid/view/View;

.field private final mModel:Lcom/android/calendar/newapi/model/ScreenData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/newapi/model/ScreenData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TModelT;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;->mModel:Lcom/android/calendar/newapi/model/ScreenData;

    .line 32
    sget v0, Lcom/android/calendar/R$layout;->newapi_title_view_segment:I

    invoke-static {p1, v0, p0}, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 33
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;->initUi()V

    .line 34
    return-void
.end method

.method private applyTransparentStatusbar()V
    .locals 4

    .prologue
    .line 56
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$bool;->show_event_info_full_screen:I

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lcom/android/calendar/utils/SystemWindowInsetApplier;

    invoke-direct {v0}, Lcom/android/calendar/utils/SystemWindowInsetApplier;-><init>()V

    .line 59
    sget v1, Lcom/android/calendar/R$id;->header:I

    invoke-virtual {p0, v1}, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/utils/SystemWindowInsetApplier;->addView(Landroid/view/View;II)V

    .line 61
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 63
    :cond_0
    return-void
.end method

.method private getBackgroundDrawable(Lcom/android/calendar/timely/TimelineEvent;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 78
    new-instance v1, Lcom/android/calendar/event/ImageHelper;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lcom/android/calendar/event/ImageHelper;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Landroid/view/LayoutInflater;)V

    .line 79
    invoke-virtual {v1}, Lcom/android/calendar/event/ImageHelper;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 80
    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private initUi()V
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 37
    invoke-direct {p0}, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;->applyTransparentStatusbar()V

    .line 39
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;->mHeaderView:Landroid/view/View;

    .line 40
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;->mHeaderView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;->addView(Landroid/view/View;I)V

    .line 41
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 42
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 43
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 44
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    sget v0, Lcom/android/calendar/R$id;->header:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 47
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 49
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;->mModel:Lcom/android/calendar/newapi/model/ScreenData;

    check-cast v1, Lcom/android/calendar/newapi/model/TimelineItemHolder;

    invoke-interface {v1}, Lcom/android/calendar/newapi/model/TimelineItemHolder;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v1

    iget-object v4, p0, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;->mModel:Lcom/android/calendar/newapi/model/ScreenData;

    invoke-static {v3, v1, v4}, Lcom/android/calendar/newapi/screen/ViewScreenUtils;->getHeaderHeight(Landroid/content/res/Resources;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/newapi/model/ScreenData;)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 50
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    return-void
.end method


# virtual methods
.method public updateUi()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;->mModel:Lcom/android/calendar/newapi/model/ScreenData;

    check-cast v0, Lcom/android/calendar/newapi/model/TimelineItemHolder;

    invoke-interface {v0}, Lcom/android/calendar/newapi/model/TimelineItemHolder;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineEvent;

    .line 68
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/calendar/event/ImageHelper;->shouldHaveImage(Landroid/content/res/Resources;Lcom/android/calendar/timely/TimelineItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;->mHeaderView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;->getBackgroundDrawable(Lcom/android/calendar/timely/TimelineEvent;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 73
    :goto_0
    sget v0, Lcom/android/calendar/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;->mModel:Lcom/android/calendar/newapi/model/ScreenData;

    check-cast v1, Lcom/android/calendar/newapi/model/TitleHolder;

    invoke-interface {v1}, Lcom/android/calendar/newapi/model/TitleHolder;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;->mHeaderView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;->mModel:Lcom/android/calendar/newapi/model/ScreenData;

    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/title/TitleViewSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/newapi/model/ScreenData;->getColor(Landroid/content/res/Resources;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method
