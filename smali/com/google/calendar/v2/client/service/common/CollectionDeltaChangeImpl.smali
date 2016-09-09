.class Lcom/google/calendar/v2/client/service/common/CollectionDeltaChangeImpl;
.super Ljava/lang/Object;
.source "CollectionDeltaChangeImpl.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/CollectionDelta$Change;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/common/CollectionDelta$Change",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final previous:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final type:Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;


# direct methods
.method constructor <init>(Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/calendar/v2/client/service/common/CollectionDeltaChangeImpl;-><init>(Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method constructor <init>(Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;",
            "TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/common/CollectionDeltaChangeImpl;->type:Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

    .line 28
    iput-object p2, p0, Lcom/google/calendar/v2/client/service/common/CollectionDeltaChangeImpl;->previous:Ljava/lang/Object;

    .line 29
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/common/CollectionDeltaChangeImpl;->element:Ljava/lang/Object;

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    if-ne p0, p1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    instance-of v2, p1, Lcom/google/calendar/v2/client/service/common/CollectionDeltaChangeImpl;

    if-nez v2, :cond_2

    move v0, v1

    .line 59
    goto :goto_0

    .line 61
    :cond_2
    check-cast p1, Lcom/google/calendar/v2/client/service/common/CollectionDeltaChangeImpl;

    .line 62
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/common/CollectionDeltaChangeImpl;->type:Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/common/CollectionDeltaChangeImpl;->type:Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/common/CollectionDeltaChangeImpl;->element:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/common/CollectionDeltaChangeImpl;->element:Ljava/lang/Object;

    .line 63
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/common/CollectionDeltaChangeImpl;->previous:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/common/CollectionDeltaChangeImpl;->previous:Ljava/lang/Object;

    .line 64
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/CollectionDeltaChangeImpl;->element:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/CollectionDeltaChangeImpl;->type:Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/CollectionDeltaChangeImpl;->type:Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/common/CollectionDeltaChangeImpl;->element:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/common/CollectionDeltaChangeImpl;->previous:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/calendar/v2/common/ObjectUtil;->hashCode(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    invoke-static {p0}, Lcom/google/calendar/v2/common/ObjectUtil;->toStringHelper(Ljava/lang/Object;)Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;

    move-result-object v0

    const-string v1, "Type"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/common/CollectionDeltaChangeImpl;->type:Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->addValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;

    move-result-object v0

    const-string v1, "Element"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/common/CollectionDeltaChangeImpl;->element:Ljava/lang/Object;

    .line 71
    invoke-virtual {v0, v1, v2}, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->addValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;

    move-result-object v0

    const-string v1, "Previous"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/common/CollectionDeltaChangeImpl;->previous:Ljava/lang/Object;

    .line 72
    invoke-virtual {v0, v1, v2}, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->addValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->omitNullValues()Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    return-object v0
.end method
