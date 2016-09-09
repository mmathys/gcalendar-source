.class public Lcom/android/calendar/LayoutDirectionAwareViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "LayoutDirectionAwareViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;,
        Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwareOnPageChangeListener;
    }
.end annotation


# instance fields
.field private final mDirectionAwareListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwareOnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field mDirectionAwarePagerAdapter:Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;

.field private mIgnoreLayoutDirection:Z

.field private mUsesRtl:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 26
    iput-boolean v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager;->mIgnoreLayoutDirection:Z

    .line 27
    iput-boolean v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager;->mUsesRtl:Z

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager;->mDirectionAwareListeners:Ljava/util/ArrayList;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-boolean v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager;->mIgnoreLayoutDirection:Z

    .line 27
    iput-boolean v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager;->mUsesRtl:Z

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager;->mDirectionAwareListeners:Ljava/util/ArrayList;

    .line 38
    return-void
.end method

.method static synthetic access$300(Lcom/android/calendar/LayoutDirectionAwareViewPager;I)I
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->getDirectionAwarePosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/calendar/LayoutDirectionAwareViewPager;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager;->mUsesRtl:Z

    return v0
.end method

.method private getDirectionAwarePosition(I)I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager;->mDirectionAwarePagerAdapter:Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager;->mDirectionAwarePagerAdapter:Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->getDirectionAwarePosition(I)I

    move-result p1

    .line 150
    :cond_0
    return p1
.end method


# virtual methods
.method public addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwareOnPageChangeListener;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwareOnPageChangeListener;-><init>(Lcom/android/calendar/LayoutDirectionAwareViewPager;Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 119
    iget-object v1, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager;->mDirectionAwareListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-super {p0, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 121
    return-void
.end method

.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    check-cast v0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;

    # getter for: Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->directionUnawarePagerAdapter:Landroid/support/v4/view/PagerAdapter;
    invoke-static {v0}, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->access$100(Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->getDirectionAwarePosition(I)I

    move-result v0

    return v0
.end method

.method protected isRtl()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager;->mIgnoreLayoutDirection:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 308
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->updateForRtl()V

    .line 69
    return-void
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager;->mDirectionAwarePagerAdapter:Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager;->mDirectionAwarePagerAdapter:Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;

    # invokes: Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->destroy()V
    invoke-static {v0}, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->access$000(Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager;->mDirectionAwarePagerAdapter:Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;

    .line 50
    :cond_0
    if-eqz p1, :cond_1

    .line 51
    new-instance v0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;

    invoke-direct {v0, p1}, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;-><init>(Landroid/support/v4/view/PagerAdapter;)V

    iput-object v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager;->mDirectionAwarePagerAdapter:Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;

    .line 52
    iget-object v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager;->mDirectionAwarePagerAdapter:Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;

    iget-boolean v1, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager;->mUsesRtl:Z

    invoke-virtual {v0, v1}, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->setUsesRtl(Z)V

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager;->mDirectionAwarePagerAdapter:Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;

    invoke-super {p0, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 56
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->getDirectionAwarePosition(I)I

    move-result v0

    invoke-super {p0, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 103
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->getDirectionAwarePosition(I)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 108
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwareOnPageChangeListener;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwareOnPageChangeListener;-><init>(Lcom/android/calendar/LayoutDirectionAwareViewPager;Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    invoke-super {p0, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 97
    return-void
.end method

.method protected updateForRtl()V
    .locals 3

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->isRtl()Z

    move-result v0

    .line 76
    iget-boolean v1, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager;->mUsesRtl:Z

    if-eq v0, v1, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->getCurrentItem()I

    move-result v1

    .line 81
    iput-boolean v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager;->mUsesRtl:Z

    .line 84
    iget-object v2, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager;->mDirectionAwarePagerAdapter:Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;

    if-eqz v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager;->mDirectionAwarePagerAdapter:Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;

    invoke-virtual {v2, v0}, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->setUsesRtl(Z)V

    .line 90
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/LayoutDirectionAwareViewPager;->setCurrentItem(IZ)V

    .line 92
    :cond_1
    return-void
.end method
