.class public abstract Lio/grpc/stub/AbstractStub;
.super Ljava/lang/Object;
.source "AbstractStub.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lio/grpc/stub/AbstractStub",
        "<TS;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final callOptions:Lio/grpc/CallOptions;

.field private final channel:Lio/grpc/Channel;


# direct methods
.method protected constructor <init>(Lio/grpc/Channel;)V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lio/grpc/CallOptions;->DEFAULT:Lio/grpc/CallOptions;

    invoke-direct {p0, p1, v0}, Lio/grpc/stub/AbstractStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    .line 67
    return-void
.end method

.method protected constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Channel;

    iput-object v0, p0, Lio/grpc/stub/AbstractStub;->channel:Lio/grpc/Channel;

    .line 77
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/CallOptions;

    iput-object v0, p0, Lio/grpc/stub/AbstractStub;->callOptions:Lio/grpc/CallOptions;

    .line 78
    return-void
.end method


# virtual methods
.method protected abstract build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Channel;",
            "Lio/grpc/CallOptions;",
            ")TS;"
        }
    .end annotation
.end method

.method public final getCallOptions()Lio/grpc/CallOptions;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lio/grpc/stub/AbstractStub;->callOptions:Lio/grpc/CallOptions;

    return-object v0
.end method

.method public final getChannel()Lio/grpc/Channel;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lio/grpc/stub/AbstractStub;->channel:Lio/grpc/Channel;

    return-object v0
.end method

.method public final withDeadlineAfter(JLjava/util/concurrent/TimeUnit;)Lio/grpc/stub/AbstractStub;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TS;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lio/grpc/stub/AbstractStub;->channel:Lio/grpc/Channel;

    iget-object v1, p0, Lio/grpc/stub/AbstractStub;->callOptions:Lio/grpc/CallOptions;

    invoke-virtual {v1, p1, p2, p3}, Lio/grpc/CallOptions;->withDeadlineAfter(JLjava/util/concurrent/TimeUnit;)Lio/grpc/CallOptions;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/grpc/stub/AbstractStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;

    move-result-object v0

    return-object v0
.end method
