.class public Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;
.super Ljava/lang/Object;
.source "TaskKey.java"


# instance fields
.field private final accountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

.field private final underlyingTaskId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/calendar/v2/client/service/api/common/AccountKey;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;->accountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    .line 21
    iput-object p2, p0, Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;->underlyingTaskId:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static from(Lcom/google/calendar/v2/client/service/api/common/AccountKey;Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;

    invoke-direct {v0, p0, p1}, Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;-><init>(Lcom/google/calendar/v2/client/service/api/common/AccountKey;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    if-ne p0, p1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    instance-of v2, p1, Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;

    if-nez v2, :cond_2

    move v0, v1

    .line 52
    goto :goto_0

    .line 54
    :cond_2
    check-cast p1, Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;

    .line 55
    iget-object v2, p1, Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;->accountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    iget-object v3, p0, Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;->accountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;->underlyingTaskId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;->underlyingTaskId:Ljava/lang/String;

    .line 56
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getAccountKey()Lcom/google/calendar/v2/client/service/api/common/AccountKey;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;->accountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    return-object v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;->underlyingTaskId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;->accountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;->underlyingTaskId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/calendar/v2/common/ObjectUtil;->hashCode(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Account"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;->accountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "ID"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;->underlyingTaskId:Ljava/lang/String;

    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    return-object v0
.end method
