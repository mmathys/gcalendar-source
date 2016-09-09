.class public final Lio/grpc/CallOptions;
.super Ljava/lang/Object;
.source "CallOptions.java"


# static fields
.field public static final DEFAULT:Lio/grpc/CallOptions;


# instance fields
.field private affinity:Lio/grpc/Attributes;

.field private authority:Ljava/lang/String;

.field private compressorName:Ljava/lang/String;

.field private credentials:Lio/grpc/CallCredentials;

.field private customOptions:[[Ljava/lang/Object;

.field private deadline:Lio/grpc/Deadline;

.field private executor:Ljava/util/concurrent/Executor;

.field private waitForReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lio/grpc/CallOptions;

    invoke-direct {v0}, Lio/grpc/CallOptions;-><init>()V

    sput-object v0, Lio/grpc/CallOptions;->DEFAULT:Lio/grpc/CallOptions;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    sget-object v0, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    iput-object v0, p0, Lio/grpc/CallOptions;->affinity:Lio/grpc/Attributes;

    .line 73
    const/4 v0, 0x0

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lio/grpc/CallOptions;->customOptions:[[Ljava/lang/Object;

    .line 353
    return-void
.end method

.method private constructor <init>(Lio/grpc/CallOptions;)V
    .locals 2

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    sget-object v0, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    iput-object v0, p0, Lio/grpc/CallOptions;->affinity:Lio/grpc/Attributes;

    .line 73
    const/4 v0, 0x0

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lio/grpc/CallOptions;->customOptions:[[Ljava/lang/Object;

    .line 369
    iget-object v0, p1, Lio/grpc/CallOptions;->deadline:Lio/grpc/Deadline;

    iput-object v0, p0, Lio/grpc/CallOptions;->deadline:Lio/grpc/Deadline;

    .line 370
    iget-object v0, p1, Lio/grpc/CallOptions;->authority:Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/CallOptions;->authority:Ljava/lang/String;

    .line 371
    iget-object v0, p1, Lio/grpc/CallOptions;->credentials:Lio/grpc/CallCredentials;

    iput-object v0, p0, Lio/grpc/CallOptions;->credentials:Lio/grpc/CallCredentials;

    .line 372
    iget-object v0, p1, Lio/grpc/CallOptions;->affinity:Lio/grpc/Attributes;

    iput-object v0, p0, Lio/grpc/CallOptions;->affinity:Lio/grpc/Attributes;

    .line 373
    iget-object v0, p1, Lio/grpc/CallOptions;->executor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lio/grpc/CallOptions;->executor:Ljava/util/concurrent/Executor;

    .line 374
    iget-object v0, p1, Lio/grpc/CallOptions;->compressorName:Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/CallOptions;->compressorName:Ljava/lang/String;

    .line 375
    iget-object v0, p1, Lio/grpc/CallOptions;->customOptions:[[Ljava/lang/Object;

    iput-object v0, p0, Lio/grpc/CallOptions;->customOptions:[[Ljava/lang/Object;

    .line 376
    iget-boolean v0, p1, Lio/grpc/CallOptions;->waitForReady:Z

    iput-boolean v0, p0, Lio/grpc/CallOptions;->waitForReady:Z

    .line 377
    return-void
.end method


# virtual methods
.method public getAffinity()Lio/grpc/Attributes;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lio/grpc/CallOptions;->affinity:Lio/grpc/Attributes;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lio/grpc/CallOptions;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public getCompressor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lio/grpc/CallOptions;->compressorName:Ljava/lang/String;

    return-object v0
.end method

.method public getCredentials()Lio/grpc/CallCredentials;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lio/grpc/CallOptions;->credentials:Lio/grpc/CallCredentials;

    return-object v0
.end method

.method public getDeadline()Lio/grpc/Deadline;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lio/grpc/CallOptions;->deadline:Lio/grpc/Deadline;

    return-object v0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lio/grpc/CallOptions;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public isWaitForReady()Z
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lio/grpc/CallOptions;->waitForReady:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 381
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v1

    .line 382
    const-string v0, "deadline"

    iget-object v2, p0, Lio/grpc/CallOptions;->deadline:Lio/grpc/Deadline;

    invoke-virtual {v1, v0, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 383
    const-string v0, "authority"

    iget-object v2, p0, Lio/grpc/CallOptions;->authority:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 384
    const-string v0, "callCredentials"

    iget-object v2, p0, Lio/grpc/CallOptions;->credentials:Lio/grpc/CallCredentials;

    invoke-virtual {v1, v0, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 385
    const-string v0, "affinity"

    iget-object v2, p0, Lio/grpc/CallOptions;->affinity:Lio/grpc/Attributes;

    invoke-virtual {v1, v0, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 386
    const-string v2, "executor"

    iget-object v0, p0, Lio/grpc/CallOptions;->executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/CallOptions;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 387
    const-string v0, "compressorName"

    iget-object v2, p0, Lio/grpc/CallOptions;->compressorName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 388
    const-string v0, "customOptions"

    iget-object v2, p0, Lio/grpc/CallOptions;->customOptions:[[Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 389
    const-string v0, "waitForReady"

    invoke-virtual {p0}, Lio/grpc/CallOptions;->isWaitForReady()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 391
    invoke-virtual {v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 386
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public withDeadline(Lio/grpc/Deadline;)Lio/grpc/CallOptions;
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lio/grpc/CallOptions;

    invoke-direct {v0, p0}, Lio/grpc/CallOptions;-><init>(Lio/grpc/CallOptions;)V

    .line 127
    iput-object p1, v0, Lio/grpc/CallOptions;->deadline:Lio/grpc/Deadline;

    .line 128
    return-object v0
.end method

.method public withDeadlineAfter(JLjava/util/concurrent/TimeUnit;)Lio/grpc/CallOptions;
    .locals 1

    .prologue
    .line 155
    invoke-static {p1, p2, p3}, Lio/grpc/Deadline;->after(JLjava/util/concurrent/TimeUnit;)Lio/grpc/Deadline;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/CallOptions;->withDeadline(Lio/grpc/Deadline;)Lio/grpc/CallOptions;

    move-result-object v0

    return-object v0
.end method

.method public withExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/CallOptions;
    .locals 1

    .prologue
    .line 259
    new-instance v0, Lio/grpc/CallOptions;

    invoke-direct {v0, p0}, Lio/grpc/CallOptions;-><init>(Lio/grpc/CallOptions;)V

    .line 260
    iput-object p1, v0, Lio/grpc/CallOptions;->executor:Ljava/util/concurrent/Executor;

    .line 261
    return-object v0
.end method
