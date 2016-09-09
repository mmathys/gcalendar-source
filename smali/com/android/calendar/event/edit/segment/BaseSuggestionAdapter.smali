.class public abstract Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseSuggestionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultChipColor:Landroid/graphics/drawable/Drawable;

.field private final mHintBackgroundColor:I

.field private final mHintChipColor:I

.field private mHintDescription:Ljava/lang/CharSequence;

.field private mHintTitle:Ljava/lang/CharSequence;

.field private mHintTranslateOffset:F

.field private mHintView:Landroid/view/View;

.field private mLastSuggestionTime:J

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSuggestionTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mSuggestions:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mSuggestionTimes:Ljava/util/List;

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mLastSuggestionTime:J

    .line 75
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mContext:Landroid/content/Context;

    .line 76
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$color;->inplace_hint_background_color:I

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintBackgroundColor:I

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$color;->inplace_hint_chip_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintChipColor:I

    .line 80
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102fd

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mDefaultChipColor:Landroid/graphics/drawable/Drawable;

    .line 84
    return-void
.end method

.method private setupHintForDisplay()V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintView:Landroid/view/View;

    iget v1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintTranslateOffset:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 166
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintView:Landroid/view/View;

    sget v1, Lcom/android/calendar/R$id;->inplace_hint_title:I

    .line 167
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 168
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintView:Landroid/view/View;

    sget v2, Lcom/android/calendar/R$id;->inplace_hint_description:I

    .line 169
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 170
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintView:Landroid/view/View;

    sget v1, Lcom/android/calendar/R$id;->inplace_hint_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 173
    iget v1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 176
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 178
    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 180
    :cond_0
    return-void
.end method

.method private updateSuggestionTimes(Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 227
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mSuggestionTimes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mLastSuggestionTime:J

    .line 233
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 236
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 238
    iget-wide v8, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mLastSuggestionTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 239
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 241
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 242
    invoke-virtual {p0, v7, v4}, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->isSuggestionEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mSuggestionTimes:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 249
    :cond_0
    iget-object v4, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mSuggestionTimes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 251
    iget-object v4, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mSuggestionTimes:Ljava/util/List;

    invoke-interface {v4, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 259
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    .line 260
    goto :goto_1

    :cond_1
    move v0, v2

    .line 228
    goto :goto_0

    .line 255
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mLastSuggestionTime:J

    cmp-long v4, v8, v10

    if-nez v4, :cond_3

    move v4, v1

    :goto_3
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 256
    iget-object v4, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mSuggestionTimes:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move v4, v2

    .line 255
    goto :goto_3

    .line 262
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mSuggestionTimes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_5

    .line 265
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mSuggestionTimes:Ljava/util/List;

    iget-object v4, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mSuggestionTimes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 269
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mSuggestionTimes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_6

    :goto_5
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 270
    return-void

    :cond_6
    move v1, v2

    .line 269
    goto :goto_5
.end method

.method private updateTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public clearInplaceHint()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 281
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintTitle:Ljava/lang/CharSequence;

    .line 282
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintDescription:Ljava/lang/CharSequence;

    .line 283
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iput-object v2, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintView:Landroid/view/View;

    .line 287
    :cond_0
    return-void
.end method

.method protected getAdditionalInfo(Ljava/lang/Object;)Landroid/text/SpannableString;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/text/SpannableString;"
        }
    .end annotation

    .prologue
    .line 212
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 208
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHintTranslateOffset()F
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintTranslateOffset:F

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mSuggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 125
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSuggestionAge(I)J
    .locals 7

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mLastSuggestionTime:J

    .line 95
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mSuggestionTimes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mSuggestionTimes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 101
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    return-wide v0

    .line 98
    :cond_0
    sget-object v2, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->TAG:Ljava/lang/String;

    const-string v3, "position %d is out of bounds (max: %d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mSuggestionTimes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 98
    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public getSuggestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mSuggestions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 204
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 130
    if-nez p2, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/calendar/R$layout;->suggestion_dropdown_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 133
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 135
    sget v0, Lcom/android/calendar/R$id;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 136
    invoke-virtual {p0, v1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->getTitle(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->updateTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 138
    sget v0, Lcom/android/calendar/R$id;->description:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 139
    invoke-virtual {p0, v1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->getDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->updateTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 141
    sget v0, Lcom/android/calendar/R$id;->additional_info:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 142
    invoke-virtual {p0, v1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->getAdditionalInfo(Ljava/lang/Object;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->updateTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 144
    sget v0, Lcom/android/calendar/R$id;->icon:I

    .line 145
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/bitmap/view/BitmapDrawableImageView;

    .line 146
    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->setImage(Ljava/lang/Object;Lcom/android/bitmap/view/BitmapDrawableImageView;)V

    .line 150
    :cond_1
    sget v0, Lcom/android/calendar/R$id;->inplace_usage_hint:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 151
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 152
    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintView:Landroid/view/View;

    .line 153
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->setupHintForDisplay()V

    .line 154
    iget v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintChipColor:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 160
    :goto_0
    return-object p2

    .line 156
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mDefaultChipColor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected isSuggestionEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {p1, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setHintTranslateOffset(F)V
    .locals 2

    .prologue
    .line 294
    iput p1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintTranslateOffset:F

    .line 295
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintView:Landroid/view/View;

    iget v1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintTranslateOffset:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 298
    :cond_0
    return-void
.end method

.method protected setImage(Ljava/lang/Object;Lcom/android/bitmap/view/BitmapDrawableImageView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/bitmap/view/BitmapDrawableImageView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/bitmap/view/BitmapDrawableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    return-void
.end method

.method public setInplaceHint(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintTitle:Ljava/lang/CharSequence;

    .line 274
    iput-object p2, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintDescription:Ljava/lang/CharSequence;

    .line 275
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->setupHintForDisplay()V

    .line 278
    :cond_0
    return-void
.end method

.method public setInplaceHintView(Landroid/widget/ListView;)V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintView:Landroid/view/View;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 319
    sget v1, Lcom/android/calendar/R$id;->inplace_usage_hint:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 320
    if-eqz v1, :cond_0

    .line 325
    iput-object v1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintView:Landroid/view/View;

    .line 326
    invoke-direct {p0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->setupHintForDisplay()V

    .line 327
    iget v1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mHintChipColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method protected setSuggestions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mSuggestions:Ljava/util/List;

    .line 197
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->mSuggestions:Ljava/util/List;

    .line 199
    invoke-direct {p0, v0, p1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->updateSuggestionTimes(Ljava/util/List;Ljava/util/List;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->notifyDataSetChanged()V

    .line 201
    return-void
.end method
