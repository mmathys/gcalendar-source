.class public abstract Lio/grpc/ClientCall$Listener;
.super Ljava/lang/Object;
.source "ClientCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/ClientCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
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
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public onHeaders(Lio/grpc/Metadata;)V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public onMessage(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 136
    return-void
.end method

.method public onReady()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method
