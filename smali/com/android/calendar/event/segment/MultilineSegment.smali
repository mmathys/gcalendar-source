.class public abstract Lcom/android/calendar/event/segment/MultilineSegment;
.super Lcom/android/calendar/event/segment/InfoSegmentLayout;
.source "MultilineSegment.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/event/segment/InfoSegmentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/MultilineSegment;->getValueId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/segment/MultilineSegment;->setOnMeasureView(I)V

    .line 44
    return-void
.end method

.method private addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 141
    if-eqz p2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    const/4 v0, 0x0

    .line 148
    :goto_0
    return v0

    .line 144
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 145
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private addStyledLine(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 86
    if-eqz p2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 90
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 92
    :cond_2
    if-eqz p3, :cond_3

    .line 93
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 94
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 95
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, p3, v1, v2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 99
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 97
    :cond_3
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1
.end method


# virtual methods
.method protected abstract getValueId()I
.end method

.method public onRefreshStyledValue(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/event/segment/MultilineSegment;->onRefreshStyledValue(Ljava/util/List;I)V

    .line 80
    return-void
.end method

.method public onRefreshStyledValue(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/MultilineSegment;->hide()V

    .line 71
    :goto_0
    return-void

    .line 55
    :cond_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 58
    if-eqz v0, :cond_2

    .line 59
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {p0, v3, v1, v0}, Lcom/android/calendar/event/segment/MultilineSegment;->addStyledLine(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    if-lt v2, p2, :cond_2

    .line 65
    :cond_1
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 66
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/MultilineSegment;->getValueId()I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/android/calendar/event/segment/MultilineSegment;->showValueOrHideSegment(ILandroid/text/Spanned;)V

    goto :goto_0

    :cond_2
    move v0, v2

    move v2, v0

    .line 64
    goto :goto_1

    .line 68
    :cond_3
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/MultilineSegment;->hide()V

    goto :goto_0
.end method

.method public onRefreshValue(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/event/segment/MultilineSegment;->onRefreshValue(Ljava/util/List;I)V

    .line 110
    return-void
.end method

.method public onRefreshValue(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/MultilineSegment;->hide()V

    .line 134
    :goto_0
    return-void

    .line 121
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    const/4 v0, 0x0

    .line 123
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 124
    invoke-direct {p0, v2, v0}, Lcom/android/calendar/event/segment/MultilineSegment;->addLine(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    if-lt v0, p2, :cond_3

    .line 128
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 129
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/MultilineSegment;->getValueId()I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/event/segment/MultilineSegment;->showValueOrHideSegment(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    move v1, v0

    .line 127
    goto :goto_1

    .line 131
    :cond_4
    invoke-virtual {p0}, Lcom/android/calendar/event/segment/MultilineSegment;->hide()V

    goto :goto_0
.end method
