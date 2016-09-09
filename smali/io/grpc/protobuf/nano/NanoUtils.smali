.class public Lio/grpc/protobuf/nano/NanoUtils;
.super Ljava/lang/Object;
.source "NanoUtils.java"


# direct methods
.method public static marshaller(Lio/grpc/protobuf/nano/MessageNanoFactory;)Lio/grpc/MethodDescriptor$Marshaller;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Lio/grpc/protobuf/nano/MessageNanoFactory",
            "<TT;>;)",
            "Lio/grpc/MethodDescriptor$Marshaller",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lio/grpc/protobuf/nano/NanoUtils$1;

    invoke-direct {v0, p0}, Lio/grpc/protobuf/nano/NanoUtils$1;-><init>(Lio/grpc/protobuf/nano/MessageNanoFactory;)V

    return-object v0
.end method
