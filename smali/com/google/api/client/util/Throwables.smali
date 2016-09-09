.class public final Lcom/google/api/client/util/Throwables;
.super Ljava/lang/Object;
.source "Throwables.java"


# direct methods
.method public static propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1

    .prologue
    .line 56
    invoke-static {p0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method
