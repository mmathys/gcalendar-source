.class public Lcom/google/calendar/v2/client/service/common/GwtExportableCollections;
.super Ljava/lang/Object;
.source "GwtExportableCollections.java"


# direct methods
.method public static unmodifiableList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableRandomAccessList;

    invoke-direct {v0, p0}, Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableRandomAccessList;-><init>(Ljava/util/List;)V

    .line 56
    :goto_0
    return-object v0

    .line 58
    :cond_0
    new-instance v0, Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableList;

    invoke-direct {v0, p0}, Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableList;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method
