.class Lio/grpc/internal/TransportSet$1EndOfCurrentBackoff$1;
.super Ljava/lang/Object;
.source "TransportSet.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/TransportSet$1EndOfCurrentBackoff;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lio/grpc/internal/ClientTransport;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/TransportSet$1EndOfCurrentBackoff;


# direct methods
.method constructor <init>(Lio/grpc/internal/TransportSet$1EndOfCurrentBackoff;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lio/grpc/internal/TransportSet$1EndOfCurrentBackoff$1;->this$1:Lio/grpc/internal/TransportSet$1EndOfCurrentBackoff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lio/grpc/internal/ClientTransport;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lio/grpc/internal/TransportSet$1EndOfCurrentBackoff$1;->this$1:Lio/grpc/internal/TransportSet$1EndOfCurrentBackoff;

    iget-object v0, v0, Lio/grpc/internal/TransportSet$1EndOfCurrentBackoff;->this$0:Lio/grpc/internal/TransportSet;

    invoke-virtual {v0}, Lio/grpc/internal/TransportSet;->obtainActiveTransport()Lio/grpc/internal/ClientTransport;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 266
    invoke-virtual {p0}, Lio/grpc/internal/TransportSet$1EndOfCurrentBackoff$1;->get()Lio/grpc/internal/ClientTransport;

    move-result-object v0

    return-object v0
.end method
