.class public abstract Landroid/support/v7/widget/ForwardingListener;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ForwardingListener$TriggerLongPress;,
        Landroid/support/v7/widget/ForwardingListener$DisallowIntercept;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mDisallowIntercept:Ljava/lang/Runnable;

.field private mForwarding:Z

.field private final mLongPressTimeout:I

.field private final mScaledTouchSlop:F

.field private final mSrc:Landroid/view/View;

.field private final mTapTimeout:I

.field private final mTmpLocation:[I

.field private mTriggerLongPress:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mTmpLocation:[I

    .line 68
    iput-object p1, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 72
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ForwardingListener;->addDetachListenerApi12(Landroid/view/View;)V

    .line 77
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/ForwardingListener;->mScaledTouchSlop:F

    .line 78
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ForwardingListener;->mTapTimeout:I

    .line 81
    iget v0, p0, Landroid/support/v7/widget/ForwardingListener;->mTapTimeout:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/ForwardingListener;->mLongPressTimeout:I

    .line 82
    return-void

    .line 74
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ForwardingListener;->addDetachListenerBase(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/support/v7/widget/ForwardingListener;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v7/widget/ForwardingListener;->onDetachedFromWindow()V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/widget/ForwardingListener;)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/ForwardingListener;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v7/widget/ForwardingListener;->onLongPress()V

    return-void
.end method

.method private addDetachListenerApi12(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Landroid/support/v7/widget/ForwardingListener$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ForwardingListener$1;-><init>(Landroid/support/v7/widget/ForwardingListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 94
    return-void
.end method

.method private addDetachListenerBase(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/ForwardingListener$2;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/ForwardingListener$2;-><init>(Landroid/support/v7/widget/ForwardingListener;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 109
    return-void
.end method

.method private clearCallbacks()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 246
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 249
    :cond_1
    return-void
.end method

.method private onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ForwardingListener;->mForwarding:Z

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/ForwardingListener;->mActivePointerId:I

    .line 150
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 153
    :cond_0
    return-void
.end method

.method private onLongPress()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 252
    invoke-direct {p0}, Landroid/support/v7/widget/ForwardingListener;->clearCallbacks()V

    .line 254
    iget-object v8, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 255
    invoke-virtual {v8}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ForwardingListener;->onForwardingStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 269
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 270
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 271
    invoke-virtual {v8, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 272
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 274
    iput-boolean v9, p0, Landroid/support/v7/widget/ForwardingListener;->mForwarding:Z

    goto :goto_0
.end method

.method private onTouchForwarded(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 285
    iget-object v3, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 286
    invoke-virtual {p0}, Landroid/support/v7/widget/ForwardingListener;->getPopup()Landroid/support/v7/view/menu/ShowableListMenu;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/support/v7/view/menu/ShowableListMenu;->isShowing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 310
    :cond_0
    :goto_0
    return v2

    .line 291
    :cond_1
    invoke-interface {v0}, Landroid/support/v7/view/menu/ShowableListMenu;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/DropDownListView;

    .line 292
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView;->isShown()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 297
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 298
    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/ForwardingListener;->toGlobalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 299
    invoke-direct {p0, v0, v4}, Landroid/support/v7/widget/ForwardingListener;->toLocalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 302
    iget v3, p0, Landroid/support/v7/widget/ForwardingListener;->mActivePointerId:I

    invoke-virtual {v0, v4, v3}, Landroid/support/v7/widget/DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result v3

    .line 303
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 306
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 307
    if-eq v0, v1, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    move v0, v1

    .line 310
    :goto_1
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 307
    goto :goto_1

    :cond_3
    move v0, v2

    .line 310
    goto :goto_2
.end method

.method private onTouchObserved(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 196
    iget-object v2, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 197
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v0

    .line 201
    :cond_1
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v3

    .line 202
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 204
    :pswitch_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ForwardingListener;->mActivePointerId:I

    .line 206
    iget-object v1, p0, Landroid/support/v7/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-nez v1, :cond_2

    .line 207
    new-instance v1, Landroid/support/v7/widget/ForwardingListener$DisallowIntercept;

    invoke-direct {v1, p0, v6}, Landroid/support/v7/widget/ForwardingListener$DisallowIntercept;-><init>(Landroid/support/v7/widget/ForwardingListener;Landroid/support/v7/widget/ForwardingListener$1;)V

    iput-object v1, p0, Landroid/support/v7/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    .line 209
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    iget v3, p0, Landroid/support/v7/widget/ForwardingListener;->mTapTimeout:I

    int-to-long v4, v3

    invoke-virtual {v2, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 211
    iget-object v1, p0, Landroid/support/v7/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-nez v1, :cond_3

    .line 212
    new-instance v1, Landroid/support/v7/widget/ForwardingListener$TriggerLongPress;

    invoke-direct {v1, p0, v6}, Landroid/support/v7/widget/ForwardingListener$TriggerLongPress;-><init>(Landroid/support/v7/widget/ForwardingListener;Landroid/support/v7/widget/ForwardingListener$1;)V

    iput-object v1, p0, Landroid/support/v7/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    .line 214
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    iget v3, p0, Landroid/support/v7/widget/ForwardingListener;->mLongPressTimeout:I

    int-to-long v4, v3

    invoke-virtual {v2, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 217
    :pswitch_1
    iget v3, p0, Landroid/support/v7/widget/ForwardingListener;->mActivePointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 218
    if-ltz v3, :cond_0

    .line 219
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 220
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 223
    iget v5, p0, Landroid/support/v7/widget/ForwardingListener;->mScaledTouchSlop:F

    invoke-static {v2, v4, v3, v5}, Landroid/support/v7/widget/ForwardingListener;->pointInView(Landroid/view/View;FFF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 224
    invoke-direct {p0}, Landroid/support/v7/widget/ForwardingListener;->clearCallbacks()V

    .line 227
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move v0, v1

    .line 228
    goto :goto_0

    .line 234
    :pswitch_2
    invoke-direct {p0}, Landroid/support/v7/widget/ForwardingListener;->clearCallbacks()V

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static pointInView(Landroid/view/View;FFF)Z
    .locals 2

    .prologue
    .line 314
    neg-float v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    neg-float v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 316
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toGlobalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 335
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mTmpLocation:[I

    .line 336
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 337
    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 338
    return v2
.end method

.method private toLocalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 324
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mTmpLocation:[I

    .line 325
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 326
    const/4 v1, 0x0

    aget v1, v0, v1

    neg-int v1, v1

    int-to-float v1, v1

    aget v0, v0, v2

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 327
    return v2
.end method


# virtual methods
.method public abstract getPopup()Landroid/support/v7/view/menu/ShowableListMenu;
.end method

.method protected onForwardingStarted()Z
    .locals 2

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/support/v7/widget/ForwardingListener;->getPopup()Landroid/support/v7/view/menu/ShowableListMenu;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/support/v7/view/menu/ShowableListMenu;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    invoke-interface {v0}, Landroid/support/v7/view/menu/ShowableListMenu;->show()V

    .line 169
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onForwardingStopped()Z
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/support/v7/widget/ForwardingListener;->getPopup()Landroid/support/v7/view/menu/ShowableListMenu;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/support/v7/view/menu/ShowableListMenu;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-interface {v0}, Landroid/support/v7/view/menu/ShowableListMenu;->dismiss()V

    .line 186
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 125
    iget-boolean v10, p0, Landroid/support/v7/widget/ForwardingListener;->mForwarding:Z

    .line 127
    if-eqz v10, :cond_4

    .line 128
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ForwardingListener;->onForwardingStopped()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    move v0, v8

    .line 142
    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/ForwardingListener;->mForwarding:Z

    .line 143
    if-nez v0, :cond_1

    if-eqz v10, :cond_2

    :cond_1
    move v7, v8

    :cond_2
    return v7

    :cond_3
    move v0, v7

    .line 128
    goto :goto_0

    .line 130
    :cond_4
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ForwardingListener;->onTouchObserved(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/support/v7/widget/ForwardingListener;->onForwardingStarted()Z

    move-result v0

    if-eqz v0, :cond_6

    move v9, v8

    .line 132
    :goto_1
    if-eqz v9, :cond_5

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 135
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 137
    iget-object v1, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 138
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_5
    move v0, v9

    goto :goto_0

    :cond_6
    move v9, v7

    .line 130
    goto :goto_1
.end method
