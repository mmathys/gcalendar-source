.class public abstract Lcom/android/calendar/event/edit/segment/BaseChipSpan;
.super Landroid/text/style/ReplacementSpan;
.source "BaseChipSpan.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/edit/segment/BaseChipSpan$BaseChipSpanCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/calendar/event/edit/segment/BaseChipSpan$BaseChipSpanCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mChipDrawable:Landroid/graphics/drawable/Drawable;

.field private mConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

.field protected final mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconCreated:Z

.field private mIsRtl:Z

.field private mIsSelected:Z

.field private mLastDrawPosition:Landroid/graphics/Point;

.field private mMaxWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 71
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mMaxWidth:I

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mIconCreated:Z

    .line 79
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {p1}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mIsRtl:Z

    .line 81
    return-void
.end method

.method private getCallback()Lcom/android/calendar/event/edit/segment/BaseChipSpan$BaseChipSpanCallback;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mCallback:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/edit/segment/BaseChipSpan$BaseChipSpanCallback;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 244
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mIconCreated:Z

    if-nez v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 246
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->createIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 247
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 250
    :cond_0
    iput-boolean v1, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mIconCreated:Z

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 245
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected createChipBitmap()Landroid/graphics/Bitmap;
    .locals 15

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 290
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    iget-boolean v1, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mIsSelected:Z

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/ChipConfig;->getTextPaint(Z)Landroid/text/TextPaint;

    move-result-object v6

    .line 291
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mIsRtl:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_0
    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 292
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    iget-boolean v1, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mIsSelected:Z

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/segment/ChipConfig;->getBackground(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 294
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/ChipConfig;->isShowIcon()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 295
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v3, v0

    .line 301
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/ChipConfig;->getHeight()I

    move-result v12

    .line 302
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/ChipConfig;->getMarginLeft()I

    move-result v13

    .line 303
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/ChipConfig;->getMarginRight()I

    move-result v0

    .line 306
    iget v1, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mMaxWidth:I

    sub-int/2addr v1, v13

    sub-int/2addr v1, v0

    .line 315
    if-eqz v10, :cond_b

    .line 316
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/ChipConfig;->getTextInset()I

    move-result v0

    move v9, v0

    .line 318
    :goto_2
    if-eqz v3, :cond_a

    .line 322
    if-eqz v10, :cond_9

    .line 323
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/ChipConfig;->getIconInset()I

    move-result v0

    .line 326
    :goto_3
    mul-int/lit8 v5, v0, 0x2

    sub-int v5, v12, v5

    .line 329
    add-int v7, v0, v5

    sub-int v7, v1, v7

    .line 330
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/segment/ChipConfig;->getIconTextSpacing()I

    move-result v1

    move v8, v5

    move v5, v1

    move v14, v0

    move v0, v7

    move v7, v14

    .line 334
    :goto_4
    add-int v1, v5, v9

    sub-int/2addr v0, v1

    .line 338
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->getChipText()Ljava/lang/String;

    move-result-object v1

    .line 339
    int-to-float v0, v0

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 340
    invoke-static {v1, v6, v0, v11}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 341
    iget-boolean v1, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mIsRtl:Z

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->forceTextAlignment(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 344
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v6, v1, v2, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    float-to-int v0, v0

    .line 347
    add-int v11, v7, v8

    add-int/2addr v11, v5

    add-int/2addr v0, v11

    add-int/2addr v0, v9

    .line 352
    iget-object v9, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    invoke-virtual {v9}, Lcom/android/calendar/event/edit/segment/ChipConfig;->getMinWidth()I

    move-result v9

    if-ge v0, v9, :cond_8

    .line 353
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/ChipConfig;->getMinWidth()I

    move-result v0

    move v9, v0

    .line 356
    :goto_5
    if-gtz v9, :cond_1

    .line 384
    :goto_6
    return-object v4

    .line 291
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto/16 :goto_0

    .line 362
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v12, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 363
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 365
    if-eqz v10, :cond_2

    .line 366
    invoke-virtual {v10, v13, v2, v9, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 367
    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 370
    :cond_2
    iget-boolean v4, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mIsRtl:Z

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    .line 371
    :goto_7
    if-eqz v3, :cond_3

    .line 373
    iget-boolean v4, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mIsRtl:Z

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    sub-int/2addr v4, v7

    sub-int/2addr v4, v8

    .line 374
    :goto_8
    add-int v10, v4, v8

    .line 375
    iget-boolean v9, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mIsRtl:Z

    if-eqz v9, :cond_6

    move v9, v4

    .line 376
    :goto_9
    add-int/2addr v8, v7

    invoke-virtual {v3, v4, v7, v10, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 377
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 380
    :cond_3
    iget-boolean v3, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mIsRtl:Z

    if-eqz v3, :cond_7

    sub-int v3, v9, v5

    move v4, v3

    .line 381
    :goto_a
    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    invoke-virtual {v3}, Lcom/android/calendar/event/edit/segment/ChipConfig;->getBaselinePosition()I

    move-result v5

    .line 382
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    move-object v4, v11

    .line 384
    goto :goto_6

    :cond_4
    move v9, v2

    .line 370
    goto :goto_7

    :cond_5
    move v4, v7

    .line 373
    goto :goto_8

    :cond_6
    move v9, v10

    .line 375
    goto :goto_9

    .line 380
    :cond_7
    add-int v3, v9, v5

    move v4, v3

    goto :goto_a

    :cond_8
    move v9, v0

    goto :goto_5

    :cond_9
    move v0, v2

    goto/16 :goto_3

    :cond_a
    move v5, v0

    move v7, v2

    move v8, v2

    move v0, v1

    goto/16 :goto_4

    :cond_b
    move v9, v2

    move v0, v2

    goto/16 :goto_2

    :cond_c
    move-object v3, v4

    goto/16 :goto_1
.end method

.method protected abstract createIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public detachAndReplaceWithTransparentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 117
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mLastDrawPosition:Landroid/graphics/Point;

    if-nez v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-object v0

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->getChipDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 125
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 126
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mLastDrawPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mLastDrawPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mLastDrawPosition:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mLastDrawPosition:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 130
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->invalidate()V

    .line 132
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mChipDrawable:Landroid/graphics/drawable/Drawable;

    .line 133
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mChipDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object v0, v1

    .line 134
    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    iput-object v1, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mCallback:Ljava/lang/ref/WeakReference;

    .line 142
    iput-object v1, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mChipDrawable:Landroid/graphics/drawable/Drawable;

    .line 143
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 146
    :cond_0
    iput-object v1, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mIconCreated:Z

    .line 148
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 3

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mIsRtl:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/ChipConfig;->getMarginRight()I

    move-result v0

    .line 195
    :goto_0
    int-to-float v0, v0

    add-float/2addr v0, p5

    float-to-int v0, v0

    .line 196
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/segment/ChipConfig;->getBaselinePosition()I

    move-result v1

    sub-int v1, p7, v1

    .line 197
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mLastDrawPosition:Landroid/graphics/Point;

    if-nez v2, :cond_0

    .line 198
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mLastDrawPosition:Landroid/graphics/Point;

    .line 200
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mLastDrawPosition:Landroid/graphics/Point;

    iput v0, v2, Landroid/graphics/Point;->x:I

    .line 201
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mLastDrawPosition:Landroid/graphics/Point;

    iput v1, v2, Landroid/graphics/Point;->y:I

    .line 203
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->getChipDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 204
    if-eqz v2, :cond_1

    .line 205
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 207
    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 209
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 210
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 212
    :cond_1
    return-void

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/ChipConfig;->getMarginLeft()I

    move-result v0

    goto :goto_0
.end method

.method protected getChipDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 267
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mChipDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->createChipBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_0

    .line 270
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 271
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 272
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 273
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mChipDrawable:Landroid/graphics/drawable/Drawable;

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mChipDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected abstract getChipText()Ljava/lang/String;
.end method

.method public getConfig()Lcom/android/calendar/event/edit/segment/ChipConfig;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    return-object v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 167
    if-eqz p5, :cond_0

    .line 168
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    invoke-virtual {v1, p5}, Lcom/android/calendar/event/edit/segment/ChipConfig;->updateFontMetrics(Landroid/graphics/Paint$FontMetricsInt;)V

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->getChipDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 172
    if-nez v1, :cond_1

    .line 182
    :goto_0
    return v0

    .line 175
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 176
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    invoke-virtual {v2}, Lcom/android/calendar/event/edit/segment/ChipConfig;->getMarginLeft()I

    move-result v2

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    invoke-virtual {v2}, Lcom/android/calendar/event/edit/segment/ChipConfig;->getMarginRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 177
    iget v2, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mMaxWidth:I

    if-le v1, v2, :cond_2

    .line 178
    sget-object v2, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->TAG:Ljava/lang/String;

    const-string v3, "Chip span width %s > max width %s. text=\'%s\', start=%s, end=%s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    .line 179
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mMaxWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object p2, v4, v0

    const/4 v0, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    .line 178
    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 180
    iget v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mMaxWidth:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 182
    goto :goto_0
.end method

.method protected invalidate()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mChipDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mChipDrawable:Landroid/graphics/drawable/Drawable;

    .line 260
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->getCallback()Lcom/android/calendar/event/edit/segment/BaseChipSpan$BaseChipSpanCallback;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_0

    .line 262
    invoke-interface {v0, p0}, Lcom/android/calendar/event/edit/segment/BaseChipSpan$BaseChipSpanCallback;->invalidateChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;)V

    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->invalidate()V

    .line 219
    return-void
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mIsSelected:Z

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->getCallback()Lcom/android/calendar/event/edit/segment/BaseChipSpan$BaseChipSpanCallback;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_0

    .line 225
    invoke-interface {v0, p0, p2, p3, p4}, Lcom/android/calendar/event/edit/segment/BaseChipSpan$BaseChipSpanCallback;->scheduleChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;Ljava/lang/Runnable;J)V

    .line 227
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/calendar/event/edit/segment/BaseChipSpan$BaseChipSpanCallback;)V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mCallback:Ljava/lang/ref/WeakReference;

    .line 96
    return-void
.end method

.method public setConfig(Lcom/android/calendar/event/edit/segment/ChipConfig;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mConfig:Lcom/android/calendar/event/edit/segment/ChipConfig;

    .line 87
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->invalidate()V

    .line 88
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mMaxWidth:I

    if-eq v0, p1, :cond_0

    .line 111
    iput p1, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mMaxWidth:I

    .line 112
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->invalidate()V

    .line 114
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mIsSelected:Z

    if-eq v0, p1, :cond_0

    .line 104
    iput-boolean p1, p0, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->mIsSelected:Z

    .line 105
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->invalidate()V

    .line 107
    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/BaseChipSpan;->getCallback()Lcom/android/calendar/event/edit/segment/BaseChipSpan$BaseChipSpanCallback;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_0

    .line 233
    invoke-interface {v0, p0, p2}, Lcom/android/calendar/event/edit/segment/BaseChipSpan$BaseChipSpanCallback;->unscheduleChip(Lcom/android/calendar/event/edit/segment/BaseChipSpan;Ljava/lang/Runnable;)V

    .line 235
    :cond_0
    return-void
.end method
