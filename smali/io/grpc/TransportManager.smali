.class public abstract Lio/grpc/TransportManager;
.super Ljava/lang/Object;
.source "TransportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/TransportManager$InterimTransport;
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
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createFailingTransport(Lio/grpc/Status;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Status;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract createInterimTransport()Lio/grpc/TransportManager$InterimTransport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/TransportManager$InterimTransport",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getTransport(Lio/grpc/EquivalentAddressGroup;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/EquivalentAddressGroup;",
            ")TT;"
        }
    .end annotation
.end method
