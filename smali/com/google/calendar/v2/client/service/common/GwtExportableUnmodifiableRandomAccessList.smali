.class public Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableRandomAccessList;
.super Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableList;
.source "GwtExportableUnmodifiableRandomAccessList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableList",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableList;-><init>(Ljava/util/List;)V

    .line 15
    return-void
.end method


# virtual methods
.method public subList(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 19
    new-instance v0, Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableRandomAccessList;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableRandomAccessList;->list:Ljava/util/List;

    .line 20
    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableRandomAccessList;-><init>(Ljava/util/List;)V

    .line 19
    return-object v0
.end method
