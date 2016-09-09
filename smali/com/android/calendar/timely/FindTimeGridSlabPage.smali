.class public Lcom/android/calendar/timely/FindTimeGridSlabPage;
.super Landroid/widget/RelativeLayout;
.source "FindTimeGridSlabPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/FindTimeGridSlabPage$OnSlabPageUpdatedListener;
    }
.end annotation


# instance fields
.field private mBaseHeight:I

.field mContext:Landroid/content/Context;

.field private mDoneFab:Landroid/widget/ImageView;

.field private mExtraLineHeight:I

.field private mItemView:Lcom/android/calendar/timely/FindTimeGridSlabItem;

.field private mListener:Lcom/android/calendar/timely/FindTimeGridSlabPage$OnSlabPageUpdatedListener;

.field mResources:Landroid/content/res/Resources;

.field private mSlabBar:Landroid/widget/FrameLayout;

.field private final mTimezone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/TimeZone;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mContext:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mResources:Landroid/content/res/Resources;

    .line 53
    iput-object p2, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mTimezone:Ljava/util/TimeZone;

    .line 54
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->init()V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/FindTimeGridSlabPage;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mSlabBar:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/FindTimeGridSlabPage;)Lcom/android/calendar/timely/FindTimeGridSlabPage$OnSlabPageUpdatedListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mListener:Lcom/android/calendar/timely/FindTimeGridSlabPage$OnSlabPageUpdatedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/timely/FindTimeGridSlabPage;I)I
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->computeSlabBarMinHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/calendar/timely/FindTimeGridSlabPage;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mDoneFab:Landroid/widget/ImageView;

    return-object v0
.end method

.method private computeSlabBarMinHeight(I)I
    .locals 2

    .prologue
    .line 141
    iget v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mBaseHeight:I

    iget v1, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mExtraLineHeight:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method private getItemTalkback(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 147
    const-string v0, ""

    .line 148
    if-nez p4, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    sget v0, Lcom/android/calendar/R$string;->accessibility_find_time_slab_bar_swipe_hint_rtl:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    :cond_0
    :goto_0
    sget v2, Lcom/android/calendar/R$string;->accessibility_find_time_list_item:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object p2, v3, v6

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 157
    sget v3, Lcom/android/calendar/R$string;->accessibility_find_time_slab_bar_format:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    aput-object v0, v4, v6

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 152
    :cond_1
    sget v0, Lcom/android/calendar/R$string;->accessibility_find_time_slab_bar_swipe_hint:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->find_time_grid_slab_base_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mBaseHeight:I

    .line 60
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->find_time_grid_slab_extra_line_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mExtraLineHeight:I

    .line 63
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/calendar/R$layout;->find_time_grid_slab_page:I

    invoke-static {v0, v1, p0}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 64
    sget v0, Lcom/android/calendar/R$id;->slab_bar:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mSlabBar:Landroid/widget/FrameLayout;

    .line 65
    new-instance v0, Lcom/android/calendar/timely/FindTimeGridSlabItem;

    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mTimezone:Ljava/util/TimeZone;

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/timely/FindTimeGridSlabItem;-><init>(Landroid/content/Context;Ljava/util/TimeZone;)V

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mItemView:Lcom/android/calendar/timely/FindTimeGridSlabItem;

    .line 66
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mItemView:Lcom/android/calendar/timely/FindTimeGridSlabItem;

    new-instance v1, Lcom/android/calendar/timely/FindTimeGridSlabPage$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/FindTimeGridSlabPage$1;-><init>(Lcom/android/calendar/timely/FindTimeGridSlabPage;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/FindTimeGridSlabItem;->setOnSlabItemUpdatedListener(Lcom/android/calendar/timely/FindTimeGridSlabItem$OnSlabItemUpdatedListener;)V

    .line 84
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 87
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mSlabBar:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mItemView:Lcom/android/calendar/timely/FindTimeGridSlabItem;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    sget v0, Lcom/android/calendar/R$id;->floating_action_button:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mDoneFab:Landroid/widget/ImageView;

    .line 89
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mDoneFab:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/timely/FindTimeGridSlabPage$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/FindTimeGridSlabPage$2;-><init>(Lcom/android/calendar/timely/FindTimeGridSlabPage;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 101
    return-void
.end method


# virtual methods
.method public getFab()Landroid/view/View;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mDoneFab:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSlabBarHeight()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mSlabBar:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public sendFocusAccessibilityEventIfEnabled()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mItemView:Lcom/android/calendar/timely/FindTimeGridSlabItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/FindTimeGridSlabItem;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public setOnSlabPageUpdatedListener(Lcom/android/calendar/timely/FindTimeGridSlabPage$OnSlabPageUpdatedListener;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mListener:Lcom/android/calendar/timely/FindTimeGridSlabPage$OnSlabPageUpdatedListener;

    .line 138
    return-void
.end method

.method public setTimelineSuggestion(Lcom/android/calendar/timely/TimelineSuggestion;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/timely/FindTimeUtil;->getInstance(Landroid/content/Context;)Lcom/android/calendar/timely/FindTimeUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mTimezone:Ljava/util/TimeZone;

    .line 112
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-virtual {v2, v0, v1, p1, v3}, Lcom/android/calendar/timely/FindTimeUtil;->getDisplayedDateTime(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcom/android/calendar/timely/TimelineSuggestion;Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mItemView:Lcom/android/calendar/timely/FindTimeGridSlabItem;

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->getItemTalkback(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/calendar/timely/FindTimeGridSlabItem;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mItemView:Lcom/android/calendar/timely/FindTimeGridSlabItem;

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/timely/FindTimeGridSlabItem;->setTimelineSuggestion(Lcom/android/calendar/timely/TimelineSuggestion;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public setTimezone(Ljava/util/TimeZone;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridSlabPage;->mItemView:Lcom/android/calendar/timely/FindTimeGridSlabItem;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/FindTimeGridSlabItem;->setTimezone(Ljava/util/TimeZone;)V

    .line 105
    return-void
.end method
