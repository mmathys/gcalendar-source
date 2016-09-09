.class public Lcom/google/calendar/v2/client/service/api/common/Color;
.super Ljava/lang/Object;
.source "Color.java"


# instance fields
.field private hexColorString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/Color;->hexColorString:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static fromHexString(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/google/calendar/v2/client/service/api/common/Color;->isValidHexColorString(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 27
    new-instance v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-direct {v0, p0}, Lcom/google/calendar/v2/client/service/api/common/Color;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromInt(I)Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 3

    .prologue
    .line 35
    const/16 v0, 0x10

    .line 36
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/16 v2, 0x30

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Strings;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/common/Color;->fromHexString(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    return-object v0
.end method

.method public static isValidHexColorString(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v0, 0x0

    .line 50
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    .line 53
    :goto_1
    if-ge v1, v4, :cond_2

    .line 54
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 58
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 77
    instance-of v0, p1, Lcom/google/calendar/v2/client/service/api/common/Color;

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    .line 80
    :cond_0
    check-cast p1, Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 81
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/Color;->hexColorString:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/api/common/Color;->hexColorString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/Color;->hexColorString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toInt()I
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/Color;->hexColorString:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/Color;->hexColorString:Ljava/lang/String;

    return-object v0
.end method
