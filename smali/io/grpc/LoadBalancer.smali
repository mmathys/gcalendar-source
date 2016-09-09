.class public abstract Lio/grpc/LoadBalancer;
.super Ljava/lang/Object;
.source "LoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/LoadBalancer$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleNameResolutionError(Lio/grpc/Status;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public handleResolvedAddresses(Ljava/util/List;Lio/grpc/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/util/List",
            "<",
            "Lio/grpc/ResolvedServerInfo;",
            ">;>;",
            "Lio/grpc/Attributes;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    return-void
.end method

.method public handleTransportReady(Lio/grpc/EquivalentAddressGroup;)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public handleTransportShutdown(Lio/grpc/EquivalentAddressGroup;Lio/grpc/Status;)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public abstract pickTransport(Lio/grpc/Attributes;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Attributes;",
            ")TT;"
        }
    .end annotation
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method
