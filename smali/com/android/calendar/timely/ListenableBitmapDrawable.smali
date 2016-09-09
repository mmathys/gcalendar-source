.class public Lcom/android/calendar/timely/ListenableBitmapDrawable;
.super Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;
.source "ListenableBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/ListenableBitmapDrawable$OnLoadCompleteListener;
    }
.end annotation


# instance fields
.field private mOnLoadCompleteListener:Lcom/android/calendar/timely/ListenableBitmapDrawable$OnLoadCompleteListener;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V

    .line 36
    return-void
.end method

.method private onLoadComplete()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/calendar/timely/ListenableBitmapDrawable;->mOnLoadCompleteListener:Lcom/android/calendar/timely/ListenableBitmapDrawable$OnLoadCompleteListener;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/calendar/timely/ListenableBitmapDrawable;->mOnLoadCompleteListener:Lcom/android/calendar/timely/ListenableBitmapDrawable$OnLoadCompleteListener;

    invoke-interface {v0, p0}, Lcom/android/calendar/timely/ListenableBitmapDrawable$OnLoadCompleteListener;->onLoadComplete(Lcom/android/calendar/timely/ListenableBitmapDrawable;)V

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public bind(Lcom/android/bitmap/RequestKey;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/calendar/timely/ListenableBitmapDrawable;->mCurrKey:Lcom/android/bitmap/RequestKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/ListenableBitmapDrawable;->mCurrKey:Lcom/android/bitmap/RequestKey;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/android/calendar/timely/ListenableBitmapDrawable;->onLoadComplete()V

    .line 51
    :cond_0
    invoke-super {p0, p1}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->bind(Lcom/android/bitmap/RequestKey;)V

    .line 52
    return-void
.end method

.method protected getDecodeStrategy()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x2

    return v0
.end method

.method public setBitmap(Lcom/android/bitmap/ReusableBitmap;)V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->setBitmap(Lcom/android/bitmap/ReusableBitmap;)V

    .line 58
    if-nez p1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/timely/ListenableBitmapDrawable;->onLoadComplete()V

    goto :goto_0
.end method

.method public setOnLoadCompleteListener(Lcom/android/calendar/timely/ListenableBitmapDrawable$OnLoadCompleteListener;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/calendar/timely/ListenableBitmapDrawable;->mOnLoadCompleteListener:Lcom/android/calendar/timely/ListenableBitmapDrawable$OnLoadCompleteListener;

    .line 41
    return-void
.end method
