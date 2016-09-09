.class public abstract Lcom/android/calendar/timely/BottomPromo;
.super Lcom/android/calendar/timely/BottomSheet;
.source "BottomPromo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/BottomPromo$OnPromoAcceptedListener;
    }
.end annotation


# static fields
.field private static sDebug:Z


# instance fields
.field private mOnPromoAcceptedListener:Lcom/android/calendar/timely/BottomPromo$OnPromoAcceptedListener;

.field private mPromoShouldStartShowing:Z

.field private mPromoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/calendar/timely/BottomPromo;->sDebug:Z

    return-void
.end method

.method private inflateView()V
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/calendar/timely/BottomPromo;->getAcceptButtonResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/BottomPromo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/BottomPromo;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/BottomPromo;->onInitView(Landroid/view/LayoutInflater;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/calendar/timely/BottomPromo;->getAcceptButtonResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/BottomPromo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_2

    .line 153
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/timely/BottomPromo;->getDismissButtonResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/BottomPromo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public static setNewAppStartTimeMillis(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 305
    const-string v0, "com.android.calendar.timely.bottom.promo.install"

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 305
    invoke-static {p0, v0, v2, v3}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;J)V

    .line 307
    return-void
.end method

.method private shouldPromoBeAutoDismissed()Z
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/android/calendar/timely/BottomPromo;->shouldBeAutoDismissed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/BottomPromo;->storePromoState(I)V

    .line 271
    invoke-virtual {p0}, Lcom/android/calendar/timely/BottomPromo;->onAutoDismissed()V

    .line 272
    const/4 v0, 0x1

    .line 274
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private storePromoState(I)V
    .locals 2

    .prologue
    .line 247
    iput p1, p0, Lcom/android/calendar/timely/BottomPromo;->mPromoState:I

    .line 248
    iget-object v0, p0, Lcom/android/calendar/timely/BottomPromo;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/calendar/timely/BottomPromo;->getPromoStatePrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;I)V

    .line 249
    return-void
.end method


# virtual methods
.method protected abstract getAcceptButtonResId()I
.end method

.method protected abstract getDismissButtonResId()I
.end method

.method protected abstract getNamespace()Ljava/lang/String;
.end method

.method protected getPromoStatePrefKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/calendar/timely/BottomPromo;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "state"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 234
    iget v1, p0, Lcom/android/calendar/timely/BottomPromo;->mPromoState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Lcom/android/calendar/timely/BottomSheet;->onAttachedToWindow()V

    .line 164
    return-void
.end method

.method protected abstract onAutoDismissed()V
.end method

.method protected abstract onInitView(Landroid/view/LayoutInflater;)V
.end method

.method public setListener(Lcom/android/calendar/timely/BottomPromo$OnPromoAcceptedListener;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/calendar/timely/BottomPromo;->mOnPromoAcceptedListener:Lcom/android/calendar/timely/BottomPromo$OnPromoAcceptedListener;

    .line 314
    return-void
.end method

.method protected abstract shouldBeAutoDismissed()Z
.end method

.method protected shouldPromoBeShown()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 264
    iget v1, p0, Lcom/android/calendar/timely/BottomPromo;->mPromoState:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/calendar/timely/BottomPromo;->mPromoShouldStartShowing:Z

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/calendar/timely/BottomPromo;->mPromoState:I

    if-ne v1, v0, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract shouldStartShowing()Z
.end method

.method public updatePromoState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 109
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/BottomPromo;->setVisibility(I)V

    .line 114
    iget v0, p0, Lcom/android/calendar/timely/BottomPromo;->mPromoState:I

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/calendar/timely/BottomPromo;->sDebug:Z

    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/calendar/timely/BottomPromo;->shouldStartShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/timely/BottomPromo;->mPromoShouldStartShowing:Z

    .line 117
    invoke-virtual {p0}, Lcom/android/calendar/timely/BottomPromo;->shouldPromoBeShown()Z

    move-result v0

    if-nez v0, :cond_3

    .line 138
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 115
    goto :goto_0

    .line 121
    :cond_3
    invoke-direct {p0}, Lcom/android/calendar/timely/BottomPromo;->shouldPromoBeAutoDismissed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    invoke-direct {p0}, Lcom/android/calendar/timely/BottomPromo;->inflateView()V

    .line 130
    iget v0, p0, Lcom/android/calendar/timely/BottomPromo;->mPromoState:I

    if-ne v0, v1, :cond_4

    .line 131
    invoke-virtual {p0, v2}, Lcom/android/calendar/timely/BottomPromo;->setVisibility(I)V

    goto :goto_1

    .line 136
    :cond_4
    sget v0, Lcom/android/calendar/R$integer;->bottom_promo_slide_up_delay_ms:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/BottomPromo;->showDelayed(I)V

    .line 137
    invoke-direct {p0, v1}, Lcom/android/calendar/timely/BottomPromo;->storePromoState(I)V

    goto :goto_1
.end method
