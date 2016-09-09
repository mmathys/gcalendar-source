.class public Lcom/google/calendar/v2/client/service/api/common/ColorPair;
.super Ljava/lang/Object;
.source "ColorPair.java"


# instance fields
.field private final background:Lcom/google/calendar/v2/client/service/api/common/Color;

.field private final foreground:Lcom/google/calendar/v2/client/service/api/common/Color;


# direct methods
.method public constructor <init>(Lcom/google/calendar/v2/client/service/api/common/Color;Lcom/google/calendar/v2/client/service/api/common/Color;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/ColorPair;->background:Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 19
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/ColorPair;->foreground:Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 37
    instance-of v1, p1, Lcom/google/calendar/v2/client/service/api/common/ColorPair;

    if-nez v1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    check-cast p1, Lcom/google/calendar/v2/client/service/api/common/ColorPair;

    .line 41
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/common/ColorPair;->background:Lcom/google/calendar/v2/client/service/api/common/Color;

    iget-object v2, p1, Lcom/google/calendar/v2/client/service/api/common/ColorPair;->background:Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/common/ColorPair;->foreground:Lcom/google/calendar/v2/client/service/api/common/Color;

    iget-object v2, p1, Lcom/google/calendar/v2/client/service/api/common/ColorPair;->foreground:Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 42
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBackground()Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/ColorPair;->background:Lcom/google/calendar/v2/client/service/api/common/Color;

    return-object v0
.end method

.method public getForeground()Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/ColorPair;->foreground:Lcom/google/calendar/v2/client/service/api/common/Color;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/ColorPair;->background:Lcom/google/calendar/v2/client/service/api/common/Color;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/common/ColorPair;->foreground:Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-static {v0, v1}, Lcom/google/calendar/v2/common/ObjectUtil;->hashCode(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Background"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/common/ColorPair;->background:Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Foreground"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/common/ColorPair;->foreground:Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    return-object v0
.end method
