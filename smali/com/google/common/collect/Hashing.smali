.class final Lcom/google/common/collect/Hashing;
.super Ljava/lang/Object;
.source "Hashing.java"


# direct methods
.method static closedTableSize(ID)I
    .locals 5

    .prologue
    .line 59
    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 62
    int-to-double v2, v0

    mul-double/2addr v2, p1

    double-to-int v2, v2

    if-le v1, v2, :cond_0

    .line 63
    shl-int/lit8 v0, v0, 0x1

    .line 64
    if-lez v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0
.end method

.method static needsResizing(IID)Z
    .locals 4

    .prologue
    .line 70
    int-to-double v0, p0

    int-to-double v2, p1

    mul-double/2addr v2, p2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static smear(I)I
    .locals 3

    .prologue
    .line 47
    const v0, 0x1b873593

    const v1, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v1, p0

    const/16 v2, 0xf

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method static smearedHash(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 51
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
