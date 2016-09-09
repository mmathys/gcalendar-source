.class public Lcom/android/calendar/timely/GridChipGeometry;
.super Ljava/lang/Object;
.source "GridChipGeometry.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChipHorizontalSpacing:I

.field private mChipVerticalSpacing:I

.field private mGridHourCellHeight:F

.field private mGridStartPadding:I

.field private mGridlineHeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/calendar/timely/GridChipGeometry;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/GridChipGeometry;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v0, p0, Lcom/android/calendar/timely/GridChipGeometry;->mGridStartPadding:I

    .line 44
    iput v0, p0, Lcom/android/calendar/timely/GridChipGeometry;->mChipHorizontalSpacing:I

    .line 46
    iput v0, p0, Lcom/android/calendar/timely/GridChipGeometry;->mChipVerticalSpacing:I

    .line 49
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getIntProperty(Landroid/content/Context;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/calendar/timely/GridChipGeometry;->mGridHourCellHeight:F

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    sget v1, Lcom/android/calendar/R$dimen;->gridline_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/calendar/timely/GridChipGeometry;->mGridlineHeight:F

    .line 53
    sget v1, Lcom/android/calendar/R$dimen;->chip_grid_horizontal_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/GridChipGeometry;->mChipHorizontalSpacing:I

    .line 55
    sget v1, Lcom/android/calendar/R$dimen;->chip_grid_vertical_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/GridChipGeometry;->mChipVerticalSpacing:I

    .line 57
    return-void
.end method

.method public static doComputePositions(Ljava/util/List;JZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/android/calendar/timely/PartitionItem;",
            ">;JZ)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 180
    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v6, v5

    invoke-static/range {v1 .. v6}, Lcom/android/calendar/timely/GridChipGeometry;->doComputePositions(Ljava/util/List;JZZZ)V

    .line 182
    return-void
.end method

.method public static doComputePositions(Ljava/util/List;JZZZ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/android/calendar/timely/PartitionItem;",
            ">;JZZZ)V"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 198
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 200
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_a

    .line 201
    const-wide/16 v4, 0x0

    .line 204
    :goto_0
    const/4 v2, 0x0

    .line 205
    const-wide/16 v6, 0x0

    .line 206
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v8, v2

    :cond_0
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/timely/PartitionItem;

    .line 208
    if-nez p5, :cond_1

    if-nez p4, :cond_1

    invoke-interface {v2}, Lcom/android/calendar/timely/PartitionItem;->spansAtLeastOneDay()Z

    move-result v3

    move/from16 v0, p3

    if-ne v3, v0, :cond_0

    .line 212
    :cond_1
    if-eqz p5, :cond_2

    .line 213
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static/range {v2 .. v7}, Lcom/android/calendar/timely/GridChipGeometry;->removeInactiveItems(Lcom/android/calendar/timely/PartitionItem;Ljava/util/Iterator;JJ)J

    move-result-wide v6

    .line 224
    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 225
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/timely/PartitionItem;

    .line 226
    invoke-interface {v3, v8}, Lcom/android/calendar/timely/PartitionItem;->setMaxPartitions(I)V

    goto :goto_3

    .line 215
    :cond_2
    if-nez p4, :cond_3

    if-nez p3, :cond_3

    .line 216
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static/range {v2 .. v7}, Lcom/android/calendar/timely/GridChipGeometry;->removeNonAlldayInactiveItems(Lcom/android/calendar/timely/PartitionItem;Ljava/util/Iterator;JJ)J

    move-result-wide v6

    goto :goto_2

    .line 219
    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static {v2, v3, v6, v7}, Lcom/android/calendar/timely/GridChipGeometry;->removeAlldayInactiveItems(Lcom/android/calendar/timely/PartitionItem;Ljava/util/Iterator;J)J

    move-result-wide v6

    goto :goto_2

    .line 228
    :cond_4
    const/4 v8, 0x0

    .line 229
    const-wide/16 v6, 0x0

    .line 230
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 235
    :cond_5
    invoke-static {v6, v7}, Lcom/android/calendar/timely/GridChipGeometry;->findFirstZeroBit(J)I

    move-result v3

    .line 236
    const/16 v12, 0x40

    if-ne v3, v12, :cond_6

    .line 237
    const/16 v3, 0x3f

    .line 239
    :cond_6
    const-wide/16 v12, 0x1

    shl-long/2addr v12, v3

    or-long/2addr v6, v12

    .line 240
    invoke-interface {v2, v3}, Lcom/android/calendar/timely/PartitionItem;->setPartition(I)V

    .line 241
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 244
    if-ge v8, v2, :cond_9

    :goto_4
    move v8, v2

    .line 247
    goto :goto_1

    .line 248
    :cond_7
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/timely/PartitionItem;

    .line 249
    invoke-interface {v2, v8}, Lcom/android/calendar/timely/PartitionItem;->setMaxPartitions(I)V

    goto :goto_5

    .line 251
    :cond_8
    return-void

    :cond_9
    move v2, v8

    goto :goto_4

    :cond_a
    move-wide/from16 v4, p1

    goto/16 :goto_0
.end method

.method private static findFirstZeroBit(J)I
    .locals 6

    .prologue
    const/16 v1, 0x40

    .line 321
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 322
    const-wide/16 v2, 0x1

    shl-long/2addr v2, v0

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 325
    :goto_1
    return v0

    .line 321
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 325
    goto :goto_1
.end method

.method private getColumnWidth(II)F
    .locals 2

    .prologue
    .line 103
    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    const/4 v0, 0x0

    .line 104
    :goto_0
    iget v1, p0, Lcom/android/calendar/timely/GridChipGeometry;->mGridStartPadding:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    sub-float v0, v1, v0

    int-to-float v1, p2

    div-float/2addr v0, v1

    return v0

    .line 103
    :cond_0
    add-int/lit8 v0, p2, -0x1

    iget v1, p0, Lcom/android/calendar/timely/GridChipGeometry;->mChipHorizontalSpacing:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0
.end method

.method private static removeAlldayInactiveItems(Lcom/android/calendar/timely/PartitionItem;Ljava/util/Iterator;J)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/timely/PartitionItem;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/calendar/timely/PartitionItem;",
            ">;J)J"
        }
    .end annotation

    .prologue
    .line 284
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/PartitionItem;

    .line 288
    invoke-interface {v0}, Lcom/android/calendar/timely/PartitionItem;->spansAtLeastOneDay()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    invoke-interface {v0}, Lcom/android/calendar/timely/PartitionItem;->getEndDay()I

    move-result v1

    .line 291
    :goto_1
    invoke-interface {p0}, Lcom/android/calendar/timely/PartitionItem;->getStartDay()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 292
    const-wide/16 v2, 0x1

    invoke-interface {v0}, Lcom/android/calendar/timely/PartitionItem;->getPartition()I

    move-result v0

    shl-long v0, v2, v0

    const-wide/16 v2, -0x1

    xor-long/2addr v0, v2

    and-long/2addr p2, v0

    .line 293
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 290
    :cond_1
    invoke-interface {v0}, Lcom/android/calendar/timely/PartitionItem;->getStartDay()I

    move-result v1

    goto :goto_1

    .line 296
    :cond_2
    return-wide p2
.end method

.method private static removeInactiveItems(Lcom/android/calendar/timely/PartitionItem;Ljava/util/Iterator;JJ)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/timely/PartitionItem;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/calendar/timely/PartitionItem;",
            ">;JJ)J"
        }
    .end annotation

    .prologue
    .line 256
    invoke-interface {p0}, Lcom/android/calendar/timely/PartitionItem;->getStartMillis()J

    move-result-wide v2

    .line 258
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/PartitionItem;

    .line 260
    invoke-interface {v0}, Lcom/android/calendar/timely/PartitionItem;->spansAtLeastOneDay()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    invoke-interface {v0}, Lcom/android/calendar/timely/PartitionItem;->getEndDay()I

    move-result v1

    .line 262
    invoke-interface {p0}, Lcom/android/calendar/timely/PartitionItem;->getStartDay()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 263
    const-wide/16 v4, 0x1

    invoke-interface {v0}, Lcom/android/calendar/timely/PartitionItem;->getPartition()I

    move-result v0

    shl-long v0, v4, v0

    const-wide/16 v4, -0x1

    xor-long/2addr v0, v4

    and-long/2addr p4, v0

    .line 264
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 267
    :cond_1
    invoke-interface {v0}, Lcom/android/calendar/timely/PartitionItem;->getStartMillis()J

    move-result-wide v4

    .line 269
    invoke-interface {v0}, Lcom/android/calendar/timely/PartitionItem;->getEndMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 268
    invoke-static {v6, v7, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 270
    add-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-gtz v1, :cond_0

    .line 271
    const-wide/16 v4, 0x1

    invoke-interface {v0}, Lcom/android/calendar/timely/PartitionItem;->getPartition()I

    move-result v0

    shl-long v0, v4, v0

    const-wide/16 v4, -0x1

    xor-long/2addr v0, v4

    and-long/2addr p4, v0

    .line 272
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 276
    :cond_2
    return-wide p4
.end method

.method private static removeNonAlldayInactiveItems(Lcom/android/calendar/timely/PartitionItem;Ljava/util/Iterator;JJ)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/timely/PartitionItem;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/calendar/timely/PartitionItem;",
            ">;JJ)J"
        }
    .end annotation

    .prologue
    .line 302
    invoke-interface {p0}, Lcom/android/calendar/timely/PartitionItem;->getStartMillis()J

    move-result-wide v2

    .line 306
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/PartitionItem;

    .line 308
    invoke-interface {v0}, Lcom/android/calendar/timely/PartitionItem;->getStartMillis()J

    move-result-wide v4

    .line 311
    invoke-interface {v0}, Lcom/android/calendar/timely/PartitionItem;->getEndMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 310
    invoke-static {v6, v7, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 312
    add-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-gtz v1, :cond_0

    .line 313
    const-wide/16 v4, 0x1

    invoke-interface {v0}, Lcom/android/calendar/timely/PartitionItem;->getPartition()I

    move-result v0

    shl-long v0, v4, v0

    const-wide/16 v4, -0x1

    xor-long/2addr v0, v4

    and-long/2addr p4, v0

    .line 314
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 317
    :cond_1
    return-wide p4
.end method


# virtual methods
.method public computeGridRect(IIIILcom/android/calendar/timely/TimelyChip;)Z
    .locals 7

    .prologue
    .line 175
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/timely/GridChipGeometry;->computeGridRect(IIIILcom/android/calendar/timely/TimelyChip;Z)Z

    move-result v0

    return v0
.end method

.method public computeGridRect(IIIILcom/android/calendar/timely/TimelyChip;Z)Z
    .locals 9

    .prologue
    .line 120
    invoke-virtual {p5}, Lcom/android/calendar/timely/TimelyChip;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v2

    .line 122
    if-eqz p6, :cond_0

    invoke-interface {v2}, Lcom/android/calendar/timely/TimelineItem;->spansAtLeastOneDay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 169
    :goto_0
    return v0

    .line 126
    :cond_0
    invoke-interface {v2}, Lcom/android/calendar/timely/TimelineItem;->getStartDay()I

    move-result v3

    .line 127
    invoke-interface {v2}, Lcom/android/calendar/timely/TimelineItem;->getEndDay()I

    move-result v4

    .line 129
    invoke-interface {v2}, Lcom/android/calendar/timely/TimelineItem;->getStartTime()I

    move-result v1

    .line 130
    invoke-interface {v2}, Lcom/android/calendar/timely/TimelineItem;->getEndTime()I

    move-result v0

    .line 134
    if-ge v3, p1, :cond_1

    .line 135
    const/4 v1, 0x0

    .line 140
    :cond_1
    if-le v4, p1, :cond_2

    .line 141
    const/16 v0, 0x5a0

    .line 145
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/timely/GridChipGeometry;->getHourWithGridlineHeight()F

    move-result v3

    const/high16 v4, 0x42700000    # 60.0f

    div-float/2addr v3, v4

    .line 146
    invoke-virtual {p0}, Lcom/android/calendar/timely/GridChipGeometry;->getHourWithGridlineHeight()F

    move-result v4

    const/high16 v5, 0x41c00000    # 24.0f

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/calendar/timely/GridChipGeometry;->getChipMinimumHeight()F

    move-result v5

    sub-float/2addr v4, v5

    .line 147
    float-to-int v4, v4

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v1, p3

    .line 150
    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iget v3, p0, Lcom/android/calendar/timely/GridChipGeometry;->mChipVerticalSpacing:I

    sub-int/2addr v0, v3

    add-int/2addr v0, p3

    .line 152
    invoke-virtual {p0}, Lcom/android/calendar/timely/GridChipGeometry;->getChipMinimumHeight()F

    move-result v3

    iget v4, p0, Lcom/android/calendar/timely/GridChipGeometry;->mChipVerticalSpacing:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 154
    int-to-float v4, v0

    int-to-float v5, v1

    add-float/2addr v5, v3

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    .line 155
    float-to-int v0, v3

    add-int/2addr v0, v1

    .line 158
    :cond_3
    invoke-virtual {p5}, Lcom/android/calendar/timely/TimelyChip;->getPartition()I

    move-result v3

    .line 159
    invoke-virtual {p5}, Lcom/android/calendar/timely/TimelyChip;->getMaxPartitions()I

    move-result v4

    invoke-direct {p0, p4, v4}, Lcom/android/calendar/timely/GridChipGeometry;->getColumnWidth(II)F

    move-result v4

    .line 160
    invoke-virtual {p5}, Lcom/android/calendar/timely/TimelyChip;->isRtl()Z

    move-result v5

    if-nez v5, :cond_4

    .line 161
    iget v5, p0, Lcom/android/calendar/timely/GridChipGeometry;->mGridStartPadding:I

    add-int/2addr p2, v5

    .line 163
    :cond_4
    int-to-float v3, v3

    iget v5, p0, Lcom/android/calendar/timely/GridChipGeometry;->mChipHorizontalSpacing:I

    int-to-float v5, v5

    add-float/2addr v5, v4

    mul-float/2addr v3, v5

    float-to-int v3, v3

    add-int/2addr v3, p2

    .line 164
    float-to-int v4, v4

    add-int/2addr v4, v3

    .line 166
    sget-object v5, Lcom/android/calendar/timely/GridChipGeometry;->TAG:Ljava/lang/String;

    const-string v6, "This item: %s, coordinates: %d,%d,%d,%d"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v2}, Lcom/android/calendar/timely/TimelineItem;->getTitleAndLocation()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    const/4 v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v2, 0x2

    .line 167
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v2, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v2, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    .line 166
    invoke-static {v5, v6, v7}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 168
    invoke-virtual {p5, v3, v1, v4, v0}, Lcom/android/calendar/timely/TimelyChip;->setGridCoordinates(IIII)V

    .line 169
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public computeHeight(J)I
    .locals 3

    .prologue
    .line 112
    long-to-float v0, p1

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr v0, v1

    .line 113
    invoke-virtual {p0}, Lcom/android/calendar/timely/GridChipGeometry;->getHourWithGridlineHeight()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 114
    invoke-virtual {p0}, Lcom/android/calendar/timely/GridChipGeometry;->getChipMinimumHeight()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeItemHeight(Lcom/android/calendar/timely/TimelineItem;)I
    .locals 2

    .prologue
    .line 108
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getEndTime()I

    move-result v0

    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getStartTime()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/timely/GridChipGeometry;->computeHeight(J)I

    move-result v0

    return v0
.end method

.method public computeItemWidth(Lcom/android/calendar/timely/PartitionItem;I)I
    .locals 1

    .prologue
    .line 68
    invoke-interface {p1}, Lcom/android/calendar/timely/PartitionItem;->getMaxPartitions()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/calendar/timely/GridChipGeometry;->getColumnWidth(II)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getChipMinimumHeight()F
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lcom/android/calendar/timely/GridChipGeometry;->mGridHourCellHeight:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getGridChipVerticalSpacing()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/android/calendar/timely/GridChipGeometry;->mChipVerticalSpacing:I

    return v0
.end method

.method public getGridlineHeight()F
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/android/calendar/timely/GridChipGeometry;->mGridlineHeight:F

    return v0
.end method

.method public getHourWithGridlineHeight()F
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Lcom/android/calendar/timely/GridChipGeometry;->mGridHourCellHeight:F

    iget v1, p0, Lcom/android/calendar/timely/GridChipGeometry;->mGridlineHeight:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getMinimumDurationMillis()J
    .locals 3

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/calendar/timely/GridChipGeometry;->getChipMinimumHeight()F

    move-result v0

    const v1, 0x476a6000    # 60000.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/timely/GridChipGeometry;->mGridHourCellHeight:F

    const/high16 v2, 0x42700000    # 60.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public setGridHourCellHeight(F)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/android/calendar/timely/GridChipGeometry;->mGridHourCellHeight:F

    .line 61
    return-void
.end method

.method public setGridLeftPadding(I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/android/calendar/timely/GridChipGeometry;->mGridStartPadding:I

    .line 65
    return-void
.end method
