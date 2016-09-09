.class public Lcom/android/calendar/timely/LoadingStateManager;
.super Ljava/lang/Object;
.source "LoadingStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/LoadingStateManager$OnFadeOutLoadingView;,
        Lcom/android/calendar/timely/LoadingStateManager$OnFadeInDataView;,
        Lcom/android/calendar/timely/LoadingStateManager$OnLoadingStateListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mDataView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mLoadingState:I

.field private mLoadingStateListener:Lcom/android/calendar/timely/LoadingStateManager$OnLoadingStateListener;

.field private mLoadingView:Landroid/view/View;

.field private mOnFadeInDataView:Lcom/android/calendar/timely/LoadingStateManager$OnFadeInDataView;

.field private mOnFadeOutLoadingView:Lcom/android/calendar/timely/LoadingStateManager$OnFadeOutLoadingView;

.field private mRunnableLoadingPhase:Ljava/lang/Runnable;

.field private mWasDataLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/android/calendar/timely/LoadingStateManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/calendar/timely/LoadingStateManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Lcom/android/calendar/timely/LoadingStateManager$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/LoadingStateManager$1;-><init>(Lcom/android/calendar/timely/LoadingStateManager;)V

    iput-object v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mRunnableLoadingPhase:Ljava/lang/Runnable;

    .line 83
    sget-boolean v0, Lcom/android/calendar/timely/LoadingStateManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 84
    :cond_0
    sget-boolean v0, Lcom/android/calendar/timely/LoadingStateManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 86
    :cond_1
    iput-object p1, p0, Lcom/android/calendar/timely/LoadingStateManager;->mDataView:Landroid/view/View;

    .line 87
    iput-object p2, p0, Lcom/android/calendar/timely/LoadingStateManager;->mLoadingView:Landroid/view/View;

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mLoadingState:I

    .line 91
    iget-object v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mLoadingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/LoadingStateManager;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/calendar/timely/LoadingStateManager;->runLoadingPhase()V

    return-void
.end method

.method private static fadeIn(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 227
    const/16 v0, 0xfa

    invoke-static {p0, v0}, Lcom/android/calendar/timely/LoadingStateManager;->fadeIn(Landroid/view/View;I)V

    .line 228
    return-void
.end method

.method private static fadeIn(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 233
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 234
    return-void
.end method

.method private static fadeOut(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 237
    const/16 v0, 0xfa

    invoke-static {p0, v0}, Lcom/android/calendar/timely/LoadingStateManager;->fadeOut(Landroid/view/View;I)V

    .line 238
    return-void
.end method

.method private static fadeOut(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 240
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/timely/LoadingStateManager$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/LoadingStateManager$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 248
    return-void
.end method

.method private declared-synchronized runLoadingPhase()V
    .locals 4

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mLoadingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 166
    :cond_0
    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    .line 147
    :pswitch_1
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mLoadingState:I

    .line 149
    iget-object v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mLoadingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mLoadingStateListener:Lcom/android/calendar/timely/LoadingStateManager$OnLoadingStateListener;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mLoadingStateListener:Lcom/android/calendar/timely/LoadingStateManager$OnLoadingStateListener;

    invoke-interface {v0}, Lcom/android/calendar/timely/LoadingStateManager$OnLoadingStateListener;->onShowingLoadingView()V

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/timely/LoadingStateManager;->mRunnableLoadingPhase:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 159
    :pswitch_2
    const/4 v0, 0x2

    :try_start_2
    iput v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mLoadingState:I

    .line 161
    iget-boolean v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mWasDataLoaded:Z

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/calendar/timely/LoadingStateManager;->onDataLoaded()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cancelLoadingView()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/timely/LoadingStateManager;->mRunnableLoadingPhase:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method public isDataLoaded()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mWasDataLoaded:Z

    return v0
.end method

.method public isLoading()Z
    .locals 2

    .prologue
    .line 223
    iget v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mLoadingState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onDataLoaded()V
    .locals 2

    .prologue
    .line 173
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mWasDataLoaded:Z

    .line 175
    iget v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mLoadingState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 216
    :cond_0
    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    .line 179
    :pswitch_1
    const/4 v0, 0x3

    :try_start_1
    iput v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mLoadingState:I

    .line 181
    iget-object v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mOnFadeInDataView:Lcom/android/calendar/timely/LoadingStateManager$OnFadeInDataView;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mOnFadeInDataView:Lcom/android/calendar/timely/LoadingStateManager$OnFadeInDataView;

    invoke-interface {v0}, Lcom/android/calendar/timely/LoadingStateManager$OnFadeInDataView;->onShowDataView()V

    .line 186
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mLoadingStateListener:Lcom/android/calendar/timely/LoadingStateManager$OnLoadingStateListener;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mLoadingStateListener:Lcom/android/calendar/timely/LoadingStateManager$OnLoadingStateListener;

    invoke-interface {v0}, Lcom/android/calendar/timely/LoadingStateManager$OnLoadingStateListener;->onShowingDataView()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 184
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mDataView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 198
    :pswitch_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mLoadingState:I

    .line 200
    iget-object v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mOnFadeOutLoadingView:Lcom/android/calendar/timely/LoadingStateManager$OnFadeOutLoadingView;

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mOnFadeOutLoadingView:Lcom/android/calendar/timely/LoadingStateManager$OnFadeOutLoadingView;

    iget-object v1, p0, Lcom/android/calendar/timely/LoadingStateManager;->mLoadingView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/calendar/timely/LoadingStateManager$OnFadeOutLoadingView;->onFadeOutLoadingView(Landroid/view/View;)V

    .line 205
    :goto_2
    iget-object v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mOnFadeInDataView:Lcom/android/calendar/timely/LoadingStateManager$OnFadeInDataView;

    if-eqz v0, :cond_3

    .line 206
    iget-object v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mOnFadeInDataView:Lcom/android/calendar/timely/LoadingStateManager$OnFadeInDataView;

    invoke-interface {v0}, Lcom/android/calendar/timely/LoadingStateManager$OnFadeInDataView;->onFadeInDataView()V

    .line 210
    :goto_3
    iget-object v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mLoadingStateListener:Lcom/android/calendar/timely/LoadingStateManager$OnLoadingStateListener;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mLoadingStateListener:Lcom/android/calendar/timely/LoadingStateManager$OnLoadingStateListener;

    invoke-interface {v0}, Lcom/android/calendar/timely/LoadingStateManager$OnLoadingStateListener;->onHidingLoadingView()V

    .line 212
    iget-object v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mLoadingStateListener:Lcom/android/calendar/timely/LoadingStateManager$OnLoadingStateListener;

    invoke-interface {v0}, Lcom/android/calendar/timely/LoadingStateManager$OnLoadingStateListener;->onShowingDataView()V

    goto :goto_0

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mLoadingView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/calendar/timely/LoadingStateManager;->fadeOut(Landroid/view/View;)V

    goto :goto_2

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mDataView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/calendar/timely/LoadingStateManager;->fadeIn(Landroid/view/View;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setLoadingStateListener(Lcom/android/calendar/timely/LoadingStateManager$OnLoadingStateListener;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/calendar/timely/LoadingStateManager;->mLoadingStateListener:Lcom/android/calendar/timely/LoadingStateManager$OnLoadingStateListener;

    .line 99
    return-void
.end method

.method public setOnFadeInDataView(Lcom/android/calendar/timely/LoadingStateManager$OnFadeInDataView;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/calendar/timely/LoadingStateManager;->mOnFadeInDataView:Lcom/android/calendar/timely/LoadingStateManager$OnFadeInDataView;

    .line 106
    return-void
.end method

.method public setOnFadeOutLoadingView(Lcom/android/calendar/timely/LoadingStateManager$OnFadeOutLoadingView;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/calendar/timely/LoadingStateManager;->mOnFadeOutLoadingView:Lcom/android/calendar/timely/LoadingStateManager$OnFadeOutLoadingView;

    .line 113
    return-void
.end method

.method public declared-synchronized startLoadingPhases()V
    .locals 4

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mDataView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mLoadingStateListener:Lcom/android/calendar/timely/LoadingStateManager$OnLoadingStateListener;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mLoadingStateListener:Lcom/android/calendar/timely/LoadingStateManager$OnLoadingStateListener;

    invoke-interface {v0}, Lcom/android/calendar/timely/LoadingStateManager$OnLoadingStateListener;->onHidingDataView()V

    .line 125
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mWasDataLoaded:Z

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mLoadingState:I

    .line 127
    iget-object v0, p0, Lcom/android/calendar/timely/LoadingStateManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/timely/LoadingStateManager;->mRunnableLoadingPhase:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
