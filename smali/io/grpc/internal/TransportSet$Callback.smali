.class abstract Lio/grpc/internal/TransportSet$Callback;
.super Ljava/lang/Object;
.source "TransportSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/TransportSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Callback"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllAddressesFailed()V
    .locals 0

    .prologue
    .line 495
    return-void
.end method

.method public onConnectionClosedByServer(Lio/grpc/Status;)V
    .locals 0

    .prologue
    .line 500
    return-void
.end method

.method public onInUse(Lio/grpc/internal/TransportSet;)V
    .locals 0

    .prologue
    .line 506
    return-void
.end method

.method public onNotInUse(Lio/grpc/internal/TransportSet;)V
    .locals 0

    .prologue
    .line 512
    return-void
.end method

.method public onTerminated(Lio/grpc/internal/TransportSet;)V
    .locals 0

    .prologue
    .line 490
    return-void
.end method
