.class public Lcom/android/bitmap/view/BitmapDrawableImageView;
.super Landroid/widget/ImageView;
.source "BitmapDrawableImageView.java"


# static fields
.field private static final HAS_TRANSIENT_STATE_SUPPORTED:Z


# instance fields
.field private mAttachedToWindow:Z

.field private mDrawable:Lcom/android/bitmap/drawable/BasicBitmapDrawable;

.field private mShouldUnbindOnDetachFromWindow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/bitmap/view/BitmapDrawableImageView;->HAS_TRANSIENT_STATE_SUPPORTED:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/bitmap/view/BitmapDrawableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/bitmap/view/BitmapDrawableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bitmap/view/BitmapDrawableImageView;->mShouldUnbindOnDetachFromWindow:Z

    .line 60
    return-void
.end method

.method private unbindDrawable(Z)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/bitmap/view/BitmapDrawableImageView;->mDrawable:Lcom/android/bitmap/drawable/BasicBitmapDrawable;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/bitmap/view/BitmapDrawableImageView;->mDrawable:Lcom/android/bitmap/drawable/BasicBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->unbind(Z)V

    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bitmap/view/BitmapDrawableImageView;->mAttachedToWindow:Z

    .line 137
    iget-object v0, p0, Lcom/android/bitmap/view/BitmapDrawableImageView;->mDrawable:Lcom/android/bitmap/drawable/BasicBitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bitmap/view/BitmapDrawableImageView;->mDrawable:Lcom/android/bitmap/drawable/BasicBitmapDrawable;

    invoke-virtual {v0}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->getKey()Lcom/android/bitmap/RequestKey;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bitmap/view/BitmapDrawableImageView;->mDrawable:Lcom/android/bitmap/drawable/BasicBitmapDrawable;

    .line 138
    invoke-virtual {v0}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->getPreviousKey()Lcom/android/bitmap/RequestKey;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/bitmap/view/BitmapDrawableImageView;->mShouldUnbindOnDetachFromWindow:Z

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/bitmap/view/BitmapDrawableImageView;->mDrawable:Lcom/android/bitmap/drawable/BasicBitmapDrawable;

    iget-object v1, p0, Lcom/android/bitmap/view/BitmapDrawableImageView;->mDrawable:Lcom/android/bitmap/drawable/BasicBitmapDrawable;

    invoke-virtual {v1}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->getPreviousKey()Lcom/android/bitmap/RequestKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->bind(Lcom/android/bitmap/RequestKey;)V

    .line 141
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bitmap/view/BitmapDrawableImageView;->mAttachedToWindow:Z

    .line 147
    sget-boolean v0, Lcom/android/bitmap/view/BitmapDrawableImageView;->HAS_TRANSIENT_STATE_SUPPORTED:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/bitmap/view/BitmapDrawableImageView;->hasTransientState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/bitmap/view/BitmapDrawableImageView;->mShouldUnbindOnDetachFromWindow:Z

    if-eqz v0, :cond_0

    .line 149
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/bitmap/view/BitmapDrawableImageView;->unbindDrawable(Z)V

    .line 151
    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRtlPropertiesChanged(I)V

    .line 164
    iget-object v0, p0, Lcom/android/bitmap/view/BitmapDrawableImageView;->mDrawable:Lcom/android/bitmap/drawable/BasicBitmapDrawable;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/bitmap/view/BitmapDrawableImageView;->mDrawable:Lcom/android/bitmap/drawable/BasicBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->setLayoutDirectionLocal(I)V

    .line 167
    :cond_0
    return-void
.end method

.method public setHasTransientState(Z)V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setHasTransientState(Z)V

    .line 156
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/bitmap/view/BitmapDrawableImageView;->mAttachedToWindow:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/bitmap/view/BitmapDrawableImageView;->mShouldUnbindOnDetachFromWindow:Z

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/bitmap/view/BitmapDrawableImageView;->unbindDrawable(Z)V

    .line 159
    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/bitmap/view/BitmapDrawableImageView;->unbindDrawable()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bitmap/view/BitmapDrawableImageView;->mDrawable:Lcom/android/bitmap/drawable/BasicBitmapDrawable;

    .line 131
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/bitmap/view/BitmapDrawableImageView;->unbindDrawable()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bitmap/view/BitmapDrawableImageView;->mDrawable:Lcom/android/bitmap/drawable/BasicBitmapDrawable;

    .line 124
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    invoke-virtual {p0}, Lcom/android/bitmap/view/BitmapDrawableImageView;->unbindDrawable()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bitmap/view/BitmapDrawableImageView;->mDrawable:Lcom/android/bitmap/drawable/BasicBitmapDrawable;

    .line 110
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/bitmap/view/BitmapDrawableImageView;->unbindDrawable()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bitmap/view/BitmapDrawableImageView;->mDrawable:Lcom/android/bitmap/drawable/BasicBitmapDrawable;

    .line 117
    return-void
.end method

.method public setTypedDrawable(Lcom/android/bitmap/drawable/BasicBitmapDrawable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/android/bitmap/drawable/BasicBitmapDrawable;",
            ">(TE;)V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v0, p0, Lcom/android/bitmap/view/BitmapDrawableImageView;->mDrawable:Lcom/android/bitmap/drawable/BasicBitmapDrawable;

    if-eq p1, v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/bitmap/view/BitmapDrawableImageView;->unbindDrawable()V

    .line 92
    :cond_0
    iput-object p1, p0, Lcom/android/bitmap/view/BitmapDrawableImageView;->mDrawable:Lcom/android/bitmap/drawable/BasicBitmapDrawable;

    .line 93
    return-void
.end method

.method public unbindDrawable()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/bitmap/view/BitmapDrawableImageView;->unbindDrawable(Z)V

    .line 97
    return-void
.end method
