.class public Lcom/google/calendar/v2/common/ObjectUtil;
.super Ljava/lang/Object;
.source "ObjectUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;
    }
.end annotation


# direct methods
.method public static hashCode(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 96
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    if-eqz p0, :cond_0

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    :cond_0
    if-eqz p1, :cond_1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    .line 91
    :cond_1
    return v0
.end method

.method public static hashCode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 102
    invoke-static {p0, p1}, Lcom/google/calendar/v2/common/ObjectUtil;->hashCode(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 103
    if-eqz p2, :cond_0

    .line 104
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    .line 106
    :cond_0
    return v0
.end method

.method public static toStringHelper(Ljava/lang/Object;)Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;
    .locals 3

    .prologue
    .line 116
    new-instance v0, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;-><init>(Ljava/lang/Class;Lcom/google/calendar/v2/common/ObjectUtil$1;)V

    return-object v0
.end method
