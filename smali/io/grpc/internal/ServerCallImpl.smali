.class final Lio/grpc/internal/ServerCallImpl;
.super Lio/grpc/ServerCall;
.source "ServerCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/ServerCall",
        "<TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field private volatile cancelled:Z

.field private final method:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor",
            "<TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field private final stream:Lio/grpc/internal/ServerStream;


# direct methods
.method static synthetic access$000(Lio/grpc/internal/ServerCallImpl;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lio/grpc/internal/ServerCallImpl;->cancelled:Z

    return v0
.end method

.method static synthetic access$100(Lio/grpc/internal/ServerCallImpl;)Lio/grpc/MethodDescriptor;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->method:Lio/grpc/MethodDescriptor;

    return-object v0
.end method

.method static synthetic access$200(Lio/grpc/internal/ServerCallImpl;)Lio/grpc/internal/ServerStream;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl;->stream:Lio/grpc/internal/ServerStream;

    return-object v0
.end method
