.class public final Lcom/google/calendar/v2/client/service/api/common/UniquelyIdentifiable$ExtractKey;
.super Ljava/lang/Object;
.source "UniquelyIdentifiable.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/v2/client/service/api/common/UniquelyIdentifiable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtractKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/google/calendar/v2/client/service/api/common/UniquelyIdentifiable",
        "<TK;>;TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/calendar/v2/client/service/api/common/UniquelyIdentifiable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/api/common/UniquelyIdentifiable",
            "<TK;>;)TK;"
        }
    .end annotation

    .prologue
    .line 19
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/common/UniquelyIdentifiable;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lcom/google/calendar/v2/client/service/api/common/UniquelyIdentifiable;

    invoke-virtual {p0, p1}, Lcom/google/calendar/v2/client/service/api/common/UniquelyIdentifiable$ExtractKey;->apply(Lcom/google/calendar/v2/client/service/api/common/UniquelyIdentifiable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
