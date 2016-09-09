.class Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "LayoutDirectionAwareViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/LayoutDirectionAwareViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectionAwarePagerAdapter"
.end annotation


# instance fields
.field private final directionUnawareDataSetObserver:Landroid/database/DataSetObserver;

.field private final directionUnawarePagerAdapter:Landroid/support/v4/view/PagerAdapter;

.field private usesRtl:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/view/PagerAdapter;)V
    .locals 2

    .prologue
    .line 204
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 205
    iput-object p1, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->directionUnawarePagerAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 206
    new-instance v0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter$1;-><init>(Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;)V

    iput-object v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->directionUnawareDataSetObserver:Landroid/database/DataSetObserver;

    .line 212
    iget-object v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->directionUnawarePagerAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v1, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->directionUnawareDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 214
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;)V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->destroy()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;)Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->directionUnawarePagerAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method private destroy()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->directionUnawarePagerAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v1, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->directionUnawareDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 300
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->directionUnawarePagerAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 245
    invoke-virtual {p0, p2}, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->getDirectionAwarePosition(I)I

    move-result v1

    .line 243
    invoke-virtual {v0, p1, v1, p3}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 246
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->directionUnawarePagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 264
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->directionUnawarePagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method getDirectionAwarePosition(I)I
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->usesRtl:Z

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 292
    :cond_0
    return p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->directionUnawarePagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    .line 224
    if-gez v0, :cond_0

    :goto_0
    return v0

    .line 226
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->getDirectionAwarePosition(I)I

    move-result v0

    goto :goto_0
.end method

.method public getPageWidth(I)F
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->directionUnawarePagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0, p1}, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->getDirectionAwarePosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->directionUnawarePagerAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 238
    invoke-virtual {p0, p2}, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->getDirectionAwarePosition(I)I

    move-result v1

    .line 236
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->directionUnawarePagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->directionUnawarePagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 274
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->directionUnawarePagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->directionUnawarePagerAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 252
    invoke-virtual {p0, p2}, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->getDirectionAwarePosition(I)I

    move-result v1

    .line 250
    invoke-virtual {v0, p1, v1, p3}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 254
    return-void
.end method

.method setUsesRtl(Z)V
    .locals 0

    .prologue
    .line 287
    iput-boolean p1, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->usesRtl:Z

    .line 288
    invoke-virtual {p0}, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->notifyDataSetChanged()V

    .line 289
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/calendar/LayoutDirectionAwareViewPager$DirectionAwarePagerAdapter;->directionUnawarePagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 259
    return-void
.end method
