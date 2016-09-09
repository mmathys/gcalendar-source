.class public Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;
.super Ljava/lang/Object;
.source "ObjectUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/v2/common/ObjectUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToStringHelper"
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private omitNullValues:Z

.field private omitValue:Ljava/lang/Object;

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->omitNullValues:Z

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->omitValue:Ljava/lang/Object;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->values:Ljava/util/List;

    .line 27
    iput-object p1, p0, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->clazz:Ljava/lang/Class;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Lcom/google/calendar/v2/common/ObjectUtil$1;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private getSimpleClassName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 53
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->values:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    return-object p0
.end method

.method public omitNullValues()Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->omitNullValues:Z

    .line 32
    return-object p0
.end method

.method public omitValue(Ljava/lang/Object;)Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->omitValue:Ljava/lang/Object;

    .line 41
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->getSimpleClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "{"

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v1, v0

    move v2, v0

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 62
    iget-object v0, p0, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->values:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    iget-object v4, p0, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->values:Ljava/util/List;

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 64
    iget-boolean v5, p0, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->omitNullValues:Z

    if-eqz v5, :cond_0

    if-eqz v4, :cond_3

    :cond_0
    iget-object v5, p0, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->omitValue:Ljava/lang/Object;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->omitValue:Ljava/lang/Object;

    .line 65
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 66
    :cond_1
    if-eqz v2, :cond_2

    .line 67
    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const/4 v2, 0x1

    .line 61
    :cond_3
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    .line 73
    :cond_4
    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
