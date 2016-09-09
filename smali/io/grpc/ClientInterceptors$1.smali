.class final Lio/grpc/ClientInterceptors$1;
.super Lio/grpc/ClientCall;
.source "ClientInterceptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/ClientInterceptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/ClientCall",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lio/grpc/ClientCall;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public halfClose()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public request(I)V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public sendMessage(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lio/grpc/Metadata;",
            ")V"
        }
    .end annotation

    .prologue
    .line 131
    return-void
.end method
