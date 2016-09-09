.class public Lcom/android/calendar/editor/EditorScrollView;
.super Landroid/widget/ScrollView;
.source "EditorScrollView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFullScreenSegment:Lcom/android/calendar/editor/EditSegment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/android/calendar/editor/EditorScrollView;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/editor/EditorScrollView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/calendar/editor/EditorScrollView;->mFullScreenSegment:Lcom/android/calendar/editor/EditSegment;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 6

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/calendar/editor/EditorScrollView;->mFullScreenSegment:Lcom/android/calendar/editor/EditSegment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/editor/EditorScrollView;->mFullScreenSegment:Lcom/android/calendar/editor/EditSegment;

    invoke-virtual {v0}, Lcom/android/calendar/editor/EditSegment;->getTop()I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 65
    sget-object v0, Lcom/android/calendar/editor/EditorScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string v2, "Requested to scroll the full-screen segment out of view. %s vs. %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/calendar/editor/EditorScrollView;->mFullScreenSegment:Lcom/android/calendar/editor/EditSegment;

    .line 67
    invoke-virtual {v5}, Lcom/android/calendar/editor/EditSegment;->getTop()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 65
    invoke-static {v0, v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 68
    iget-object v0, p0, Lcom/android/calendar/editor/EditorScrollView;->mFullScreenSegment:Lcom/android/calendar/editor/EditSegment;

    invoke-virtual {v0}, Lcom/android/calendar/editor/EditSegment;->getTop()I

    move-result v0

    .line 69
    invoke-super {p0, p1, v0}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onOverScrolled(IIZZ)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/calendar/editor/EditorScrollView;->mFullScreenSegment:Lcom/android/calendar/editor/EditSegment;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 6

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/calendar/editor/EditorScrollView;->mFullScreenSegment:Lcom/android/calendar/editor/EditSegment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/editor/EditorScrollView;->mFullScreenSegment:Lcom/android/calendar/editor/EditSegment;

    invoke-virtual {v0}, Lcom/android/calendar/editor/EditSegment;->getTop()I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 78
    sget-object v0, Lcom/android/calendar/editor/EditorScrollView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string v2, "Requested to scroll the full-screen segment out of view. %s vs. %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/calendar/editor/EditorScrollView;->mFullScreenSegment:Lcom/android/calendar/editor/EditSegment;

    .line 80
    invoke-virtual {v5}, Lcom/android/calendar/editor/EditSegment;->getTop()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 78
    invoke-static {v0, v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 81
    iget-object v0, p0, Lcom/android/calendar/editor/EditorScrollView;->mFullScreenSegment:Lcom/android/calendar/editor/EditSegment;

    invoke-virtual {v0}, Lcom/android/calendar/editor/EditSegment;->getTop()I

    move-result p2

    .line 83
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 84
    return-void
.end method

.method public setFullScreenSegment(Lcom/android/calendar/editor/EditSegment;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/calendar/editor/EditorScrollView;->mFullScreenSegment:Lcom/android/calendar/editor/EditSegment;

    .line 56
    return-void
.end method
