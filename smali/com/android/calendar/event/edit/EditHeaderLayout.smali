.class public Lcom/android/calendar/event/edit/EditHeaderLayout;
.super Landroid/widget/RelativeLayout;
.source "EditHeaderLayout.java"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimatedShift:F

.field private final mRectCache:Landroid/graphics/Rect;

.field private mStatusBarProtector:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/android/calendar/event/edit/EditHeaderLayout;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/edit/EditHeaderLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditHeaderLayout;->mRectCache:Landroid/graphics/Rect;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditHeaderLayout;->mRectCache:Landroid/graphics/Rect;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditHeaderLayout;->mRectCache:Landroid/graphics/Rect;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 21
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditHeaderLayout;->mRectCache:Landroid/graphics/Rect;

    .line 44
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 61
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/calendar/R$id;->status_bar_protection:I

    if-ne v0, v1, :cond_0

    .line 62
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/calendar/event/edit/EditHeaderLayout;->mAnimatedShift:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 64
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/calendar/R$id;->headline_content_wrapper:I

    if-ne v0, v1, :cond_2

    .line 65
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditHeaderLayout;->mRectCache:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    sget-object v0, Lcom/android/calendar/event/edit/EditHeaderLayout;->TAG:Ljava/lang/String;

    const-string v1, "Couldn\'t get clip bounds, falling back to visible rect"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 67
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditHeaderLayout;->mRectCache:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/EditHeaderLayout;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    sget-object v0, Lcom/android/calendar/event/edit/EditHeaderLayout;->TAG:Ljava/lang/String;

    const-string v1, "Couldn\'t get visible rect either, not clipping"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 75
    :goto_0
    return v0

    .line 72
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditHeaderLayout;->mRectCache:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/calendar/event/edit/EditHeaderLayout;->mAnimatedShift:F

    iget-object v3, p0, Lcom/android/calendar/event/edit/EditHeaderLayout;->mStatusBarProtector:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 73
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditHeaderLayout;->mRectCache:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 75
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw v0
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditHeaderLayout;->mStatusBarProtector:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 84
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditHeaderLayout;->mStatusBarProtector:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 86
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 54
    sget v0, Lcom/android/calendar/R$id;->status_bar_protection:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/EditHeaderLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/EditHeaderLayout;->mStatusBarProtector:Landroid/view/View;

    .line 55
    return-void
.end method

.method public setAnimatedShift(F)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/android/calendar/event/edit/EditHeaderLayout;->mAnimatedShift:F

    .line 48
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditHeaderLayout;->invalidate()V

    .line 49
    return-void
.end method
