.class public abstract Lcom/android/calendar/CreateFabFragment$CreateFabStack;
.super Ljava/lang/Object;
.source "CreateFabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CreateFabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CreateFabStack"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/CreateFabFragment$CreateFabStack$Scope;,
        Lcom/android/calendar/CreateFabFragment$CreateFabStack$StartDay;
    }
.end annotation


# instance fields
.field private final mStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/calendar/CreateFabFragment$CreateFabStack$Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CreateFabFragment$CreateFabStack;->mStack:Ljava/util/Stack;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/CreateFabFragment$CreateFabStack;)Ljava/util/Stack;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/CreateFabFragment$CreateFabStack;->mStack:Ljava/util/Stack;

    return-object v0
.end method


# virtual methods
.method abstract findCreateFab()Landroid/view/View;
.end method

.method abstract findMainPane()Landroid/view/View;
.end method

.method public getCreateFab()Landroid/view/View;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/calendar/CreateFabFragment$CreateFabStack;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/android/calendar/CreateFabFragment$CreateFabStack;->findCreateFab()Landroid/view/View;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/CreateFabFragment$CreateFabStack;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CreateFabFragment$CreateFabStack$Scope;

    iget-object v0, v0, Lcom/android/calendar/CreateFabFragment$CreateFabStack$Scope;->mCreateFab:Landroid/view/View;

    goto :goto_0
.end method

.method abstract getCreateFabDay()Lcom/android/calendar/time/Time;
.end method

.method public getCreateFabParent()Landroid/view/View;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/calendar/CreateFabFragment$CreateFabStack;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/calendar/CreateFabFragment$CreateFabStack;->findMainPane()Landroid/view/View;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/CreateFabFragment$CreateFabStack;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CreateFabFragment$CreateFabStack$Scope;

    iget-object v0, v0, Lcom/android/calendar/CreateFabFragment$CreateFabStack$Scope;->mCreateFabParent:Landroid/view/View;

    goto :goto_0
.end method

.method public getHideAnimatorCreateFab(Z)Landroid/animation/ObjectAnimator;
    .locals 8

    .prologue
    const-wide/16 v6, 0x96

    .line 223
    invoke-virtual {p0}, Lcom/android/calendar/CreateFabFragment$CreateFabStack;->getCreateFab()Landroid/view/View;

    move-result-object v0

    .line 224
    if-nez v0, :cond_1

    .line 225
    const/4 v0, 0x0

    .line 236
    :cond_0
    :goto_0
    return-object v0

    .line 227
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    float-to-int v1, v1

    .line 228
    invoke-virtual {p0}, Lcom/android/calendar/CreateFabFragment$CreateFabStack;->getCreateFabParent()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 229
    const-string v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    int-to-float v1, v1

    aput v1, v4, v5

    const/4 v1, 0x1

    int-to-float v2, v2

    aput v2, v4, v1

    .line 230
    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 231
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 232
    new-instance v1, Lcom/android/calendar/timely/animations/QuantumInterpolator;

    invoke-direct {v1}, Lcom/android/calendar/timely/animations/QuantumInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 233
    if-eqz p1, :cond_0

    .line 234
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    goto :goto_0
.end method

.method public getShowAnimatorCreateFab()Landroid/animation/ObjectAnimator;
    .locals 8

    .prologue
    const-wide/16 v6, 0x96

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0}, Lcom/android/calendar/CreateFabFragment$CreateFabStack;->getCreateFab()Landroid/view/View;

    move-result-object v1

    .line 246
    if-nez v1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-object v0

    .line 249
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    .line 250
    if-ltz v2, :cond_0

    .line 254
    const-string v0, "translationY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    int-to-float v2, v2

    aput v2, v3, v4

    const/4 v2, 0x1

    const/4 v4, 0x0

    aput v4, v3, v2

    invoke-static {v1, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 255
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 256
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 257
    new-instance v1, Lcom/android/calendar/timely/animations/QuantumInterpolator;

    invoke-direct {v1}, Lcom/android/calendar/timely/animations/QuantumInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0
.end method

.method public getSpeedDial()Lcom/android/calendar/SpeedDialLayout;
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/calendar/CreateFabFragment$CreateFabStack;->getCreateFabParent()Landroid/view/View;

    move-result-object v0

    .line 146
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 147
    :cond_0
    sget v1, Lcom/android/calendar/R$id;->speed_dial:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/SpeedDialLayout;

    goto :goto_0
.end method

.method public getStartDayForCreation()Lcom/android/calendar/time/Time;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/calendar/CreateFabFragment$CreateFabStack;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/android/calendar/CreateFabFragment$CreateFabStack;->getCreateFabDay()Lcom/android/calendar/time/Time;

    move-result-object v0

    .line 182
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/CreateFabFragment$CreateFabStack;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CreateFabFragment$CreateFabStack$Scope;

    iget-object v0, v0, Lcom/android/calendar/CreateFabFragment$CreateFabStack$Scope;->mStartDay:Lcom/android/calendar/CreateFabFragment$CreateFabStack$StartDay;

    invoke-interface {v0}, Lcom/android/calendar/CreateFabFragment$CreateFabStack$StartDay;->getCreateStartDay()Lcom/android/calendar/time/Time;

    move-result-object v0

    goto :goto_0
.end method

.method public hideCreateFab()V
    .locals 3

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/android/calendar/CreateFabFragment$CreateFabStack;->getCreateFab()Landroid/view/View;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/android/calendar/CreateFabFragment$CreateFabStack;->getCreateFabParent()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 268
    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 270
    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/calendar/CreateFabFragment$CreateFabStack;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public pop()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/calendar/CreateFabFragment$CreateFabStack;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CreateFabFragment$CreateFabStack$Scope;

    iget-object v0, v0, Lcom/android/calendar/CreateFabFragment$CreateFabStack$Scope;->mCreateFab:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    invoke-virtual {p0}, Lcom/android/calendar/CreateFabFragment$CreateFabStack;->getCreateFab()Landroid/view/View;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_0

    .line 212
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    :cond_0
    return-void
.end method

.method public push(Landroid/view/View;Landroid/view/View;Lcom/android/calendar/CreateFabFragment$CreateFabStack$StartDay;)Landroid/view/View;
    .locals 3

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/calendar/CreateFabFragment$CreateFabStack;->getCreateFab()Landroid/view/View;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_0

    .line 197
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/android/calendar/CreateFabFragment$CreateFabStack;->mStack:Ljava/util/Stack;

    new-instance v1, Lcom/android/calendar/CreateFabFragment$CreateFabStack$Scope;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/android/calendar/CreateFabFragment$CreateFabStack$Scope;-><init>(Landroid/view/View;Landroid/view/View;Lcom/android/calendar/CreateFabFragment$CreateFabStack$StartDay;Lcom/android/calendar/CreateFabFragment$1;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CreateFabFragment$CreateFabStack$Scope;

    iget-object v0, v0, Lcom/android/calendar/CreateFabFragment$CreateFabStack$Scope;->mCreateFab:Landroid/view/View;

    return-object v0
.end method

.method public startHideAnimatorCreateFab()V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/CreateFabFragment$CreateFabStack;->getHideAnimatorCreateFab(Z)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 280
    :cond_0
    return-void
.end method

.method public updateFabContentDescription(Ljava/lang/CharSequence;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/calendar/CreateFabFragment$CreateFabStack;->getCreateFab()Landroid/view/View;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 159
    if-eqz v1, :cond_0

    .line 160
    new-instance v2, Lcom/android/calendar/CreateFabFragment$CreateFabStack$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/calendar/CreateFabFragment$CreateFabStack$1;-><init>(Lcom/android/calendar/CreateFabFragment$CreateFabStack;Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 173
    :cond_0
    return-void
.end method
