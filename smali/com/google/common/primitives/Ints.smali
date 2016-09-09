.class public final Lcom/google/common/primitives/Ints;
.super Ljava/lang/Object;
.source "Ints.java"


# direct methods
.method public static saturatedCast(J)I
    .locals 2

    .prologue
    .line 102
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 103
    const v0, 0x7fffffff

    .line 108
    :goto_0
    return v0

    .line 105
    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 106
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 108
    :cond_1
    long-to-int v0, p0

    goto :goto_0
.end method
